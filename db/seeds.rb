puts 'Start seeds'

Instrument.destroy_all
puts 'Instrument table dropped'
MusicalWork.destroy_all
puts 'MusicalWork table dropped'
User.destroy_all
puts 'User table dropped'


puts '-> Start users'
igor = User.new(
    full_name: "Igor Patulachi",
    email: 'igor@example.com',
    password: 'password')
igor.save!

puts "#{User.count} users imported. End"

puts '-> Start MusicalWorks'
work1 = MusicalWork.new(
    user: igor,
    title: 'The Four Seasons of Buenos Aires',
    composer_name: 'Astor Piazzolla',
    duration: 120,
    notes: 'Ceci est le contenu des notes A MODIFIER !!!')
work1.save!

puts "#{MusicalWork.count} musical works imported. End"

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

puts "#{Instrument.count} instruments imported. End"

puts 'End seeds'
