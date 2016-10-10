# README

#Deployment

* git clone this current repository
* Make sure to have postgresql running, or you must change the database inside the rails application itself.   I sugguest just to use a postgresql database.
* run ```rake db:create``` ```rake db:migrate``` ```rake db:seed```
* Running the seed file will access the starwars api and fill your database with all the information available and create the relations.
* If you want a better understanding of this, go to the seed.rb file

* After that just run the rails server and you are all set.  

* Have fun with it and please let me know of any issues or bugs 
