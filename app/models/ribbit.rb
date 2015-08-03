class Ribbit < ActiveRecord::Base
  default_scope order: 'createdat DESC'
  attr_accesssor :content, :userid
  belongs_to :user

  validates :content, length: { maximum: 140 }
end
