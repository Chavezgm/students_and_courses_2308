class Student
  attr_reader :name, :age, :scores
  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @scores = []
  end 

  def log_score(score)
    @scores << score
  end 

  def grade 
    total_score = 0
    scores.each {|score| total_score += score}
    average = total_score.to_f / @scores.length
    average
  end 

end
