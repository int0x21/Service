class CreateSrNotes < ActiveRecord::Migration
  def change
    create_table :sr_notes do |t|
      t.text :note
      t.string :user

      t.timestamps
    end
  end
end
