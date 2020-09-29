class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @performances = current_user.performances
  end

  def a
    redirect_to new_user_registration_path
  end
end

