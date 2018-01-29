class ScoreManagement

    def create
      puts '>Please enter the score'
      input = $stdin.gets
      if input !~ /^[0-9]+$/
        puts '>invalid input: not a number'
      elsif input.to_i > 100
        puts '>invalid input: less than 100'
      elsif input.to_i < 0
        puts '>invalid input: more than 0'
      else
        write(input, 'a')
        puts '>Successfully created score'
    end
  end

    def read
      File.open("scores.txt").each do |line|
        puts line
      end
    end

    def delete
      puts '>Please enter delete line number'
      input = $stdin.gets.to_i
      File.open('scores.txt','w'){|file| file = nil} if score_array.count == 1
      score_array.select.with_index{|e, j| j != input - 1}.each_with_index do |num, k|
         k == 0 ? write(num, 'w') : write(num, 'a')
      end
      puts '>Successfully deleted score'
    end

    def average
      puts ">Score Average: #{score_array.inject(0.0){|sum, i| sum += i }/score_array.size}"
    end

    def write(num, way)
      File.open("scores.txt", way) do |f|
        f.puts "#{File.read('scores.txt').count("\n") + 1}." + num.to_s
      end
    end

    def score_array
      File.read('scores.txt').gsub("\n",".").split('.').map{|x| x.to_i}.select.with_index{|e, i| i % 2 == 1}
    end

end

ScoreManagement.new.send(ARGV[0])
