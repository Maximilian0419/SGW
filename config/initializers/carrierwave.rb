CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJ5ANEODJMW6SS2NA',
    :aws_secret_access_key  => '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'
  }
  
  # config.s3_region = 'US Standard'
  
  config.fog_directory = if %w[development test].include? Rails.env
    "SGW-production"
  else
    "SGW-production"
  end
end
