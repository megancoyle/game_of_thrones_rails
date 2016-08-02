class Character < ApplicationRecord
  belongs_to :house
  validates :name, :img_url, presence: true
end
