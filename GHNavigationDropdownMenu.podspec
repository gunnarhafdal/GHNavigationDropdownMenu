Pod::Spec.new do |s|
  s.name         = "GHNavigationDropdownMenu"
  s.version      = "2.0.1"
  s.summary      = "A dropdown menu"
  s.description  = <<-DESC
                  The dropdown menu, appears underneath navigation bar to display a list of related items when the user taps on the navigation title.
                   DESC
  s.homepage     = "https://github.com/gunnarhafdal/GHNavigationDropdownMenu"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Gunnar Hafdal" => "gunnarhafdal@gmail.com" }
  s.social_media_url   = "http://twitter.com/GunnarHafdal"
  s.platform     = :ios, "9.3"
  s.source       = { :git => "https://github.com/gunnarhafdal/GHNavigationDropdownMenu.git", :tag => "#{s.version}" }
  s.source_files  = "Source/*.swift"
  s.resources = "Source/*.bundle"
end
