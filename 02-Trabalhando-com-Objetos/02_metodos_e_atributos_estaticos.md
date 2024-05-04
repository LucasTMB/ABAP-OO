# Métodos e atributos estáticos de uma classe

- Uma classe pode ter atributos e métodos que são utilizados apenas nela. Para fazer essa definição é necessário colocar prefixo **"CLASS-"**  no método ou atributo.
    
    ```abap
    CLASS lcl_locutor DEFINITION.
    PUBLIC SECTION.
        CLASS-DATA: _instancia TYPE REF TO lcl_locutor.
     
        CLASS-METHODS: 
              _gerar_instancia RETURNING VALUE(_instancia) TYPE REF TO lcl_locutor.
     
        DATA: nome TYPE string,
              idade TYPE i,
              ultima_mensagem TYPE string.
     
        METHODS:
              falar IMPORTING lv_mensagem TYPE string.
    ENDCLASS.
    ```
    
- É necessário também implementar o método
    
    ```abap
    CLASS lcl_locutor IMPLEMENTATION.
        METHOD falar.
        ENDMETHOD.
     
        METHOD _gerar_instancia.
        ENDMETHOD.
    ENDCLASS.
    ```
    

**Obs:** é uma boa prática inserir um "_" no começo da variável, para deixar claro que é um atributo ou método estático de uma classe.