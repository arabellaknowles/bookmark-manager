As a user
So I know what bookmarks I have
I would like to be able to show a list of bookmarks

Domain Model:
![Screenshot](https://i.imgur.com/Pqgu55f.png)

**How to Connect this to a Database in postgreSQL:**

1) Connect to psql
```
psql
```
2) Create a database in psql using CREATE DATABASE and name it bookmark_manager
```
CREATE DATABASE bookmark_manager;
```
3) Connect to bookmark_manager using psql command \c bookmark_manager
```
\c bookmark_manager;
```
4) Run the query we saved in the file create_bookmarks_table.sql
5) Add a new column called title by running the query saved in the add_title_to_bookmarks.sql


**Setting up a test database for feature and unit testing:**
1) Connect to psql
```
psql
```
2) Create database bookmark_manager_test;
```
CREATE DATABASE bookmark_manager_test;
```
3) Connect to bookmark_manager_test using psql command \c bookmark_manager
```
\c bookmark_manager_test;
```
4) Run the query we saved in the file 01_create_bookmarks_table.sql
5) Add a new column called title by running the query saved in the 02_add_title_to_bookmarks.sql

**User stories:**

add new bookmarks:
As a user,
So that I can access my favourite web page easily,
I would like to save it as a bookmark