class Bag < ActiveRecord::Base
  has_many :tools, dependent: :destroy
  has_many :tooled_users, through: :tools, source: :user

  def tool_for(user)
    tools.find_by_user_id(user.id) if user
  end
end
