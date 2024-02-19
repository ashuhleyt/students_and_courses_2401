class Student
  attr_reader :name, 
              :age, 
              :scores

  def initialize(data)
    @name = data[:name]
    @age = data[:age]
    @scores = []
  end

  def log_score(number)
    @scores << number
  end
end
