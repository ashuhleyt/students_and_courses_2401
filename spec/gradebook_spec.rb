require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do 
  before :each do 
    @calculus = Course.new("Calculus", 2)
    @morgan = Student.new({name: "Morgan", age: 21})
    @kristen = Student.new({name: "Kristen", age: 29})
    @naomi = Student.new({name: "Naomi", age: 28})
    @annie = Student.new({name: "Annie", age: 23})
    @grades = Gradebook.new("Psych")
  end

  it 'exists with attributes' do 
    expect(@grades).to be_a(Gradebook)
    expect(@grades.name).to eq("Psych")
  end

  it 'starts with no courses as empty array but can add' do 
    expect(@grades.courses).to eq([])

    @grades.add_course(@calculus)
    expect(@grades.courses).to eq([@calculus])
  end

  it 'can return a list of all students' do 
    @calculus.enroll(@morgan)
    @calculus.enroll(@kristen)
    @calculus.enroll(@morgan)
    @calculus.enroll(@naomi)
    @grades.add_course(@calculus)
    expect(@grades.list_all_students).to be_a(Hash)
  end
end

