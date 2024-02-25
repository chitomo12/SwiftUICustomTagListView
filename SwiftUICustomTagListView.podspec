#
# Be sure to run `pod lib lint SwiftUICustomTagListViewPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftUICustomTagListView'
  s.version          = '0.4'
  s.summary          = 'Simple Tag List View for SwiftUI.'
  s.description      = "Simple and customizable Tag List View for SwiftUI."
  s.homepage         = 'https://github.com/chitomo12/SwiftUICustomTagListView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chitomo12' => 'chitomo12@icloud.com' }
  s.source           = { :git => 'https://github.com/chitomo12/SwiftUICustomTagListView.git', :tag => s.version.to_s }
  s.ios.deployment_target = '14.0'
  s.osx.deployment_target = '12.0'
  s.source_files = 'Sources/**/*.swift'
  s.swift_versions = ['5.0']
end
