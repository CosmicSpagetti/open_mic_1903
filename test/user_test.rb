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
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.learn(joke_1)

    assert_equal [joke_1], sal.jokes
    sal.learn(joke_2)
    assert_equal [joke_1,joke_2], sal.jokes
  end

  def test_if_second_user_can_learn_jokes_from_tell_command
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.tell(ali, joke_1)

    assert_equal [joke_1], ali.jokes
    sal.tell(ali, joke_2)
    assert_equal [joke_1, joke_2], ali.jokes
  end

  def test_if_joke_by_id_returns_proper_joke_from_second_user
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)
    
    assert_equal joke_1, ali.joke_by_id(1)
    assert_equal joke_2, ali.joke_by_id(2)
  end
end
