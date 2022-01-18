# Lakeside Liquor

![Homepage ScreenShot](/assets/images/homepage-screenshot.png)

A web application for a Liquor Store in Alva Oklahoma. This app will use Ruby on rails to display basic information about the business as well as recipes for cocktails, a list of featured products, a contact page using ActionMailer, and a custom admin page for keeping track of featured product and recipes.  

This application uses Bootstrap for styling along with Isotope for filtering results.

Start Bootstrap - Business Casual v7.0.6 (https://startbootstrap.com/theme/business-casual)

* Ruby version

Ruby version 2.6.1p33

* System dependencies

This application uses Devise for the admin page and Isotope for filtering. Fedora is also used for hidden credentials.   

* Configuration

Some configuration is needed to use this application. Mainly there is a need to setup ActionMailer in your config/environments development.rb and production.rb folder to include your smtp setup. This application is setup for Gmail but can be setup for as many smpts as desired.

* Database creation

PostgreSQL database

* Database initialization

Simply run rails db:create to create the database.

* Deployment instructions

This application uses Heroku for deployment. Setting up Heroku can be challenging if your version are needing updating. It is definitely a great idea to keep all version updated or keep track of which version is being used. For information regarding how to setup Heroku with rails please follow the link.

[Rails Heroku Setup](https://devcenter.heroku.com/articles/getting-started-with-rails6)




Feel free to fork and play around with my code from my github page.
[GitHub Page](https://github.com/dakotastates/rails-lakeside-liquor)
