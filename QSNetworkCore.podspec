#
#  Be sure to run `pod spec lint QSNetworkCore.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "QSNetworkCore"
  spec.version      = "0.0.1"
  spec.summary      = "QSNetworkCore framework for QS projects"

  spec.description  = <<-DESC
  Networking framework for QS json-rpc api's
                   DESC

  spec.homepage     = "https://github.com/quantron/QSNetworkCore"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.authors      = { "Evgeny Ivanov" => "ivanovean@gmail.com", "Yana Ivanova" => "suraeva.yana@gmail.com" }

  spec.platform     = :ios, "10.0"

  spec.source       = { :git => "https://github.com/quantron/QSNetworkCore.git", :tag => "#{spec.version}" }

  spec.source_files  = 'QSNetworkCore/QSNetworkCore/Source/*.swift'


  spec.framework  = "UIKit"
  spec.dependency "Alamofire", '~> 5.0.0.beta.6'

  spec.swift_version = "4.2"

  spec.requires_arc = true

end
