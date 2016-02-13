json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :sunday_date, :send_at, :author, :description
  json.url job_url(job, format: :json)
end
