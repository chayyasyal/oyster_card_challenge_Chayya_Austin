class Journey
  attr_reader :entry_station, :exit_station

  def initialize(params = {})
    @entry_station = params[:entry_station]
    @exit_station = params[:exit_station]
  end
end
