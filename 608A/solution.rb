#Запись входных данных
sum, top_floor = gets.split.map(&:to_i)

wait = Hash.new
wait[0] = 0

for i in 0..sum-1
	f_t = gets.split
	floor = f_t[0].to_i
	time = f_t[1].to_i
	#floor, time = gets.split(&:to_i)
	wait[floor] = time
end

puts wait = wait.sort.reverse
#step_flag = 0
all_time = 0

for i in 0..sum-1
	#Записываем значение wait в top и wait_time
	shift = wait.shift
	c_floor = shift[0]
	c_wait_time = shift[1]


	#if step_flag==0
	#	puts step = top_floor - c_floor
	#end
	#step_flag = 1

	#Время ожидания у текущего пассажира
	wait_time = c_wait_time - all_time
	if wait_time < 0
		wait_time = 0
	end

	all_time += wait_time
end
#all_time+=step+1
puts all_time+c_floor+1