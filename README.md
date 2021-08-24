# transreport-style

This is a linting gem for Transreport Web Team's Ruby repos.
It acts as a central space to store configuration for `rubocop`,
which can be loaded into other repos with ease.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'transreport-style', git: 'https://github.com/TRANSREPORT/transreport-style', tag: 'v0.4.0'
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

## Contributing

Please do not make changes in this repo without consulting the wider team first,
this repo is the source of truth for our linting rules but they are not agreed here.
The web team discusses the linting rules and its stylistic choices before recording them here.

Once a change has been agreed:

1. Please branch off of `master` onto a `feature/` branch
1. Make your change(s)
1. Update documentation accordingly
1. Bump the gem version
1. Raise a PR
1. Once merged, tag `master` with the gem version

## Development

TBC

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
