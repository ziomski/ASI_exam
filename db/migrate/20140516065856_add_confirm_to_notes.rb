class AddConfirmToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :confirm, :string
  end
end
