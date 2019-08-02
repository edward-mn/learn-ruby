module ApplicationHelper
  def br_date(us_date)
    us_date.strftime('%d/%m/%Y')
  end

  def locale
    I18n.locale == :en ? 'Estados Unidos' : 'Português do Brasil'
  end

  def ambiente_rails
    if Rails.env.development?
      'Desenvolvimento'
    elsif Rails.env.production?
      'Produção'
    else
      'Teste'
    end
  end
end
