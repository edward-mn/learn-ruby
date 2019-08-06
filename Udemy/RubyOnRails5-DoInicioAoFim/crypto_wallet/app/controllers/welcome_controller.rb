class WelcomeController < ApplicationController
  def index
    cookies[:curso] = 'Um teste utilizando - Cookies'
    session[:curso] = 'Um teste utilizando - Session'
    @nome = params[:nome]
  end
end
