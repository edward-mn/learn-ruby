module ApplicationHelper
  def br_date(us_date)
    us_date.strftime('%d/%m/%Y')
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
