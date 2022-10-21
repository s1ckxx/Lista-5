// 81.Jogo do Jokenpô. Desenvolva o jogo “Papel, pedra e tesoura” entre o
// usuário e o computador. Após o usuário informar sua escolha, o
// computador gera sua opção (de maneira randômica); informa a opção
// gerada e compara-a com a opção do usuário, informando quem
// ganhou aquela jogada. Atualiza e exibe um placar que acumula os
// resultados de cada jogada e pergunta se o usuário deseja continuar o
// jogo (encerrar com ESC). Após a primeira versão criar algumas
// “mods” para o game.
// a. Torná-lo bilíngue (português e inglês). Esta opção deverá ser
// dada no início do jogo. Dica: crie constantes para os labels e
// mensagens.
// b. Para melhorar a aleatoriedade do computador. Ao invés de 1 a
// 3 gere valores entre 1 e 9 ou 1 e 12 e, reduza-os após gerados. c.
// Melhore a interface visual. Utilizando caracteres estendidos ASCII
// e “ASCII arts”.

function main()

    local cIdioma := ""
    local nPP, nPA := 0
    local aPF := {}

    cIdioma := idiomaJogo()

    if cIdioma = "PT"

        aPF := jokenPT()

        QOUT("================================")
        QOUT("Placar final: ")
        QOUT()
        QOUT("Jogador: " + AllTrim(str(aPF[1])))
        QOUT("AI: " + AllTrim(str(aPF[2])))
        QOUT("================================")

    else

        aPF := jokenEN()

        QOUT("================================")
        QOUT("Final Score: ")
        QOUT()
        QOUT("Player: " + AllTrim(str(aPF[1])))
        QOUT("AI: " + AllTrim(str(aPF[2])))
        QOUT("================================")
    
    endif

return nil


//////////// Seleciona idioma
static function idiomaJogo()

    local cDado := ""
    local lRun  := .T.

    while lRun

        ACCEPT "Escolha o idioma // Choose the language (PT / EN): " to cDado
        cDado := UPPER(cDado)

        if !IsDigit(cDado) .or. (cDado = "PT" .and. cDado = "EN")

            lRun := .F.
        
        else

            ? "ERROR"
        
        ENDIF

    enddo


return cDado

//////////// Jogo portugues
static function jokenPT()

    local cStatus := "PT"
    local nJogo := 0
    local nAI   := 0
    local nPlay := 0
    local cPlay := ""
    local lRun  := .T.
    local nPP   := 0
    local nPA   := 0
    local aPlacar := {}

    while lRun

        nJogo := validaJogo(cStatus)

        nAI := hb_Randomint(1, 3)

        nPlay := fazJogada(nJogo, nAI, cStatus)

        if nPlay = 1

            nPP++

        elseif nPlay = 2

            nPA++
        
        endif
        
        ?
        QOUT("Voce: " + AllTrim(str(nPP)))
        QOUT("AI: " + AllTrim(str(nPA)))
        ?
        
        WAIT "Pressione ESC para sair do jogo, ou qualquer outra tecla para continuar..."

        if lastkey() == 27

            lRun := .F.
            
        endif     

    enddo

    Aadd(aPlacar, nPP)
    Aadd(aPlacar, nPA)


return aPlacar

//////////// Jogo ingles
static function jokenEN()

    local cStatus := "EN"
    local nJogo := 0
    local nAI   := 0
    local nPlay := 0
    local cPlay := ""
    local lRun  := .T.
    local nPP   := 0
    local nPA   := 0
    local aPlacar := {}

    while lRun

        nJogo := validaJogo(cStatus)

        nAI := hb_Randomint(1, 3)

        nPlay := fazJogada(nJogo, nAI, cStatus)

        if nPlay = 1

            nPP++

        elseif nPlay = 2

            nPA++
        
        endif
        
        ?
        QOUT("You: " + AllTrim(str(nPP)))
        QOUT("AI: " + AllTrim(str(nPA)))
        ?
        
        WAIT "Press ESC to quit the game, or press anything else to continue..."

        if lastkey() == 27

            lRun := .F.

        endif  

    enddo

    Aadd(aPlacar, nPP)
    Aadd(aPlacar, nPA)

return aPlacar

//////////// Valida jogada
static function validaJogo(cStatus)

    local lRun      := .T.
    local cJogada   := ""
    local nDado     := 0

    while lRun

        if cStatus = "PT" // Menu para pt
        
            ACCEPT "Pedra, papel ou tesoura? " to cJogada
            cJogada := UPPER(cJogada)

            if cJogada = "PEDRA"

                nDado := 1
                ? "Voce escolheu PEDRA"
                lRun := .F.
                
            elseif cJogada = "PAPEL"

                nDado := 2
                ? "Voce escolheu PAPEL"
                lRun := .F.

            elseif cJogada = "TESOURA"

                nDado := 3
                ? "Voce escolheu TESOURA"
                lRun := .F.

            else

                ?
                ? "INVALIDO"
                ?

            ENDIF

        else // Menu para EN

            ACCEPT "Rock, paper or scissors? " to cJogada
            cJogada := UPPER(cJogada)

            if cJogada = "ROCK"

                nDado := 1
                ? "You chose ROCK"
                lRun := .F.
                
            elseif cJogada = "PAPER"

                nDado := 2
                ? "You chose PAPER"
                lRun := .F.

            elseif cJogada = "SCISSORS"

                nDado := 3
                ? "You chose SCISSORS"
                lRun := .F.

            else

                ?
                ? "INVALID"
                ?
                    
            ENDIF

        endif

    enddo


return nDado


//////////// REALIZA JOGADA
static function fazJogada(nJogo, nAI, cStatus)

    local aMsg
    local nDado := 0

    if cStatus = "PT"

        aMsg := {"PEDRA!", "PAPEL!", "TESOURA!"}

        if nJogo = nAI

            ? "Empate!"

        elseif (nJogo = 1 .and. nAI = 2) .or. (nJogo = 2 .and. nAI = 3) .or. (nJogo = 3 .and. nAI = 1)

            ? "O oponente jogou: " + aMsg[nAI]
            ? "Voce perdeu!"

            nDado := 2

        else
            
            ? "O oponente jogou: " + aMsg[nAI]
            ? "Voce ganhou!"

            nDado++

        ENDIF

    else
        
        aMsg := {"ROCK!", "PAPER!", "SCISSORS!"}

        if nJogo = nAI

            ? "Draw!"

            nDado := 0

        elseif (nJogo = 1 .and. nAI = 2) .or. (nJogo = 2 .and. nAI = 3) .or. (nJogo = 3 .and. nAI = 1)

            ? "Opponent played: " + aMsg[nAI]
            ? "You lose!"

            nDado := 2

        else
            
            ? "O oponente jogou: " + aMsg[nAI]
            ? "Voce ganhou!"

            nDado++
            
        ENDIF

    endif

return nDado
