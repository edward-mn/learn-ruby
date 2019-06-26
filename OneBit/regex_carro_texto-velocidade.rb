class Carro
  attr_accessor :informacao, :velocidade
  def initialize(informacao, velocidade)
    @informacao = informacao
    @velocidade = velocidade
  end
  
  def get_km
    if @informacao == '' || @velocidade == ''
      puts 'É necessário digitar informação sobre o veículo e sua velocidade'
    else
      find_km
    end
  end

  private
  def find_km
    regex_informacao = @informacao.scan(/[a-z\s]/i).join.gsub(/\s{1,}/, ' ')
    regex_velocidade = @velocidade.match(/\d{1,3}[a-z]{2}\/[a-z]/i)
    info_completa = (regex_informacao << ': ' << regex_velocidade.string)
    puts "#{info_completa}"
    puts "-"*50
  end
end

fusquinha_amarelo = Carro.new('Fu$sq¨ui!nh4a A/m4ar6?e{l}.o0 T0ur2bi!n-a4d               o', '120km/h').get_km
print 'Agora é sua vez, insira simples informações sobre um carro qualquer: '
info_carro = gets.chomp
print 'Muito bem, agora a velocidade que ele se encontra ou pode alcançar: '
velo_carro = gets.chomp
novo_carro = Carro.new(info_carro, velo_carro).get_km
