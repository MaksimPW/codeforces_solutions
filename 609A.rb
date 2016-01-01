carts = gets.to_i
file_mb = gets.to_i

cart = Array.new(carts)

for i in 0..carts-1
	cart[i]= gets.chomp.to_i
end

cart = cart.sort.reverse

sum = 0
num = 0
for i in 0..carts-1
	sum += cart[i]
	num +=1
	if sum >= file_mb
		puts num
		exit
	end
end