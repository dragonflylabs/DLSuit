
Pod::Spec.new do |s|

  s.name         = "DLSuit"
  s.version      = "0.0.3"
  s.summary      = "A complete suit of awesome wrappers for another libraries. But Hey! We hace created some cool libraries too. Enjoy it!."

  s.description  = <<-DESC
                   Cool library to use in a High Level mode AFNetworking and TSMessages. Aditionally you'll find some cool utilities that 
                   every developer should have in every iOS project.

                   Include: 
                      * JSON Requests
                      * Validations
                      * Connection check (Thanks to Reachability)
                      * Communication trought components (Thanks to Tolo)

                   DESC

  s.homepage     = "https://github.com/dragonflylabs/DLSuit"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  #s.author             = { "Dragonfly Labs." => "daniel@dflabs.io" }
  s.authors            = { "Dragonfly Labs." => "daniel@dflabs.io" , "Daniel García Alvarado" => "daniel@dflabs.io"}
  s.social_media_url   = "http://twitter.com/fullstackdaniel"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/dragonflylabs/DLSuit.git", :tag => "0.0.3" }
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
