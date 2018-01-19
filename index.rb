class ScoreManagement
    attr_accessor :score

    def initialize(score)
        @score = score
    end

    def create
      puts '>Please enter the score'
      input = $stdin.gets
      if input =~ /d/
        puts '>invalid input: not a number'
      elsif input.to_i > 100
        puts '>invalid input: less than 100'
      elsif input.to_i < 0
        puts '>invalid input: more than 0'
      else
        puts '>Successfully created score'
      end
    end

    def read
        File.open("scores.txt").each do |line|
            puts line
        end
    end

    def delete
    end

    def average
    end

    def write
        File.open("scores.txt", "w") do |f|
            f.puts score
        end
    end

    def calculate
        puts score
    end

    def action
      create if ARGV[0] == "create"
      read if ARGV[0] == "read"
      delete if ARGV[0] == "delete"
      average if ARGV[0] == "average"
    end
end

ScoreManagement.new(15).send(:action)
