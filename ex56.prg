// 56.Elaborar um programa que exiba na tela automaticamente todos os
// múltiplos de um determinado número informado pelo usuário,
// existentes entre 1 e um limite, que também deverá ser informado
// pelo usuário. Fazer duas versões da solução utilizando diferentes
// estruturas de repetição, a sua escolha.

Function Main()

        // Declaração das variaveis
        local nI := 1
        local nNum := 0
        local nLimite := 0

        // Solicita os valores ao usuario
        ACCEPT "Informe um número para que sejam exibido seus multiplos: " TO nNum
        ACCEPT "Informe o valor limite para exibição dos multiplos: " TO nLimite
        nNum = Val(nNum)
        nLimite = Val(nLimite)

        // Loop for que exibe os multiplos do número informado pelo usuario dentro da faixa especificada
        QOUT("Exibindo os valores multiplos de " + AllTrim(Str(nNum)) + " entre 1 e " + AllTrim(Str(nLimite)) + ":" + chr(10))
        for nI := 1 to nLimite
                if Mod(nI, nNum) == 0
                        QOUT(AllTrim(Str(nI)) + " é multiplo de " + AllTrim(Str(nNum)))
                end if
        next nI

        // Loop while que exibe os multiplos do número informado pelo usuario dentro da faixa especificada
        QOUT(chr(10) + "Exibindo os valores multiplos de " + AllTrim(Str(nNum)) + " entre 1 e " + AllTrim(Str(nLimite)) + " utilizando o laço while:" + chr(10))
        while nI <= nLimite
                if Mod(nI, nNum) == 0
                        QOUT(AllTrim(Str(nI)) + " é multiplo de " + AllTrim(Str(nNum)))
                end if
                nI++
        end do

return nil