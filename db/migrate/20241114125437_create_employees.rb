class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.integer :manager_id, index: true

      t.timestamps
    end

    add_foreign_key :employees, :employees, column: :manager_id
  end
end
