class TranslatedLine < ActiveRecord::Base
  belongs_to :language
  belongs_to :translated_file
  # belongs_to :translation_line, foreign_key: "translation_code"

  before_create :set_language

  after_create :set_to_translated

  private

  def set_language
    self.language_id = 1 # TODO: Tirar hardcoded
  end

  def set_to_translated
    # TODO melhorar com belongs_to
    translation_line = TranslationLine.where("translation_code = ?", self.translation_code).first
    unless translation_line.translated
      translation_line.translated = true
      translation_line.save
    end
  end
end
