require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#player1' do
    it 'gives player1 name' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'gives player2 name' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'calls damage on a player when attacked' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end
end