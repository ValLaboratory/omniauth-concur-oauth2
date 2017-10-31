$:.push File.expand_path("../lib", __FILE__)
require 'omniauth-concur-oauth2/version'

Gem::Specification.new do |s|
  s.name = 'omniauth-concur-oauth2'
  s.version = OmniAuth::Concur::VERSION
  s.platform = Gem::Platform::RUBY
  s.date = '2017-10-31'
  s.authors = ['chachaki']
  s.email = 'sasaki@guildworks.jp'
  s.homepage = 'http://github.com/GuildWorks/omniauth-concur-oauth2'
  s.summary = %Q{OmniAuth strategy for authenticating with Concur's OAuth2 API}
  s.description = s.summary
  s.license = "The MIT License (MIT)"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'omniauth-oauth2', '~> 1.1'
end

