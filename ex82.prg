// 82.Fazer um programa que leia 10 valores e apresente-os na ordem
// inversa em que foram digitados.

function main()

        local aValores := {}
        local nValor := 0
        local nI

        // Adiciona valores digitados a um array
        for nI := 1 to 10
            ACCEPT "Informe valor " + AllTrim(Str(nI)) + ": " TO nValor
            nValor = Val(nValor)
            aAdd(aValores, nValor)
        end

        // Exibe o array da sua ultima posição até a primeira.
        for nI := 10 to 1 step -1
            QOut("Os valores na ordem inversa que foram digitados são respectivamente: " + AllTrim(Str(aValores[nI])))
        end

return nil
