json.extract! contact, :id, :firstName, :lastName, :email, :address, :site, :description, :created_at, :updated_at
json.url contact_url(contact, format: :json)
