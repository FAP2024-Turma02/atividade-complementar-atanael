class CreateParagraphs < ActiveRecord::Migration[7.2]
  def change
    create_table :paragraphs do |t|
      t.text :content
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
