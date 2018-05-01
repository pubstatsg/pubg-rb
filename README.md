# Pubg-rb

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/pubg`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation
To install using [Bundler](https://bundler.io/) grab the latest stable version:

```ruby
gem 'pubg-rb'
```

And then execute:

```
bundle install
```
To manually install `pubg-rb` via [Rubygems](https://rubygems.org/) simply gem install:

```
gem install pubg-rb
```

To build and install the development branch yourself from latest source:

```
git@github.com:pubstatsg/pubg-rb.git
cd pubg-rb
make install
```

## Battlegrounds API Documenation
[API Documentation Here](https://documentation.playbattlegrounds.com/en/introduction.html) 

## Getting Started
### Setup Work
```
require "pubg-rb"

# put your own credentials here
api_key = "xxxxxxxxxxxxxxxxxxxxxxxxx"
platform_region = "xbox-na"

@pubg = PUBG::Client.new(api_key, platform_region)

```

### Make a Call

```
@pubg.seasons
```

---

## Usage

### -CLIENT
Set up a client to talk to the PUBG API

```
@pubg = PUBG::Client.new("api_key", "platform_region")
```
- note if platform_region is set on the client it does not need to be set elsewhere

### -PLAYERS
##### /players
Get a collection of players by name's

```
players = @pubg.players("acidtib,ImAverageSniper")
```

Get a collection of players by player_id's

```
players = @pubg.players("account.c975e15685614c5f9da44f25598f7670,account.c6d7393a0fed4613973e3d89582f23fc")
```

##### /players/{player_id}
Get a single player by the `player_id`

```
player = @pubg.player("account.c975e15685614c5f9da44f25598f7670")
```

##### /players/{player_id}/seasons/{season_id}
Get season information for a single player

```
season = player.season("xbox-na", "division.bro.official.xb-pre1")
```

### -MATCHES
#### /matches/{match_id}

```
match = @pubg.match("895e77a8-0efa-492b-b256-3e9bf79097e6")
```

### -STATUS
##### /status
Check the status of the API

```
status = @pubg.status
```

### -SEASONS
##### /seasons
Get a list of available seasons.

```
seasons = @pubg.seasons
```

## Development

After checking out the repo, run `make setup` to install dependencies. Then, run `make test` to run the tests. You can also run `make console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `make install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pubstatsg/pubg-rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Pubg project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pubg/blob/master/CODE_OF_CONDUCT.md).
