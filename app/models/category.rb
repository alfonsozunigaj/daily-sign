class Category < ApplicationRecord
  has_many :phrases, dependent: :delete_all
  has_many :translations, through: :phrases
  validates :name, uniqueness: true
end
