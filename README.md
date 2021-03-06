# Bookmark Manager

## User requirements ##

The user requirements for this task are as follows:

* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks

## User stories ##

The user stories based on the user requirements are as follows:
```
As a user
So that I can store my websites
I would like to be able to list my bookmarks.

As a user
So that I can save a page for later consumption, yum yum yum
I would like to add new bookmarks.

As a user
So that I can discard websites that I no longer need
I would like to delete some bookmarks.
```
## Domain Model ##

![Domain model](https://raw.githubusercontent.com/DavidStewartLDN/bookmark_manager/master/img/bookmark_manager_1.png)


## Instructions on how to use the SQL queries ## 

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
