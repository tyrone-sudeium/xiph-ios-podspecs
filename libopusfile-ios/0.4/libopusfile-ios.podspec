Pod::Spec.new do |s|
  s.name = "libopusfile-ios"
  s.version = "0.4"
  s.summary = "Opusfile provides application developers with a high-level API for decoding and seeking in .opus files."
  s.homepage = "http://www.opus-codec.org"
  s.license = 'BSD'
  s.authors = { "Tyrone Trevorrow" => "tyrone@sudeium.com", "Xiph.org" => "opus@xiph.org"}
  s.source = { :git => "https://github.com/tyrone-sudeium/libopusfile-ios.git", :tag => '0.4'}
  s.ios.deployment_target = '6.0' # We're compiling arm64, so I think 6.0 minimum is needed
  s.source_files = 'libopusfile/{src,include}/*.{h,c}'
  s.public_header_files = 'libopusfile/include/*.h'
  s.header_mappings_dir = 'libopusfile/include'
  s.dependency 'libogg-ios', '~> 1.3'
  s.dependency 'libopus-ios', '~> 1.1'
end