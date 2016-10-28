Pod::Spec.new do |s|
  s.name         = "GHNavigationDropdownMenu"
  s.version      = "0.4.1"
  s.summary      = "The elegent navigation dropdown menu"
  s.description  = <<-DESC
                   The elegant **dropdown menu**, written in **Swift**, appears underneath **navigation bar** to display a list of related items when a user click on the navigation title.
                   DESC
  s.homepage     = "https://github.com/gunnarhafdal/GHNavigationDropdownMenu"
  s.screenshots  = "https://raw.githubusercontent.com/gunnarhafdal/GHNavigationDropdownMenu/master/Assets/Demo.png"
  s.license      = "MIT"
  s.author       = {  "Gunnar Hafdal" => "gunnarhafdal@gmail.com",
                      "Pham Ba Tho" => "phambatho@gmail.com" }
  s.platform     = :ios, '9.0'
  s.source       = { :git => "https://github.com/gunnarhafdal/GHNavigationDropdownMenu.git", :tag => s.version.to_s }
  s.source_files  = "Source/*.swift"
  s.resources = "Source/*.bundle"
  s.requires_arc = true
end
