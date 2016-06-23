def solution(number)
  (0..number).inject(0) do |n, x|
  	# puts n.inspect
    n += x if x % 3 == 0 || x % 5 == 0
    n
   end
end

puts solution(25)
