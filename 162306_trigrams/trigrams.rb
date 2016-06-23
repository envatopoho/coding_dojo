def sanitize(val)
  # val.gsub(/[^a-zA-Z ']/,'')
  val
end

text = File.open("romeo_and_juliet.txt","r").read
split = text.split(" ")


trigrams = {}

(0...split.length-2).each do |x|
  key  = split[x..x+1].join(" ")
  key = sanitize(key)

  value = split[x+2]
  value = sanitize(value)

  trigrams[key] ||= []
  trigrams[key] << value
end


starting = trigrams.to_a.sample[0]

results = starting.split(" ")

100.times do |x|
  key = [results[x], results[x+1]].join(" ")
  results << trigrams[key].sample
end

puts results.join(" ")