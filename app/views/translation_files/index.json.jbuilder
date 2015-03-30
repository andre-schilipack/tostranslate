json.array!(@translation_files) do |translation_file|
  json.extract! translation_file, :id, :name
  json.url translation_file_url(translation_file, format: :json)
end
