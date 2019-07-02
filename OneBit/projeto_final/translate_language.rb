require_relative 'base_information'
require 'json'
require 'rest-client'

class TranslateLanguage < Link::Base #Inherits from Base with Class
  attr_accessor :text, :code, :url, :information

  def initialize(text, code)
    @url = altera_link('translate') #Passa the url/functionality reponsible for Translate
    @text = text
    @code = code
    get_information
  end

  private
  def get_information
    get_translate
    save_information('Translating the Language', @information)
  end

  def get_translate
    response = RestClient.get(@url, params: {key: TOKEN, text: "#{@text}", lang: "#{@code}"})
    @information = "Text: #{@text} para #{@code} \nResult: "
    @information += JSON.parse(response)["text"].join
    #@information returns the information old text, the code and new text translated
  end
end