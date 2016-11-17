class AddUserToBag < ActiveRecord::Migration
  def change
    add_reference :bags, :user, index: true, foreign_key: true
  end
end
