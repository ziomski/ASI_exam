class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :priority
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
