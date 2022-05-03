// #########################################################################################
// Projeto:
// Modulo :
// Fonte  : param.prw
// -----------+-------------------+---------------------------------------------------------
// Data       | Autor             | Descricao
// -----------+-------------------+---------------------------------------------------------
// 02/05/2022 | helder couto      | Gerado no VSCode.
// -----------+-------------------+---------------------------------------------------------

//#include "protheus.ch"    Substituido por totvs.ch
//#include "vkey.ch"        Substituido por totvs.ch
//#include "Rwmake.ch"      >>>desnecessario<<<
#include "totvs.ch"
#include "JPEG.ch"
#include "msmgadd.ch"
#include "TbiConn.ch"
//------------------------------------------------------------------------------------------
/*/{Protheus.doc} param
Manuten��o de dados em Parametros.
@author    helder couto
@version   11.3.10.201812061821
@since     02/05/2022
/*/

User Function param()
	Local cTitle := "Parametros aula"
	Local cMVPar := "MV_ULMES"
	Local dParam := ""

	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	GetMV(cMVPar)

	dParam := GetMV(cMVPar) + 90
	PutMV(cMVPar,dParam)

	MsgAlert(GetMV(cMVPar), cTitle)

	RESET ENVIRONMENT
Return

