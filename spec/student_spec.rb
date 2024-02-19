require 'rspec'
require './lib/student'

RSpec.describe Student do
  before :each do 
    @morgan = Student.new({name: "Morgan", age: 21})
  end

  it "exists with attributes" do
    expect(@morgan).to be_instance_of(Student)
    expect(@morgan.name).to eq("Morgan")
    expect(@morgan.age).to eq(21)
  end

  it 'has no scores as an empty array' do 
    expect(@morgan.scores).to eq([])

    @morgan.log_score(89)
    @morgan.log_score(78)
    expect(@morgan.scores).to eq([89, 78])
    expect(@morgan.grade).to eq(83.5)
  end
end
