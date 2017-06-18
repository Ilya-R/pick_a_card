# encoding utf-8
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

massiv1 = ['♦', '♠', '♥ ', '♣']
massiv2 = [6, 7, 8, 9, 10, 'valet', 'dama', 'korol', 'tuz']

puts "Card picked: #{massiv2.sample} #{massiv1.sample}"
