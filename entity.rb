module Classes

    class Atividade
        #Definindo tributos
        attr_accessor :name, :hour, :category, :horaMaxima, :subCategory

        def category
            @category
        end
        
        # Metodo para o calculo de horas totais, todas as categorias tem no máximo 200h
        # horasAcumuladas deveria vir do banco de dados, quando ele receber o nome do aluno e fizer a busca
        # hour seria a carga horária da atividade que ele estaria cadastrando no momento
        def CalculaHora(horasAcumuladas, hour, horaMaxima)
            # Se no cadastro da atividade a carga horaria do aluno passar de 200, permanecerá 200, se não ele somará
            if horasAcumuladas + hour > horaMaxima
                horasAcumuladas = horaMaxima
            else
                horasAcumuladas += hour
                
            end
        end
     
    end

    #Todas são subClasses de Atividade herdando seus atributos e metodosS
    class ACE1 < Atividade
       
    end

    class ACE2 < Atividade
        
    end

    class ACE3 < Atividade
        
    end
    
    class ACE1Sub < ACE1
        
    end


end