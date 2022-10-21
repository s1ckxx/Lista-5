// 66.Um colega seu que trabalha no setor financeiro, mensalmente, tem
// que reajustar valores de contratos recorrentes, com fatores
// acumulados de índices diversos, dependendo de cada contrato, tais
// como: IGPM, IPCA, dentre outros. Sabendo que você agora é um
// desenvolvedor, ele lhe solicitou que desenvolva uma calculadora para
// cálculo do fator de acumulado de acréscimo ou decréscimo, que
// deverá ser aplicado ao contrato. Ele quer digitar um a um os fatores
// mensais
// e pressionando a tecla “ESC” ao final da série de valores, ver o
// resultado do fator acumulado e, também, a quantidade de fatores
// digitados. Quer também, ter a opção de continuar calculando novas
// séries de fatores sem ter que sair do programa e executá-lo
// novamente até que realmente queira sair. Analisando a solicitação do
// seu amigo você destacou alguns pontos que deverá levar em
// consideração na elaboração do programa:
// a. O cálculo do acumulado é feito através da multiplicação dos
// fatores (produtório).
// b. Só são válidos fatores positivos; menores que zero e maiores do
// que um.

Function Main()

        // Declaração de variaveis
        local nQtdFatores := 1
        local nFatorAcumulado := 0
        local nVal := 0
        local lContinua := .T.

        // Loop while com uma variavel logica que só é alterada quando o usuário pressionar ESC.
        while (lContinua == .T.)
                ACCEPT "Informe fator mensal: " TO nVal
                nVal = Val(nVal)

                if (nVal == 0)
                        QOut("Por favor informe um fator diferente de 0!")
                        loop
                end if

                // Realiza o calculo do acumulado
                if nFatorAcumulado <> 0
                        nFatorAcumulado = (nFatorAcumulado * nVal)
                        nQtdFatores++
                else
                        nFatorAcumulado = nVal
                end

                // Mensagem para usuario escolher qual operação deseja
                WAIT chr(10) + "1 - Informar outro fator" + chr(10) + ;
                               "2 - Exibir calculo do acumulado" + chr(10) + ;
                               "3 - Calcular nova série de fatores" + chr(10) +;
                               "ESC - Exibir calculo do acumulado e encerrar" + chr(10)

                // Loop que verifica qual operação foi solicitada
                if LastKey() == 49
                        loop
                elseif LastKey() == 50
                        QOut("O calculo do acumulado é: " + AllTrim(Str(nFatorAcumulado)) + chr(10) + ;
                             "Fatores informados: " + AllTrim(Str(nQtdFatores)))
                elseif LastKey() == 51
                        nFatorAcumulado = 0
                elseif LastKey() == 27
                        QOut("O calculo do acumulado é: " + AllTrim(Str(nFatorAcumulado)) + chr(10) + ;
                             "Fatores informados: " + AllTrim(Str(nQtdFatores)))
                        lContinua = .F.
                end if
        end

return nil