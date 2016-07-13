# SuperMean

[![Gem Version](https://badge.fury.io/rb/super_mean.svg)](https://badge.fury.io/rb/super_mean)

Arithmetic mean from array written in C.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'super_mean'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install super_mean
```

## Usage

This gem just adds `#mean` method for arrays.

```ruby
[1, 2, 3].mean
# => 2.0
```

## Benchmark

Conditions:

```ruby
ary = (0..100_000_000).to_a

Benchmark.bmbm(7) do |x|
  x.report('Ruby') do
    ary.inject(&:+) / ary.size
  end

  x.report('C') do
    ary.mean
  end
end
```

Results:

```shell
Rehearsal ----------------------------------------------
Ruby         8.690000   0.070000   8.760000 (  9.720472)
C            0.480000   0.000000   0.480000 (  0.536145)
------------------------------------- total: 9.240000sec

                 user     system      total        real
Ruby         8.950000   0.240000   9.190000 ( 10.445315)
C            0.440000   0.000000   0.440000 (  0.460983)
```

## Contributing

1. Fork it (https://github.com/droptheplot/super_mean/fork)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
