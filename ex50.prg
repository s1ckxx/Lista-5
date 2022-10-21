// 50.Elaborar um programa que exiba na tela automaticamente todos os
// números naturais entre 0 e 100, em ordem crescente. Fazer 3 versões
// desta solução: uma utilizando laço com pré-teste (enquanto), outra
// usando laço com pós-teste (repita) e uma última usando laço finito
// (para).

Function Main()

        local nI := 0

        //Repetição usando o enquanto
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'while'" + chr(10))
        while nI <= 100
                QOUT(nI)
                nI++
        end do

        //Repetição usando o FOR
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'FOR'" + chr(10))
        for nI = 0 to 100
                QOUT(nI)
        end

        //Repetição usando o "faça enquanto"
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'do while'" + chr(10))
        do while nI <= 100
                QOUT(nI)
                nI++
        end

return nil