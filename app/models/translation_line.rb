class TranslationLine < ActiveRecord::Base
  belongs_to :translation_file
  # has_many :translated_files

  after_create :verify_translated

  def translated?
    self.translated
  end

  private

  def verify_translated
    translated_lines = TranslatedLine.where("translation_code = ?", self.translation_code)
    if translated_lines.any?
      self.translated = true
    else
      self.translated = false
    end
    self.save
  end
end
