class Performance < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :area

  with_options presence: true do
    validates  :title
    validates  :image
    validates  :group
    validates  :genre_id, numericality: { other_than: 1, message: 'を入力してください'}
    validates  :area_id, numericality: { other_than: 1, message: 'を入力してください' }
    validates  :start_date
    validates  :end_date
    validates  :start_at
    validates  :url 
  end

  with_options format: { with: /\A[0-9]+\z/ } do
    validates :price1, presence: true
    validates :price2, allow_blank: true
    validates :price3, allow_blank: true
    validates :price4, allow_blank: true
    validates :price5, allow_blank: true
  end


  belongs_to :user
  has_one_attached :image

end
