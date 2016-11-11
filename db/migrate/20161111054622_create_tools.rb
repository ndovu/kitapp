class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.references :user, index: true, foreign_key: true
      t.references :bag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
