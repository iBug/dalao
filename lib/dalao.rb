#!/usr/bin/env ruby

module USTC
  class Admirable
    attr_accessor :name

    def initialize(name)
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
    def fail?
      raise TypeError, "#{@name} can never fail." if @name.downcase == 'zjx'
      true
    end

    def excellent?
      s = self.fail?
      s ? 'Failed.' : 'Not failed.'
    rescue TypeError => e
      e.to_s
    ensure
      puts 'Ensure it\'s excellent.'
    end

    def to_s
      "#{self.name} is a dalao. " + self.admire
    end
  end
end

t = USTC::Dalao.new nil
t.name = "ZJX"

begin
  puts t
  puts t.excellent?
rescue
  puts 'Nothing here.'
ensure
  nil
end
