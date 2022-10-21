// 67.[Refactoring do CS 03] Nas olimpíadas deste ano, anotou-se em
// cartões cada uma das medalhas de ouro, prata e bronze, obtidas por
// um determinado país. Faça um programa que leia esses cartões e
// exiba o quadro completo de medalhas obtidas pela delegação do
// país. O cartão com o conteúdo “F” indica que é o último da pilha.

Function Main()

        // Declaração de variaveis
        local aCartoes := {"B", "P", "O", "P", "B", "B", "P", "B", "P", "P", "P", "O", "B", "O", "B", "F"}
        local nI
        local nBronze := 0
        local nPrata := 0
        local nOuro := 0

        // Leitura do array e atribuição as variaveis para soma das medalhas.
        for nI := 1 to len(aCartoes)
                if (Upper(aCartoes[nI]) == "B")
                        nBronze = nBronze + 1
                elseif (Upper(aCartoes[nI]) == "P")
                        nPrata = nPrata + 1
                elseif (Upper(aCartoes[nI]) == "O")
                        nOuro = nOuro + 1
                elseif (Upper(aCartoes[nI]) == "F")
                        exit
                end
        end

        // Exibição do quadro de medalhas
        QOut("QUADRO DE MEDALHAS!" + chr(10) + ;
             "Ouro: " + AllTrim(Str(nOuro)) + chr(10) + ;
             "Prata: " + AllTrim(Str(nPrata)) + chr(10) + ;
             "Bronze: " + AllTrim(Str(nBronze)))

return nil