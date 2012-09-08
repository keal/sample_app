class Todolist < ActiveRecord::Base
  attr_accessible :title, :reason, :percent, :motivation, :deadline

  belongs_to :user
  
  validates :user_id, presence: true
  validates :title,   presence: true, length: { maximum: 140 }
  validates :reason,  presence: true, length: { maximum: 140 }
  validates :percent, presence: true
  validates :motivation,presence: true
  validates :deadline,presence: true

  default_scope order: 'todolists.created_at DESC'
end
