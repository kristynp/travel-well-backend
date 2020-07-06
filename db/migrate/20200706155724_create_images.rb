class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.integer :destination_id
      t.string :url
      t.string :external_id
      t.string :description 
      t.string :alt_description
      t.timestamps
    end
  end
end
