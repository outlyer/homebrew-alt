class NzbgetApp < Cask
  url 'http://sourceforge.net/projects/nzbget/files/nzbget-13.0-testing-r1053-bin-osx-x64.zip'
  homepage 'http://nzbget.net'
  version '0.13.0-testing-r1053'
  sha256 'c03be2fed4d8ddcb5b787ed1d47b2f54649e2247995392f3006ffa16ecc7f989'
  link 'NZBGet.app'
  after_install do
    system '/usr/bin/defaults', 'write', 'net.sourceforge.nzbget', 'DoNotShowWelcomeDialog', '-bool', 'true'
    system '/usr/bin/defaults', 'write', 'net.sourceforge.nzbget', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
