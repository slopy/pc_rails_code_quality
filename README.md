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



## Contributing
Contact: michal.marzec@polcode.net

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
