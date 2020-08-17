# Palindrome detector

`poppacalypse_palindrome` is a sample Ruby gem created as part of my software development learning journey, specifically [*Learn Enough Ruby to Be Dangerous*](https://www.learnenough.com/ruby-tutorial).

## Installation

To install `poppacalypse_palindrome`, add this line to your application's `Gemfile`:


```ruby
gem 'poppacalypse_palindrome'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install poppacalypse_palindrome

## Usage

`poppacalypse_palindrome` adds a `palindrome?` method to the `String` and `Integer` classes, and can be used as follows:

```
$ irb
>> require 'poppacalypse_palindrome'
>> "honey badger".palindrome?
=> false
>> "deified".palindrome?
=> true
>> "Able was I, ere I saw Elba.".palindrome?
=> true
>> phrase = "Madam, I'm Adam."
>> phrase.palindrome?
=> true
>> 12321.palindrome?
=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/poppacalypse/poppacalypse_palindrome.
