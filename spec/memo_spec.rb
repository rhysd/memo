require 'memo'

describe Memo do

  it 'can compute fizzbuzz instantly' do
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

