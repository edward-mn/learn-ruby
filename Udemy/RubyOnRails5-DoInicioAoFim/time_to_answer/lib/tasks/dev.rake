namespace :dev do
  DEFAULT_PASSWORD = 123_456
  DEFAULT_FILES_PATH = File.join(Rails.root, 'lib', 'tmp')

  if Rails.env.development?
    desc 'Configura o ambiente de desenvolvimento'
    task setup: :environment do
      show_spinner('Deletando') { %x(rails db:drop) }
      show_spinner('Criando') { %x(rails db:create) }
      show_spinner('Migrando') { %x(rails db:migrate) }
      show_spinner('Cadastrando administrador padrão') { %x(rails dev:add_default_admin) }
      show_spinner('Cadastrando adiministradores extras') { %x(rails dev:add_extra_admins) }
      show_spinner('Cadastrando usuário padrão') { %x(rails dev:add_default_user) }
      show_spinner('Cadastrando assutos padrões') { %x(rails dev:add_subjects) }
    end
  else
    puts 'Não é possível executar esta task neste ambiente'
  end

  desc 'Adiciona o administrador padrão'
  task add_default_admin: :environment do
    # Foi utilizado o create! pois o próprio devise já impede de usarmos o find_or_create_by!
    Admin.create!(
      email: 'admin@admin.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  desc 'Adiciona administradores extras'
  task add_extra_admins: :environment do
    10.times do |i|
      Admin.create!(
        email: Faker::Internet.email,
        password: DEFAULT_PASSWORD,
        password_confirmation: DEFAULT_PASSWORD
      )
    end
  end

  desc 'Adiciona o usuário padrão'
  task add_default_user: :environment do
    User.create!(
      email: 'user@user.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  desc 'Adiciona assuntos padrões'
  task add_subjects: :environment do
    file_name = 'subjects.txt'
    file_path = File.join(DEFAULT_FILES_PATH, file_name)

    File.open(file_path, 'r').each do |line|
      Subject.create!(description: line.strip)
    end
  end

  private

  def show_spinner(msg_start, msg_end = 'Concluído com sucesso!')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start} Banco de Dados.....")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
