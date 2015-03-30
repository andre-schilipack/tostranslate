class CreateTranslatedLines < ActiveRecord::Migration
  def change
    create_table :translated_lines do |t|
      t.references :translation_line, index: true, foreign_key: true
      t.string :description
      t.references :language, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
