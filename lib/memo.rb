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