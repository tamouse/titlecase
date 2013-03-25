# Titlecase

Add titlecase methods to String

## Installation

Add this line to your application's Gemfile:

    gem 'titlecase'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install titlecase

## Usage

Include this gem in your application to add titlecase methods for String.

    'the quick brown fox jumped over the lazy dog'.titlecase 
	# => "The Quick Brown Fox Jumped Over the Lazy Dog"

The *bang* version overwrites the string:

    s = 'the quick brown fox jumped over the lazy dog'
	s.titlecase!
	# => "The Quick Brown Fox Jumped Over the Lazy Dog"
	s
 	# => "The Quick Brown Fox Jumped Over the Lazy Dog"

Stop words can be added to the call as an array:

    'the quick brown fox jumped over the lazy dog'.titlecase(%w[the fox])
	# => "The Quick Brown fox Jumped Over the Lazy Dog"

Note that the first character of the string will *always* be capitalized.

## Author

Tamara Temple <tamouse@gmail.com>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
