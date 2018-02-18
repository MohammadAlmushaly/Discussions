json.extract! discussion, :id, :title, :body, :account_id, :created_at, :updated_at
json.url discussion_url(discussion, format: :json)
