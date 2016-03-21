stems = ARGF.read.split.each_cons(2).group_by {|pair| pair[0]}
root, chain = stems.first.first, ""
stems.size.times do
  break if !stems[root]
  root = stems[root].sample.last
  chain += "#{root} "
end
puts chain
