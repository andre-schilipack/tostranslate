class Language < ActiveRecord::Base
  has_many :translated_lines
end
