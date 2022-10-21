// 61.Desenvolver uma máquina de soma (cálculo de somatório). O
// programa deverá ler uma série indefinida de valores informados pelo
// usuário. A leitura deverá prosseguir até que o valor zero seja
// informado. Ao final apresentar na tela o total do somatório.
// Implementar uma versão com cada uma das três estruturas de
// repetição e mais uma utilizando o desvio incondicional.

Function Main()

        // Declaração de variáveis
        local nI
        local nSoma := 0
        local nNum := 1
        local nInfinito := 1

        // Loop while com um condicional interno que verifica se o usuario 
        // informou um valor maior que 0 para que seja adicionado ao somatorio
        while nNum > 0
                ACCEPT "Informe valores a serem somados! (Informe 0 para encerrar): " TO nNum
                nNum = Val(nNum)
                if nNum > 0
                        nSoma = nSoma + nNum
                elseif nNum == 0
                        QOut("(Loop while) O somatório dos valores informados é igual a: " + AllTrim(Str(nSoma)))
                end if
        end do

        // Variavel nInfinito criada para que fique dentro do loop até que seja encontrado o valor 0.
        for nI := 0 to nInfinito
                ACCEPT "Informe valores a serem somados! (Informe 0 para encerrar): " TO nNum
                nNum = Val(nNum)
                if nNum > 0
                        nSoma = nSoma + nNum
                        nInfinito = nInfinito +1
                elseif (nNum == 0)
                        QOut("(Loop for) O somatório dos valores informados é igual a: " + AllTrim(Str(nSoma)))
                        exit
                end do
        end

        // Laço faça enquanto com condicional interno que verifica se o usuario
        // informou um valor maior que 0 para que seja adicionado ao somatorio
        // caso seja informado 0 o loop é interrompido
        do while .T.
                ACCEPT "Informe valores a serem somados! (Informe 0 para encerrar): " TO nNum
                nNum = Val(nNum)
                if nNum > 0
                        nSoma = nSoma + nNum
                elseif nNum == 0
                        QOut("(Loop repita enquanto) O somatório dos valores informados é igual a: " + AllTrim(Str(nSoma)))
                        exit
                end if
        end do

return nil