class Score
  def self.write(num, way)
    File.open("scores.txt", way) do |f|
      f.puts "#{File.read('scores.txt').count("\n") + 1}." + num.to_s
    end
  end

  def self.score_array
    File.read('scores.txt').gsub("\n",".").split('.').map{|x| x.to_i}.select.with_index{|e, i| i % 2 == 1}
  end
end
