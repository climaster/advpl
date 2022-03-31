#include "TOTVS.ch"

/*Funçao de teste
	Comentario de funcao
*/

User function teste()
	local cData1 := DTOS(Date())
	local dData2 := STOD("19830518")
	local nNumero := 20
	local dData4 := Date()

	MsgAlert("Valor: "+cData1)
	MsgAlert(dData2)
	MsgAlert("Valor: "+cValToChar(nNumero))
	MsgAlert(dData4)
	
	// cdata5 := Ctod("24/03/2022")
	// cdata6 := Stod("2020/05/20")
	// alert(cdata5)
	// alert(cdata6)

	//Bloco de codigo
	bNewPage := {|| Cabec(cData1,dData2nNumero), nLin:=9}

	if !Empty(nNumero);
			.and. nNumero > 2
		MsgAlert("Valor cData1: "+cData1+" Valor dData2: "+DTOS(dData2)+" Valor nNumero: "+cValToChar(nNumero))
		MsgAlert(dData4)
		MsgAlert(bNewPage)
	else 
		MsgAlert(dData4)
		MsgAlert(bNewPage)
	endif
		
return
