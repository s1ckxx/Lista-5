// 54.Elaborar um programa que exiba, na tela, todos os caracteres visuais
// da tabela ASCII (do 32 ao 126) no formato “código – caractere”.
// Exemplo: “80 – P”. Fazer 2 versões desta solução: uma utilizando laço
// com pré-teste (enquanto), outra usando laço finito (para).

Function Main()

        // Declaração das variaveis
        local nAscii := 32

        // Exibindo tabela ascii utilizando o loop while
        QOUT("Exibindo tabela ASCII com o loop while!" + chr(10))
        while (nAscii <= 126)
                QOUT(AllTrim(Str(nAscii)) + " - " + chr(nAscii))
                nAscii++
        enddo

        // Exibindo tabela ascii utilizando o loop for
        QOUT(chr(10) + "Exibindo tabela ASCII com o loop for!" + chr(10))
        for nAscii := 32 to 126
                QOUT(AllTrim(Str(nAscii)) + " - " + chr(nAscii))
        next nAscii

return nil