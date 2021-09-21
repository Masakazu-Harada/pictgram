class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
  
  has_many :favorites
  has_many :favorites_user, through: :favorites, source: 'user'
end
