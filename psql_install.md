### Postgresql Installation instructions
Mac
------
If you havn't already done so, make sure you have installed homebrew
 * Install [Xcode](https://itunes.apple.com/au/app/xcode/id497799835?mt=12 "Xcode download page") if you havnt already.
 *  Get command-line tools by entering the following in terminal `xcode-select --install`
 * Install homebrew by entering `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` in terminal

In your terminal run `brew install postgresql`

After homebrew has downloaded the software it will show you some installation instructions, follow them!

Make sure you run these commands after installing:
```
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```
You can check your installation by running psql

At first it can happen that you don't have a database named after your username (you will see a message along the lines database "your_computer_username" does not exist).

Let's create that database for you so that you can log in without having to specify which one: psql postgres

Which opens up the postgres terminal - it looks something like postgres=#.

Then type in the following:
```
create database "your_user_name_here";

CREATE DATABASE

postgres=# \q
```
The last command quits out of the postgres terminal.

From now on you will be able to log in to postgresql without having to specify the database you want to log into.

Linux
------
Setting up Postgres on GNU/Linux systems requires a slightly different approach to Macs. On most Linux systems, postgres is not installed by default. This means you will need to install it, along with its server and libraries:

On Ubuntu/Mint:

```
sudo apt-get install postgresql postgresql-contrib postgresql-server-dev-9.5 libpq-dev
```
On Fedora:
```
sudo yum install postgresql-server postgresql-contrib libpq-dev
sudo systemctl enable postgresql
sudo postgresql-setup initdb
```

You now need to set up the database user and initial databases. For this you first need to switch to the ‘postgres’ user:

`sudo -i -u postgres`

You can then create the database user via either of the following commands; not both!

```
createuser --interactive # for interactive user setup…
createuser -drS «USERNAME»  # NB: CAPITAL S! Replace «USERNAME» with your system login name.
```
Return to your normal login using `logout`.

Next you need to create a default database:

`createdb «USERNAME» # Again replace «USERNAME» with your system login name.`

Check that this new database has been created successfully by logging in to psql and listing the databases:
```
psql
# You will now get a new prompt: «USERNAME»=#
\l # or \list
# Check that your database is here
\q # to exit psql
```

Finally, you need to allow your system to modify databases from the localhost without a prompt (this may be a minor security issue depending on who has access to your machine and what you intend to run on it, but experience taught us that getting passwords to work was futile). To do this you need to edit you pg_hba.conf file. Depending on your system, this may be in /var/lib/psql/data or /etc/postgres/9.3/main  

Once you have found the file, enter superuser mode

`sudo su`

Then open the file and edit it as follows

```
# Change…
host    all             all             127.0.0.1/32            md5
# …to…
host    all             all             127.0.0.1/32            trust
```

Type `exit` to return to normal mode and you should be set up and ready to go!