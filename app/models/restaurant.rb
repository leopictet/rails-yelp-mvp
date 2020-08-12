class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "french", "belgian", "french", "japanese"]}

end
