class AddDestinationIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :destination_id, :integer
  end
end
