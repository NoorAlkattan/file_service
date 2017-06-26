CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: ENV['aws_access_key_id'],
    aws_secret_access_key: ENV['aws_secret_access_key'],
    region: ENV['region'],
    path_style: true
  }
  config.fog_directory = ENV['fog_directory']
  config.fog_attributes = {'x-amz-server-side-encryption' => 'AES256','Cache-Control'=>'max-age=315576000'}
end
