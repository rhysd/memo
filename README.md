Memo
====

```ruby
# Non-memoized function
def fib(n)
  if n < 2
    1
  else
    fib(n-1) + fib(n-2)
  end
end

# Toooo slow!!
puts fib 1000



# Memo.fib is a memoized function
Memo.fib do |n|
  if n < 2
    1
  else
    Memo.fib(n-1) + Memo.fib(n-2)
  end
end

# So fast!!
puts Memo.fib 1000
# => 70330367711422815821835254877183549770181...
```

## Installation

Install this repository via `gem` command.

## License

MIT

> Copyright (c) 2015 rhysd
