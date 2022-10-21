// 72.Fazer um programa para calcular e exibir os "n" primeiros números da
// série de Fibonacci. O usuário informará o valor de n.

Function Main()

        // Declaração de variaveis
        local nVal1 := -1
        local nVal2 := 1
        local nVal3 := 0
        local nLimite := 0
        local nI

        // Solicita ao usuário para que informe um limite de numeros a serem exibidos
        ACCEPT "Digite um limite de números para serem exibidos na série de Fibonacci: " TO nLimite
        nLimite = Val(nLimite) - 1

        // Loop que realiza as manipulações necessarias para o calculo da série de Fibonacci
        for nI := 0 to nLimite
                nVal3 = nVal1 + nVal2
                nVal1 = nVal2
                nVal2 = nVal3
                QOut(nVal3)
        end

return nil