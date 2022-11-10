require_relative 'Tamagotchi'
class Main
  puts "Olá, seja bem vindo!!"
  puts "Digite um nome para seu Tamagotchi"
  nome = gets.chomp
  tama = Tamagotchi.new(nome)
  vivo = true
  while vivo
    num_aleatorio = rand(1..3)
    case num_aleatorio
    when 1
      tama.el_entediado
    when 2
      tama.el_fome
    else
      tama.el_sono
    end
    if tama.idade >= 15
      puts "#{tama.nome} morreu de velhice"
      vivo = false
    elsif tama.quilos >= 20
      puts "#{tama.nome} morreu de tanto comer"
      vivo = false
    elsif tama.quilos <= 0
      puts "#{tama.nome} morreu de desnutrição"
      vivo = false
    end
  end
end
