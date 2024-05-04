# Instâncias de objetos
    
Instâncias de objetos é a definição de quando você tem várias referências para um objeto, sendo que eles apontam para o mesmo local.
    
    ```abap
    START-OF-SELECTION.
       DATA: o_locutor    TYPE REF TO lcl_locutor,
             o_locutor2   TYPE REF TO lcl_locutor.
     
       CREATE OBJECT o_locutor.
       CREATE OBJECT o_locutor2.
    ```
    
Para verificar se o objeto foi criado, podemos utilizar o IS BOUND ou IS INITIAL.

```abap
IF o_locutor IS BOUND.
    WRITE: / 'Objeto criado'.
ENDIF.
```