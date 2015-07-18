json.array!(@timers) do |timer|
  json.extract! timer, :id, :survey_id, :loops_completed
  json.url timer_url(timer, format: :json)
end
