# QuickerTicker

Welcome to QuickerTicker! QuickerTicker lets you pull data such as a stock's price, name, beta, yield, dividend, and open price, from your terminal.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'quicker_ticker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quicker_ticker

## Usage

Upon running QuickerTicker, the user will be able to enter in an NYSE or NASDAQ stock ticker symbol. Upon, entering a stock ticker, the user will then be asked what data values they would like to see. 

The user can specify one of the following values: "price", "name", "beta", "open", "dividend", or "yield". Upon hitting "Enter", the user will find the value that they are searching for. 

To exit the program, a user must type "Exit".

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'binding-array-7872'/quicker_ticker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the QuickerTicker project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'binding-array-7872'/quicker_ticker/blob/master/CODE_OF_CONDUCT.md).
