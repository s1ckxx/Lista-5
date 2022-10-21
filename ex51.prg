// 51.Elaborar um programa que exiba na tela automaticamente todos os
// números naturais entre 100 e 0, em ordem decrescente. Fazer 3

// versões desta solução: uma utilizando laço com pré-teste (enquanto),
// outra usando laço com pós-teste (repita) e uma última usando laço
// finito (para).

Function Main()

        local nI := 100

        // Repetição usando o enquanto
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'while'" + chr(10))
        while nI >= 0
                QOUT(nI)
                nI--
        end do

        // Repetição usando o FOR
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'FOR'" + chr(10))
        for nI := 100 to 0 step -1
                QOUT(nI)
        end

        // Repetição usando o "faça enquanto"
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'do while'" + chr(10))
        do while nI >= 0
                QOUT(nI)
                nI--
        end

return nil