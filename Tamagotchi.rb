class Tamagotchi
  attr_accessor :nome, :idade, :fome, :quilos, :entediamento, :sonin
  def initialize(nome="Jobscleitin", idade=0, quilos=1, fome=0, entediamento=0, sonin=0)
    @nome = nome
    @fome = fome
    @idade = idade
    @quilos = quilos
    @entediamento = entediamento
    @sonin = sonin
  end
  def el_sono
    puts "escolha uma das opções:"
    puts "1) dormir\n2) Permanecer acordado"
    escolha = gets.chomp
    if sonin == 5
      escolha = 3
    end
    case escolha.to_i
    when 1
      puts "O #{nome} dormiu"
      @idade += 1
    when 2
      puts "O #{nome} permaneceu acordado"
      @sonin += 1
    when 3
      puts "O #{nome} desmaiou"
      @idade += 1
      @sonin = 0
    else
      puts "escolha uma das opções!"
    end
  end

  def el_fome
    puts "escolha uma das opções:"
    puts "1) Comer muito \n2) Comer pouco \n3) Não comer"
    escolha = gets.chomp
    case escolha.to_i
    when 1
      puts "O #{nome} comeu muito"
      @quilos += 5
    when 2
      puts "O #{nome} comeu pouco"
      @quilos += 1
    when 3
      puts "O #{nome} não comeu e emagreceu"
      @quilos -= 2
    else
      puts "escolha uma das opções!"
    end
  end
  def el_entediado
    puts "escolha uma das opções:"
    puts "1) Correr 10 minutos \n2) Caminhar 10 minutos"
    escolha = gets.chomp
    case escolha.to_i
    when 1
      puts "O #{nome} correu e comeu muito"
      @quilos += 1
    when 2
      puts "O #{nome} caminhou e comeu um pouco"
    else
      puts "escolha uma das opções!"
    end
  end
end
