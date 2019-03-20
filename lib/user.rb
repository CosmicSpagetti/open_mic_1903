class User
  attr_reader :name,
              :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(jokes)
    @jokes << jokes
  end

  def tell(user_name, joke)
    @name = user_name
    user_name.learn(joke)

  end
end
