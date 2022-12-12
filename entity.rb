module Classes

    class Atividade
        #Definindo tributos
        attr_accessor :name, :hour, :category
        
        #metodo para o calculo de horas totais, todas as categorias tem no máximo 200h
        #horasTotais deveria vir do banco de dados, quando ele receber o nome do aluno e fizer a busca
        #hour seria a carga horária da atividade que ele estaria cadastrando no momento
        def CalculaHora(horasTotais, hour)
            #se no cadastro da atividade a carga horaria do aluno passar de 200, permanecerá 200, se não ele somará
            if horasTotais + hour > 200
                horasTotais = 200
            else
                horasTotais += hour
                
            end
        end
     
    end

    #Todas são subClasses de Atividade herdando seus atributos e metodos
    class ACE1 < Atividade
        @category = 'ACE1'
    end

    class ACE2 < Atividade
        @category = 'ACE2'
    end

    class ACE3 < Atividade
        @category = 'ACE3'
    end


end