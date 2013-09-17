Mongo plugin for Dokku
----------------------

Project: https://github.com/progrium/dokku

Installation
------------
```
cd /var/lib/dokku/plugins
git clone https://github.com/calvdee/dokku-mongo-plugin mongo
dokku plugins-install
```


Commands
--------
```
$ dokku help
     mongo:create <app>     Create a Mongo container
     mongo:delete <app>     Delete specified Mongo container
     mongo:info <app>       Display container informations
     mongo:link <app> <rd>  Link an app to a Mongo container
     mongo:logs <app>       Display last logs from Mongo contain
```

Simple usage
------------

Create a new Container:
```
$ dokku mongo:create foo            # Server side
$ ssh dokku@server mongo:create foo # Client side

-----> Mongo container created: mongo/foo

       Host: 172.16.0.104
       Public port: 49187
```

Deploy your app with the same name (client side):
```
$ git remote add dokku git@server:foo
$ git push dokku master
Counting objects: 155, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (70/70), done.
Writing objects: 100% (155/155), 22.44 KiB | 0 bytes/s, done.
Total 155 (delta 92), reused 131 (delta 80)
remote: -----> Building foo ...
remote:        Ruby/Rack app detected
remote: -----> Using Ruby version: ruby-2.0.0

... blah blah blah ...

remote: -----> Deploying foo ...
remote: 
remote: -----> App foo linked to mongo/foo container
remote:        MONGO_IP=172.16.0.104
remote: 
remote: -----> Deploy complete!
remote: -----> Cleaning up ...
remote: -----> Cleanup complete!
remote: =====> Application deployed:
remote:        http://foo.server
```


Advanced usage
--------------

Deleting containers:
```
dokku mongo:delete foo
```

Linking an app to a specific container:
```
dokku mongo:link foo bar
```

Mongo logs (per container):
```
dokku mongo:logs foo
```

Mongo informations:
```
dokku mongo:info foo
```
