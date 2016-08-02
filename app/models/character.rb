class Character < ApplicationRecord
  belongs_to :house
  has_and_belongs_to_many :traits
  validates :name, :img_url, presence: true
end
