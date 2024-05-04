# Construtores

O construtor é uma técnica fundamental na orientação a objetos que serve para inicializar objetos de uma classe assim que são criados.

- Criando um construtor para o nome do domínio
    
    ```abap
    CLASS lcl_dominio DEFINITION.
    PUBLIC SECTION.
        DATA:   nome  TYPE dd011-domname,
                tab_a TYPE TABLE OF dd07v,
                tab_b TYPE TABLE OF dd07v.
     
        METHODS:
                constructor IMPORTING iv_nome TYPE dd011-domname,
                resgatar_valores.
    ENDCLASS.
    ```
    
- Implementando o construtor para o nome do domínio
    
    ```abap
    CLASS lcl_dominio IMPLEMENTATION.
        METHOD resgatar_valores.
            CALL FUNCTION 'DD_DOMA_GET'
                EXPORTING
                    domain_name = nome
                TABLES 
                    dd07v_tab_a = tab_a
                    dd07v_tab_n = tab_b
                EXCEPTIONS
                    illegal_value = 1
                    op_failure = 2
                    OTHERS = 3.
     
            IF sy-subrc <> 0.
                "Deu erro, mas não faça nada.
            ENDIF.
        ENDMETHOD.
     
        METHOD constructor.
            nome = iv_nome.
        ENDMETHOD.
    ENDCLASS.
    ```
    
- Iniciando a classe e chamando o construtor
    
    ```abap
    START-OF-SELECTION.
        DATA: lo_dominio_xfeld TYPE REF TO lcl_dominio.
        
        CREATE OBJECT lo_dominio_xfeld
            EXPORTING
                iv_nome = 'XFELD'.
    ```
    
- Construtor de classes
    
    É utilizado quando queremos carregar atributos e métodos estáticos no momento em que a classe é acessada.
    
    - Para criar esse construtor, é necessário criar um class-constructor dentro de um CLASS-METHODS
        
        ```abap
        CLASS lcl_dominio DEFINITION.
            PUBLIC SECTION.
                DATA: nome TYPE dd011-domname,
                      tab_a TYPE TABLE OF dd07v,
                      tab_b TYPE TABLE OF dd07v.
         
                CLASS-METHODS:
                    class_constructor. " Não é necessário importar valores, pois não consegue acessar"
         
                METHODS:
                    constructor IMPORTING iv_nome TYPE dd011-domname,
                    resgatar_valores.
         
        ENDCLASS.
        ```
        
    - É necessário implementar também e informar o que o class_constructor deve fazer
        
        ```abap
        METHOD class_constructor.
            WRITE: / 'Classe criada'.
        ENDMETHOD.
        ```