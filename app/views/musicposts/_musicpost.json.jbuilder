json.extract! musicpost, :id, :scene_id, :description_story, :description_music, :composer, :artist, :title, :music, :created_at, :updated_at
json.url musicpost_url(musicpost, format: :json)
