def way(n, img)
	show = []
  for i in 1...img.count
    unless img[i-1] == img[i]
      n += 1
    else
      show.push(img[i-1])
    end
  end

  return n, show
end

count_img = gets.to_i

img = Array.new(count_img)

img = gets.split.map(&:to_i)
img = img.sort
n = 0

while true do
  answer = way(n, img)
  n = answer[0]
  img = answer[1]
	
  if img.count < 2
    puts n
    exit
  end
end
