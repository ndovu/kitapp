class Tool < ActiveRecord::Base
  belongs_to :user
  belongs_to :bag
end
