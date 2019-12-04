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
viola = Instrument.new(
    name: "Viola",
    category: 'Strings',
    position: 3)
viola.save!
cello = Instrument.new(
    name: "Cello",
    category: 'Strings',
    position: 4)
cello.save!
double_bass = Instrument.new(
    name: "Double Bass",
    category: 'Strings',
    position: 5)
double_bass.save!

puts ' --> Start Woodwinds'
flute = Instrument.new(
    name: "Flute",
    category: 'Woodwinds',
    position: 1)
flute.save!
piccolo = Instrument.new(
    name: "Piccolo",
    category: 'Woodwinds',
    position: 2)
piccolo.save!
oboe = Instrument.new(
    name: "Oboe",
    category: 'Woodwinds',
    position: 3)
oboe.save!
english_horn = Instrument.new(
    name: "English Horn",
    category: 'Woodwinds',
    position: 4)
english_horn.save!
clarinet = Instrument.new(
    name: "Clarinet",
    category: 'Woodwinds',
    position: 5)
clarinet.save!
bass_clarinet = Instrument.new(
    name: "Bass Clarinet",
    category: 'Woodwinds',
    position: 6)
bass_clarinet.save!
bassoon = Instrument.new(
    name: "Bassoon",
    category: 'Woodwinds',
    position: 7)
bassoon.save!
contrabasson = Instrument.new(
    name: "Contrabassoon",
    category: 'Woodwinds',
    position: 8)
contrabasson.save!
saxophone = Instrument.new(
    name: "Saxophone",
    category: 'Woodwinds',
    position: 9)
saxophone.save!


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
bass_trombone = Instrument.new(
    name: "Bass Trombone",
    category: 'Brass',
    position: 3)
bass_trombone.save!
french_horn = Instrument.new(
    name: "French Horn",
    category: 'Brass',
    position: 4)
french_horn.save!
tuba = Instrument.new(
    name: "Tuba",
    category: 'Brass',
    position: 5)
tuba.save!

puts ' --> Start Percussions'
timpani = Instrument.new(
    name: "Timpani",
    category: 'Percussions',
    position: 1)
timpani.save!
snare_drum = Instrument.new(
    name: "Snare Drum",
    category: 'Percussions',
    position: 2)
snare_drum.save!
bass_drum = Instrument.new(
    name: "Bass Drum",
    category: 'Percussions',
    position: 3)
bass_drum.save!
triangle = Instrument.new(
    name: "triangle",
    category: 'Percussions',
    position: 4)
triangle.save!
gong = Instrument.new(
    name: "Gong",
    category: 'Percussions',
    position: 5)
gong.save!
cymbals = Instrument.new(
    name: "Cymbals",
    category: 'Percussions',
    position: 6)
cymbals.save!
vibraphone = Instrument.new(
    name: "Vibraphone",
    category: 'Percussions',
    position: 7)
vibraphone.save!
xylophone = Instrument.new(
    name: "Xylophone",
    category: 'Percussions',
    position: 8)
xylophone.save!

puts ' --> Start keyboards'
piano = Instrument.new(
    name: "Piano",
    category: 'Keyboards',
    position: 1)
piano.save!
pipe_organ = Instrument.new(
    name: "Pipe Organ",
    category: 'Keyboards',
    position: 2)
pipe_organ.save!
harp = Instrument.new(
    name: "Harp",
    category: 'Keyboards',
    position: 3)
harp.save!
celesta = Instrument.new(
    name: "Celesta",
    category: 'Keyboards',
    position: 3)
celesta.save!
accordion = Instrument.new(
    name: "Accordion",
    category: 'Keyboards',
    position: 3)
accordion.save!

puts "#{Instrument.count} instruments imported. End"

puts 'End seeds'
