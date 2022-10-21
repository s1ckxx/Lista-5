// 74.Jogo Adivinha o número - parte 2: Continue o desenvolvimento do
// jogo. Agora, o programa deverá continuar dando dicas a cada palpite
// do usuário até que ele acertar o número sorteado. Quando o usuário
// acertar o número gerado deverá ser apresentado o resultado do teste.
// Da seguinte forma:
// • Em menos de 5 tentativas exibir a mensagem: “Você é muito
// bom, acertou em x tentativas.”
// • Em mais do que 5 e menos do que 9 tentativas: “Você é bom,
// acertou em x tentativas".
// • Em mais do que 9 e menos do que 13 tentativas: “Você é
// mediano, acertou em x tentativas”.
// • Em mais do que 13: “Você é muito fraco, acertou em x
// tentativas”

Function Main()

        local nNum := 0
        local nRandom := 0
        local nTentativas := 0

        nRandom = hb_RANDOMINT(1, 100)

        // Loop que recebe valor digitado pelo usuario e verifica se é menor ou maior que o numero gerado
        while nNum <> nRandom
                ACCEPT "Tente advinhar qual número foi gerado: " TO nNum
                nNum = Val(nNum)
        
                if nNum > nRandom
                        QOUT("O número gerado é menor que o número digitado!" + chr(10))
                else
                        QOUT("O número gerado é maior que o número digitado!" + chr(10))
                end if
                nTentativas++
        enddo

        // Verifica quantas tentativas foram necessarias e exibe mensagem
        if nTentativas < 5
                QOut("Você é muito bom, acertou em " + AllTrim(Str(nTentativas)) + " tentativas.")
        elseif (nTentativas > 5) .and. (nTentativas < 9)
                QOut("Você é bom, acertou em " + AllTrim(Str(nTentativas)) + " tentativas.")
        elseif (nTentativas > 9) .and. (nTentativas < 13)
                QOut("Você é mediano, acertou em " + AllTrim(Str(nTentativas)) + " tentativas.")
        else
                QOut("Você é muito fraco, acertou em " + AllTrim(Str(nTentativas)) + " tentativas.")
        end if

return nil
    