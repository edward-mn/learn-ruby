module Link
  class Base
    TOKEN = 'trnsl.1.1.20190628T140623Z.a69502dd73155930.713cc3323d1e3789ad5faf9ce3f138d7f51748fb'

    def altera_link(url)
      "https://translate.yandex.net/api/v1.5/tr.json/#{url}"
      #Mounts the string according to their functionality
    end

    def save_information(functionality, information)
      puts "#{information}" #Show information on terminal
      File.open('log_app.txt', 'a') do |line|
        date_now = Time.now.strftime('%m/%d/%Y - %k:%M:%S')
        #The pattern is Month / Day / Year - Hour : Minute : Second 
        line.puts("The user used the functionality #{functionality} of API")
        line.puts(information + "\nTime: " + date_now)
        line.puts('-' * 50)
      #Responsible for save the log/information on log_app.txt file
      end
    end
  end
end