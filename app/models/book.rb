class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :title, presence: true
  validates :genre_id, numericality: { other_than: 0 , message: "can't be blank"}
  validates :image, presence: true
end
