class House < ApplicationRecord
  validates :name, presence: true,
                      length: { minimum: 6 }
  validates :img_url, presence: true
  has_many :characters
end
