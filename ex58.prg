// 58.Faça um programa que calcule a somatória dos dez primeiros
// números naturais.

Function Main()

        // Declaração de variáveis
        local nI
        local nSoma := 0

        // Loop para realizar a soma dos 10 primeiros números naturais
        for nI := 0 to 9
                nSoma = nSoma + nI
        next nI

        // Exibe o resultado da soma
        QOut("A somatória dos dez primeiros números naturais é: " + AllTrim(Str(nSoma)))
        
return nil