# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @performances = current_user.performances
  end

  def a
    redirect_to new_user_registration_path
  end

  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = 'ゲストユーザー'
      user.nickname = 'ゲストユーザー'
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
