class AddCountryToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :country, :string
  end
end
