// 73.Faça um programa que leia um conjunto de notas de alunos anotadas
// em cartões, calcule e exiba a média das notas dos alunos, assim
// como a maior e a menor nota da turma. Deverá funcionar para turma
// com qualquer quantidade de alunos, que sempre corresponderá à
// quantidade de notas armazenadas nos cartões. A tecla “ESC” indica o
// encerramento da série de notas.

Function Main()

        // Declaração de variaveis
        local aNotas := {}
        local nNota := 0
        local nAux := 0
        local nMedia := 0
        local nMenor := 10 
        local nMaior := 0

        // Recebe as notas dos alunos
        while (LastKey() != 27)
                ACCEPT "Informe a nota do aluno: " TO nNota
                nNota = Val(nNota)
                if nNota >= 0 .and. nNota <= 10
                        aAdd(aNotas, nNota)
                        nMedia = nMedia + nNota
                else
                        QOut("A nota deve ser um valor entre 0 e 10!")
                end if

                wait(chr(10) + "Pressione ESC encerrar ou qualquer tecla para informar outra nota!" + chr(10))
        end

        // Verifica todo o array para encontrar a maior e menor nota
        nAux = len(aNotas)
        while nAux >= 1
                if (aNotas[nAux] > nMaior)
                        nMaior = aNotas[nAux]
                end

                if (aNotas[nAux] < nMenor)
                        nMenor = aNotas[nAux]
                end
                nAux--
        end

        // Faz calculo da média
        nMedia = nMedia / len(aNotas)

        // Exibe maior, menor e media da turma
        QOut("A maior nota da turma é: " + AllTrim(Str(nMaior)))
        QOut("A menor nota da turma é: " + AllTrim(Str(nMenor)))
        QOut("A média da turma é: " + AllTrim(Str(Round(nMedia, 0))))

return nil