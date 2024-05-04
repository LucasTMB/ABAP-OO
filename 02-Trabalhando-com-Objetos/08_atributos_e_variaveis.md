# Atributos x Variáveis

- Para referenciar que uma variável pertence ao objeto, utilizamos a palavra-chave "me". Ela funciona como o this em outras linguagens de programação.
    
    ```abap
    METHOD dizer_ultima_mensagem.
        DATA: ultima_mensagem TYPE string.
        me->falar(
            iv_mensagem = me->ultima_mensagem
            iv_ultima_mensagem = abap_true
        ).
        * WRITE: / 'Última mensagem dita:', me->ultima_mensagem COLOR COL_GROUP.
    ENDMETHOD.
    ```
    
- **Destruindo objetos**
    - Para destruir um objeto, é possível utilizar o comando FREE. Ele destrói todas as instâncias de um objeto criado.
        
        ```abap
        FREE lo_locutor1.
        ```
        
    - É possível declarar um método chamado destructor para a eliminação do objeto, mas o FREE já faz isso por debaixo dos panos. Então não precisamos declarar, mas é importante saber que ele existe.
        
        ```abap
        METHOD destructor.
        ENDMETHOD.
        ```