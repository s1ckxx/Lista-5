// 75.Elaborar um programa que efetue o cálculo e no final apresente o
// somatório do número de grãos de trigo que se pode obter num
// tabuleiro de xadrez, obedecendo a seguinte regra: colocar um grão de
// trigo no primeiro quadro e, nos quadros seguintes o dobro do quadro
// anterior. Ou seja, no primeiro quadro coloca-se 1 grão, no segundo
// quadro coloca-se 2 grãos (neste momento tem-se 3 grãos), no
// terceiro quadro coloca-se 4 grãos (tendo nesse momento 7 grãos),
// até atingir o sexagésimo quarto quadro. (exercício inspirado em uma
// anedota do livro “O homem que calculava” de Malba Tahan).

Function Main()

        // Declaração de variaveis
        local nI
        local nSomatorio := 1
        local nInicio := 1

        // Realiza calculo do somatorio iniciando o contador em 2 e finalizando em 64 para que sejam respeitadas as quantidades de casas do tabuleiro
        for nI := 2 to 64
                nInicio = nInicio * 2
                nSomatorio = nInicio
        end

        //Exibe resultado na tela.
        QOut("O somatório dos grãos de trigo é igual a: " + AllTrim(Str(Round(nSomatorio, 0))))

return nil