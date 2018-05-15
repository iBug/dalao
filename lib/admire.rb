module USTC
  IMMORTAL = ['zjx']

  class Admirable
    attr_accessor :name

    def initialize(name)
      name.strip!
    rescue NoMethodError => e
    ensure
      @name = name
      yield self if block_given?
    end

    def ==(other)
      self.name == other.name
    end

    def admire
      "Wow! #{@name} is too strong!"
    end

    def to_s
      "#{@name} is admirable."
    end
  end

  def self.admire(a)
    puts a.to_s
    puts a.admire
    true
  end

  class Dalao < Admirable
    def initialize(name = nil)
      name.strip!
    rescue NoMethodError => e
    ensure
      super(name)
    end

    def fail?
      raise TypeError, "#{@name} can never fail." if IMMORTAL.include? @name.downcase
      true
    end

    def excellent?
      self.fail? ? 'Failed.' : 'Not failed.'
    rescue TypeError => e
      e.to_s
    ensure
      puts 'Ensure it\'s excellent.'
    end

    def taunt
      "You're so weak. #{@name} despises you."
    end

    def to_s
      "#{@name} is a dalao. " + self.admire
    end
  end
end
