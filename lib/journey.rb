class Journey
  attr_reader :entry_station, :exit_station

  def initialize(params = {})
    @entry_station = params[:entry_station]
    @exit_station = params[:exit_station]
  end

  def start(entry_station)
    @entry_station = entry_station
  end

  def end(exit_station)
    @exit_station = exit_station
  end
end
