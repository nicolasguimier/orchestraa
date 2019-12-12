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
soprano_saxophone = Instrument.new(
    name: "Soprano saxophone",
    category: 'Woodwinds',
    position: 9)
soprano_saxophone.save!
alto_saxophone = Instrument.new(
    name: "Alto saxophone",
    category: 'Woodwinds',
    position: 10)
alto_saxophone.save!
tenor_saxophone = Instrument.new(
    name: "Tenor saxophone",
    category: 'Woodwinds',
    position: 11)
tenor_saxophone.save!
baritone_saxophone = Instrument.new(
    name: "Baritone saxophone",
    category: 'Woodwinds',
    position: 12)
baritone_saxophone.save!

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
claves = Instrument.new(
    name: "Claves",
    category: 'Percussions',
    position: 4)
claves.save!
triangle = Instrument.new(
    name: "Triangle",
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
bandoneon = Instrument.new(
    name: "Bandoneon",
    category: 'Keyboards',
    position: 2)
bandoneon.save!
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
    position: 4)
celesta.save!
accordion = Instrument.new(
    name: "Accordion",
    category: 'Keyboards',
    position: 5)
accordion.save!
puts "#{Instrument.count} instruments imported. End"

puts '-> Start MusicalWorks'
piazzolla = MusicalWork.new(
    user: igor,
    title: 'The Four Seasons of Buenos Aires',
    composer_name: 'Astor Piazzolla',
    duration: 45,
    notes: "Arranged by Claudio Dante D'Iorio in 2011. Set of four tango")
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
    title: 'The Four Seasons',
    composer_name: 'Antonio Vivaldi',
    duration: 43,
    notes: "Spring, Summer, Autumn, Winter")
vivaldi1.save!
vivaldi2 = MusicalWork.new(
  user: igor,
  title: "Opus 4",
  composer_name: 'Antonio Vivaldi',
  duration: 23,
  notes: "A minor - with piano")
vivaldi2.save!
vivaldi3 = MusicalWork.new(
    user: igor,
    title: "Bassoon Concerto in A minor, RV 500",
    composer_name: 'Antonio Vivaldi',
    duration: 10,
    notes: "A minor, Baroque, 3 movements")
vivaldi3.save!
vivaldi4 = MusicalWork.new(
  user: igor,
  title: "L'Adelaide, RV 695",
  composer_name: 'Antonio Vivaldi',
  duration: 21,
  notes: "Baroque, Italian. First performance in 1735 Carnival in Verona")
vivaldi4.save!
vivaldi5 = MusicalWork.new(
  user: igor,
  title: "All'ombra di sospetto, RV 678",
  composer_name: 'Antonio Vivaldi',
  duration: 7,
  notes: "Baroque Italian - with flute")
vivaldi5.save!
vivaldi6 = MusicalWork.new(
  user: igor,
  title: "All'or che lo sguardo, RV 650",
  composer_name: 'Antonio Vivaldi',
  duration: 12,
  notes: "F major - Italian, Baroque, 3 movements")
vivaldi6.save!
vivaldi7 = MusicalWork.new(
  user: igor,
  title: "Amor hai vinto, RV 651",
  composer_name: 'Antonio Vivaldi',
  duration: 19,
  notes: "Italian Baroque")
vivaldi7.save!
vivaldi8 = MusicalWork.new(
  user: igor,
  title: "Amor hai vinto, RV 683",
  composer_name: 'Antonio Vivaldi',
  duration: 10,
  notes: "4 movements. Italian Baroque")
vivaldi8.save!
vivaldi9 = MusicalWork.new(
  user: igor,
  title: "La Candace o siano Li veri amici, RV 704",
  composer_name: 'Antonio Vivaldi',
  duration: 22,
  notes: "Opera. First Performance in 1720, Carnival in Mantua: Teatro Arciducale")
vivaldi9.save!
vivaldi10 = MusicalWork.new(
  user: igor,
  title: "Canta in prato, ride in monte, RV 623",
  composer_name: 'Antonio Vivaldi',
  duration: 32,
  notes: "Latin, Baroque")
vivaldi10.save!

# MusicalWork.create!(
#   user: igor,
#   title: "Armida al campo d'Egitto, RV 699",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Arsilda, regina di Ponto, RV 700",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Artabano, re de' Parti, RV 706-b",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "L'Artabano, RV 706-d",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "L'Atenaide, RV 702",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Viola d'amore and Lute in D minor, RV 540",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Bassoon Concerto in B-flat major, RV 504",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Bassoon Concerto in C major, RV 474",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Bassoon Concerto in C major, RV 478",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Bassoon Concerto in F major, RV 485",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")

# MusicalWork.create!(
#   user: igor,
#   title: "Beatus vir, RV 597",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Catone in Utica, RV 705",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Cello Concerto in A minor, RV 418",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Cello Concerto in A minor, RV 419",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Cello Sonata in F major, RV 41",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Cello Sonata in G minor, RV 42",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Cello Sonata in B-flat major, RV 47",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Cello Sonata in A major",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Cessate, omai cessate, RV 684",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Chamber Concerto in A minor, RV 108",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Chamber Concerto in F major, RV 99",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Cellos in G minor, RV 531",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Flutes in C major, RV 533",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Oboes in A minor, RV 536",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Oboes in C major, RV 534",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Oboes in D major, RV 563",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Oboes in D minor, RV 535",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Trumpets in C major, RV 537",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Violins in A minor, RV 523",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Violins in B-flat major, RV 524",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Violins in C minor, RV 510",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Violins in D minor, RV 514",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 2 Violins in E-flat major, RV 515",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for 4 Violins in B-flat major, RV 553",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Flute, Oboe, Bassoon and Strings in F major, RV 570",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Oboe and Violin in B-flat major, RV 548",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Strings in B-flat major, RV 167",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Strings in C major, RV 109",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Violin and Cello in A major, RV 546",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Violin and Cello in B-flat major, RV 547",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Violin and Organ in F major, RV 767",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto for Violino in Tromba Marina in G major, RV 313",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto funebre in B-flat major, RV 579",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto in A major, RV 585",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
# MusicalWork.create!(
#   user: igor,
#   title: "Concerto in C major, RV 554",
#   composer_name: 'Antonio Vivaldi',
#   duration: 58,
#   notes: "")
puts "#{MusicalWork.count} musical works imported. End"

puts '-> Start work instruments'
puts ' ---> piazzolla'
# title: 'The Four Seasons of Buenos Aires',
piazzolla_violin1 = WorkInstrument.new(
  musical_work: piazzolla,
  instrument: violin1,
  quantity: 4,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575971854/416515308-violin-I_r59isl.pdf'
)
piazzolla_violin1.save!

piazzolla_violin2 = WorkInstrument.new(
  musical_work: piazzolla,
  instrument: violin2,
  quantity: 3,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575971483/371641312-Piazzolla-Spring-Violin-III_l3byrw.pdf'
)
piazzolla_violin2.save!

WorkInstrument.create!(
  musical_work: piazzolla,
  instrument: viola,
  quantity: 2)

piazzolla_cello = WorkInstrument.new(
  musical_work: piazzolla,
  instrument: cello,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575970735/371643893-Piazzolla-Spring-Flute-II_cmdamr.pdf'
)
  piazzolla_cello.save!

piazzolla_double_bass = WorkInstrument.new(
  musical_work: piazzolla,
  instrument: double_bass,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575970735/371643841-Piazzolla-Spring-Bass_ayqtst.pdf'
)
piazzolla_double_bass.save!

piazzolla_bandoneon = WorkInstrument.new(
  musical_work: piazzolla,
  instrument: bandoneon,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575970735/371643905-Piazzolla-Spring-Oboe_eu7nvg.pdf'
)
piazzolla_bandoneon.save!


puts ' ---> mouzanar'
# mouzanar  'Maserati - Piece for Car and Orchestra'
  mouzanar_violin1 = WorkInstrument.new(
  musical_work: mouzanar,
  instrument: violin1,
  quantity: 4,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
  )
mouzanar_violin2 = WorkInstrument.new(
  musical_work: mouzanar,
  instrument: violin2,
  quantity: 3,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)

mouzanar_viola = WorkInstrument.new(
  musical_work: mouzanar,
  instrument: viola,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)

mouzanar_cello = WorkInstrument.new(
  musical_work: mouzanar,
  instrument: cello,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)

mouzanar_double_bass = WorkInstrument.new(
  musical_work: mouzanar,
  instrument: double_bass,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)

mouzanar_bandoneon = WorkInstrument.new(
  musical_work: mouzanar,
  instrument: bandoneon,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)

mouzanar_claves = WorkInstrument.new(
  musical_work: mouzanar,
  instrument: claves,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)

mouzanar_trumpet = WorkInstrument.new(
  musical_work: mouzanar,
  instrument: trumpet,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)

WorkInstrument.create!(
  musical_work: mouzanar,
  instrument: trombone,
  quantity: 1)

puts ' ---> vivaldi1'
# vivaldi1  'The Four seasons',
vivaldi1_violin1 = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: violin1,
  quantity: 4,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_violin1.save!

WorkInstrument.create!(
  musical_work: vivaldi1,
  instrument: clarinet,
  quantity: 3)

vivaldi1_violin2 = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: violin2,
  quantity: 3,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_violin2.save!

vivaldi1_tuba = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: tuba,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_tuba.save!

vivaldi1_trumpet = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: trumpet,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_trumpet.save!

vivaldi1_piccolo = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: piccolo,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_piccolo.save!

vivaldi1_viola = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: viola,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_viola.save!

vivaldi1_trombone = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: trombone,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_trombone.save!

WorkInstrument.create!(
  musical_work: vivaldi1,
  instrument: triangle,
  quantity: 1)

WorkInstrument.create!(
  musical_work: vivaldi1,
  instrument: bandoneon,
  quantity: 1)

vivaldi1_double_bass = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: double_bass,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_double_bass.save!

vivaldi1_claves = WorkInstrument.new(
  musical_work: vivaldi1,
  instrument: claves,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi1_claves.save!


puts ' ---> vivaldi2'
# vivaldi2  "Anche in mezzo a perigliosa",
vivaldi2_violin1 = WorkInstrument.new(
  musical_work: vivaldi2,
  instrument: violin1,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi2_violin2 = WorkInstrument.new(
  musical_work: vivaldi2,
  instrument: violin2,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi2_viola = WorkInstrument.new(
  musical_work: vivaldi2,
  instrument: viola,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
WorkInstrument.create!(
  musical_work: vivaldi2,
  instrument: cello,
  quantity: 1)
vivaldi2_double_bass = WorkInstrument.new(
  musical_work: vivaldi2,
  instrument: double_bass,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)

puts ' ---> vivaldi3'
# vivaldi3 "Bassoon Concerto in A minor, RV 500",
vivaldi3_violin1 = WorkInstrument.new(
  musical_work: vivaldi3,
  instrument: violin1,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi3_violin2 = WorkInstrument.new(
  musical_work: vivaldi3,
  instrument: violin2,
  quantity: 2,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
vivaldi3_viola = WorkInstrument.new(
  musical_work: vivaldi3,
  instrument: viola,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
WorkInstrument.create!(
  musical_work: vivaldi3,
  instrument: cello,
  quantity: 1)
vivaldi3_bassoon = WorkInstrument.new(
  musical_work: vivaldi3,
  instrument: bassoon,
  quantity: 1,
  remote_sheet_pdf_url: 'https://res.cloudinary.com/dt2lwcp7z/image/upload/v1575986106/250595387-Astor-Piazzolla-Adios-Nonino-Piano-Solo_gpmyza.pdf'
)
WorkInstrument.create!(
  musical_work: vivaldi3,
  instrument: double_bass,
  quantity: 2)

puts ' ---> vivaldi4'
# vivaldi4  "L'Adelaide, RV 695",
WorkInstrument.create!(
  musical_work: vivaldi4,
  instrument: violin1,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi4,
  instrument: violin2,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi4,
  instrument: viola,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi4,
  instrument: cello,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi4,
  instrument: double_bass,
  quantity: 1)

puts ' ---> vivaldi5'
# vivaldi5 "All'ombra di sospetto, RV 678",
WorkInstrument.create!(
  musical_work: vivaldi5,
  instrument: violin1,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi5,
  instrument: violin2,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi5,
  instrument: viola,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi5,
  instrument: cello,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi5,
  instrument: double_bass,
  quantity: 1)
  WorkInstrument.create!(
  musical_work: vivaldi5,
  instrument: flute,
  quantity: 4)

puts ' ---> vivaldi6'
# vivaldi6  "All'or che lo sguardo, RV 650",
WorkInstrument.create!(
  musical_work: vivaldi6,
  instrument: violin1,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi6,
  instrument: violin2,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi6,
  instrument: viola,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi6,
  instrument: cello,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi6,
  instrument: double_bass,
  quantity: 1)

puts ' ---> vivaldi7'
# vivaldi7  "Amor hai vint-o, RV 651",
WorkInstrument.create!(
  musical_work: vivaldi7,
  instrument: violin1,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi7,
  instrument: violin2,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi7,
  instrument: viola,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi7,
  instrument: cello,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi7,
  instrument: double_bass,
  quantity: 1)

puts ' ---> vivaldi8'
# vivaldi8 "Amor hai vinto, RV 683",
WorkInstrument.create!(
  musical_work: vivaldi8,
  instrument: violin1,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi8,
  instrument: violin2,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi8,
  instrument: viola,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi8,
  instrument: cello,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi8,
  instrument: double_bass,
  quantity: 1)

puts ' ---> vivaldi9'
# vivaldi9  "La Candace o siano Li veri amici, RV 704",
WorkInstrument.create!(
  musical_work: vivaldi9,
  instrument: violin1,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi9,
  instrument: violin2,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi9,
  instrument: viola,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi9,
  instrument: cello,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi9,
  instrument: double_bass,
  quantity: 1)

puts ' ---> vivaldi10'
# vivaldi10  "Canta in prato, ride in monte, RV 623",
WorkInstrument.create!(
  musical_work: vivaldi10,
  instrument: violin1,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi10,
  instrument: violin2,
  quantity: 2)
WorkInstrument.create!(
  musical_work: vivaldi10,
  instrument: viola,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi10,
  instrument: cello,
  quantity: 1)
WorkInstrument.create!(
  musical_work: vivaldi10,
  instrument: double_bass,
  quantity: 1)
puts "#{WorkInstrument.count} work instruments imported. End"


puts '-> Start concerts'
concert1 = Concert.new(
    user: igor,
    name: "New year concert",
    location: 'Victoria Hall',
    address: 'Rue du Général-Dufour 14, 1204 Geneva, Switzerland',
    notes: 'First concert of the season, with all the musicians, and full program.',
    start_at:Time.new(2020, 1, 1, 21,0, 0, "+01:00"),
    end_at:Time.new(2020, 1, 1, 23, 30, 0, "+01:00"))
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
    start_at:Time.new(2019, 12, 21, 20,30, 0, "+01:00"),
    end_at:Time.new(2019, 12, 21, 23, 00, 0, "+01:00"))
concert4.save!
concert5 = Concert.new(
    user: igor,
    name: "Tribute to Vivaldi",
    location: 'Cité des congrès',
    address: '5 Rue de Valmy, 44000 Nantes, France',
    notes: 'Sunday afternoon, for kids and family.',
    start_at:Time.new(2019, 12, 22, 15,00, 0, "+01:00"),
    end_at:Time.new(2019, 12, 22, 17, 30, 0, "+01:00"))
concert5.save!


puts "#{Concert.count} concerts imported. End"


puts '-> Start Invitations'
# Need strings. Need 12, missing 6.
# 4 - Violin 1    -> 5 invited, 2 accepted, 1 rejected, 2 pending (1 with error)
Invitation.create!(
  user: igor,
  full_name: 'Maximo Melandy',
  email: 'maximo.melandy@gmail.com',
  instrument: violin1,
  status: 'accepted',
  sendinblue_email_id: 'test',
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Mr Enrico',
  email: 'enrico@wrongemail.com',
  instrument: violin1,
  status: "pending",
  sendinblue_email_id: "test",
  email_delivered: false,
  email_read: false,
  email_clicked: false,
  email_bounce: true
  )
Invitation.create!(
  user: igor,
  full_name: 'Stanislas Ducrouet',
  email: 'stan@gmail.com',
  instrument: violin1,
  status: "pending",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: false,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Helena Gallos',
  email: 'helene.g@hotmail.com',
  instrument: violin1,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Mss Simone Delatour',
  email: 'delatour@yahoo.co.uk',
  instrument: violin1,
  status: "rejected",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )

# 3 - Violin 2    -> 4 invited, 3 pending, 1 accepted
Invitation.create!(
  user: igor,
  full_name: 'Jean Esposito',
  email: 'jean@gmail.com',
  instrument: violin2,
  status: "pending",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Clotilde Moussuffa',
  email: 'clotide@gmx.de',
  instrument: violin2,
  status: "pending",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: false,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Eric Tudal',
  email: 'erictudal@yahoo.com',
  instrument: violin2,
  status: "pending",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Rafaello Dimante',
  email: 'Raff@gmail.com',
  instrument: violin2,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: false,
  email_bounce: false
  )

# 2 - viola       -> 4 invited, 2 rejected, 2 accepted
Invitation.create!(
  user: igor,
  full_name: 'Yasser Mazarelli',
  email: 'yass@gmail.com',
  instrument: viola,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: false,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Ivanov Bali',
  email: 'ivanov@youpi.ca',
  instrument: viola,
  status: "rejected",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: false,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Paula Michu',
  email: 'Paula@gmail.com',
  instrument: viola,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Gabriella Tandori',
  email: 'gabi@tandoo.com',
  instrument: viola,
  status: "rejected",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )

# 2 - Cello       -> 2 invited, 2 accepted
Invitation.create!(
  user: igor,
  full_name: 'Frank Balandier',
  email: 'franck@balese.com',
  instrument: cello,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Mr Fabrice Pelouz',
  email: 'pelouz@gmail.com',
  instrument: cello,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )
# 1 - Double Bass -> 1 invited, 1 accepted
Invitation.create!(
  user: igor,
  full_name: 'Boris Pailloux',
  email: 'boris@gmail.com',
  instrument: double_bass,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )

# Need Woodwinds. Need 6,  2 accepted
# 2 - Bassoon -> 3 invited, 1 accepted, 1 pending, 1 rejected
Invitation.create!(
  user: igor,
  full_name: 'Clement Rasparinov',
  email: 'clement@gmail.com',
  instrument: bassoon,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Mickaël Nuiss Jr',
  email: 'mickey@gmail.com',
  instrument: bassoon,
  status: "pending",
  sendinblue_email_id: "test",
  email_delivered: false,
  email_read: false,
  email_clicked: false,
  email_bounce: true
  )
Invitation.create!(
  user: igor,
  full_name: 'Thomas Garibaldi',
  email: 'tom.g@gmail.com',
  instrument: bassoon,
  status: "rejected",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )
# 4 - Flute -> 1 invited, 1 accepted
Invitation.create!(
  user: igor,
  full_name: 'Ophelia Razarovski',
  email: 'razou@gmail.com',
  instrument: flute,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )

# Need Brass : all missing
# 1 - trumpet -> 0 invited
# 1 - trombone -> 1 invited, 1 rejected
Invitation.create!(
  user: igor,
  full_name: 'Hinz Zin Pun',
  email: 'hin_zin_pun@gmail.com',
  instrument: trombone,
  status: "rejected",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )


# Need percusions. all needed
# 1 - Claves -> 2 invited, 1 accepted, 1 rejected
Invitation.create!(
  user: igor,
  full_name: 'Cecile Cavinovich',
  email: 'cecile@gmail.com',
  instrument: claves,
  status: "rejected",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: false,
  email_clicked: false,
  email_bounce: false
  )
Invitation.create!(
  user: igor,
  full_name: 'Nicolas Wagonier',
  email: 'nico@gmail.com',
  instrument: claves,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )

Invitation.create!(
  user: igor,
  full_name: 'Maxime Couscous',
  email: 'max@gmail.com',
  instrument: triangle,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )

Invitation.create!(
  user: igor,
  full_name: 'Jérémie Wagonier',
  email: 'jerem@gmail.com',
  instrument: flute,
  status: "accepted",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )

# Need Keyboard. All needed
# 1 - Bandoneon -> 1 invitation, 1 accepted
Invitation.create!(
  user: igor,
  full_name: 'Etienne De Nancy',
  email: 'etienne@gmail.com',
  instrument: bandoneon,
  message: "I'm Igor, the director of the Berlin Philarmonic. In anticipation from the next season, we are looking for external musiciens to complete and play our program.<br>
    You will read below the dates of the next events, and our musical works.<br>
    You can also click on the orange buttons to download the musical sheets.<br>
    Please contact me to talk about this project deeply.",
  status: "pending",
  sendinblue_email_id: "test",
  email_delivered: true,
  email_read: true,
  email_clicked: true,
  email_bounce: false
  )
puts "#{Invitation.count} invitations imported. End"




puts '-> Start programm steps'
puts '---> for Concert 1'
ProgramStep.create!(
  concert: concert1,
  musical_work: mouzanar,
  kind: "musical_work",
  position: 1)
ProgramStep.create!(
  concert: concert1,
  musical_work: vivaldi1,
  kind: "musical_work",
  position: 2)
ProgramStep.create!(
  concert: concert1,
  musical_work: vivaldi2,
  kind: "musical_work",
  position: 3)
ProgramStep.create!(
  concert: concert1,
  musical_work: vivaldi3,
  kind: "musical_work",
  position: 4)

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
  position: 3)
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
  position: 3)
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
puts "#{ProgramStep.count} program steps imported. End"


puts '-> Start orchestra composition'
OrchestraComposition.create!(
  user: igor,
  name: "String quartet",
  composition: '{
    "Strings": {
      Violin 1": "2",
      "Viola": "1",
      "Cello": "1"
    }
  }')
OrchestraComposition.create!(
  user: igor,
  name: "Piano quartet",
  composition: '{
    "Strings": {
      "Violin 1": "2",
      "Viola": "1",
      "Cello": "1"
    },
    "Keyboards": {
      "Piano": "1"
    }
  }')

OrchestraComposition.create!(
  user: igor,
  name: "Philharmonic orchestra",
  composition: '{
    "Strings": {
      "Violin 1": "16",
      "Violin 2": "14",
      "Viola": "12",
      "Cello": "10",
      "Double Bass": "8"
    },
    "Woodwinds": {
      "Flute" : "2",
      "Piccolo" : "1",
      "Oboe": "1",
      "Clarinet": "2",
      "Bass Clarinet": "1",
      "Bassoon": "1",
      "Alto saxophones": "1"
    },
    "Brass" : {
      "Trumpet": "2",
      "Trombone": "1",
      "Tuba": "1"
    }
    "Percussions": {
      "Timpani": "1",
      "triangle": "1",
      "Cymbals": "1"
    },
    "Keyboards": {
      "Harp": "1"
    }
  }')
OrchestraComposition.create!(
  user: igor,
  name: "Concert band",
  composition: '{
    "Woodwinds": {
      "Flute" : "2",
      "Piccolo" : "1",
      "Oboe": "1",
      "Clarinet": "3",
      "Bass Clarinet": "3",
      "Bassoon": "1",
      "Alto saxophones": "2"
    },
    "Brass" : {
      "Trumpet": "4",
      "Trombone": "2",
      "Bass Trombone": "1",
      "French Horn": "2",
      "Tuba": "2"
    }
    "Percussions": {
      "Timpani": "1",
      "Snare Drum": "1",
      "Bass Drum": "1",
      "Claves": "1",
      "triangle": "1",
      "Cymbals": "1",
      "Vibraphone": "1",
      "Xylophone": "1"
    }
  }')
puts "#{OrchestraComposition.count} orchestra compositions imported. End"




puts 'End seeds'
