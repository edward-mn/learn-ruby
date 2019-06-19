#Gem - Install = gem instal nome_gem / Uninstall nome_gem
#Usando gem OS
require 'os'

def my_os
  if OS.windows?
    'Windows'
  elsif OS.linux?
    'Linux'
  elsif OS.mac?
    'Mac'
  else
    'Não consegui indentificar'
  end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}" 