json.array!(@reports) do |report|
  json.extract! report, :id, :student, :description, :image, :title, :report_type
  json.url report_url(report, format: :json)
end
