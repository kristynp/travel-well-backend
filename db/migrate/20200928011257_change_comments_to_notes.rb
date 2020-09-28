class ChangeCommentsToNotes < ActiveRecord::Migration[6.0]
  def change
    rename_table :comments, :notes
  end
end
