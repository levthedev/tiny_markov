stems = ARGF.read.split.each_cons(2).group_by {|pair| pair[0]}
puts stems
root, chain = stems.first.first, ""
while stems[root] && chain.length < stems.length
  root = stems[root].sample.last
  chain += "#{root} "
end
puts chain
