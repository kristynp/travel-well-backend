class CreateCdcInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :cdc_infos do |t|
      t.integer :destination_id
      t.string :vaccinations
      t.string :advisories
      t.string :recommendations
      t.timestamps
    end
  end
end
