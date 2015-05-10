
Pod::Spec.new do |s|

  s.name         = "DLSuit"
  s.version      = "0.0.1"
  s.summary      = "A complete suit of awesome wrappers for another libraries. But Hey! We hace created some cool libraries too. Enjoy it!."

  s.description  = <<-DESC
                   A longer description of DLSuit in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/dragonflylabs/DLSuit"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  #s.author             = { "Dragonfly Labs." => "daniel@dflabs.io" }
  s.authors            = { "Dragonfly Labs." => "daniel@dflabs.io" , "Daniel García Alvarado" => "daniel@dflabs.io"}
  s.social_media_url   = "http://twitter.com/fullstackdaniel"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/dragonflylabs/DLSuit.git", :tag => "0.0.2" }
  s.source_files  = "Classes", "DLSuit"
  s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
  s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "AFNetworking"
  s.dependency "TSMessages"
end
