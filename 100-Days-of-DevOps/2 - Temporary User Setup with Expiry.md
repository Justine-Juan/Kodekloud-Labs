# Task
Create a user named ammar on App Server 1 in Stratos Datacenter. Set the expiry date to 2024-03-28, ensuring the user is created in lowercase as per standard protocol.

# Solution
- Step 1: SSH connection to App Server 1 
 ```bash
  ssh tony@172.16.238.10
 ```
<img width="1380" height="277" alt="2 - Temporary User Setup with Expiry (SSH)" src="https://github.com/user-attachments/assets/d939ac00-13c6-4cab-ab3b-7919683f0433" />

- Step 2: Create the user with expiration data
```bash
sudo useradd -e 2024-03-28 ammar
```
> -e YYYY-MM-DD → sets the account expiry data

<img width="1405" height="383" alt="2 - Temporary User Setup with Expiry (User Creation)" src="https://github.com/user-attachments/assets/a10a684f-9d97-4597-965d-f64950427190" />

- Step 3: Verify
```bash
sudo chage -l ammar
getent passwd ammar
```
> - chage command manages and shows password aging information for a user
>   - l -> list account aging information
> - geteent command fetches entris from administrative database (like passwd, group, hosts)
>   - passwd -> queries the system's user database (/etc/passwd)
<img width="1418" height="427" alt="2 - Temporary User Setup with Expiry (verify)" src="https://github.com/user-attachments/assets/520c8de3-e60d-4cc2-8728-fa43d0ab379a" />
