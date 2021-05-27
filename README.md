# transreport-style

This is a linting gem for Transreport Web Team's Ruby repos.
It acts as a central space to store configuration for `rubocop`,
which can be loaded into other repos with ease.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'transreport-style', git: 'https://github.com/TRANSREPORT/transreport-style', tag: '0.1.0'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install transreport-style

## Usage

In your repo, simply change your `.rubocop.yml` file as follows:

```yml
inherit_gem:
  transreport-style:
    - transreport-rails.yml
  
# If you are not running Ruby 3.0
AllCops:
  TargetRubyVersion: <YOUR.VERSION>
```

## Development

TBC

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
