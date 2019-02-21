class Phrase < ApplicationRecord
  has_one_attached :demonstration
  belongs_to :category
  has_many :translations, dependent: :destroy
  accepts_nested_attributes_for :translations, allow_destroy: true

  def word
    if translations.where(language: 'es').first.nil?
      if translations.where(language: 'en').first.nil?
        translations.first
      else
        translations.where(language: 'en').first
      end
    else
      translations.where(language: 'es').first
    end
  end
end
