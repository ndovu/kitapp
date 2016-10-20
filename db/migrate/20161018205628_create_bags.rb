class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.string :adv
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
