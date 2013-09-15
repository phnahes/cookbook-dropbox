# Directory
default[:dropbox]["dir"]["work"] = "/data/dropbox"
default[:dropbox]["dir"]["dist"] = "/data/dropbox/.dropbox-dist/" 

# Tarball
default[:dropbox]["tar"]["url"] = "http://www.dropbox.com/download/?plat=lnx.x86_64" 
default[:dropbox]["tarball"] = "/tmp/dropbox.tgz" 

# Script
default[:dropbox]["script"]["url"] = "http://www.dropbox.com/download?dl=packages/dropbox.py" 
default[:dropbox]["script"]["changeDir"] = "http://dl.dropbox.com/u/119154/permalink/dropboxdir.py" 
