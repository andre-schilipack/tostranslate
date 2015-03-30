json.array!(@translation_lines) do |translation_line|
  json.extract! translation_line, :id, :translation_file_id, :translation_id, :description
  json.url translation_line_url(translation_line, format: :json)
end
