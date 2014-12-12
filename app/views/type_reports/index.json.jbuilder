json.array!(@type_reports) do |type_report|
  json.extract! type_report, :id, :label, :description
  json.url type_report_url(type_report, format: :json)
end
