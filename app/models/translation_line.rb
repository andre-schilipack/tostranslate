class TranslationLine < ActiveRecord::Base
  belongs_to :translation_file
  has_many :translated_files
end
