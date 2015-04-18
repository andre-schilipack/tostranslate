class AddTranslatedFileToTranslatedLines < ActiveRecord::Migration
  def change
    add_reference :translated_lines, :translated_file, index: true, foreign_key: true
  end
end
