module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.png'
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

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end

  def background_colors
    [
        ['Зеленый(стандартный)', '#005a55'],
        ['Зеленый', '#7bd148'],
        ['Синий', '#5484ed'],
        ['Голубой', '#a4bdfc'],
        ['Бирюзовый', '#46d6db'],
        ['Светло-зеленый', '#7ae7bf'],
        ['Темно-зеленый', '#51b749'],
        ['Желтый', '#fbd75b'],
        ['Оранжевый', '#ffb878'],
        ['Красный', '#ff887c'],
        ['Темно-красный', '#dc2127'],
        ['Фиолетовый', '#dbadff'],
        ['Серый', '#8c9199'],
        ['Розовый', '#f785e4'],
        ['Малиновый', '#f94fa7'],
        ['Черный', '#000']
    ]
  end
end
