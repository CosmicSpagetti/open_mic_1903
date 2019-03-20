require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def test_it_exists_and_has_name
    sal = User.new("Sal")

    assert_instance_of User, sal
    assert_equal "Sal", sal.name
  end

  def test_if_jokes_comes_back_empty_array
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end

  def test_if_user_can_learn_jokes
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    

  end

end
