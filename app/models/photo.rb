class Photo < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true, format: {  with: /.\.(png|jpeg|jpg|gif)/ }
  #validates_format_of :image_url, with: /.\.(png|jpeg|jpg|gif)/
end
