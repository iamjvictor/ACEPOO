require_relative 'entity'

include Classes
module Functions

    #Função para realizar o cadastro, dar Inicio  a Interface

    def CadastroAtividade
        puts 'Digite o Nome do aluno :'
        name = gets.chomp

        puts 'Qual a Categoria da Atvidade ? '
        puts '1- ACE1'
        puts '2- ACE2'
        puts '3- ACE3'
        puts 'Digite qualquer tecla para sair'
        
        atv = gets.chomp.to_i

        case atv
        when 1
            ACE1(name)

        when 2
            ACE2(name)
        when 3
            ACE3(name)
        else
            'Nada foi adicionado'
        end

    end

    #Função para ciar o objeto das sub atividades
    def ACE1(name)
        x = ACE1.new
        x.category = 'ACE1'
        x.name = name
        puts 'Quantas horas possui a atividade ?'
        x.hour= gets.chomp.to_i
        
        #Faltaria uma função para enviar para o banco de dados, passando essas informações como parametros
        #Faltaria uma função que recebesse as horas acumuladas do aluno do banco de dados e realizaria o metodo de CalculaHora
    end
    def ACE2(name)
        x = ACE2.new
        x.category = 'ACE2'
        x.name = name
        puts 'Quantas horas possui a atividade ?'
        x.hour= gets.chomp.to_i
        #Faltaria uma função para enviar para o banco de dados, passando essas informações como parametros
        #Faltaria uma função que recebesse as horas acumuladas do aluno do banco de dados e realizaria o metodo de CalculaHora
    end
    def ACE3(name)
        x = ACE3.new
        x.category = 'ACE3'
        x.name = name
        puts 'Quantas horas possui a atividade ?'
        x.hour= gets.chomp.to_i
        #Faltaria uma função para enviar para o banco de dados, passando essas informações como parametros
        #Faltaria uma função que recebesse as horas acumuladas do aluno do banco de dados e realizaria o metodo de CalculaHora
    end
end