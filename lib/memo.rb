require "memo/version"

module Memo
  @@memo ||= {}

  def self.method_missing(name, *args, &block)
    raise ArgumentError unless block_given? && args.empty?

    @@memo[name] = Hash.new do |h, k|
      h[k] = block.call(*k)
    end

    define_singleton_method(name) do |*a|
      @@memo[name][a]
    end unless method_defined? name
  end
end

#
# Example
#
if __FILE__ == $PROGRAM_NAME

  Memo.fib do |n|
    if n < 2
      1
    else
      Memo.fib(n-1) + Memo.fib(n-2)
    end
  end

  puts Memo.fib 1000
  # => 70330367711422815821835254877183549770181...

end
