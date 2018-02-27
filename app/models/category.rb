class Category < ApplicationRecord
  # Adding association
  has_many :listings

  profanity_filter :title

  validates :title, presence: true, length: { maximum: 20 }

end
