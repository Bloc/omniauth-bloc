require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bloc < OmniAuth::Strategies::OAuth2
      option :name, 'bloc'

      option :client_options, {
               authorize_url: '/oauth/authorize',
               site: 'http://localhost:3000'
             }

      uid { raw_info["id"].to_s }

      info do
        {
          email: raw_info["email"],
          username: raw_info["name"],
          name: raw_info["name"],
          bio: raw_info["bio"],
          user_type: raw_info["type"],
          status: raw_info["status"],
          image_url: raw_info["image_src"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end

      def callback_url
        # Fixes regression in omniauth-oauth2 v1.4.0 by https://github.com/intridea/omniauth-oauth2/commit/85fdbe117c2a4400d001a6368cc359d88f40abc7
        options[:callback_url] || (full_host + script_name + callback_path)
      end

    end
  end
end
