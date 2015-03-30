json.array!(@translated_lines) do |translated_line|
  json.extract! translated_line, :id, :translation_line_id, :description, :language_id
  json.url translated_line_url(translated_line, format: :json)
end
