# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memo/version'

Gem::Specification.new do |gem|
  gem.name          = "memo"
  gem.version       = Memo::VERSION
  gem.authors       = ["rhysd"]
  gem.email         = ["lin90162@yahoo.co.jp"]
  gem.description   = %q{define memoized procedure easily}
  gem.summary       = %q{you can define memoized procedure in Memo namespace. an example exists in lib/memo.rb}
  gem.homepage      = "https://github.com/rhysd/memo"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
