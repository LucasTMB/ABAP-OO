# POO em ABAP

- Com o ABAP OO, ganhamos duas formas de codificação de classes, as quais, podem ser utilizadas em caráter global dentro do sistema (Classes Globais) ou apenas dentro do contexto de nossa aplicação (Classes Locais);
- Desenvolvimento de uma mesma solução em caráter colaborativo e fácil manutenção ou criação de novas funcionalidades;
- A partir da versão 7.40 da plataforma Netweaver da SAP, o ABAP OO ganhou novos comandos que o adequam à uma linguagem mais próxima a orientação à objetos do que uma linguagem adaptada.

## Exemplo na Antiga Versão

```abap
"Definição da Classe
CLASS lcl_ola_mundo DEFINITION.
	PUBLIC SECTION.
		METHODS:
			dizer_ola_mundo.
ENDCLASS.

START-OF-SELECTION.
	DATA: lo_ola_mundo TYPE REF TO lcl_ola_mundo.

	CREATE OBJECT lo_ola_mundo.
	lo_ola_mundo->dizer_ola_mundo( ).

"Implementação da Class
CLASS lcl_ola_mundo IMPLEMENTATION.
	METHOD dizer_ola_mundo.
		WRITE: / 'Olá mundo'.
	ENDMETHOD.
ENDCLASS.
```

## Exemplo na Nova Versão

```abap
"Definição da Classe
CLASS lcl_ola_mundo DEFINITION.
	PUBLIC SECTION.
		METHODS:
			dizer_ola_mundo.
ENDCLASS.

START-OF-SELECTION.
	NEW lcl_ola_mundo( )->dizer_ola_mundo( ).

"Implementação da Class
CLASS lcl_ola_mundo IMPLEMENTATION.
	METHOD dizer_ola_mundo.
		WRITE: / 'Olá mundo'.
	ENDMETHOD.
ENDCLASS.
```