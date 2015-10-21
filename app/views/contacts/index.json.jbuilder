json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :home_phone, :work_phone, :mobile, :email
  json.url contact_url(contact, format: :json)
end
