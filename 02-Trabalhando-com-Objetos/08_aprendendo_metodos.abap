REPORT ZMETODOS_POO.

CLASS lcl_locutor DEFINITION.
  PUBLIC SECTION.
    DATA: nome            TYPE string,
          idade           TYPE i,
          ultima_mensagem TYPE string.

    METHODS:
      constructor IMPORTING iv_nome  TYPE string
                            iv_idade TYPE i OPTIONAL, "Não precisa ser instanciado"

      falar IMPORTING iv_mensagem TYPE string OPTIONAL
                it_mensagens TYPE string_table OPTIONAL
                PREFERRED PARAMETER iv_mensagem,falar IMPORTING iv_mensagem TYPE string,

      possui_idade RETURNING VALUE(return) TYPE boolean.
ENDCLASS.

START-OF-SELECTION.
  DATA: lo_locutor1 TYPE REF TO lcl_locutor,
        lo_locutor2 TYPE REF TO lcl_locutor.

  CREATE OBJECT lo_locutor1
    EXPORTING
      iv_nome  = 'Max'
      iv_idade = 23.

  CREATE OBJECT lo_locutor2
    EXPORTING
      iv_nome  = 'José'.

  lo_locutor1->falar( iv_mensagem = 'Quero café!' ).
  lo_locutor2->falar( iv_mensagem = 'Quero ir pra casa.' ).

  IF lo_locutor1->possui_idade( ) = abap_true.
    WRITE: / 'Sim, possui idade'.
  ELSE.
    WRITE: / 'Não possui idade'.
  ENDIF.

  IF lo_locutor2->possui_idade( ) = abap_true.
    WRITE: / 'Sim, possui idade'.
  ELSE.
    WRITE: / 'Não possui idade'.
  ENDIF.

CLASS lcl_locutor IMPLEMENTATION.
  METHOD constructor.
    nome = iv_nome.
    idade = iv_idade.
  ENDMETHOD.

  METHOD falar.
    WRITE: / 'O locutor', nome COLOR COL_TOTAL, 'diz:', iv_mensagem COLOR COL_POSITIVE.
    ultima_mensagem = iv_mensagem.
  ENDMETHOD.

  METHOD possui_idade.
    IF idade IS INITIAL.
      return = abap_false.
    ELSE.
      return = abap_true.
    ENDIF.
  ENDMETHOD.
ENDCLASS.