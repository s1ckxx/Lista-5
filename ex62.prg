// 62.Jogo da forca - parte 1: Neste momento trataremos apenas da
// leitura do palpite (“chute”) do usuário. Fazer um programa que realize
// a consistência de entrada da digitação de um palpite do usuário de
// modo que ele seja forçado a digitar uma letra efetivamente. Fazer 3
// versões do programa, cada uma com uma das estruturas de
// repetição. Responder: qual achou mais adequada? Por quê?

// R: A repetição 'do while' é a mais adequada pela legibilidade do codigo e sua praticidade na utilização.

Function Main()

        // Declaração de variáveis
        local cPalpite := "abc"
        local nI
        local nInfinito := 1

        // Loop while com um condicional interno que verifica se o usuario informou mais que uma letra.
        while len(cPalpite) > 1
                ACCEPT "Informe uma letra: " TO cPalpite
                if (len(cPalpite)) > 1
                        QOut("Informe somente uma letra por vez!")
                else
                        QOut("A letra informada foi: " + AllTrim(Upper(cPalpite)))
                end if
        end do

        // Loop 'for' com um condicional interno que verifica se o usuario informou mais que uma letra.
        for nI := 0 to nInfinito
                ACCEPT "Informe uma letra: " TO cPalpite
                if (len(cPalpite)) > 1
                        QOut("Informe somente uma letra por vez!")
                        nInfinito++
                else
                        QOut("A letra informada foi: " + AllTrim(Upper(cPalpite)))
                        exit
                end if
        end

        // Loop "repita" com um condicional interno que verifica se o usuario informou mais que uma letra.
        do while .T.
                ACCEPT "Informe uma letra: " TO cPalpite
                if (len(cPalpite)) > 1
                        QOut("Informe somente uma letra por vez!")
                else
                        QOut("A letra informada foi: " + AllTrim(Upper(cPalpite)))
                        exit
                end if
        end

return nil