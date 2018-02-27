class Listing < ApplicationRecord
  belongs_to :category

  profanity_filter :title, :body

  validates :title, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { minimum: 10 }

  def to_param
       title
  end
end
