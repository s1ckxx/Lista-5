// 77.Um cliente utiliza uma determinada solução de GED/ECM. Nesta
// solução os usuários criam fichas de produtos e enviam uma série de
// arquivos de imagens deste dado produto. Você foi solicitado a fazer
// uma rotina que vá lendo uma série de dados informando o tamanho
// de cada arquivo em Megabytes. O programa deverá informar ao
// usuário um próximo arquivo estourar o limite estabelecida de 1,5
// Gigabaytes, para cada ficha.

Function Main()

        // Declaração de variaveis
        local nTamanho := 0
        local nFicha := 0

        // Loop que verifica tamanho do ficheiro em MB
        while nFicha <= 1500
                ACCEPT "Informe tamanho do arquivo em Megabytes: " TO nTamanho
                nTamanho = Val(nTamanho)

                // Condição para verificar se arquivo vai estourar o limite do ficheiro
                if (nFicha + nTamanho) > 1500
                        QOut("Arquivo não adicionado à ficha pois o limite de 1.5 GB suportado será excedido!")
                        wait("Pressione ESC para sair ou qualquer outra tecla para adicionar outro arquivo à ficha!")

                        if(LastKey() == 27)
                                nFicha = nFicha / 1000
                                QOut("O tamanho do ficheiro foi de: " + AllTrim(Str(Round(nFicha, 1))) + "GB")
                                exit
                        else
                                loop
                        end if
                else
                        nFicha = nFicha + nTamanho
                end if
        end        

return nil