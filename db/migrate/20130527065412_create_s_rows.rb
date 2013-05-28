class CreateSRows < ActiveRecord::Migration
  def change
    create_table :s_rows do |t|
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
