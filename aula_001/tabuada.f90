PROGRAM tabuada
    IMPLICIT NONE

    INTEGER :: valor, iterador, erro_leitura
    CHARACTER(LEN=20) :: entrada

    PRINT *, "Digite um valor:"
    READ (*, *, IOSTAT=erro_leitura) valor

    IF (erro_leitura /= 0) THEN
        PRINT *, "Erro: Valor digitado nao e um numero valido!"
    ELSE
        DO iterador = 1, 10
            PRINT *, valor, "x", iterador,"= ", valor*iterador
        END DO
    END IF

END PROGRAM tabuada