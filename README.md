# README
Dependencies:

Ruby Version : 2.3.1 and higher
Rails Version : 5.1 and higher

Setup:

- Run bundle install
- Rails db:create
- Rails db:migrate
- Rails db:seed
- Rails s

Notes:

* We have kept the DB Sqlite as it is a small demo app

Execution step:

* When running http://localhost:3000 you will see all the activties created with seed data
* Clicking on any activity will list out the associated children
* Clicling on "All Activities" will list out the children associated with all activities
* By default the child list under any activity will be marked Red (not checked in yet)
* Clicking on any child for first time; it will make it Blue and will mark its checkin time
* Clicking on any child for second time; it will make it Green and will mark its checkout time
* Clicking on any child for third time; it will undo the checkin and mark it red again
* Clicking on back button will take user to the Activity list page
* User can see the checkin counts on the top of listing