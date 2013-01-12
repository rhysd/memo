# Memo

```ruby
# Memo.fib is a memoized procedure
Memo.fib do |n|
    if n < 2
    1
    else
    Memo.fib(n-1) + Memo.fib(n-2)
    end
end

# the answer is calculated instantly
puts Memo.fib 1000
# => 70330367711422815821835254877183549770181...
```

## Installation

Add this line to your application's Gemfile:

    gem 'memo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memo

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
