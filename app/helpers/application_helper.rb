module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.png'
    end
  end

  def puts_count(number)
    if number == 0
      'Пока еще нет'
    else
      "Всего #{number}"
    end
  end

  def sklonenie(number, vopros, voprosa, voprosov)
    ostatok = number % 100

    return voprosov if ostatok.between?(11, 14)

    ostatok = number % 10

    case ostatok
    when 1 then return vopros
    when 2..4 then return voprosa
    when 5..9, 0 then return voprosov
    end
  end
end
