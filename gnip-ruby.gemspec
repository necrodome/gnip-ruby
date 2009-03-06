Gem::Specification.new do |s|
  s.name = "gnip"
  s.version = "2.1"
  s.homepage = "http://www.gnipcentral.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "Library to access Gnip"
  s.files = ['lib/gnip.rb', 'lib/ext/time.rb', 'lib/gnip/activity.rb', 'lib/gnip/payload.rb', 'lib/gnip/filter.rb', 'lib/gnip/config.rb', 'lib/gnip/connection.rb', 'lib/gnip/publisher.rb', 'lib/gnip/rule.rb', 'lib/gnip/rule_type.rb']
  s.require_path = "lib"
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
  s.add_dependency("xml-simple", ">= 1.0.11")
end
