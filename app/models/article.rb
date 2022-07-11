class Article < ApplicationRecord
  include Visible
  extend FriendlyId
  friendly_id :title

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end





