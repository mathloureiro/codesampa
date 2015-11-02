class AddIconToContents < ActiveRecord::Migration
  def change
    add_column :contents, :icon, :string
  end
end
