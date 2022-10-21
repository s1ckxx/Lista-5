// 53.Elaborar um programa que exiba na tela, automaticamente, valores
// gerados aleatoriamente, entre 10 e 99. Os valores deverão ser
// gerados indefinidamente até que surja o valor 80, que ao surgir não
// deve ser exibido na tela. Fazer 3 versões desta solução: uma
// utilizando laço com pré-teste (enquanto), outra usando laço com
// pós-teste (repita) e uma última usando laço finito (para).

Function Main()

        local nI := 1
        local aNumeros := {}
        local nRandom := 0
        local nInfinito := 100

        // Repetição usando o enquanto
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'while'" + chr(10))
        while .T.
                nRandom = hb_RANDOMINT(10, 99)
                if (nRandom <> 80)
                        aAdd(aNumeros, nRandom)
                        QOUT("Posicao [" + AllTrim(Str(nI)) + "]: "+ AllTrim(Str(aNumeros[nI])))
                else
                        exit
                end if
                nI++
        end do

        // Repetição usando o FOR
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'FOR'" + chr(10))
        for nI := 1 to nInfinito
                nRandom = hb_RANDOMINT(10, 99)
                if (nRandom <> 80)
                        aAdd(aNumeros, nRandom)
                        QOUT("Posicao [" + AllTrim(Str(nI)) + "]: "+ AllTrim(Str(aNumeros[nI])))
                        nInfinito++
                        loop
                else
                        Break
                end if
        next nI

        // Repetição usando o "faça enquanto"
        QOUT(chr(10) + "Exibindo números utilizando o laço de repetição 'do while'" + chr(10))
        do while .T.
                nRandom = hb_RANDOMINT(10, 99)
                if (nRandom <> 80)
                        aAdd(aNumeros, nRandom)
                        QOUT("Posicao [" + AllTrim(Str(nI)) + "]: "+ AllTrim(Str(aNumeros[nI])))
                else
                        exit
                end if
                nI++
        end

return nil