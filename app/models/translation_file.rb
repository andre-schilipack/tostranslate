class TranslationFile < ActiveRecord::Base
  has_many :translation_files

  attr_accessor :file

  after_create :create_translation_lines

  private

  def create_translation_lines
    require 'csv'
    rows = CSV.read(self.file.path, { col_sep: "\t" })

    rows.each do |row|

      translation_line = TranslationLine.new()

      translation_line.translation_file_id = self.id
      translation_line.translation_code = row[0]
      translation_line.description = row[1]

      translation_line.save

    end
  end
end
