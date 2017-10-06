require './lib/journey'

describe Journey do

  let(:entry_station) { double(:entry_station, name: :Victoria, zone: 1) }
  let(:exit_station) { double(:exit_station, name: :Golders_green, zone: 3) }

  context '#entry_station' do
    subject { described_class.new(entry_station: entry_station)}

    it 'has an entry station' do
      expect(subject.entry_station).to eq entry_station
    end
  end
end


