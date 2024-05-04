# Introdução à Herança

- Para que uma classe herde os atributos de outra, é necessário a utilização do comando **INHERITING FROM**
    
    ```abap
    CLASS lcl_jogador DEFINITION INHERING FROM lcl_pessoa.
        ...
    ENDCLASS.
    ```
    
- Para informar que uma classe terá vários membros de outra, é necessário criar um atributo com o **TYPE TABLE OF REF TO**
    
    ```abap
    CLASS lcl_selecao DEFINITION.
       PUBLIC SECTION.
           DATA jogadores TYPE TABLE OF REF TO lcl_jogador.
       ...
    ENDCLASS.
    ```
    
- E para referenciar que uma classe possui apenas um atributo de outra classe, é necessário criar um atributo simples.
    
    ```abap
    CLASS lcl_jogador DEFINITION INHERING FROM lcl_pessoa.
        DATA: selecao TYPE REF TO lcl_selecao.
    		...
    ENDCLASS.
    ```
    
- Referenciando classe antes de sua definição
    
    Como o ABAP originalmente foi criado como Programação Estruturada, se eu referenciar uma classe que ainda não foi definida, ele retornará um erro. Para evitar isso, é necessário referenciar a classe antes de sua definição.
    
    ```abap
    CLASS lcl_jogador DEFINITION DEFERRED.
    ```