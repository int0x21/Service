class CreateUMats < ActiveRecord::Migration
  def change
    create_table :u_mats do |t|
      t.string :PULAGER_ID
      t.string :PULAGER_Name
      t.integer :unit_ID

      t.timestamps
    end
  end
end
