json.extract! person, :id, :name, :document, :birthdate, :animals_id, :created_at, :updated_at
json.url person_url(person, format: :json)
