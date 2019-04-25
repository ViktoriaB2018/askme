# ASKME

## Social network with questions & answers

* Ruby version 2.5.3
* Rails version 5.2.2
* Deploy Heroku - https://ask-ask-me.herokuapp.com/

#### Before running

```
bundle install
bundle exec rake db:migrate
```

#### For production and development environments

You need set up variable environments

Recaptcha (app/config/initializers/recaptcha.rb):

```
RECAPTCHA_SITE_KEY
RECAPTCHA_SECRET_KEY
```
