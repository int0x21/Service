class CreateRmaNotes < ActiveRecord::Migration
  def change
    create_table :rma_notes do |t|
      t.text :note
      t.string :user

      t.timestamps
    end
  end
end
