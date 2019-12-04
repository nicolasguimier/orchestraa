puts 'Start seeds'

Instrument.destroy_all
puts 'Instruments table dropped'
ProgramStep.destroy_all
puts 'ProgramStepS table dropped'
WorkInstrument.destroy_all
puts 'WorkInstruments table dropped'
Concert.destroy_all
puts 'Concerts table dropped'
MusicalWork.destroy_all
puts 'MusicalWorks table dropped'
Invitation.destroy_all
puts 'Invitations table dropped'
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

puts '-> Start MusicalWorks'
piazzolla = MusicalWork.new(
    user: igor,
    title: 'The Four Seasons of Buenos Aires',
    composer_name: 'Astor Piazzolla',
    duration: 45,
    notes: "Arranged by Claudio Dante D'Iorio in 2011")
piazzolla.save!
mouzanar = MusicalWork.new(
    user: igor,
    title: 'Maserati - Piece for Car and Orchestra',
    composer_name: 'Khaled Mouzanr',
    duration: 24,
    notes: "")
mouzanar.save!
vivaldi1 = MusicalWork.new(
    user: igor,
    title: 'Concerto in G minor RV 156',
    composer_name: 'Antonio Vivaldi',
    duration: 38,
    notes: "")
vivaldi1.save!
vivaldi2 = MusicalWork.new(
    user: igor,
    title: 'Concerto for strings and Bc in G minor RV 156',
    composer_name: 'Antonio Vivaldi',
    duration: 25,
    notes: "")
vivaldi2.save!
vivaldi3 = MusicalWork.new(
    user: igor,
    title: "Bassoon Concerto in A minor, RV 500",
    composer_name: 'Antonio Vivaldi',
    duration: 15,
    notes: "")
vivaldi3.save!
vivaldi4 = MusicalWork.new(
  user: igor,
  title: "L'Adelaide, RV 695",
  composer_name: 'Antonio Vivaldi',
  duration: 21,
  notes: "")
vivaldi4.save!
vivaldi5 = MusicalWork.new(
  user: igor,
  title: "All'ombra di sospetto, RV 678",
  composer_name: 'Antonio Vivaldi',
  duration: 34,
  notes: "")
vivaldi5.save!
vivaldi6 = MusicalWork.new(
  user: igor,
  title: "All'or che lo sguardo, RV 650",
  composer_name: 'Antonio Vivaldi',
  duration: 12,
  notes: "")
vivaldi6.save!
vivaldi7 = MusicalWork.new(
  user: igor,
  title: "Amor hai vinto, RV 651",
  composer_name: 'Antonio Vivaldi',
  duration: 19,
  notes: "")
vivaldi7.save!
vivaldi8 = MusicalWork.new(
  user: igor,
  title: "Amor hai vinto, RV 683",
  composer_name: 'Antonio Vivaldi',
  duration: 10,
  notes: "")
vivaldi8.save!
vivaldi9 = MusicalWork.new(
  user: igor,
  title: "La Candace o siano Li veri amici, RV 704",
  composer_name: 'Antonio Vivaldi',
  duration: 22,
  notes: "")
vivaldi9.save!
vivaldi10 = MusicalWork.new(
  user: igor,
  title: "Canta in prato, ride in monte, RV 623",
  composer_name: 'Antonio Vivaldi',
  duration: 32,
  notes: "")
vivaldi10.save!
vivaldi11 = MusicalWork.new(
  user: igor,
  title: "Anche in mezzo a perigliosa",
  composer_name: 'Antonio Vivaldi',
  duration: 14,
  notes: "")
vivaldi11.save!

MusicalWork.create!(
  user: igor,
  title: "Armida al campo d'Egitto, RV 699",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Arsilda, regina di Ponto, RV 700",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Artabano, re de' Parti, RV 706-b",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "L'Artabano, RV 706-d",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "L'Atenaide, RV 702",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Viola d'amore and Lute in D minor, RV 540",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Bassoon Concerto in B-flat major, RV 504",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Bassoon Concerto in C major, RV 474",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Bassoon Concerto in C major, RV 478",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Bassoon Concerto in F major, RV 485",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")

MusicalWork.create!(
  user: igor,
  title: "Beatus vir, RV 597",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Catone in Utica, RV 705",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Cello Concerto in A minor, RV 418",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Cello Concerto in A minor, RV 419",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Cello Sonata in F major, RV 41",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Cello Sonata in G minor, RV 42",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Cello Sonata in B-flat major, RV 47",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Cello Sonata in A major",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Cessate, omai cessate, RV 684",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Chamber Concerto in A minor, RV 108",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Chamber Concerto in F major, RV 99",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Cellos in G minor, RV 531",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Flutes in C major, RV 533",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Oboes in A minor, RV 536",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Oboes in C major, RV 534",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Oboes in D major, RV 563",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Oboes in D minor, RV 535",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Trumpets in C major, RV 537",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Violins in A minor, RV 523",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Violins in B-flat major, RV 524",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Violins in C minor, RV 510",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Violins in D minor, RV 514",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 2 Violins in E-flat major, RV 515",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for 4 Violins in B-flat major, RV 553",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Flute, Oboe, Bassoon and Strings in F major, RV 570",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Oboe and Violin in B-flat major, RV 548",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Strings in B-flat major, RV 167",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Strings in C major, RV 109",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Violin and Cello in A major, RV 546",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Violin and Cello in B-flat major, RV 547",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Violin and Organ in F major, RV 767",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto for Violino in Tromba Marina in G major, RV 313",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto funebre in B-flat major, RV 579",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto in A major, RV 585",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
MusicalWork.create!(
  user: igor,
  title: "Concerto in C major, RV 554",
  composer_name: 'Antonio Vivaldi',
  duration: 58,
  notes: "")
puts "#{MusicalWork.count} musical works imported. End"

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

puts '-> Start work instruments'
puts "#{WorkInstrument.count} work instruments imported. End"

puts '-> Start Invitations'

    # <li>owner : <%= invitation.user %></li>
    # <li>full_name : <%= invitation.full_name %></li>
    # <li>email : <%= invitation.email %></li>
    # <li>instrument_id : <%= invitation.instrument_id %></li>
    # <li>status : <%= invitation.status %></li>
    # <li>sendinblue_email_id : <%= invitation.sendinblue_email_id %></li>
    # <li>email_delivered : <%= invitation.email_delivered %></li>
    # <li>email_read : <%= invitation.email_read %></li>
    # <li>email_error : <%= invitation.email_error %></li>


puts "#{Invitation.count} invitations imported. End"




puts '-> Start programm steps'
puts '---> for Concert 1'
ProgramStep.create!(
  concert: concert1,
  musical_work: piazzolla,
  kind: "musical_work",
  position: 1)
ProgramStep.create!(
  concert: concert1,
  musical_work: mouzanar,
  kind: "musical_work",
  position: 2)
ProgramStep.create!(
  concert: concert1,
  kind: "intermission",
  position: 4)
ProgramStep.create!(
  concert: concert1,
  musical_work: vivaldi1,
  kind: "musical_work",
  position: 4)
ProgramStep.create!(
  concert: concert1,
  musical_work: vivaldi2,
  kind: "musical_work",
  position: 5)
ProgramStep.create!(
  concert: concert1,
  musical_work: vivaldi3,
  kind: "musical_work",
  position: 6)

puts '---> for Concert 2'
ProgramStep.create!(
  concert: concert2,
  musical_work: piazzolla,
  kind: "musical_work",
  position: 1)
ProgramStep.create!(
  concert: concert2,
  musical_work: mouzanar,
  kind: "musical_work",
  position: 2)
ProgramStep.create!(
  concert: concert2,
  kind: "intermission",
  position: 4)
ProgramStep.create!(
  concert: concert2,
  musical_work: vivaldi1,
  kind: "musical_work",
  position: 4)
ProgramStep.create!(
  concert: concert2,
  musical_work: vivaldi2,
  kind: "musical_work",
  position: 5)
ProgramStep.create!(
  concert: concert2,
  musical_work: vivaldi3,
  kind: "musical_work",
  position: 6)

puts '---> for Concert 3'
ProgramStep.create!(
  concert: concert3,
  musical_work: piazzolla,
  kind: "musical_work",
  position: 1)
ProgramStep.create!(
  concert: concert3,
  musical_work: mouzanar,
  kind: "musical_work",
  position: 2)
ProgramStep.create!(
  concert: concert3,
  kind: "intermission",
  position: 4)
ProgramStep.create!(
  concert: concert3,
  musical_work: vivaldi1,
  kind: "musical_work",
  position: 4)
ProgramStep.create!(
  concert: concert3,
  musical_work: vivaldi2,
  kind: "musical_work",
  position: 5)
ProgramStep.create!(
  concert: concert3,
  musical_work: vivaldi3,
  kind: "musical_work",
  position: 6)

puts '---> for Concert 4'
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi1,
  kind: "musical_work",
  position: 1)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi2,
  kind: "musical_work",
  position: 2)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi3,
  kind: "musical_work",
  position: 3)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi4,
  kind: "musical_work",
  position: 4)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi5,
  kind: "musical_work",
  position: 5)
ProgramStep.create!(
  concert: concert4,
  kind: "intermission",
  position: 6)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi6,
  kind: "musical_work",
  position: 7)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi7,
  kind: "musical_work",
  position: 8)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi8,
  kind: "musical_work",
  position: 9)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi9,
  kind: "musical_work",
  position: 10)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi10,
  kind: "musical_work",
  position: 11)
ProgramStep.create!(
  concert: concert4,
  musical_work: vivaldi11,
  kind: "musical_work",
  position: 12)

puts '---> for Concert 5'
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi1,
  kind: "musical_work",
  position: 1)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi2,
  kind: "musical_work",
  position: 2)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi3,
  kind: "musical_work",
  position: 3)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi4,
  kind: "musical_work",
  position: 4)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi5,
  kind: "musical_work",
  position: 5)
ProgramStep.create!(
  concert: concert5,
  kind: "intermission",
  position: 6)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi6,
  kind: "musical_work",
  position: 7)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi7,
  kind: "musical_work",
  position: 8)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi8,
  kind: "musical_work",
  position: 9)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi9,
  kind: "musical_work",
  position: 10)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi10,
  kind: "musical_work",
  position: 11)
ProgramStep.create!(
  concert: concert5,
  musical_work: vivaldi11,
  kind: "musical_work",
  position: 12)



puts "#{ProgramStep.count} program steps imported. End"


puts '-> Start orchestra composition'
puts "#{OrchestraComposition.count} orchestra compositions imported. End"




puts 'End seeds'
