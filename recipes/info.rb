puts <<EOS
**********************"
**********************"
To start Dropbox, first, as #{node[:dropbox_username]}:
env - LANG="en_US.iso88591" /usr/local/dropbox/dropboxd

You will see:
This client is not linked to any account...
Please visit https://www.dropbox.com/cli_link?host_id=... to link this machine.
(Then, once you open the link in a browser and login, you'll see)
Client successfully linked, Welcome Kortina!


Then, ctrl-c and start dropbox as a daemon.
/etc/init.d/dropbox start
**********************
**********************
EOS
