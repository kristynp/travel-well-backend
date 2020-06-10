class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.integer :user_id
      t.text :notes

      t.timestamps
    end
  end
end
