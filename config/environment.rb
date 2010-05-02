# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.2.3' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  config.action_controller.session = {
    :session_key => '_conceptor_session',
    :secret      => 'a81fc673bf17930f31716b7794497da76802f09f05c7bcc11d03d66416e2d824bc938e01b5a4fd0c91944176b254fe8e5a806fa639fefde6dcc1102065f5b29f'
  }
  config.action_controller.session_store = :active_record_store
end
