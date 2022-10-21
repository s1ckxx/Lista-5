// 71.Fazer um programa que dado um número inteiro positivo, informado
// pelo usuário, calcule n e exiba o seu fatorial.

Function Main()

        // Declaração de variaveis
        local nVal := 0
        local nFatorial := 1
        local nAux := 0

        // Loop que verifica se usuario informou um valor valido
        while nVal <= 0
                ACCEPT "Informe um valor maior que 0 para calculo do seu fatorial: " TO nVal
                nVal = Val(nVal)
        end

        // Variavel aux apenas para fins de exibição da mensagem
        nAux = nVal

        // Realiza calculo do fatorial
        while nVal > 0
                nFatorial = nFatorial * nVal
                nVal--
        end

        // Exibe resultado do calculo do fatorial
        QOut("O fatorial de " + AllTrim(Str(nAux)) + " é: " + AllTrim(Str(nFatorial)))

return nil