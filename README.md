# Spec-talks gem — now your specs on your mac can talk with you :)

### This is beta now

## It was checked only on MacOS X. I don't know what present on linux or windows

This gem using base gem [talks](https://github.com/ruby-talks/talks). You can use it if you want to hear when your specs (with rspec)
start and when they end. Maybe I'll add here something more later :)

## Why?

This idea appears on reddotrubyconf just as is :) I just thought about slow specs in rails and decided that I want to hear when they end.
This gem not really for rails, for rails I will do another gem with another hacks. This gem for your reeeeeeally slow specs.

## How?

This gem using gem `talks` and overwrites some of rspec methods when you call `spec-talks` instead of `rspec` from your command line.

### Using spec-talks

```bash
$ gem install spec-talks
$ spec-talks folder_with_rspec_specs # instead of just `rspec folder_with_rspec_specs`
```

Of course you can use it with bundler:

`Gemfile`
```ruby
group :test do
  gem 'rspec'
  gem 'spec-talks'
end
```

`bash`
```bash
$ bundle install
$ bundle exec spec-talks folder_with_your_specs
```

And of course it's not overwrites rspec methods when you use original `rspec` command line tool.

## Who?

I did it myself

### Contributors

* @gazay

### A lot of thanks

You can help me with this fun gem and I'll gladly add you here, or above

## License

The MIT License

Copyright (c) 2012 gazay

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

