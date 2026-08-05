PROGRAM tabuada
    
    INTEGER :: valor, iterador

    PRINT *, "Digite um valor:"
    READ *, valor

    DO iterador = 1, 10
        PRINT *, valor, "x", iterador,"= ", valor*iterador
    END DO

END PROGRAM tabuada