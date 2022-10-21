// 64.[Refactoring do 31] Elaborar um programa que efetue a leitura do
// nome e do sexo biológico de uma pessoa, apresentando como saída
// uma das seguintes mensagens: "Ilmo. Sr.", para o sexo informado
// como masculino ou a mensagem "Ilma. Sra. ", para o sexo informado
// como feminino. Apresente também abaixo da mensagem impressa o
// nome da pessoa. Os valores válidos para o sexo são “M” para
// masculino ou “F” para feminino. Não poderá ser aceito nome vazio.

Function Main()

        local cNome := ""
        local cSexo := ""

        // Loop que valida informações inseridas pelo usuario
        while .T.
                ACCEPT "Informe seu nome: " TO cNome
                ACCEPT "Informe seu sexo: " TO cSexo

                if (cNome == "") .or. (cSexo == "")
                        QOut("Por favor informe seu nome e sexo!")
                else
                        exit
                end if
        enddo

        // Condição que verifica sexo da pessoa e exibe mensagem em tela.
        if Upper(SubStr(cSexo, 1, 1)) == "M"
                QOut("Ilmo. Sr. " + chr(10);
                     + AllTrim(cNome))
        else
                QOut("Ilma. Sra. " + chr(10);
                     + AllTrim(cNome))
        end if

return nil