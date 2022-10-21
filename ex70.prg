Function Main()

        // Declaração de variaveis
        local nI
        local nPotencia

        // Loop que realiza o calculo da potência até o 15 e exibe
        for nI := 0 to 15
                nPotencia = (3 ^ nI)
                QOut("3^" + AllTrim(Str(nI)) + " = " + AllTrim(Str(Round(nPotencia, 0))))
        end

return nil