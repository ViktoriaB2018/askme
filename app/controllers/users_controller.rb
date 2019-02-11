class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Vika',
      username: 'vika_2019',
      avatar_url: 'http://www.uzsat.net/uploads/profile/photo-10198.jpg'
    )
    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016')),
      Question.new(text: 'В чем смысл жизни?', created_at: Date.parse('28.03.2016'))
    ]
  end
end
