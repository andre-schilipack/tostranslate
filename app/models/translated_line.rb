class TranslatedLine < ActiveRecord::Base
  belongs_to :language

  before_create :set_language

  private

  def set_language
    self.language_id = 1 # TODO: Tirar hardcoded
  end
end
