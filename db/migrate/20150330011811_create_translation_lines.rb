class CreateTranslationLines < ActiveRecord::Migration
  def change
    create_table :translation_lines do |t|
      t.references :translation_file, index: true, foreign_key: true
      t.string :translation_code
      t.text :description
      t.boolean :translated

      t.timestamps null: false
    end
  end
end
