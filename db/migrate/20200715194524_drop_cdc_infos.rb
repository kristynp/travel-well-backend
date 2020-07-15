class DropCdcInfos < ActiveRecord::Migration[6.0]
  def change
    drop_table :cdc_infos
  end
end
