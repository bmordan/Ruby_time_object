require 'bomb'
require 'time_difference'
require 'timecop'

describe 'Working with Time' do

  it 'when time is at a premium' do
    bday = Birthday.new
    Timecop.freeze(Time.new)
    expect(bday.time).to eq(Time.new)
  end

  it "should know a persons birthday" do 
    rachel = Person.new(1986, 5, 3)
    expect(rachel.birthday.to_s).to eq("1986-05-03 00:00:00 +0100")
  end

  it "should know a persons age in seconds" do 
    rachel = Person.new(1986, 5, 3)
    expect(rachel.age_in_seconds).to be_a(Fixnum)
  end

  it "should calculate the time until billionth birthday in seconds" do
    rachel = Person.new(1986, 5, 3)
    expect(rachel.time_to_billionth).to be_a(Fixnum)
  end

  it "should calculate the time until billionth birthday in seconds" do
    rachel = Person.new(1986, 5, 3)
    today = Time.new(1986,5,3)
    Timecop.travel(today)
    expect(rachel.time_to_billionth).to eq(1000000000)
  end





end
