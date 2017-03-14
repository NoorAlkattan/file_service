CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: 'AKIAIPFRKVHR3O4K4ZYA',
    aws_secret_access_key: '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'
  }
  config.fog_directory = 'sfax1980'
end
