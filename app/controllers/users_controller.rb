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
      Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('28.03.2016'))
    ]
    @new_question = Question.new
  end
end
