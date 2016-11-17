class CreateEssentials < ActiveRecord::Migration
  def change
    create_table :essentials do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tool, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
