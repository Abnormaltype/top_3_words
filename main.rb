def delete_unnecessary_words(str)
  str.downcase.delete('\'').gsub('#?!.,/\\|',' ').split
end

def words_counts(ary)
  ary.group_by { |e| e }.inject({}) { |a, e| a.merge(e[0] => e[1].size) }
end

def most_common_words(ary)
  ary.empty? ? nil : 
    words_counts(ary)
      .sort_by { |k, v| v }.last(3)
end

puts most_common_words(delete_unnecessary_words("n a village of La Mancha, the name of which I have no desire to call to
  mind, there lived not long since one of those gentlemen that keep a lance
  in the lance-rack, an old buckler, a lean hack, and a greyhound for
  coursing. An olla of rather more beef than mutton, a salad on most
  nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
  on Sundays, made away with three-quarters of his income."))