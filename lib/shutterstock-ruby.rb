require 'json'
require 'rest_client'
require 'shutterstock-ruby/connections'
require 'shutterstock-ruby/images'
require 'shutterstock-ruby/videos'

# Top level name space for the entire Gem.
module ShutterstockRuby
  API_BASE = 'api.shutterstock.com/v2'

  attr_reader :configuration, :videos, :images

  class Client
    def initialize(args)
      configuration = Configuration.new(args)

      @videos = Videos.new(configuration)
      @images = Images.new(configuration)
    end

    # Main configuration class.
    class Configuration
      attr_accessor :access_token
      attr_accessor :api_client
      attr_accessor :api_secret

      def initialize(args)
        @access_token = args[:access_token]
        @api_client = args[:api_client]
        @api_secret = args[:api_secret]
      end
    end
  end

end
