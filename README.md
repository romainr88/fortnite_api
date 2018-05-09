# FortniteApi

fortnite_api allow you to retrieve information from fortnite in an easy way through fortnitetracker.com API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fortnite_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fortnite_api

## Usage

Initialize the API with your fortnitetracker.com API key:
```ruby
fortnite = FortniteApi::Api.new('Enter your API Key here')
```

Enter the player's profile and the platform which you want to retrieve the information (for the platform you have the choice between 'pc' for PC, 'xbl' for Xbox and 'psn' for Playstation):
```ruby
player = fortnite.get_json('pc','Ninja')
```

Now you have a player object with you can:
Return the username as a string:
```ruby
player.epicuserhandle
```

Return the platform as a string:
```ruby
player.platformnamelong
```

Return the stats as a hash (TODO):
```ruby
player.stats
```

Return the username as an array (TODO):
```ruby
player.lifetimestats
```

Return the username as an array (TODO):
```ruby
player.recentmatches
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/romainr88/fortnite_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FortniteApi project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/romainr88/fortnite_api/blob/master/CODE_OF_CONDUCT.md).
