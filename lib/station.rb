class Station
  attr_reader :name, :zone

  def initialize(params = {})
    @name = params[:name]
    @zone = params[:zone]
  end

  def zone
    [1..6].sample
  end
end
