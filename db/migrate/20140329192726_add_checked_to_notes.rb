class AddCheckedToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :checked, :string
  end
end
