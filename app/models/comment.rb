class Comment < ApplicationRecord
  validates :comment,presence:true
  
  belongs_to :topic
  belongs_to :user
end
