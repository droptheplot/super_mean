require 'super_mean'
require 'benchmark'

ary = (0..100_000_000).to_a

Benchmark.bmbm(7) do |x|
  x.report('Ruby') do
    ary.inject(&:+) / ary.size
  end

  x.report('C') do
    ary.mean
  end
end
