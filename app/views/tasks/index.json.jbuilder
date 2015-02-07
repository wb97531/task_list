json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :notes, :deadline, :category, :completed, :date_completed, :priority, :doer_id
  json.url task_url(task, format: :json)
end
