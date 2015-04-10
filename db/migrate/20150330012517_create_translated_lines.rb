class CreateTranslatedLines < ActiveRecord::Migration
  def change
    create_table :translated_lines do |t|
      t.string :translation_code
      t.text :description
      t.references :language, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
