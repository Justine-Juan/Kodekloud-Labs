### Establish SSH conection to the App Server
ssh <user>@<ip address>

### Create the user
sudo useradd -s /sbin/nologin <username>

### Verify
getent passwd <username>
