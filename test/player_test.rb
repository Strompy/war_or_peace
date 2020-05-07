require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'

class PlayerTest < Minitest::Test
end

# Test player exists
# test it has attributes name, deck, has_lost?
# test it has lost after removing cards (should lost on empty deck)
