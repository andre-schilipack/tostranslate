class TranslatedLine < ActiveRecord::Base
  belongs_to :translation_line
  belongs_to :language
end
