require_relative 'base_information'
require 'rest-client'
require 'json'

class AvaliableLanguages < Link::Base #Inherits from Base with Class
  attr_accessor :url
  attr_writer :information 

  def initialize
    @url = altera_link('getLangs') #Passa the url/functionality reponsible for Get Languages
    get_information
  end

  private
  def get_information
    get_list
    save_information('List of Languages Avaliable to Translate', @information)
  end

  def get_list
    response = RestClient.get(@url, params: {key: TOKEN, ui: 'pt'})
    hash_languages = JSON.parse(response)["langs"]

    hash_languages.select do |key, value|
      @information = @information.to_s + "Language: #{value} - Code: #{key}\n"
      #@information generates a full list with all avaliable language
    end
  end
end