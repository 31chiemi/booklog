class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :genre
  has_one_attached :image

  #validates :title, presence: true
  validates :genre_id, numericality: { other_than: 0 , message: "can't be blank"}
end
