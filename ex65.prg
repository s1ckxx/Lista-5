// 65.Fazer um programa que simule um cadastro de usuário e senha para
// um sistema qualquer. O usuário informará um “username” e uma
// senha que deverá ser digitada duas vezes (confirmação de senha).
// Realizar as seguintes consistências:
// a. o “username” deve possuir mais do que 5 caracteres. b. a senha
// e a confirmação da senha devem ser idênticas. c. a senha deve
// possuir ao menos 6 caracteres e deve conter
// obrigatoriamente: ao menos uma letra maiúscula, um dígito
// numérico e um símbolo.

Function Main()
        
        local cUsername := ""
        local cSenha := ""
        local lValido := .F.
        local cSenha2 := ""

        // Loop que solicita as informações para cadastro de novo usuario
        while len(cUsername) < 5 .or. len(cSenha) < 6 .or. lValido == .F.
                ACCEPT "Nome/Login: " TO cUsername
                ACCEPT "Senha: " TO cSenha

                if (len(cUsername) > 5) .and. len(cSenha) >= 6
                        lValido = ValidaSenha(cSenha)
                end if

                if (len(cUsername) < 5)
                        QOut("Login inválido: Login deve possuir mais que 5 caracteres!")
                end if

                if len(cSenha) < 6
                        QOut("Senha inválida: Senha deve possuir mais que 6 caracteres!")
                end if
        end do


        ACCEPT "Confirme a senha: " TO cSenha2

        if (cSenha == cSenha2)
                QOUT("Cadastro realizado com sucesso!")
        else
                QOUT("Falha no cadastro: Senhas não coincidem!")
        end if

return nil

function ValidaSenha(cSenha)

        local nTamanho := len(cSenha)
        local nI, nX
        local aSenha := {}
        local lMaiusculo := .F.
        local lNumerico := .F.
        local lSimbolo := .F.
        local lValido := .F.

        // Coloca cada caractere da senha dentro de uma posição no array
        for nI := 1 to nTamanho
                aAdd(aSenha, SubStr(cSenha, nI, 1))
        end

        // Loop que verifica se a senha atende todos os requisitos
        for nI := 1 to nTamanho
                for nX := 1 to nTamanho
                        if IsUpper(aSenha[nX]) == .T.
                                lMaiusculo = .T.
                        end if

                        if IsDigit(aSenha[nX]) == .T.
                                lNumerico = .T.
                        end if

                        if Asc(aSenha[nX]) >= 33 .and. Asc(aSenha[nX]) <= 47
                                lSimbolo = .T.
                        end if

                        if Asc(aSenha[nX]) >= 91 .and. Asc(aSenha[nX]) <= 93
                                lSimbolo = .T.
                        end if
                end
        end

        // Informa o usuario se a senha atende todos os requisitos necessarios
        if (lMaiusculo == .F.)
                QOut("A senha deve conter um caractere maiusculo!")
        end if

        if (lNumerico == .F.)
                QOut("A senha deve conter um caractere numerico")
        end if

        if (lSimbolo == .F.)
                QOut("A senha deve conter um simbolo!")
        end if

        // Caso a senha atenda todos os requisitos retorna lValido como True para que saia do Loop de cadastro.
        if (lMaiusculo == .T.) .and. (lNumerico == .T.) .and. (lSimbolo == .T.)
                lValido = .T.
        end if

return lValido