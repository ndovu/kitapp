class AddLinkAndDescriptionToTools < ActiveRecord::Migration
  def change
    add_column :tools, :link, :string
    add_column :tools, :desc, :string
  end
end
