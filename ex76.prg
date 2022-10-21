// 76.Para cada uma das séries abaixo, elabore um programa que calcule o
// valor de Z. O valor de n deverá ser informado pelo usuário:

Function Main()

        // Declaração de variaveis
        local nI := 1
        local nX
        local nResultado := 0
        local nN := 0
        local cSinal := "-"



        // Loop que solicita valor de N e verifica se o mesmo é maior que 0
        while nN <= 0
                ACCEPT "Informe valor de N: " TO nN
                nN = Val(nN)

                if nN <= 0
                        QOut("Informe um valor maior que 0!")
                end if
        end

        // Realiza calculo da série 1
        for nI := 1 to nN
                nResultado = nResultado + (1/nI)
        end if

        QOut("O resultado do calculo da série é: " + AllTrim(Str(nResultado)))

        // Algoritmo que realiza calculo da série 2
        while nN > 0
                nResultado = nResultado + nI/nN
                nN--
                nI++
                QOut(nResultado)
        end

        // Algoritmo que realiza calculo da série 3       
        for nI := 1 to nN step 2
                nI := nI + 1
                nResultado += ( (nI / (nI * 2)) - (nI / (nI * 2)) )
        next nI

        QOut("O resultado do calculo da série é: " + AllTrim(Str(nResultado)))

return nil