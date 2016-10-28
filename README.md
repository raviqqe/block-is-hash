# block-is-hash

[![Build Status](https://travis-ci.org/raviqqe/block-is-hash.svg?branch=master)](https://travis-ci.org/raviqqe/block-is-hash)
[![License](https://img.shields.io/badge/license-unlicense-lightgray.svg)](https://unlicense.org)

Block is Hash

## Installation

```
$ gem install block-is-hash
```

## Usage

Code:

```ruby
require 'block-is-hash'

hash = block_is_hash %i(server) do # `server` directive can be repeated.
  user :www

  http do
    server do
      listen 80
      server_name 'foo.com'
    end

    server do
      listen 443, :ssl
      server_name 'bar.com'
    end
  end
end

p hash
```

Output:

```ruby
{:user=>:www, :http=>{:server=>[{:listen=>80, :server_name=>"foo.com"}, {:listen=>[443, :ssl], :server_name=>"bar.com"}]}}
```

For more examples, see [examples](examples) directory.

## License

[The Unlicense](https://unlicense.org)
