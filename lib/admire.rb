module USTC
  class Admirable
    attr_accessor :name

    def initialize(name)
      @name = name
      yield self if block_given?
    end

    def name=(name)
      @name = name
    end

    def ==(other)
      self.name == other.name
    end

    def eql?(other)
      self.name.eql? other.name
    end

    def admire
      "Wow! #{@name} is too strong!"
    end
  end

  class Dalao < Admirable
    def initialize(name = nil)
      super(name)
    end

    def fail?
      raise TypeError, "#{@name} can never fail." if @name.downcase == 'zjx'
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
      "#{self.name} is a dalao. " + self.admire
    end
  end
end
