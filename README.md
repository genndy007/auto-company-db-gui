AutoCompany Database application
---------------------------

About
--------------------
This application is to present the contents of tables. The database was created            
and filled with PostgreSQL DBMS (used psql-shell and pgAdmin4)

Requirements
-----------------
Install PostgreSQL          
```
# Ubuntu
# Add repo
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# Download and add key
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
# Update 
sudo apt-get update
# Install
sudo apt-get -y install postgresql
```

Programming languages:        
Nothing but python3 and tkinter           

Install tkinter if needed          
```
sudo apt install python3-tk   # Ubuntu, Debian
```

Oh, yes... You need that database          
1. Use psql
> \i tables.sql
> \i fill.sql

OR run commands from sql files at pgAdmin4

2. Create a file database.ini (in project folder :) ) with such contents:       
[postgresql]
host=<yourhost>
database=<name>
user=<user>
password=<pass> 


Run
------------------
```
python3 app.py
```

How to use
------------------
Run and press buttons to show the contents of tables filled by PostgreSQL          
and feel happy :)
