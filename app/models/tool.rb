class Tool < ActiveRecord::Base
  belongs_to :user
  belongs_to :bag
  has_many :essentials, dependent: :destroy
  has_many :essentialed_users, through: :tools, source: :user
end
