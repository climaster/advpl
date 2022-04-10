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
	dbSetOrder(1)//indice que vai buscar, removo se for usar nickname
	//dbOrderNickName("Z1CLIENT")
	if dbSeek(xFilial()+cCliente+cLoja)//vai retornar a filial com o indice criado, dbSeek procura a xfilial com o indice ou nao
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
	//dbSetOrder(1)//indice que vai buscar, colocou o nickname, não precisa do dbSetOrder()
	dbOrderNickName("Z1PRODUT")
	if dbSeek(xFilial()+cCliente+cLoja)//vai retornar a filial com o indice criado
		RecLock("SZ1", .F.)//recriando, mantem travada a tabela
		dbDelete()
		MsUnlock() //destrava a tabela
	else
		MsgAlert("Sem registro para excluir")
	endif

	dbSelectArea("SZ1")//seleciona a tabela
	//dbSetOrder(1)//indice que vai buscar
	dbOrderNickName("Z1PRODUT")
	dbGoTop() //vai pro inicio do arquivo, ou seja para o primeiro registro da tabela, posso usar dbGoTo(Numero_do_registro_para_alterar)
	//dbGoBotton() //vai para o ultimo registro, muda no while !Eof() End Of File, para !Bof() Begin Of File.
	if dbSeek(xFilial()+cCliente+cLoja)//vai retornar a filial com o indice criado
		MsgAlert("Achou")

		//Vai atualizar todos os dados do arquivo, enquanto nao for o final do arquivo, para Botom, usar while !Bof()
		while !Eof()

			RecLock("SZ1", .F.)//recriando, mantem travada a tabela
			Z1_FATOR := 20
			MsUnlock() //destrava a tabela

			dbSkip() //Pula pro proximo registro, para atualizar os dados, dbSkip(-1) ele atualize e fique no mesmo registro, dbSkip() está amarrado a ultima tabela, para alterar ver nos prints
		end
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
	dbGoTop() //dbGoTop(1), Numero do produto que eu quero, posso ver em RECNO() em inspeção, não usar na produção
	RecLock("SZ1", .F.)//recriando, mantem travada a tabela
	Z1_FATOR := 1
	MsUnlock() //destrava a tabela

	//dbRLock()
	/*
	if SF2->(dbRLock())
	...
	MsUnLockAll() //desbloqueia todas as tabelas bloqueadas
	
	*/

	RESET ENVIRONMENT//Reseta o environment
Return
