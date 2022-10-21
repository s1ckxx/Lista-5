// 68.[Refactoring do CS 02]: Faça um programa que leia um conjunto de
// notas de alunos de uma determinada turma, anotadas em cartões,
// calcule e exiba a média das notas dos alunos. Sabe-se que a classe
// possui 15 alunos.

Function Main()

        // Declaração de variaveis
        local aNotas := {10, 5, 7, 8, 3, 5, 0, 2, 7, 6, 8, 9, 9, 4, 2}
        local nI
        local nMedia := 0

        // Lê o array e faz a soma de todas as notas.
        for nI := 1 to len(aNotas)
                nMedia = nMedia + aNotas[nI]
        end

        // Faz calculo de media para uma sala com 15 alunos
        nMedia = nMedia / 15

        // Exibe media da turma
        QOut("A média da turma é: " + AllTrim(Str(nMedia)))

return nil