class Category < ApplicationRecord

  profanity_filter :title

  validates :title, presence: true, length: { maximum: 20 }
end
