REPORT zprimeiro_poo.

CLASS lcl_jogador  DEFINITION DEFERRED.
CLASS lcl_chuteira DEFINITION DEFERRED.
CLASS lcl_selecao  DEFINITION DEFERRED.
CLASS lcl_campo    DEFINITION DEFERRED.

CLASS lcl_pessoa DEFINITION.
  PUBLIC SECTION.
    DATA: nome          TYPE string,
          idade         TYPE i,
          cor_racial    TYPE string,
          estilo_cabelo TYPE string.

    METHODS: falar.
ENDCLASS.

CLASS lcl_tecnico DEFINITION.
  PUBLIC SECTION.
    DATA: selecao TYPE REF TO lcl_selecao.
ENDCLASS.

CLASS lcl_jogador DEFINITION.
  PUBLIC SECTION.
    DATA: numero     TYPE i,
          posicao    TYPE string,
          posse_bola TYPE boolean,
          selecao    TYPE REF TO lcl_selecao,
          chuteiras  TYPE TABLE OF REF TO lcl_chuteira,
          campo      TYPE REF TO lcl_campo.

    METHODS:
      chutar,
      movimentar IMPORTING distancia TYPE p.
ENDCLASS.

CLASS lcl_chuteira DEFINITION.
  PUBLIC SECTION.
    DATA: tamanho       TYPE i,
          marca         TYPE string,
          tamanho_trava TYPE c,
          lado          TYPE c.
ENDCLASS.

CLASS lcl_selecao DEFINITION.
  PUBLIC SECTION.
    DATA: jogadores TYPE TABLE OF REF TO lcl_jogador,
          tecnico   TYPE REF TO lcl_tecnico.
    METHODS:
      escalar_jogador IMPORTING jogador TYPE REF TO lcl_jogador.
ENDCLASS.

CLASS lcl_campo DEFINITION.
  PUBLIC SECTION.
    DATA: tipo_grama  TYPE string,
          largura     TYPE p,
          comprimento TYPE p,
          jogadores   TYPE TABLE OF REF TO lcl_jogador.
ENDCLASS.

CLASS lcl_pessoa IMPLEMENTATION.
  METHOD falar.
    "Codificação aqui
  ENDMETHOD.
ENDCLASS.

CLASS lcl_jogador IMPLEMENTATION.
  METHOD chutar.
  ENDMETHOD.
  METHOD movimentar.
  ENDMETHOD.
ENDCLASS.

CLASS lcl_selecao IMPLEMENTATION.
  METHOD escalar_jogador.
  ENDMETHOD.
ENDCLASS.