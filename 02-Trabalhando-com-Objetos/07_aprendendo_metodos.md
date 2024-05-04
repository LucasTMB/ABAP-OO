# Aprendendo melhor sobre Métodos

- Quando o método possui um Returning, ele é considerado um método funcional.
- Quando ele tem Exporting, é apenas um método padrão
- Quando o parâmetro é returning, posso usar direto na expressão. Em um IF, por exemplo.
- É uma má prática atribuir mais de uma função em um método
- Para informar que um parâmetro é opcional no construtor, podem inserir o OPTIONAL ao lado do parâmetro.
    
    ```abap
    METHODS:
        constructor IMPORTING iv_nome TYPE string
                              iv_idade TYPE i OPTIONAL,
    ```
    
- Para informar que o parâmetro opcional tem mais importância que o outro, é possível usar o PREFERRED MESSAGE.
    
    ```abap
    falar IMPORTING iv_mensagem TYPE string OPTIONAL
                    it_mensagens TYPE string_table OPTIONAL
                    PREFERRED PARAMETER iv_mensagem,
    ```