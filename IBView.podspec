Pod::Spec.new do |s|
  s.name = 'IBView'
  s.version = '0.2.0'
  s.license = 'MIT'
  s.summary = 'Designable corner shadow border for Storyboard'
  s.homepage = 'https://github.com/Upmer/IBView'
  s.authors = { 'upmer' => 'upmer@upmer.com' }
  s.source = { :git => 'https://github.com/Upmer/IBView.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.swift_version = '5.0'

  s.source_files = 'Source/**/*.swift'
end