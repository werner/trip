class Article < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :hero
  
  validates :user_id, presence: true
  validates :content, presence: true
end
