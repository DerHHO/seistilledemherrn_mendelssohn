\version "2.22.0"

\include "dynamicparams.ly"
\include "formatangaben.ly"
\include "mergerests.ly"
\include "optionaltranspose.ly"
\include "Bezeichnungen.ly"
\include "generaldefinitions.ly"
\include "mydrums2.ly"
\include "drumdefinitions.ly"

tempTranspose = #(define-music-function (music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))


mBreak = { }

globalSeiStilleDemHerrnMendelssohn = {
  \key c\major
  \time 4/4
  \accidentalStyle piano
  \taktstil
}

ablaufzeileSeiStilleDemHerrnMendelssohn = { }

altNotenSeiStilleDemHerrnMendelssohn = \optionalTranspose \tempTranspose \relative c' {
  \globalSeiStilleDemHerrnMendelssohn
  \clef "treble"
  \autoBeamOff
  r4 r8 c8 e4 f8 d8 | % 2
  c4. c8 a'4 b8 c8 | % 3
  g2 g4 f8 e8 | % 4
  \mBreak
  f4 f8 a8 g4 c4  | % 5
  c4 ( b8 ) a8 g8 ( [ e8 ) ] f8. e16 | % 6
  e4 r8 a8 g8 ( [ e8 ) ] f8. e16 | % 7
  \mBreak e4 r8 e8 e8 ( [ c'8 ) ] b8 ( [ a8 ) ] | % 8
  g4 g8 a8 g8 ( [ e8 ) ] d8 ( [ f8 ) ]  | % 9
  f4 ( e4 ) r8 c'8 b8 a8 | \barNumberCheck #10
  \mBreak
  g4 g8 a8 e4 e8 ( [ d8 ) ] | % 11
  c4 r8 e8 d8 g8 fis8 g8 | % 12
  c4 b4. b8 a8 g16 fis16  | % 13
  \mBreak
  fis4. fis8 g8 e8 dis8 e8 | % 14
  a4 g4. g8 fis8 e16 dis16 | % 15
  dis4 r8 e8 fis8 [ g8 ] a8 [ c8 ] | % 16
  \mBreak
  b2 r8 g8 a8 c8  | % 17
  b4. b,8 g'4 a8 fis8 | % 18
  b4. e,8 g4 fis8. e16 | % 19
  \mBreak
  e4 r4 g4 fis8. e16 | \barNumberCheck #20
  e4 r8 c8 e4 f8 d8  | % 21
  c4. c8 a'4 b8 c8 | % 22
  g2 g4 f8 e8 | % 23
  \mBreak
  e4 f8 f8 bes4 a8 ( [ g8 ) ] | % 24
  g4 ( a4 ) d4 c8 b8  | % 25
  c8 ( [ e,8 ) ] g8 f8 e4 d8. ( [ g16 ) ] | % 26
  \mBreak
  g2 r8 d'8 c8 b8 | % 27
  c8 ( [ e,8 ) ] g8 f8 e4 e8 ( [ d8 ) ] | % 28
  c4 r8 c8 e4 f8 d8  | % 29
  g4 r8 c,8 e4 f8 d8 | \barNumberCheck #30
  g4. g8 c2 ~ | % 31
  c2 d,4 a'4 | % 32
  g2 d4. e8 | % 33
  c4 r4 r2 | % 34
  R1 \bar "|."
}

altTextSeiStilleDemHerrnMendelssohn =  \lyricmode {
  Sei stil -- le dem Herrn und war -- te auf ihn,
  der wird dir ge -- ben,
  was dein Herz wünscht;  sei stil -- le dem
  Herrn und war -- te auf ihn,
  der wird __ dir __ ge -- ben,
  was dein __ Herz __ wünscht,
  der wird dir ge -- ben, was dein Herz __ wünscht.
  Be -- fiehl ihm dei -- ne We -- ge und hof -- fe auf ihn,
  be -- fiehl ihm dei -- ne We -- ge und hof -- fe auf ihn.
  Steh' ab __ vom __ Zorn und lass den Grimm.
  Sei stil -- le dem Herrn und war -- te auf ihn,
  war -- te auf ihn!
  Sei stil -- le dem Herrn und war -- te auf ihn,
  der wird dir ge -- ben,
  was dein Herz __ wünscht,
  der wird dir ge -- ben, was dein Herz __ wünscht,
  Der wird dir ge -- ben, was dein Herz __ wünscht.
  Sei stil -- le dem Herrn, sei stil -- le dem Herrn,
  und war -- te, und war -- te auf ihn.
}

klavierRHStimmeISeiStilleDemHerrnMendelssohn = \optionalTranspose \tempTranspose \relative e' {
  \globalSeiStilleDemHerrnMendelssohn
  \clef "treble" \time 4/4 \key c \major | % 1
  \oneVoice
  r2 \voiceOne e4 f8 [ d8 ] | % 2
  \tieDown c8 [ e8 g8 c,8 ~ ] \voiceTwo c8 f4 f8 | % 3
  \voiceOne g2 <cis, e g>4 <d f>8 [ <cis e>8 ] | % 4
  \oneVoice <d f>8 [ <a d f>8 ] r8 <d f a>8 r8 <d f g>8 r8 <c f c'>8  | % 5
  \voiceTwo <d f>4. <c e>8 b8 [ c8 ~ <c d>8 b8 ] | % 6
  c8 [ g8 ] c4 b4 \voiceOne f'8. e16 |
  \voiceOne e8 [ g,8 ] e'4 ~ e8 [ c'8 b8 a8 ] | % 8
  g4. a8( g8 [ e8 d8 f8 ])  | % 9
  <d f>4 e8 [ e8 ] e8 [ c'8 b8 <fis a>8 ] | \barNumberCheck #10
  g4. a8 e4. d8 | % 11
  c4 r8 e8 d8 ~ [ <d g>8 fis8 g8 ] | % 12
  c4 b4. b8 [ a8 g8 ]  | % 13
  fis4 r8 fis8 g8 [ e8 dis8 e8 ] | % 14
  a4 g4. g8 [ fis8 e8 ] | % 15
  dis4. e8 <dis fis>8 [ <e g>8 <fis a>8 <g c>8 ] | % 16
  <fis b>4 <b, dis>8 [ <cis e>8 ] <dis fis>8 [ <e g>8 <fis a>8 <g c>8
  ]  | % 17
  b4. a8 g8 [ g8 ] \oneVoice r8 <a, e' fis>8 | % 18
  r8 e'8 [ b8 <c e a>8 ] <b e g>8 r8 <a b dis>8 r8 | % 19
  r8 <g e'>8 [ c8 <c e a>8 ] <b e g>8 r8 <a dis fis>8 r8 |
  \barNumberCheck #20
  r8 \change Staff = "2" \voiceOne <e c'>8 [ g8 <e c'>8 ]
  \change Staff = "1" e'4 f8 [ d8 ]  | % 21
  \voiceOne \tieDown c8 [ e8 g8 c,8 ~ ] \voiceTwo c8 f4 f8  | % 22
  \voiceOne g2 \oneVoice <cis, e g>4( <d f>8 [ <cis e>8 ]) | % 23
  \slurUp <cis e>8( [ a8 d8 f8 ] \voiceOne bes4) a8 [ g8 ] | % 24
  g8( [ c,8 f8 a8 ] d4)( c8 [ b8 ]  | % 25
  <e, c'>8) [ e8( g8 f8 ] e4)( d4) | % 26
  g8 [ c8( b8 c8) ] <d f>4( <c e>8) [ <b d>8 ] | % 27
  c8 [ e,8( g8 f8 ] e4.) d8 | % 28
  c8[ \change Staff = "2"  <e, g>8 ] s4 \change Staff = "1"
  \oneVoice r8 <g' g'>8 <c c'>4 ~ | % 29
  <c c'>4 r4 r8 <g g'>8 <c c'>4 ~ | \barNumberCheck #30
  <c c'>4 g4. f8 [ es8 d8 ] | % 31
  <a c d>2 r2 | % 32
  \voiceTwo <c e>2 d2 | % 33
  c8 [ e8 ~ <e g>8 <e g>8~ ] <e g>4 s2. %b''16 [ c16 d16 c16 ~ ] c4

}

klavierRHStimmeIISeiStilleDemHerrnMendelssohn = \optionalTranspose \tempTranspose \relative c' {
  \globalSeiStilleDemHerrnMendelssohn
  \clef "treble" \time 4/4 \key c \major
  \change Staff = "2" \voiceOne
  r8 c8 ( [ g8 c8 ) ]
  \change Staff = "1"
  \voiceTwo
  c4. b8 s2 \voiceOne
  a'4 b8 [ c8 ] | % 3
  \voiceTwo f,8 [ f8 e8 d8 ] s1.  \voiceOne r8 c'8 [ b8 a8] d,8 [ e8 ] f8. [ e16 ]
  | % 6
  e4 r8 <e a>8 <g d> \tieDown <e c>~ \voiceTwo <c a>8[ <d b>] |
  \tieNeutral
  \voiceTwo c8 [ g8 c8 <b d>8 ] c8 [ e8 <dis>8 <dis fis>8 ] | % 8
  e8 [ g,8 ] c2 b4  b8 g8  c8 d8 c8 [ e8 dis8 dis8 ] |
  \barNumberCheck #10
  e8 [ <d f>8 <c e>8 ~ <c f>8 ]
  c8[ \change Staff = "2" \voiceOne g~ ]
  <<
    { \voiceTwo g8 f | }
    \new Voice \relative b { \voiceOne b4 }
  >>
  s1 | % 12
  \voiceOne a8[ \change Staff = "1" \voiceTwo fis'8 g8 fis8 ] e4~ <e c> ~  | % 13
  <c e>8 [ <c e>8 <b d>8 <a c>8 ] b4 s4 | % 14
  fis'8 b,4 e8 c2 s1*2  | % 17
  fis4 e8 [ dis8 ] e8 [ e8 ] s4*11 c4. b8  s2 \voiceOne a'4 b8 [ c8 ] | % 22
  \voiceTwo f,8 f8 e8 [ d8 ] s2 |
  s2
  d8 ~ [ <d g>8 <c f>8 <bes e>8 ] | % 24
  e4 s4 f2  s8 c4 d8 ~ d8 c4 b8 | % 26
  <<
    { g'2 }
    \new Voice \relative c' {
      \voiceTwo c4 f8 e
    }
  >>
  \voiceTwo g4. f8 | % 27
  e8 c4 <d a>8 ~ d8 [ c8 b8 ] s8*9  s1 | \barNumberCheck #30
  s8 c8~ <bes c>4 <a c>4 <a c>4 |
  s1 |
  \voiceOne r4 c'4  \afterGrace b2( \startTrillSpan { a32 [ b ]\stopTrillSpan }
  c4.)\stopTrillSpan c8~ c8( [ e8 g8 c8 ]) | % 34
  \oneVoice \acciaccatura { b32 c d } c2. r4\fermata \bar "|."

  %\bar "|."
}

klavierLHStimmeISeiStilleDemHerrnMendelssohn = \optionalTranspose \tempTranspose \relative c, {
  \globalSeiStilleDemHerrnMendelssohn
  \clef "bass" \time 4/4 \key c \major | % 1
  <c c'>2 \voiceTwo <c' g'>2 | % 2
  \voiceOne \tieDown e8 [ g8( e8 c8)~ ] \voiceTwo c2 | % 3
  \tieNeutral
  c4. \oneVoice bes8 a2 | % 4
  \slurDown d4( c4 b4 a4  | % 5
  g2) r4 <g, g'>4 | % 6
  c4 r4 r4 <g g'>4 | % 7
  c4 r8 gis'8 <a a'>4 <b fis'>4 | % 8
  e4. <f, f'>8 \voiceTwo g4 g4  | % 9
  c4. <b gis'>8 a4 b4 | \barNumberCheck #10
  e8 [ b8 c8 f,8 ] g2 | % 11
  <c, c'>4 r4 r8 b''8 [ <a c>8 <g b>8 ] | % 12
  fis8 [ dis8 e8 d8 ] \oneVoice c4 r4  | % 13
  r4 <d, d'>4 g8 [ g'8 <fis a>8 <e g>8 ] | % 14
  dis4 e8 [ c'8 ] a2 | % 15
  \voiceTwo
  <b,, b'>2 b'2 | % 16
  b2 b2 ~  | % 17
  b8 [ a8 g8 fis8 ] e8 r8 \oneVoice <c c'>8 r8 | % 18
  <g g'>4 r8 a'8 b8 r8 b8 r8 | % 19
  c4. a8 b8 r8 b8 r8 | \barNumberCheck #20
  \voiceTwo <c, c'>2
  <<
    { <c' g'>2 }
    \new Voice \relative c {
      \voiceOne
      c4 d8 f
    }
  >>| % 21
  \voiceOne g'8 [ g8 ] bes4 <f a>4 <g b>8 [ <a c>8 ] | % 22
  \voiceTwo c,4. \oneVoice <bes, bes'>8 <a a'>2 | % 23
  <d d'>4 r4 g4 c4 | % 24
  \voiceOne bes'4( a4) b4( c8 [ d8 ]  | % 25
  \oneVoice <a c>4) <e g>8( [ <f a>8 ] g4) <f g>4 | % 26
  e8 [ e8( d8 c8)] b4( c8) [ gis8 ] | % 27
  a4( e8 [ f8 ] \voiceTwo g2) | % 28
  c1  | % 29
  c1 | \barNumberCheck #30
  \voiceOne <e g>4 \voiceTwo e,4 f2 | % 31
  \oneVoice <fis d'>2 r2 | % 32
  \voiceTwo g2 g
  c2 \oneVoice <c, c'>4 <c' e g>4 | % 34
  <c e g>2. r4\fermata \bar "|."
}

klavierLHStimmeIISeiStilleDemHerrnMendelssohn = \optionalTranspose \tempTranspose \relative e {
  \globalSeiStilleDemHerrnMendelssohn
  \clef "bass" \time 4/4 \key c \major | % 1
  s8 e4 e8 \voiceOne c4 d8 [ f8 ] | % 2
  \voiceTwo c2 \voiceOne f4( g8 [ a8 ]) | % 3
  b8 [ g8 c8 ] s8 s2 |
  s1 |
  s1*3 |
  s2
  \voiceOne e,8 [ g8 ] s4 |
  s2 a8 g fis4 |
  s1 |
  e8 g8
  \change Staff = "1" \voiceTwo c4. s8 s4 |
  s2. s4  | % 13
  s2 s1. | % 15
  \change Staff = "2" \voiceOne r8 b8 [ fis8 g8 ] a8 [ g8 fis8 e8 ] | % 16
  dis8 [ fis8 a8 g8 ] a8 [ g8 fis8 e8 ]  | % 17
  dis4 b'4 ~ b8 [ b8 ] s1*3 d,8 [ f8 ]  | % 21
  \voiceTwo c2 c2 | % 22
  \voiceOne b'4 c8 s8*13 | % 24
  \voiceTwo f,2 g2  s2*5 \voiceOne g8( [ c,8 g'8 f8 ] | % 28
  e4) <g bes>2
  <<
    {
      \voiceOne
      a8 aes
    }
    \new Voice \relative f {
      \voiceFour
      f4
    }
  >>
  | % 29
  <e g>8 [ <e g>8 ] <g bes>2
  <<
    {
      \voiceOne
      a8 aes
    }
    \new Voice \relative f {
      \voiceFour
      f4
    }
  >>
  | \barNumberCheck #30

  \voiceTwo c,4 \voiceOne c2 c4
  s1 |
  \voiceOne g'2 <f g>2 | % 33
  e8 [ g8 c8 ] s8 s2 s1 \bar "|."
}

orgelRHNotenSeiStilleDemHerrnMendelssohn = \tempTranspose \relative c' {
  \globalSeiStilleDemHerrnMendelssohn

}

orgelLHNotenSeiStilleDemHerrnMendelssohn = \tempTranspose \relative c {
  \globalSeiStilleDemHerrnMendelssohn

}

metronomZeileSeiStilleDemHerrnMendelssohn = \drummode {
}
\include "defSeiStilleDemHerrnMendelssohn.ly"

%***Arbeitspartitur
#(set-global-staff-size 17)
\book {
  \bookOutputName "SeiStilleDemHerrnMendelssohn-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreSeiStilleDemHerrnMendelssohn
  }
}

\book {
  \bookOutputName "SeiStilleDemHerrnMendelssohn-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreSeiStilleDemHerrnMendelssohn
  }
}
%Arbeitspartitur***
