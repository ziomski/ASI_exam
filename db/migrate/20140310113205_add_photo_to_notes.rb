class AddPhotoToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :photo, :string
  end
end
