class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "Subclasse deve implementar o método tocar_partitura"
  end
end

class Pianista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} (#{@instrumento}) está tocando a peça '#{peca}' no piano!"
  end
end

class Violinista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} (#{@instrumento}) está tocando a peça '#{peca}' no violino!"
  end
end

class Maestro
  def initialize
    @musicos = []
  end

  def adicionar_musico(musico)
    @musicos << musico
  end

  def iniciar_ensaio(peca)
    puts "\n Iniciando ensaio da peça '#{peca}'"
    @musicos.each do |m|
      m.tocar_partitura(peca)
    end
  end

  def mudar_foco(estado)
    @musicos.map { |m| "#{m.nome} agora está #{estado}!" }
  end
end

maestro = Maestro.new

p1 = Pianista.new("João", "Piano")
v1 = Violinista.new("Carla", "Violino")

maestro.adicionar_musico(p1)
maestro.adicionar_musico(v1)

puts "Digite o nome da peça a ser tocada:"
peca = gets.chomp

maestro.iniciar_ensaio(peca)

puts "\nMudando o foco dos músicos..."
mensagens = maestro.mudar_foco("Concentrado")
puts mensagens
