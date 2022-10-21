// 63.[Refactoring do 24] Ler quatro valores referentes a quatro notas
// escolares de um aluno e imprimir uma mensagem dizendo que o
// aluno foi aprovado, se o valor da média escolar for maior ou igual a
// 7. Se o valor da média for menor que 7, solicitar a nota de exame,
// sornar com o valor da média e obter nova média. Se a nova média
// for maior ou
// igual a 5, apresentar uma mensagem dizendo que o aluno foi
// aprovado em exame. Se o aluno não foi aprovado, indicar uma
// mensagem informando esta condição. Apresentar com as mensagens
// o valor da média do aluno, para qualquer condição. Atenção. Deverá
// ser feita a consistência dos dados de entrada para aceitar apenas
// notas com valores entre 0 e 10.

Function Main()

        local nNotas := {12, 15, 13, 11}
        local nNotaExame := -1 
        local nMedia := 0

        // Chama função que recebe e valida valores das notas.
        VerificaNotas(nNotas)

        // Realiza calculo da media do aluno
        nMedia = (nNotas[1] + nNotas[2] + nNotas[3] + nNotas[4]) / 4

        // Verifica se aluno foi aprovado ou reprovado, em caso de reprova solicita nota do exame, calcula nova media e exibe resultado.
        if nMedia >= 7
                QOut("O aluno foi aprovado com média: " + AllTrim(Str(nMedia)))
        else
                while (nNotaExame < 0) .or. (nNotaExame > 10)
                        ACCEPT "Informar nota do exame: " TO nNotaExame
                        nNotaExame = Val(nNotaExame)

                        if (nNotaExame < 0) .or. (nNotaExame > 10)
                                QOut("Por favor informe uma nota entre 0 e 10: ")
                        end if
                end

                nMedia = (nMedia + nNotaExame) / 2

                if nMedia >= 5
                        QOut("O aluno foi aprovado em exame com média: " + AllTrim(Str(nMedia)))
                else
                        QOut("O aluno foi reprovado em exame com média: " + AllTrim(Str(nMedia)))
                end if
        end if

return nil

function VerificaNotas(nNotas)

        // Loop que verifica se as notas informadas pelo usuario estão entre a faixa permitida
        while (nNotas[1] < 0 .or. nNotas[1] > 10) .or. (nNotas[2] < 0 .or. nNotas[2] > 10) .or.;
                (nNotas[3] < 0 .or. nNotas[3] > 10) .or. (nNotas[4] < 0 .or. nNotas[4] > 10)
                ACCEPT "Informe nota 1: " TO nNotas[1]
                ACCEPT "Informe nota 2: " TO nNotas[2]
                ACCEPT "Informe nota 3: " TO nNotas[3]
                ACCEPT "Informe nota 4: " TO nNotas[4]
                nNotas[1] = Val(nNotas[1])
                nNotas[2] = Val(nNotas[2])
                nNotas[3] = Val(nNotas[3])
                nNotas[4] = Val(nNotas[4])  

                if (nNotas[1] < 0 .or. nNotas[1] > 10) .or. (nNotas[2] < 0 .or. nNotas[2] > 10) .or.;
                        (nNotas[3] < 0 .or. nNotas[3] > 10) .or. (nNotas[4] < 0 .or. nNotas[4] > 10)         
                        QOut("As notas devem ser valores entre 0 e 10!")
                end if
        end

return nNotas