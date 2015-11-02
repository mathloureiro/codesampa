class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :content
      t.string :youtube_url
      t.integer :fiat, default: 0
      t.references :user, index: true, foreign_key: true
      t.references :concept, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
