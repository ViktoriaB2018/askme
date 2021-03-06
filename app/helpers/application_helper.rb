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

  def author_name(question)
    if question.author.present?
       link_to question.author.username, user_path(question.author)
    else
      'Аноним'
    end
  end

  def user_bg_color(user)
    if user.bg_color.present?
      user.bg_color
    else
      '#005a55'
    end
  end
end
