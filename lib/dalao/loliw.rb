require 'admire'

def admire
  USTC::Dalao.new do |t|
    t.name = 'loliw'
    puts t
    puts t.excellent?
    puts t.taunt
  end
end

admire
