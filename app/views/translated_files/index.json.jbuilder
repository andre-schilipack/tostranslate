json.array!(@translated_files) do |translated_file|
  json.extract! translated_file, :id, :translation_file_id, :name
  json.url translated_file_url(translated_file, format: :json)
end
