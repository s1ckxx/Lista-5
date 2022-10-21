// 80.Considere dados referentes a altura e o sexo de 40 pessoas. Fazer um
// algoritmo que calcule e escreva:
// a. A maior e a menor altura do grupo.
// b. A média de altura das mulheres.
// c. O número de homens.

Function Main()

        local nMaior := 0
        local nMenor := 240
        local nMedia := 0
        local nSexo := 0
        local nAltura := 0
        local aSexo := {}
        local aAltura := {}
        local nI
        local nQtdMulheres := 0
        local nQtdHomens := 0
    
        // nSexo = 1 é masculino e nSexo = 2 é feminino
        // Altura gerada entre 1 metro e 2.30 metros
        for nI := 1 to 40
            nSexo = hb_RandomInt(1, 2)
            nAltura = hb_RandomInt(100, 230)
            aAdd(aSexo, nSexo)
            aAdd(aAltura, nAltura)
            
            // Verifica se é masculino ou feminino e atribui a contagem
            if (nSexo == 1)
                nQtdHomens++
            else
                nQtdMulheres++
                nMedia = nMedia + nAltura
            end if

            // Verifica se altura gerada é maior ou menor que a gerada anteriormente
            if (nAltura > nMaior)
                nMaior = nAltura
            end if

            if (nAltura < nMenor)
                nMenor = nAltura
            end if

        end

        // Formata a altura e realiza calculo da media da altura das mulheres
        nMedia = (nMedia / 100) / nQtdMulheres
        nMaior = (nMaior / 100)
        nMenor = (nMenor / 100)

        // Exibe informações solicitadas em tela
        QOut("A maior altura do grupo é: " + AllTrim(Str(nMaior)) + "m")
        QOut("A menor altura do grupo é: " + AllTrim(Str(nMenor)) + "m")
        QOut("A média de altura das mulheres é: " + AllTrim(Str(nMedia)) + "m")
        QOut("O número de homens do grupo é: " + AllTrim(Str(nQtdHomens)))

return nil