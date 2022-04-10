#include "totvs.ch"
#include "msmgadd.ch"
#include "TbiConn.ch" //usar uma função PREPARE.... simula abrir as talebas e variaveis

/*/{Protheus.doc} teste4
Manutenção de dados em SB1-Descrição Generica do Produto

@autor      Helder Alves Couto
@version    11.3.10.201812061821
@since      09/04/2022
/*/

User Function teste4()
	//Tabela SA1 Cliente
	Local cCliente := "000001"
	Local cLoja := "01"

	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	dbSelectArea("SZ1")//seleciona a tabela
	dbSetOrder(1)//indice que vai buscar
	if dbSeek(xFilial()+cCliente+cLoja)//vai retornar a filial com o indice criado
		MsgAlert("Achou")
	else
		//Incluir registro na tabela
		RecLock("SZ1", .T.)//incluindo ou recriando, mantem travada a tabela
		Z1_FILIAL := xFilial()
		Z1_CLIENT := "000001"
		Z1_LOJA := "01"
		Z1_PRODUT := "000001          "
		Z1_UM := "PC"
		Z1_UMCLI := "CX"
		Z1_TIPO := "M"
		Z1_FATOR := 10
		MsUnlock() //destrava a tabela, (MsUnlock, Unlock, dbUnlock)
	endif

	dbSelectArea("SZ1")//seleciona a tabela
	dbSetOrder(1)//indice que vai buscar
	if dbSeek(xFilial()+cCliente+cLoja)//vai retornar a filial com o indice criado
		MsgAlert("Achou")
		RecLock("SZ1", .F.)//recriando, mantem travada a tabela
		Z1_FATOR := 20
		MsUnlock() //destrava a tabela
	else
		//Incluir registro na tabela
		RecLock("SZ1", .T.)//incluindo ou recriando, mantem travada a tabela
		Z1_FILIAL := xFilial()
		Z1_CLIENT := "000001"
		Z1_LOJA := "01"
		Z1_PRODUT := "000001          "
		Z1_UM := "PC"
		Z1_UMCLI := "CX"
		Z1_TIPO := "M"
		Z1_FATOR := 10
		MsUnlock() //destrava a tabela, (MsUnlock, Unlock, dbUnlock)
	endif

	dbSelectArea("SZ1")//seleciona a tabela
	dbSetOrder(1)//indice que vai buscar
	if dbSeek(xFilial()+cCliente+cLoja)//vai retornar a filial com o indice criado
		RecLock("SZ1", .F.)//recriando, mantem travada a tabela
			dbDelete()
		MsUnlock() //destrava a tabela
	else
		MsgAlert("Sem registro para excluir")
	endif

	RESET ENVIRONMENT//Reseta o environment
Return
