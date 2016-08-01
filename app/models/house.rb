class House < ApplicationRecord
  has_many :characters, dependent: :destroy
  validates :name, presence: true,
                      length: { minimum: 6 }
  validates :img_url, presence: true
end
