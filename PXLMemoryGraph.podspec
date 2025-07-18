#
# Be sure to run `pod lib lint PXLMemoryGraph.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PXLMemoryGraph'
  s.version          = '1.0.6'
  s.summary          = 'A short description of PXLMemoryGraph.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://techgit.meitu.com/GPIG/PXLMemoryGraph'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fengchiwei' => 'chiwei.feng@pixocial.com' }
  s.source           = { :git => 'git@techgit.meitu.com:GPIG/PXLMemoryGraph.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.source_files = 'PXLMemoryGraph/Sources/**/*.{h,m,mm,c}'
  s.public_header_files = 'PXLMemoryGraph/Sources/Public/*.h'

end
