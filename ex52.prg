// 52.Elaborar um programa que exiba na tela, automaticamente, 50
// valores gerados aleatoriamente, entre 10 e 99. Fazer 3 versões desta
// solução: uma utilizando laço com pré-teste (enquanto), outra usando
// laço com pós-teste (repita) e uma última usando laço finito (para).

Function Main()

        local nI := 1
        local aNumeros := {}

        // Repetição usando o enquanto
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'while'" + chr(10))
        while nI <= 50
                aAdd(aNumeros, hb_RANDOMINT(10, 99))
                QOUT("Posicao [" + AllTrim(Str(nI)) + "]: "+ AllTrim(Str(aNumeros[nI])))
                nI++
        end do

        // Repetição usando o FOR
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'FOR'" + chr(10))
        for nI := 1 to 50
                aAdd(aNumeros, hb_RANDOMINT(10, 99))
                QOUT("Posicao [" + AllTrim(Str(nI)) + "]: "+ AllTrim(Str(aNumeros[nI])))
        end

        // Repetição usando o "faça enquanto"
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'do while'" + chr(10))
        do while nI <= 50
                aAdd(aNumeros, hb_RANDOMINT(10, 99))
                QOUT("Posicao [" + AllTrim(Str(nI)) + "]: "+ AllTrim(Str(aNumeros[nI])))
                nI++
        end

return nil