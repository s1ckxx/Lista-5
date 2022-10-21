// 83.Altera o algoritmo anterior, para que faça o mesmo para 10.000
// valores.

function main()

        // Declaração de variaveis
        local aValores := {}
        local nValor := 0
        local nI

        // Adiciona 10.000 valores aleatorios a um array
        for nI := 1 to 10000
            nValor = hb_RandomInt(1, 10000)
            aAdd(aValores, nValor)
        end

        // Exibe o array da sua ultima posição até a primeira.
        for nI := 10000 to 1 step -1
            QOut("Os valores na ordem inversa que foram digitados são respectivamente: " + AllTrim(Str(aValores[nI])))
        end

return nil
