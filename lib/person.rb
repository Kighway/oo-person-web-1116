class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness= (new_amount)
      @happiness = new_amount
      if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      end
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def hygiene= (new_amount)
      @hygiene = new_amount
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      end
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid (salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    self.happiness+= 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (listener, topic)
    case topic
    when "politics"
      self.happiness -= 2
      listener.happiness -=2
      return 'blah blah partisan blah lobbyist'
    when "weather"
      self.happiness += 1
      listener.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
end
