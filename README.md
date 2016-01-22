# OmniAuth Bloc

This gem contains the Bloc strategy for OmniAuth.

## Using this strategy

First, create an application on the [Bloc platform](https://www.bloc.io).

Add to Gemfile:

```ruby
gem 'omniauth-bloc'
```

Now, tell OmniAuth about this provider. For a rails app, your `config/initializers/omniauth` might look like this:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bloc, "CLIENT_KEY", "CLIENT_SECRET"
end
```

Replace CLIENT_KEY and CLIENT_SECRET with the appropriate values you obtained from your Bloc application.

## Watch the Railscast

Ryan Bates has put together an excellent RailsCast on OmniAuth:

[![RailsCast #241](http://railscasts.com/static/episodes/stills/241-simple-omniauth-revised.png "RailsCast #241 - Simple OmniAuth (revised)")](http://railscasts.com/episodes/241-simple-omniauth-revised)
