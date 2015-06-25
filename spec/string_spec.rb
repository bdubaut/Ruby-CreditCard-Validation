require 'spec_helper'
require "./lib/string.rb"

describe String, 'Extending the String class' do
  describe '#is_integer?' do
    it 'returns true if the String is in fact an integer.' do
      expect('12345'.is_integer?).to be_truthy
    end
    it 'returns false if the String is a word' do
      expect('Dolphins are scary'.is_integer?).to be_falsey
    end
  end
end
