require 'bookmark.rb'

describe Bookmark do

  subject(:game) { described_class.new }

  describe '#all' do
    it 'returns all bookmarks' do
      expect(game.all).to eq(["www.makers.co.uk"])
    end
  end

end