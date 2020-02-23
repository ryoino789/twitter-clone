num_max = 100

def fizzbuzz(num)
  # 内容は省略。自力で考えてみましょう。
  if num % 3 == 0
    if num % 5 == 0
      puts 'FizzBuzz'
    else 'Fizz'
    end
  elsif num % 5 == 0
    puts 'Buzz'
  else 
    puts num
  end
end

(1..num_max).each do |num|
  fizzbuzz(num)
end

# 以下は動作確認用の記述です
#puts fizzbuzz(1)
#puts fizzbuzz(3)
#puts fizzbuzz(5)
#puts fizzbuzz(15)