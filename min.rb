s=ARGF.read.split.each_cons(2).group_by{|z|z[0]}
r,t=s.first[0],"";s.size.times{break if !s[r];r=s[r].sample[-1];t+="#{r} "};p t
