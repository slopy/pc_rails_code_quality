[![Code Climate](https://codeclimate.com/github/slopy/pc_rails_code_quality/badges/gpa.svg)](https://codeclimate.com/github/slopy/pc_rails_code_quality)
[![Test Coverage](https://codeclimate.com/github/slopy/pc_rails_code_quality/badges/coverage.svg)](https://codeclimate.com/github/slopy/pc_rails_code_quality/coverage)
[![Issue Count](https://codeclimate.com/github/slopy/pc_rails_code_quality/badges/issue_count.svg)](https://codeclimate.com/github/slopy/pc_rails_code_quality)
[![Build Status](https://travis-ci.org/slopy/pc_rails_code_quality.svg?branch=master)](https://travis-ci.org/slopy/pc_rails_code_quality)

# PcRailsCodeQuality
This gem is about to make the code better.. 

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'pc_rails_code_quality', :git => 'https://github.com/slopy/pc_rails_code_quality'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install pc_rails_code_quality
```

## Generating reports

```bash
$ rake pc_reports:html
```

## Web UI

Add to you routes.rb
```ruby
mount PcRailsCodeQuality::Engine => "/"
```

Then you can access the reports:
* **rubocop** /dev/reports/rubocop 
* **rubocop** /dev/reports/rubycritic 


** SimpleCov
add require "pc_rails_code_quality/simplecov" to you test_helper or spec_helper


## Contributing
Contact: michal.marzec@polcode.net

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
