json.extract! song, :id, :karafun_id, :title, :artist, :artist_id, :created_at, :updated_at
json.url song_url(song, format: :json)
