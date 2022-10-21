// 55.Elaborar um programa que exiba na tela automaticamente todos os
// múltiplos de 3 existentes entre 1 e 100. Utilizar obrigatoriamente o
// laço finito (para) para esta solução.

Function Main()

        // Declaração das variaveis
        local nI

        // Loop for com um if dentro para verificar se o numero é multiplo de 3
        for nI := 0 to 100
                if Mod(nI, 3) == 0
                        QOUT(nI)
                end if
        next nI

return nil