class NzbgetApp < Cask
  url 'http://downloads.sourceforge.net/project/nzbget/nzbget-stable/13.0/nzbget-13.0-bin-osx-x64.zip'
  homepage 'http://nzbget.net'
  version '0.13.0'
  sha256 '81099686c51f24c0247a28fdddd604c2c9e36136da4c9541d070a14f5b0d704c'
  link 'NZBGet.app'
  after_install do
    system '/usr/bin/defaults', 'write', 'net.sourceforge.nzbget', 'DoNotShowWelcomeDialog', '-bool', 'true'
    system '/usr/bin/defaults', 'write', 'net.sourceforge.nzbget', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
