class AddFiatToConcepts < ActiveRecord::Migration
  def change
    add_column :concepts, :fiat, :integer, default: 0
  end
end
