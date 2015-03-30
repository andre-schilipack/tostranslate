class CreateTranslationLines < ActiveRecord::Migration
  def change
    create_table :translation_lines do |t|
      t.references :translation_file, index: true, foreign_key: true
      t.string :translation_id
      t.string :description

      t.timestamps null: false
    end
  end
end
