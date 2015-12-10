require 'memo'

describe Memo do

  describe '::{arbitrary method}' do
    it 'defines memoized method' do
      Memo.foo do |n|
        n + 10
      end

      expect(Memo.foo 10).to eq(20)
      expect(Memo.foo 1).to eq(11)
    end

    it 'can define recursive method' do
      Memo.fib do |n|
        if n < 2
          1
        else
          Memo.fib(n-1) + Memo.fib(n-2)
        end
      end

      expect(Memo.fib 1000).to eq(70330367711422815821835254877183549770181269836358732742604905087154537118196933579742249494562611733487750449241765991088186363265450223647106012053374121273867339111198139373125598767690091902245245323403501)
    end
  end

  describe '::__dump_memo' do
    it 'returns the internal hash' do
      Memo.bar do |i|
        i + 12
      end
      expect(Memo.__dump_memo).not_to be_empty
    end
  end

  describe '::__reset_memo' do
    it 'resets memo' do
      Memo.piyo do |i|
        i + 42
      end
      expect(Memo.__dump_memo).not_to be_empty
      Memo.__reset_memo
      expect(Memo.__dump_memo).to be_empty
    end
  end
end

