# Acessando Métodos e Atributos

- Para obter o valor de um atributo de um objeto através de uma instância, podemos utilizar a seta “→”
    
    ```abap
    WRITE: / 'O nome do domínio é: ', lo_dominio_xfeld->nome.
    ```
    
- Para chamar métodos é necessário a utilização dessa seta "=>".
    
    ```abap
    lcl_dominio=>_gerar_dominio( iv_nome = ).
    ```