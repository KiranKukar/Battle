require 'player'

describe Player do
  subject(:bob) { Player.new('Bob') }
  subject(:not_bob) { Player.new('Not Bob') }

  describe '#name' do
    it 'returns the players name' do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(bob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
 
  describe '#attack' do
    it 'calls damage on a player when attacked' do
      expect(not_bob).to receive(:receive_damage)
      bob.attack(not_bob)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points by 10' do
      expect { not_bob.receive_damage }.to change { not_bob.hit_points }.by(-10)
    end
  end

end