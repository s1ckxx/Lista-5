// 80.Considere dados referentes a altura e o sexo de 40 pessoas. Fazer um
// algoritmo que calcule e escreva:
// a. A maior e a menor altura do grupo.
// b. A média de altura das mulheres.
// c. O número de homens.

Function Main()

        local nPim := 0
        local nI := 0
        local nMultiplo := 0
        local cShow := ""

        ACCEPT "Informe número PIM: " TO nPim
        nPim = Val(nPim)

        wait "Aperte uma tecla para comecar! "
    
        for nI := 1 to 60
            nMultiplo := nI % nPim
            cShow := AllTrim(str(nI))
    
            if nMultiplo = 0
                Tone(750, 9)
                QOut("PIM!")
            else 
                Tone(300, 9)
                QOut(cShow)
            endif
    
            WaitPeriod(50)
            while WaitPeriod()
            enddo
    
        next nI
   
        ?
        ? "FIM!"
    
return nil