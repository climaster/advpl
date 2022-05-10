#include "Rwmake.ch"
#include "totvs.ch"

//------------------------------------------------------------------------------------------
/*/{Protheus.doc} IVisual
Criação de tela para input de dados

@author    helder couto
@version   11.3.10.201812061821
@since     09/05/2022
/*/

User Function IVisual()
    Local oDlg
    Local cTitulo   := "Aula MSDIALOG"
    Local cTexto    := "CNPJ"
    Local cCGC      := Space(13)
    Local nOpca     := 0

	DEFINE MSDIALOG oDlg TITLE cTitulo FROM 000,000 TO 080,300 PIXEL //oDlg é o objeto tem que está dentro deste objeto, From tamanho inicial da linha e To tamanho final da linha
	@ 001,001 TO 040, 150 OF oDlg PIXEL
	@ 010,010 SAY cTexto SIZE 55, 07 OF oDlg PIXEL //exibe texto na tela
	@ 010,050 MSGET cCGC SIZE 55, 11 OF oDlg PIXEL 	PICTURE "@R 99.999.999/9999-99" VALID ACGC(@cCGC) //campo onde insere dados, VALID! Vazio(), pode ter uma função
	DEFINE SBUTTON FROM 010, 120 TYPE 1 ACTION (nOpca := 1,oDlg:End()) ENABLE OF oDlg //define o botão, 1 é = ok, habilita o botão
	DEFINE SBUTTON FROM 020, 120 TYPE 2 ACTION (nOpca := 2,oDlg:End())ENABLE OF oDlg //opção para sair
	ACTIVATE MSDIALOG oDlg CENTERED //caixa centralizada na tela

Return
