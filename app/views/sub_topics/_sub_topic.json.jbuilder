json.extract! sub_topic, :id, :title, :description, :topic_id, :created_at, :updated_at
json.url sub_topic_url(sub_topic, format: :json)
