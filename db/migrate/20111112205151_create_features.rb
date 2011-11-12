class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.text :content
      t.references :market

      t.timestamps
    end
    add_index :features, :market_id
  end
end
