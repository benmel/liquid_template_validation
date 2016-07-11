json.array!(@liquid_templates) do |liquid_template|
  json.extract! liquid_template, :id, :content
  json.url liquid_template_url(liquid_template, format: :json)
end
