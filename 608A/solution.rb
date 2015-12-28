sum, top_floor = gets.split.map(&:to_i)
top_floor= top_floor.to_i

wait = Hash.new
wait[0] = 0

for i in 0..sum-1
    f_t = gets.split
    floor = f_t[0].to_i
    time = f_t[1].to_i
    wait[floor] = time
end

#Сортировка
wait = wait.sort.reverse

all_time = 0

for i in 0..sum
    #Записываем значение wait в top и wait_time
    shift = wait.shift
    c_floor = shift[0]
    c_floor_time = shift[1]

if top_floor > c_floor 
    all_time += top_floor - c_floor
    top_floor = c_floor
end

if top_floor.to_i == c_floor.to_i
    c_floor_time = c_floor_time - all_time
    if c_floor_time < 0
    	c_floor_time = 0  
    end
    all_time +=c_floor_time
end



end

puts all_time
