# Heroku Development Environment

Allows you to emulate heroku ENV configuration keys without relying on foreman or adding stuff to your `.bash_profile` or whatever shell you're using.

## Installation

Add these lines to your application's Gemfile:

    group :development, :test do
      gem 'heroku-dev-env'
    end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heroku-dev-env

## Usage

Create a file named `.env` in your application root and put your local ENV variables there.
The gem will load this file on application startup. It will also try to look for file named 
`.env_#{Rails.env}` if it's Rails. 

You'd also probably want to add `.env` to your `.gitignore`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
