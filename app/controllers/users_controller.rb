class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @performances = current_user.performances
  end
end
