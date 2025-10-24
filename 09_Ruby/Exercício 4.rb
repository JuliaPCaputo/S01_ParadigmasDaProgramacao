module Rastreavel
  def obter_localizacao(hora)
    puts "#{@nome} foi localizado às #{hora} em #{@localizacao}"
  end
end

module Perigoso
  def calcular_risco
    rand(1..10)
  end
end

class Participante
  attr_accessor :nome, :localizacao

  def initialize(nome, localizacao)
    @nome = nome
    @localizacao = localizacao
  end
end

class Detetive < Participante
  include Rastreavel
end

class MestreDoCrime < Participante
  include Rastreavel
  include Perigoso
end

class Cenario
  def initialize
    @participantes = []
  end

  def adicionar_participante(p)
    @participantes << p
  end

  def identificar_ameacas
    @participantes.select { |p| p.respond_to?(:calcular_risco) }
  end
end

puts "Digite a localização de Sherlock:"
loc_s = gets.chomp
sherlock = Detetive.new("Sherlock", loc_s)

puts "Digite a localização de Moriarty:"
loc_m = gets.chomp
moriarty = MestreDoCrime.new("Moriarty", loc_m)

cenario = Cenario.new
cenario.adicionar_participante(sherlock)
cenario.adicionar_participante(moriarty)

rastreaveis = [sherlock, moriarty]
rastreaveis.each { |r| r.obter_localizacao("22:30") }

ameacas = cenario.identificar_ameacas
puts "Ameaças detectadas:"
ameacas.each { |a| puts "#{a.nome} com risco #{a.calcular_risco}" }
