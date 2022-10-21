// 60.Faça um programa que calcule a somatória dos "n" primeiros números
// naturais pares ou ímpares. O usuário informará através de digitação:
// a quantidade de números desejada ("n") e escolhe entre par o ímpar.

Function Main()

        // Declaração de variáveis
        local nI
        local nSoma := 0
        local nNum := 0
        local cOP := ""

        // Verifica se o usuário forneceu todas as informações corretamente e atribui as variaveis
        while (nNum <= 0) .or. (cOP == "")
                if (nNum <= 0) .or. (cOP == "")
                        ACCEPT "Informe a quantidade de numeros desejada: " TO nNum
                        ACCEPT "Escolha entre par ou impar: " TO cOP
                        nNum = Val(nNum)
                else
                        QOut("Por favor forneça todas as informações corretamente!")
                end if
        end do

        // Condição que verifica qual se o usuario escolheu entre par ou impar com um loop interno que realiza a operação solicitada
        // No loop é utilizado o (nNum - 1) pois o 0 é considerado um número natural
        if (Upper(SubStr(cOP, 1, 1)) == "P")
                for nI := 0 to (nNum - 1)
                        if Mod(nI, 2) == 0
                                nSoma = nSoma + nI
                        end if
                next nI
                QOut("A somatória dos " + AllTrim(Str(nNum)) + " primeiros números naturais que sao pares é: " + AllTrim(Str(nSoma)))
        // Caso o a operação escolhida não seja par, realiza a operação impar
        else
                for nI := 0 to (nNum - 1)
                        if Mod(nI, 2) == 1
                                nSoma = nSoma + nI
                        end if
                next nI
                QOut("A somatória dos " + AllTrim(Str(nNum)) + " primeiros números naturais que sao impares é: " + AllTrim(Str(nSoma)))
        end if
        
return nil