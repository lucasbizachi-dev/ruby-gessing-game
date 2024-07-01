require 'securerandom'

=begin
Gera um número aleatório entre 0 e 10.
Informa o jogador que ele tem 3 chances para adivinhar.
=end

computador = SecureRandom.random_number(11)
puts 'Sou seu computador... Acabei de pensar em um número entre 0 e 10.'
puts 'Será que você consegue adivinhar qual foi? Você tem 3 chances!'

acertou = false
palpites = 0
max_palpites = 3

# Loop até o jogador acertar ou esgotar as tentativas
while !acertou && palpites < max_palpites
    print 'Qual é o seu palpite? '
    jogador = gets.chomp.to_i
    palpites += 1

    if jogador == computador
        acertou = true
    else
        if jogador < computador 
            puts 'Quase! O número é maior.'
        elsif jogador > computador
            puts 'Quase! O número é menor.'
        end
    end
end

# Exibe a mensagem final de acordo com o resultado
if acertou 
    puts "Acertou com #{palpites} tentativas. Parabéns!"
else 
    puts "Você não conseguiu acertar em 3 tentativas. O número era #{computador}. Boa sorte na próxima vez!"
end