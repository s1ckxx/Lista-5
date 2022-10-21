// 78.Fazer um programa para determinar e exibir se um número informado
// é primo.

Function Main()

        local nNum := 0
        local nResultado := 0
        local nI

        // Valida número informado
        while (nNum <= 0)
                ACCEPT "Digite um número: " TO nNum
                nNum = Val(nNum)

                if (nNum <= 0)
                        QOut("Por favor informe um número maior que 0!")
                end if
        end

        // Verifica se o número informado é primo!
        for nI := 2 to (nNum / 2)
                if Mod(nNum, nI) == 0
                        nResultado++
                        exit
                end if
        end

        // Exibe resultado
        if nResultado == 0
                QOut(AllTrim(Str(nNum)) + " é um número primo!")
        else
                QOut(AllTrim(Str(nNum)) + " não é um número primo!")
        end if

return nil