#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  attr_reader :highest_wf_count, :highest_wf_words
  attr_accessor :content, :line_number
  def initialize(content,line_number)
      self.content=content
      self.line_number=line_number
      @highest_wf_words = []
      calculate_word_frequency
  end
  
  def content=(value)
    @content=value
  end
  
  def line_number=(value)
    @line_number=value
  end
  
  def calculate_word_frequency
    
    words_array = @content.split(" ")
    words_count_hash = {}
    
    words_array.each do |word|
      word_found = false
      if (words_count_hash.length == 0)
        words_count_hash[word.downcase] = 1
      else
        words_count_hash.each do |key,value|
          if key.downcase == word.downcase
            words_count_hash[word.downcase] = value + 1
            word_found = true
          end
        end
        if !(word_found)
          words_count_hash[word.downcase] = 1
        end
      end
    end
   
    @highest_wf_count = words_count_hash.values.max
    words_count_hash.each do |arr|
      if @highest_wf_count == arr[1]
        @highest_wf_words.push(arr[0])
      end
    end
  end
end


#  Implement a class called Solution. 
class Solution
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines, :highest_count_words_across_lines
  
  def initialize()
    @analyzers=[]
    #analyze_file
    #calculate_line_with_highest_frequency()
  end
  
  def analyze_file()
    line_number = 1
    File.foreach('test.txt') do |line|
      temp_obj = LineAnalyzer.new(line.chomp,line_number)
      line_number += 1
      @analyzers.push(temp_obj)
    end
  end
  
  def calculate_line_with_highest_frequency()
    max_usage = 0
    @highest_count_words_across_lines = []
    max_usage = @analyzers.max do |line_analyzer_obj|
      line_analyzer_obj.highest_wf_count
    end
    @highest_count_across_lines = max_usage.highest_wf_count
    @highest_count_words_across_lines = @analyzers.select{|a| a.highest_wf_count == @highest_count_across_lines}
  end
  
  def print_highest_word_frequency_across_lines()
    puts "The following words have the highest word frequency per line: #{@highest_count_across_line}"
    @highest_count_words_across_lines.each do |obj|
      puts "#{obj.highest_wf_words} (appears in line #{obj.line_number}) "
    end
  end
end
  
sln = Solution.new
sln.analyze_file
sln.calculate_line_with_highest_frequency
sln.print_highest_word_frequency_across_lines