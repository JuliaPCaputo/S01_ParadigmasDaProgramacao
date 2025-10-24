class MicroondasUnidade
  def aquecer_por(segundos)
    puts "Micro-ondas aquecendo por #{segundos} segundos..."
  end
end

class DMail
  attr_reader :conteudo, :hora_envio

  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end

  def to_s
    "D-Mail enviado às #{@hora_envio} - Conteúdo: #{@conteudo}"
  end
end

class TelefoneDeMicroondas
  def initialize
    @unidade = MicroondasUnidade.new
    @dmails = []
  end

  def enviar_dmail
    puts "Digite o conteúdo do D-Mail:"
    conteudo = gets.chomp

    puts "Digite o horário de envio (formato HH:MM, ex: 09:30):"
    hora = gets.chomp

    @unidade.aquecer_por(5)

    novo = DMail.new(conteudo, hora)
    @dmails << novo

    puts "D-Mail enviado e agregado ao telefone."
  end

  def listar_dmails(horario_corte)
    selecionados = @dmails.select { |d| d.hora_envio > horario_corte }

    if selecionados.empty?
      puts "Nenhum D-Mail com hora posterior a #{horario_corte}."
    else
      puts "D-Mails com hora posterior a #{horario_corte}:"
      selecionados.each { |d| puts d }
    end

    selecionados
  end
end

telefone = TelefoneDeMicroondas.new

loop do
  puts "\n--- MENU ---"
  puts "1 - Enviar D-Mail"
  puts "2 - Listar D-Mails após horário"
  puts "3 - Sair"
  print "Escolha: "
  opc = gets.chomp

  case opc
  when "1"
    telefone.enviar_dmail
  when "2"
    puts "Digite o horário de corte (HH:MM):"
    corte = gets.chomp
    telefone.listar_dmails(corte)
  when "3"
    puts "Encerrando."
    break
  else
    puts "Opção inválida."
  end
end

