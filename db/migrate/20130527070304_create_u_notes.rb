class CreateUNotes < ActiveRecord::Migration
  def change
    create_table :u_notes do |t|
      t.text :note
      t.string :user

      t.timestamps
    end
  end
end
