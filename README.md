# Nat20

![Build Status](https://img.shields.io/travis/johneckert/nat20.svg?style=plastic)
![DUB](https://img.shields.io/dub/l/vibe-d.svg?style=plastic)

## Description

Nat20 adds easy to use dice rolling functionality with input in the style of table top role playing games. It provides functionality for single and multiple rolls and can return either an array of dice values or total roll.

## Requirements

* Ruby 2.3
* RSpec 3.7 (to run tests)

## Installation

`gem install nat20`

## Usage and documentation

For a single roll use Nat20.roll

Usage Example:

```
Nat20.roll '2d6+3'
=> 10

Nat20.roll '2d6+3', true
=> [3,4]
```

For multiple rolls use Nat20.roll_multiple

Usage Example:

`Nat20.roll_multiple 2d6, 3 => [6, 10, 8]`

## Contributing

To contribute to Nat20, clone this repo locally and commit your code on a separate branch. Please write unit tests for your code before opening a pull-request.

## License

Nat20 is licensed under the MIT license.
Copyright © 2018, John Eckert

```

```
