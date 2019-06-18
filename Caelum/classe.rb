class Turma
  def initialize(*alunos)
    for aluno in alunos  
      @alunos = aluno
    end
  end
end

=begin
  def nome
   @alunos.each do |nome|
    puts "O nome dos alunos da sala são: #{}" 
=end

my_turma = Turma.new("Jorge", "Mateus", "Paulo")

my_turma.each do |nome|
  puts nome
end



