# 1 - Linux User Setup with Non-Interactive Shell

## Task
- Create a user named amar with a non-interactive shell on App Server

## Solution
- Step 1: Establish SSH connection to the server
```bash
ssh <user>@<ip address>
```

- Step 2: Create the user
```bash
sudo useradd -s /sbin/nologin <username>
``` 
> - useradd - creates a new user on Linux
> - s /sbin/nologin - sets the user's login shell to /sbin/nologin


- Step 3: Verify the user
```bash
getent passwd <username>
```
