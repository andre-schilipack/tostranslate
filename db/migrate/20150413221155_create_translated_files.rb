class CreateTranslatedFiles < ActiveRecord::Migration
  def change
    create_table :translated_files do |t|
      t.references :translation_file, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
