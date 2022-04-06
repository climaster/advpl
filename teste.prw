#include "TOTVS.ch"

/*Funçao de teste
	Comentario de funcao
*/

User function teste()
	// local cData1 := DTOS(Date())
	// local dData2 := STOD("19830518")
	//local nNumero := 20
	// local dData4 := Date()
	Local nNum

  Local aRotina := {,;
                    {"Pesquisar","AxPesqui",0,1},;
                    {"Visualizar","AxVisual",0,2},;
                    {"Alterar","AxAltera",0,3},;
                    {"Incluir","AxIncluir",0,4},;
                    {"Excluir","AxDeleta",0,5},;
                   }
	// MsgAlert("Valor: "+cData1)
	// MsgAlert(dData2)
	// MsgAlert("Valor: "+cValToChar(nNumero))
	// MsgAlert(dData4)

	// nResult := 1 + 1 // Soma
	// nResult := 1 - 1 // Subtração
	// nResult := 1 * 1 // Multiplicaçãao
	// nResult := 1 / 1 // Divisão
	// nResult := 2 ** 2 // Exponenciação
	// nResult := 2 ^ 2 // Exponenciação
	// nResult := 3 % 2 // Resto da divisao

	// cBranco := "Teste"+Space(10)
	// cBranco2 := cBranco - "  Teste2"

	// If "Teste3" $ cBranco
	// 	Alert("OK")
	// Else
	// 	Alert("Não encontrou")
	// Endif

	//Private dData := CTOD("10/01/2021")
	// cData := Dtoc(dData)
	// Alert(cData)

	// sData := Dtos(dData)
	// Alert(sData)

	// dData2 := Stod(sData)
	// Alert(dData2)

	// cNumero := CValToChar(nNumber)
	// cNumero2 := Str(nNumero) //Permite que tenha parametros

	// cNumero3 := Str(nNumero,5,2) //5 casas e 2 casas decimais

	// cNumero4 := StrZero(nNumero,10) //Preenche com zeros a esquerda

	// cNumero5 := Val(cNumero3) //Conversão de valores para inteiro

	// cNum := Alltrim("     Helder      ") //Remove os espaços
	// cNum2 := AllTrim(cNum)

	// cAsc := ASC("A")//Tabela asc
	// cChr := CHR(cAsc)//Converte de asc para letra

	// cTexto := At("L","HELDER")//Pega a primeira posição da letra pesquisada

	// cTexto := RAT("L","HELDERL") //Pega a ultima posição da letra pesquisada

	// nNumCar := Len("HELDER")

	// nNumCar := LOWER("HELDER")
	// nNumCar := UPPER("helder")
	// nNumCar := CAPITAL("HELDER")

	// cNomeCli := "Helder Alves Couto"


	// if "HELDER" $ UPPER(cNomeCli)
	// 	MsgAlert("Contém!")
	// else
	// 	MsgAlert("Não contém!")
	// endif

	// STUFF("PPQQQPP",3,3,"RRR")//troca os caracteries começando na 3 posição e alterar 3 casas

	// cNomeCli := SubStr("Helder Alves Couto",1,6)

	// PadR("Helder Alves Couto",20,"*")//Rigth
	// PadC("Helder Alves Couto",50,"*")//Center
	// PadL("Helder Alves Couto",20,"*")//Left

	// Replicate("*",100)

	// StrTran("Helder Alves Couto","e","a")//alterar todas as letras "e" para "a"

	// // Função Abs retorna o valor absoluto
	// nTotal := ABS(100-1000)

	// nNumero := Int(10.389)

	// nNumero := NoRound(10.389,2)

	// nNumero := Round(10.389,2)

	// nNumero := Round(10.3894,2)

	// if VALTYPE(nNumero) == "N"
	// endif

	// if TYPE(nNumero) == "D"
	// endif

	// For nNum := 1 to 10
	// 	Conout(CValToChar(nNum))//escreve no log do server
	// 	if nNum == 5
	// 		Loop //Não executa mais nada, para
	// 	elseif nNum == 9
	// 		Exit //sai do loop
	// 	Endif

	// 	Conout("Passou "+CValToChar(nNum)+" Vezes.")
	// Next

	// For nNum := 1 to 10 STEP 2 //executa de 2 em 2
	// 	Conout(CValToChar(nNum))//escreve no log do server
	// 	if nNum == 5
	// 		Loop //Não executa mais nada, para
	// 	elseif nNum == 9
	// 		Exit //sai do loop
	// 	Endif

	// 	Conout("Passou "+CValToChar(nNum)+" Vezes.")
	// Next

	// For nNum := 1 to 10 STEP 2 //executa de 2 em 2
	// 	Conout(CValToChar(nNum))//escreve no log do server
	// 	if nNum == 5
	// 		Loop //Não executa mais nada, para
	// 	elseif nNum == 9
	// 		Exit //sai do loop
	// 	else
	// 		nNum --
	// 	Endif

	// 	Conout("Passou "+CValToChar(nNum)+" Vezes.")
	// Next

	// nNum := 0
	// While nNum <= 10
	// 	if nNum == 5
	// 		Loop //Não executa mais nada, para
	// 	elseif nNum == 9
	// 		Exit //sai do loop
	// 	Endif
	// 	nNum ++
	// end

	// Local lPagaIpva := .F.

	// While !Eof()
	// 	if cMeuCarro == "NOVO"
	// 		lPagaIpva := .T.
	// 	endif

	// 	if lPagaIpva
	// 		U_GeraTitulo()
	// 	endif

	// 	dbSkip()
	// End

	// Do CASE
	// CASE cMeuCarro == "NOVO"
	// 	lPagaIPVA := .T.
	// CASE cMeuCarro == "VELHO"
	// 	lPagaIPVA := .F.
	// OTHERWISE
	// 	lPagaIPVA := .F.
	// End CASE


	// cdata5 := Ctod("24/03/2022")
	// cdata6 := Stod("2020/05/20")
	// alert(cdata5)
	// alert(cdata6)

	//Bloco de codigo
	// bNewPage := {|| Cabec(cData1,dData2nNumero), nLin:=9}

	// if !Empty(nNumero);
		// 		.and. nNumero > 2
	// 	MsgAlert("Valor cData1: "+cData1+" Valor dData2: "+DTOS(dData2)+" Valor nNumero: "+cValToChar(nNumero))
	// 	MsgAlert(dData4)
	// 	MsgAlert(bNewPage)
	// else
	// 	MsgAlert(dData4)
	// 	MsgAlert(bNewPage)
	// endif

return
