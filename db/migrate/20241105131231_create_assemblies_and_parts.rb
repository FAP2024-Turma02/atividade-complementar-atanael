class CreateAssembliesAndParts < ActiveRecord::Migration[7.2]
  def change
    create_table :assemblies_and_parts do |t|
      t.belongs_to :assembly
      t.belongs_to :part
      t.timestamps
    end
  end
end
