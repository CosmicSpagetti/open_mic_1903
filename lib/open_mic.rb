class OpenMic
  attr_reader :perfomers
  def initialize(location_and_date)
    @location_and_date = location_and_date
    @perfomers = []
  end

  def location
    @location_and_date[:location]
  end

  def date
    @location_and_date[:date]
  end

  def welcome(user)
    @perfomers << user
  end

  def repeated_jokes?
    
  end

end
