// 57.Elaborar um programa que gere, automaticamente, valores
// aleatórios, entre 0 e 99 e exiba na tela apenas àqueles que são
// múltiplos de um número informado pelo usuário. A quantidade de
// valores a serem
// gerados, também deve ser informado pelo usuário. Fazer duas
// versões da solução utilizando diferentes estruturas de repetição, a
// sua escolha.

Function Main()

        // Declaração das variaveis
        local nNum := 0
        local nRandom := 0
        local nQtdValores := 0
        local nI := 0

        // Solicita valores ao usuario e atribui as variaveis
        ACCEPT "Informe um número: " TO nNum
        ACCEPT "Informe a quantidade de valores a serem gerados: " TO nQtdValores
        nNum = Val(nNum)
        nQtdValores = Val(nQtdValores)

        // Laço 'while' com condicional que verifica se o número gerado aleatoriamente é multiplo do número informado pelo usuário
        QOUT("Exibindo valores gerados aleatoriamente que são multiplos do valor informado! (Utilizando o laço WHILE)" + chr(10))
        while nI < nQtdValores
                nRandom = hb_RandomInt(0, 99)
                if Mod(nRandom, nNum) == 0
                        QOUT(AllTrim(Str(nRandom)) + " é multiplo de " + AllTrim(Str(nNum)))
                end if
                nI++
        end do

        // Laço 'for' com condicional que verifica se o número gerado aleatoriamente é multiplo do número informado pelo usuário
        QOUT(chr(10) + "Exibindo valores gerados aleatoriamente que são multiplos do valor informado (Utilizando o laço FOR)!" + chr(10))
        for nI := 0 to nQtdValores
                nRandom = hb_RandomInt(0, 99)
                if Mod(nRandom, nNum) == 0
                        QOUT(AllTrim(Str(nRandom)) + " é multiplo de " + AllTrim(Str(nNum)))
                end if
        next nI
        
return nil