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
          :authorize_url => '/oauth2/v0/token',
          :token_method => :post,
          :token_url => '/oauth2/v0/token'
      }
    end
  end
end