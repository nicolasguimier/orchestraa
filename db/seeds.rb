puts 'Start seeds'

Instrument.destroy_all
puts 'Instruments table dropped'
MusicalWork.destroy_all
puts 'MusicalWorks table dropped'
Concert.destroy_all
puts 'Concerts table dropped'
Invitation.destroy_all
puts 'Invitations table dropped'
WorkInstrument.destroy_all
puts 'WorkInstruments table dropped'
ProgramStep.destroy_all
puts 'ProgramStepS table dropped'
OrchestraComposition.destroy_all
puts 'OrchestraCompositionS table dropped'
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

puts '-> Start concerts'
concert1 = Concert.new(
    user: igor,
    name: "New year concert",
    location: 'Victoria Hall',
    address: 'Rue du Général-Dufour 14, 1204 Geneva, Switzerland',
    notes: 'First concert of the season, with all the musicians, and full program.',
    start_at:Time.new(2020, 1, 25, 21,0, 0, "+01:00"),
    end_at:Time.new(2020, 1, 25, 23, 30, 0, "+01:00"))
concert1.save!
concert2 = Concert.new(
    user: igor,
    name: "New year concert",
    location: 'Victoria Hall',
    address: 'Rue du Général-Dufour 14, 1204 Geneva, Switzerland',
    notes: 'Concert of the sunday, with same program than saturday. But 1 hour before.',
    start_at:Time.new(2020, 1, 26, 20,0, 0, "+01:00"),
    end_at:Time.new(2020, 1, 26, 22, 30, 0, "+01:00"))
concert2.save!
concert3 = Concert.new(
    user: igor,
    name: "New year concert",
    location: 'Victoria Hall',
    address: 'Rue du Général-Dufour 14, 1204 Geneva, Switzerland',
    notes: 'Concert of the tuesday. Only concert of the week. End for this hall in Geneva.',
    start_at:Time.new(2020, 1, 28, 20,0, 0, "+01:00"),
    end_at:Time.new(2020, 1, 28, 22, 30, 0, "+01:00"))
concert3.save!
concert4 = Concert.new(
    user: igor,
    name: "Tribute to Vivaldi",
    location: 'Cité des congrès',
    address: '5 Rue de Valmy, 44000 Nantes, France',
    notes: 'First concert in France. Playing only Vivaldi works',
    start_at:Time.new(2020, 2, 22, 20,30, 0, "+01:00"),
    end_at:Time.new(2020, 2, 22, 23, 00, 0, "+01:00"))
concert4.save!
concert5 = Concert.new(
    user: igor,
    name: "Tribute to Vivaldi",
    location: 'Cité des congrès',
    address: '5 Rue de Valmy, 44000 Nantes, France',
    notes: 'Sunday afternoon, for kids and family.',
    start_at:Time.new(2020, 2, 23, 15,00, 0, "+01:00"),
    end_at:Time.new(2020, 2, 23, 17, 30, 0, "+01:00"))
concert5.save!


puts "#{Concert.count} concerts imported. End"

puts '-> Start Invitations'
puts "#{Invitation.count} invitations imported. End"


puts '-> Start work instruments'
puts "#{WorkInstrument.count} work instruments imported. End"


puts '-> Start programm steps'
puts "#{ProgramStep.count} program steps imported. End"


puts '-> Start orchestra composition'
puts "#{OrchestraComposition.count} orchestra compositions imported. End"




puts 'End seeds'
