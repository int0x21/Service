class CreateRMats < ActiveRecord::Migration
  def change
    create_table :r_mats do |t|
      t.string :PULAGER_ID
      t.string :PULAGER_Name
      t.string :SRow_ID

      t.timestamps
    end
  end
end
