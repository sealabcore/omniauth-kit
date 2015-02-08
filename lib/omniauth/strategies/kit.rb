require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Kit < OmniAuth::Strategies::OAuth2
      # change the class name and the :name option to match your application name
      option :name, :kit

      option :client_options, {
        :site => "https://www.kitcrm.com",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"]
          # and anything else you want to return to your API consumers
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end