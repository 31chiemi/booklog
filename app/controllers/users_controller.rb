class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @age = user.age
    @books = user.books
    
    def age
      (Time.zone.now - birthday.to_time) / 1.year.seconds
    end
  end
end