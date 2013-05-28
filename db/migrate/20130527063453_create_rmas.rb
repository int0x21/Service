class CreateRmas < ActiveRecord::Migration
  def change
    create_table :rmas do |t|
      t.string :PUFIRMA_ID
      t.string :PUFIRADR_AID
      t.string :status
      t.string :user
      t.integer :ttest
      t.integer :tprod
      t.integer :tmech
      t.integer :tprot
      t.integer :warranty
      t.text :action

      t.timestamps
    end
  end
end
