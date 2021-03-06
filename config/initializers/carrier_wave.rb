if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        :provider => 'AWS',
        :aws_access_key_id => ENV['s3_ACCESS_KEY'],
        :aws_secret_access_key => ENV['s3_SECRET_KEY'],
        :region => 'us-east-2'
    }
    config.fog_directory = ENV['s3_BUCKET']
  end
end