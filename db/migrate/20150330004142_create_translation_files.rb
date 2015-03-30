class CreateTranslationFiles < ActiveRecord::Migration
  def change
    create_table :translation_files do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
