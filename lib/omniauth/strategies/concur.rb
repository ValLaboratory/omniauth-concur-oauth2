require 'omniauth-oauth2'

# OAuth2::Response.register_parser(:custom_xml, ['text/xml', 'application/rss+xml', 'application/rdf+xml', 'application/atom+xml']) do |body|
#   MultiXml.parse(body).deep_transform_keys{ |key| key.to_s.downcase } rescue body
# end


module OmniAuth
  module Strategies
    class Concur < OmniAuth::Strategies::OAuth2
      option :name, 'concur'
      option :client_options, {
          :site => 'https://www-us.api.concursolutions.com',
          :authorize_url => '/oauth2/v0/authorize',
          :token_method => :post,
          :token_url => '/oauth2/v0/token'
      }

      credentials do
        hash = {"token" => access_token.token}
        hash.merge!("id_token" => access_token.id_token) if access_token.id_token
        hash.merge!("refresh_token" => access_token.refresh_token) if access_token.expires? && access_token.refresh_token
        hash.merge!("expires_at" => access_token.expires_at) if access_token.expires?
        hash.merge!("expires" => access_token.expires?)
        hash
      end
    end
  end
end