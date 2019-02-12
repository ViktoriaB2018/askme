class UsersController < ApplicationController
  def index
    @users = [
        User.new(
          id: 1,
          name: 'Vika',
          username: 'vika_2019',
          avatar_url: 'http://www.uzsat.net/uploads/profile/photo-10198.jpg'
        ),
        User.new(
          id: 2,
          name: 'Vadim',
          username: 'installero',
          avatar_url: 'https://secure.gravatar.com/avatar/' \
        '71269686e0f757ddb4f73614f43ae445?s=100'
        ),
        User.new(id: 3, name: 'Misha', username: 'aristofun')
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      id: 1,
      name: 'Vika',
      username: 'vika_2019',
      avatar_url: 'http://www.uzsat.net/uploads/profile/photo-10198.jpg'
    )
    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('28.03.2016')),
      Question.new(text: 'Кто такой Бетховен?', created_at: Date.parse('29.03.2016')),
      Question.new(text: 'Сколько метров в километре?', created_at: Date.parse('30.03.2016')),
      Question.new(text: 'Почему крокодилы не летают?', created_at: Date.parse('30.03.2016'))
    ]
    @new_question = Question.new
  end
end
