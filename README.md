# HFRI (ELIDEK) database implementation project
A simple implementation for the needs of HFRI institute made with flask framework (python) for the backend, jinja template engine 
for HTML and CSS styling custom made by Aggelos Kanatas Artworks.

Team: Angelos-Nikolaos Kanatas, Georgios Triantafyllis, Ioannis Asprogerakas

## Installation steps for linux (Debian Core):

#### Get the latest version of Python and Flask framework:

``` bash
sudo apt-get update
sudo apt-get install python3.8
pip3 install -r requirements.txt
```

#### Download SQL development packages:

```bash
sudo apt install mysql-server
sudo mysql_secure_installation
```
1. Open a terminal and precede the `mysql` command with `sudo` to invoke it with the privileges of the root Ubuntu user in order to gain access to the root MySQL user. This can be done using  
`sudo mysql -u root -p`.
2. Create a new MySQL user using:  
`mysql> CREATE USER 'HFRI_admin'@'localhost' IDENTIFIED BY 'admin';`
3. Grant the user root privileges on the application's database using:  
`mysql> GRANT ALL PRIVILEGES ON demo.* TO 'type_username'@'localhost' WITH GRANT OPTION;`
4. Reload the grant tables to ensure that the new privileges are put into effect using:
`FLUSH PRIVILEGES;`.
5. Exit MySQL with `mysql> exit;`.
7. Go to `HFRI/__init__.py` and change the `app.config["MYSQL_USER"]` and `app.config["MYSQL_PASSWORD"]` lines according to the username and the password you chose before.

