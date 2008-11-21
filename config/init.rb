# Go to http://wiki.merbivore.com/pages/init-rb
 
require 'config/dependencies.rb'
 
use_test :rspec
use_template_engine :haml
 
Merb::Config.use do |c|
  c[:use_mutex] = false
  c[:session_store] = 'cookie'  # can also be 'memory', 'memcache', 'container', 'datamapper
  
  # cookie session store configuration
  c[:session_secret_key]  = 'f23e88da6bff058f03dfd6f3a863c33d67007f68'  # required for cookie session store
  # c[:session_id_key] = '_session_id' # cookie session id key, defaults to "_session_id"
end

Merb::BootLoader.before_app_loads do
  DOC_XML = Nokogiri::XML.parse(File.read(Merb.root / "config" / "doc.xml", nil, 0))
  # This will get executed after dependencies have been loaded but before your app's classes have loaded.
end
 
Merb::BootLoader.after_app_loads do
  Merb::Cache.setup do
    register(:default, Merb::Cache::PageStore[Merb::Cache::FileStore], :dir => Merb.root / :public / "cache")
  end
  # This will get executed after your app's classes have been loaded.
end
