require_relative 'base_information'
require 'rest-client'
require 'json'

class DetectLanguage < Link::Base #Inherits from Base with Class
  attr_accessor :imput_text, :url
  attr_writer :information 

  def initialize(text)
    @text = text
    @url = altera_link('detect') #Passa the url/functionality reponsible for Detect Languages
    get_information
  end

  private
  def get_information
    detected_language
    save_information('Language Identification', @information)
  end

  def detected_language
    response = RestClient.get(@url, params: {key: TOKEN, text: "#{@text}"})
    @information = "Text: #{@text} - Language found was: " + JSON.parse(response)["lang"]
    #@information returns the text inserted with the code of found's language
  end
end
