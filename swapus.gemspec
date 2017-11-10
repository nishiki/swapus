lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'swapus'
  spec.version       = File.open('VERSION').read
  spec.authors       = ['Adrien Waksberg']
  spec.email         = ['swapus@yae.im']
  spec.summary       = 'Swapus is a little software to get processes who use swap.'
  spec.homepage      = 'https://github.com/nishiki/swapus'
  spec.license       = 'Apache-2.0'

  spec.files         = %x(git ls-files -z).split("\x0")
  spec.executables   = ['swapus']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3'
end
