class Journey
  attr_reader :entry_station
  
  def initialize(params = {})
    @entry_station = params[:entry_station]
  end
end