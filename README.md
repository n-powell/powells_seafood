# _Zaps Exports_

#### _Online catalog for seafood distributor, Friday July 7, 2017_

#### By _**Nick Powell**_

## Description

_This is a catalog site for Powell's Seafoods. An online seafood distribution center.

You must create an account to view products. By default all added accounts on-site do not have admin access. For this case, I have seeded an admin account to log into to add products.


After product is added. Users are then able to go to a details page about that product. Here they can add reviews with a rating number and a comment._
* _email: admin@gmail.com_
* _password: password_
## Setup/Installation Requirements

### Access Atom Files

* _Ensure connection to the Internet_
* _On a mac using spotlight search type in terminal_
* _Once in terminal enter the following commands to clone the file to your desktop and open the repository:_
```
$ cd desktop
$ git clone https://github.com/n-powell/powells_seafood
$ cd powells_seafood
$ bundle install
$ atom .
```
* _This will open all of the files included in the zaps-exports folder including Gemfile, Gemfile.lock, app.rb, README.md, views folder, spec folder, public folder, lib folder_
* _To make changes to the look of the file you will need to access the styles.css file._

### Create Database and Tables
* _In the terminal enter the following commands to start the postgres:_

```
$ postgres
```
* _Open another tab in the terminal enter the following commands to start the databases needed for this program:_

```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
$ rake db:seed
```

### Run the Program

```
$ rails serve
```
* _Open your browser and enter `localhost:3000` as the URL path._

## Known Bugs

_You may need to reset the database if you run into seeding issues._

```

$ rake db:reset
```


## Support and contact details

_Please contact me for details placeholder@nick.com._

## Technologies Used

* HTML
* CSS
* Bootstrap
* Postgres
* Ruby
* Rails

### License

*This software is licensed under MIT license.*

Copyright (c) 2017 **_Nick Powell_**
