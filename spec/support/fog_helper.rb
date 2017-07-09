Fog.mock!

# Fog.credentials_path = Rails.root.join('spec', 'support', 'fog_credentials.yml')
# connection = Fog::Storage.new(:provider => 'AWS')

# connection.directories.create(:key => 'my_bucket')

storage = Fog::Storage.new({
  aws_access_key_id: 'xxx',
  aws_secret_access_key: 'yyy',
  provider: 'AWS'
})

directory = storage.directories.create(:key => 'data')

file = directory.files.create(:key => File.join(Rails.root, 'spec', 'fixtures', 'files', 'elephant.jpg'))



