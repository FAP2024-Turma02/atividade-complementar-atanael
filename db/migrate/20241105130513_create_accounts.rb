class CreateAccounts < ActiveRecord::Migration[7.2]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.references :supplier, null: false, foreign_key: true
      t.bigint  :supplier_id
      t.string  :account_number
      t.timestamps
    end
    add_index :accounts, :supplier_id
  end
end
