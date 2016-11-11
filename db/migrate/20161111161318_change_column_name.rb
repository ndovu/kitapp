class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :tools, :desc, :description
  end
end
