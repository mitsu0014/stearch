# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: { case_sensitive: true }
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }, confirmation: true
  end

  has_many :performances
  has_one_attached :image
  has_many :likes

  def self.from_omniauth(auth)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    unless user
      user = User.new(
        provider: auth.provider,
        uid: auth.uid,
        nickname: auth.info.name,
        name: auth.info.name,
        email: User.dummy_email(auth),
        password: Devise.friendly_token[0, 20]
      )
      user.save(validate: false)

    end
    user
  end

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end
