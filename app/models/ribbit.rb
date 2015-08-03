class Ribbit < ActiveRecord::Base
  default_scope order: 'createdat DESC'
  attr_accesssor :content, :user_id
  belongs_to :user

  validates :content, length: { maximum: 140 }
end
