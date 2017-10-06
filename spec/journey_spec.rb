require './lib/journey'

describe Journey do
  let(:entry_station) { double(:entry_station, name: :Victoria, zone: 1) }
  let(:exit_station) { double(:exit_station, name: :Golders_green, zone: 3) }

  let(:journey) { { entry_station: entry_station, exit_station: exit_station } }

  # context '#journey_complete' do
  #   it 'should show a completed journey' do
  #     expect(subject.journey).to include(journey)
  #   end
  # end

  context '#start' do
    it 'should add station to entry_station' do
      expect { subject.start(entry_station) }.to change { subject.entry_station }.to(entry_station)
    end
  end

  context '#end' do
    it 'should add station to exit_station' do
      expect { subject.end(exit_station) }.to change { subject.exit_station }.to(exit_station)
    end
  end

  context '#entry_station' do
    subject { described_class.new(entry_station: entry_station) }

    it 'has an entry station' do
      expect(subject.entry_station).to eq entry_station
    end
  end
end
