module USTC
  DALAO = [
    'tky',
    'zjx',
    'hjy'
  ]

  def self.is_dalao(d)
    d in DALAO
  end
end
