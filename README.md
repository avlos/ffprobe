# ffprobe [![Codacy Badge](https://api.codacy.com/project/badge/Grade/c54a99bfa0b14b40aad649039ae1aa66)](https://www.codacy.com/app/Avlos/ffprobe?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=avlos/ffprobe&amp;utm_campaign=Badge_Grade) [![Build Status](https://cloud.drone.io/api/badges/avlos/ffprobe/status.svg)](https://cloud.drone.io/avlos/ffprobe)

A ruby gem that acts as a wrapper around the ffprobe cli utility.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ffprobe'
```

And then execute:

`bundle`

Or install it yourself as:

`gem install ffprobe`

## Usage

```ruby
file = Ffprobe::MediaFile.new "data/big_buck_bunny_720p_1mb.mp4"
puts file.inspect
```

## Development

After checking out the repo, run `bin/setup` to install dependencies in a vendor directory. You then run `bin/console` for an interactive prompt that will allow you to experiment with the code.

To install this gem on your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at <a href="https://github.com/avlos/ffprobe">Avlos/ffprobe</a>.
