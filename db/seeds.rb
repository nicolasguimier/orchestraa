puts 'Start seeds'

Instrument.destroy_all
puts 'Instrument table dropped'


puts '-> Start instruments'
puts ' --> Start Strings'
violin1 = Instrument.new(
    name: "Violin 1",
    category: 'Strings',
    position: 1)
violin1.save!
violin2 = Instrument.new(
    name: "Violin 2",
    category: 'Strings',
    position: 2)
violin2.save!

puts ' --> Start Woodwind'
flute = Instrument.new(
    name: "Flute",
    category: 'Woodwind',
    position: 1)
flute.save!
piccolo = Instrument.new(
    name: "Piccolo",
    category: 'Woodwind',
    position: 2)
piccolo.save!

puts ' --> Start Brass'
trumpet = Instrument.new(
    name: "Trumpet",
    category: 'Brass',
    position: 1)
trumpet.save!
trombone = Instrument.new(
    name: "Trombone",
    category: 'Brass',
    position: 2)
trombone.save!

puts ' --> Start Percussion'
drums = Instrument.new(
    name: "Drums",
    category: 'Percussion',
    position: 1)
drums.save!
xylophone = Instrument.new(
    name: "Xylophone",
    category: 'Percussion',
    position: 2)
xylophone.save!

puts "#{Instrument.count} instruments imported."
puts 'End instruments'

puts 'End seeds'
