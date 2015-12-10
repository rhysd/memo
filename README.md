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

Install this repository via `gem` command.

## License

MIT

> Copyright (c) 2015 rhysd
