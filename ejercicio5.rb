class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    morse = { '0' => '-----', '1' => '.----', '2' => '..---',
              '3' => '...--', '4' => '....-', '5' => '.....',
              '6' => '-....', '7' => '--...', '8' => '---..',
              '9' => '----.' }
    morse.fetch(number.to_s)
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(6)
puts m.to_morse
