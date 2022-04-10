#include "totvs.ch"
#include "TbiConn.ch" //usar uma função PREPARE.... simula abrir as talebas e variaveis

/*/{Protheus.doc} manipulacao
Manutenção de dados em SB1-Descrição Generica do Produto

@autor      Helder Alves Couto
@version    11.3.10.201812061821
@since      10/04/2022
/*/

User Function manipulacao()
	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	dbSelectArea("SB1")//seleciona a tabela
	dbSetOrder(1)//indice que vai buscar, remover se for usar nickname

	if dbSeek(xFilial()+cCliente+cLoja)//vai retornar a filial com o indice criado, dbSeek procura a xfilial com o indice ou nao
		MsgAlert("Achou")
	else
		//Incluir registro na tabela
		RecLock("SB1", .T.)//incluindo ou recriando, mantem travada a tabela
		B1_FILIAL := xFilial()
		B1_CLIENT := "000001"
		B1_LOJA := "01"
		B1_PRODUT := "000001          "
		B1_UM := "PC"
		B1_UMCLI := "CX"
		B1_TIPO := "M"
		B1_FATOR := 1
		MsUnlock() //destrava a tabela, (MsUnlock, Unlock, dbUnlock)
	endif

	//Abra a tabela "SA1" e exiba o nome do cliente em uma mensagem de MsgInfo

    //Abra a tabela "SB1" e exiba o nome do produto em um MsgInfo

	RESET ENVIRONMENT//Reseta o environment
Return
