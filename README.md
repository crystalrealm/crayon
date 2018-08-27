# Crayon

[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![Open Source Love](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Build Status](https://travis-ci.org/crystalrealm/crayon.svg?branch=master)](https://travis-ci.org/crystalrealm/crayon)

Beautiful colored strings right inside your terminal. The `Crystal` way! :tada:

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crayon:
    github: crystalrealm/crayon
```

## Usage

```crystal
require "crayon"
cyanOnBlack = Crayon::Crayon.new("light_cyan", "black", {
  "bold" => true,
})

puts cyanOnBlack.apply("Hello from Crayon!")
```

You have the following color options to choose from for the foreground color:

- red
- black
- green
- yellow
- blue
- magenta
- cyan
- light_gray
- dark_gray
- light_red
- light_green
- light_yellow
- light_blue
- light_magenta
- light_cyan
- white

... and for the background:

- black
- red
- green
- yellow
- blue
- magenta
- cyan
- light_gray
- dark_gray
- light_red
- light_green
- light_yellow
- light_blue
- light_magenta
- light_cyan
- white

## API

Crayon simply with uses `1` method.
You create a new instance of `Crayon::Crayon` like so:

```crystal
instance = Crayon::Crayon.new(@foreground : String, @background : String, *options)
```

Then, you can apply the colors to any string you wish:

```crystal
instance.apply("Hello, World!")
```

## Contributing

1.  Fork it (<https://github.com/molnarmark/crayon/fork>)
2.  Create your feature branch (`git checkout -b my-new-feature`)
3.  Commit your changes (`git commit -am 'Add some feature'`)
4.  Push to the branch (`git push origin my-new-feature`)
5.  Create a new Pull Request

## Contributors

- [molnarmark](https://github.com/molnarmark) Mark Molnar - creator, maintainer
