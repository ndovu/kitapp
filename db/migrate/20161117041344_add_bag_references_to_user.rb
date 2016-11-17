class AddBagReferencesToUser < ActiveRecord::Migration
  def change
    add_reference :users, :bag, index: true, foreign_key: true
  end
end
