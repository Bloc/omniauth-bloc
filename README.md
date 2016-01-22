# OmniAuth Bloc

This gem contains the Bloc strategy for OmniAuth.

## Before you begin

You should have already installed OmniAuth into your app. If not, read the [OmniAuth README](https://github.com/intridea/omniauth) to get started.  Bloc uses OAuth 2.

Then, sign into [Bloc](https://www.bloc.io) and create an application to obtain your CLIENT_KEY and CLIENT_SECRET credentials.

## Using this strategy

Add to Gemfile:

```ruby
gem 'omniauth-bloc', github: 'bloc/omniauth-bloc'
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
