# Atividade 25/08 - Derivação de Código

Entrega da atividade da Aula 3 (25/08/2026), referente à derivação de código a partir de uma linguagem de programação

---

## Linguagem Escolhida

Foi escolhido [**Go**](https://go.dev), devido a sua simplicidade, similiaridade com C, e também pois é a linguagem da qual estou utilizando para um projeto pessoal. E também foi escolhida pelo motivo de que é uma linguagem a qual estou estudando, e com isto se mostra uma boa oportunidade de aprender de forma mais aprofundada o seu funcionamento.

## Fonte

A fonte escolhida foi a [própria Documentação Oficial Go](https://go.dev/ref/spec), dado que ela especifica detalhadamente e completamente as necessidades desta atividade.

Citações específicas da fonte serão marcadas com um _MarkDown Footnote_.

## Notação

A notação utilizada pelo Go é uma variação da Extended Backus-Naur Form (EBNF)[^1]

## Produção Escolhida

A produção escolhida é:

```
ShortVarDecl = IdentifierList ":=" ExpressionList .
```

Que se trata de uma atribuição simples de valor à uma variável, ou _Short Variable Declaration_[^2], sendo a forma abreviada de `var x int = 10`

## Código Gerado

O código que foi gerado se trata de um pequeno trecho na linha 06, sendo:

```go
x := 10
```

## Derivação do Código Gerado

```
<ShortVarDecl> // Símbolo inicial da declaração curta

=>  <IdentifierList> ":=" <ExpressionList> // A regra da especificação Go
=>  <Identifier> ":=" <ExpressionList> // Reduzir a lista para um único identificador
=>  "x" ":=" <ExpressionList> // A substituição do identificador pelo nome da variável (x)
=>  "x" ":=" <Expression> // Redução da lista de expressões para um único identificador
=>  "x" ":=" <IntVal> // Substituição da expressão por um valor inteiro
=>  "x" ":=" "10" // Substituição do valor inteiro para um literal numérico


[^1]: https://go.dev/ref/spec#Notation
[^2]: https://go.dev/ref/spec#Short_variable_declarations