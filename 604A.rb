m = gets.split.to_a.map(&:to_f)
w = gets.split.to_a.map(&:to_f)
hs, hu = gets.split.map(&:to_f)
x=[500,1000,1500,2000,2500]
result = 0
for i in 0..4
	if(0.3*x[i]>(1-m[i]/250)*x[i]-50*w[i])
		result+=0.3*x[i]
	else
			result+=(1-m[i]/250)*x[i]-50*w[i]
	end
end
 result+=hs*100-hu*50
 p result.to_i