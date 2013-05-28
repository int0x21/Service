class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :SRow_ID
      t.string :rma_ID
      t.integer :ttest
      t.integer :tprod
      t.integer :tmech
      t.integer :tprot
      t.integer :warranty
      t.text :action
      t.string :PULAGER_ID
      t.string :artname

      t.timestamps
    end
  end
end
