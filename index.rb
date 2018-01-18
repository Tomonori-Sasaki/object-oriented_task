class ScoreManagement
    attr_accessor :score
    
    def initialize(score)
        @score = score
    end
    
    def calculate
        puts score
    end
    
    def read
        File.open("test.txt").each do |line|
            puts line
        end
    end
    
    def write
        File.open("test2.txt", "w") do |f|
            f.puts "aaa"
            f.puts "bbb"
            f.puts "ccc"
        end
    end
    
end

ScoreManagement.new(15).calculate
