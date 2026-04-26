require_relative "lib/sorter"
require "benchmark"

[100, 1000, 10000].each do |size|
  array = Array.new(size) { rand(10000) }

  puts "要素数: #{size}"
  Benchmark.bm(12) do |x|
    x.report("挿入ソート") { Sorter.insertion_sort(array) }
    x.report("マージソート") { Sorter.merge_sort(array) }
  end
  puts
end
