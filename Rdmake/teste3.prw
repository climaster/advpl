#include "totvs.ch"
#include "msmgadd.ch"
#include "TbiConn.ch" //usar uma função PREPARE.... simula abrir as talebas e variaveis
//#include "TbiCode.ch"

User Function ABRE_SZ1()
    Local nx := 0
    Local aCampos := {}
    Local aTitulos := {}
    RpcSetType(3)
    PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

    AADD(aCampos,"C5_FILIAL")
    AADD(aCampos,"C5_NUM")

    SX3->(dbSetOrder(2))//
    
    For nx:=1 To Len(aCampos)
        SX3->(dbSeek(aCampos[nx]))
        aAdd(aTitulos,AllTrim(SX3->X3_TITULO))
    Next

    aTitulos:= {}
    SX3->(dbGoTop())
    aEval(aCampos,{|X| SX3->(dbSeek(x)),AAdd(aTitulos,AllTrim(SX3->X3_TITULO))})

    RESET ENVIRONMENT//Reseta o environment
Return
