require './config/boot.rb'
use ElasticAPM::Middleware

ElasticAPM.start(
  app: ArmedBandit,
  config_file: 'config/elastic_apm.yml'
)

run ArmedBandit.new
at_exit { ElasticAPM.stop }
