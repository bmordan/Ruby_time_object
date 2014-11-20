class Birthday
  def time
    Time.new
  end
end

require 'time_difference'

class Person
  def initialize(year,month,day)
    @birthday = Time.new(year,month,day)
  end

  def birthday
    @birthday
  end

  def age_in_seconds
    TimeDifference.between(self.birthday, Time.new).in_seconds.round
  end

  def time_to_billionth
    1000000000 - self.age_in_seconds
  end

  def time_to_billionth_from_epoch
    Time.now.to_i + self.time_to_billionth

  end

  def billionth_birthday
    Time.at(self.time_to_billionth_from_epoch)
  end

  def time_till_billionth_birthday 
    TimeDifference.between(Time.now, self.billionth_birthday).in_general
  end

end