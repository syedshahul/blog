Sample Blog application using ROR
====

Rails comes with a number of scripts called generators that are designed to
make your development life easier by creating everything that's necessary to
start working on a particular task. One of these is the new application
generator, which will provide you with the foundation of a fresh Rails
application so that you don't have to write it yourself.
checkout more at : http://guides.rubyonrails.org/getting_started.html
---


To use this generator, open a terminal, navigate to a directory where you
have rights to create files, and type:


$ rails new blog
---
This will create a Rails application called Blog in a blog directory and
install the gem dependencies that are already mentioned in Gemfile using
bundle install.


You can see all of the command line options that the Rails application
builder accepts by running rails new -h.


After you create the blog application, switch to its folder:


$ cd blog
---
The blog directory has a number of auto-generated files and folders that make
 up the structure of a Rails application. Most of the work in this tutorial
 will happen in the app folder, but here's a basic rundown on the function of
  each of the files and folders that Rails created by default:

File/Folder	Purpose
---
app/	Contains the controllers, models, views, helpers,
mailers and assets for your application. You'll focus on this folder for the
remainder of this guide.

bin/	Contains the rails script that starts your app and can contain other
scripts you use to deploy or run your application.

config/	Configure your application's routes, database,
and more. This is covered in more detail in Configuring Rails Applications.
config.ru	Rack configuration for Rack based servers used to start the
application.

db/	Contains your current database schema, as well as the database migrations.

Gemfile
Gemfile.lock	These files allow you to specify what gem dependencies are
needed for your Rails application. These files are used by the Bundler gem.
For more information about Bundler, see the Bundler website.

lib/	Extended modules for your application.

log/	Application log files.

public/	The only folder seen by the world as-is. Contains static files and
compiled assets.

Rakefile	This file locates and loads tasks that can be run from the command
line. The task definitions are defined throughout the components of Rails.
Rather than changing Rakefile, you should add your own tasks by adding files
to the lib/tasks directory of your application.

README.rdoc	This is a brief instruction manual for your application. You
should edit this file to tell others what your application does,
how to set it up, and so on.

test/	Unit tests, fixtures, and other test apparatus. These are covered in
Testing Rails Applications.

tmp/	Temporary files (like cache, pid, and session files).

vendor/	A place for all third-party code. In a typical Rails application this
 includes vendored gems.

Hello, Rails!
===
To begin with, let's get some text up on screen quickly. To do this,
you need to get your Rails application server running.

Starting up the Web Server
---
You actually have a functional Rails application already. To see it,
you need to start a web server on your development machine. You can do this
by running the following in the blog directory:

$ rails server
---
Compiling CoffeeScript to JavaScript requires a JavaScript runtime and the
absence of a runtime will give you an execjs error. Usually Mac OS X and
Windows come with a JavaScript runtime installed.
Rails adds the therubyracer
 gem to the generated Gemfile in a commented line for new apps and you can
 uncomment if you need it. therubyrhino is the recommended runtime for JRuby
 users and is added by default to the Gemfile in apps generated under JRuby.
 You can investigate about all the supported runtimes at ExecJS.

This will fire up WEBrick, a web server distributed with Ruby by default. To
see your application in action, open a browser window and navigate to
http://localhost:3000.
