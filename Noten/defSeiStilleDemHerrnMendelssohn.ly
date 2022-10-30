\version "2.22.0"

orgelsystemSeiStilleDemHerrnMendelssohn = {
  <<
    \new PianoStaff <<

      \set PianoStaff.instrumentName = "Orgel"
      \set PianoStaff.shortInstrumentName = "Org."	<<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vrh" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenSeiStilleDemHerrnMendelssohn
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenSeiStilleDemHerrnMendelssohn
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "vlh" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenSeiStilleDemHerrnMendelssohn
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenSeiStilleDemHerrnMendelssohn
            }
          }

        >>

      >>
    >>
  >>

}

scoreSeiStilleDemHerrnMendelssohn = {
  <<

    \new Staff
    <<
      %\set Staff.instrumentName = "Alto"

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \altNotenSeiStilleDemHerrnMendelssohn }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \altTextSeiStilleDemHerrnMendelssohn }
      >>
    >>
    \new PianoStaff
    <<
      %\set PianoStaff.instrumentName = "Piano"

      \context Staff = "1" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPTwoVoiceOne" {  \voiceOne \klavierRHStimmeISeiStilleDemHerrnMendelssohn }
        \context Voice = "PartPTwoVoiceTwo" {  \voiceTwo \klavierRHStimmeIISeiStilleDemHerrnMendelssohn }
      >> \context Staff = "2" <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPTwoVoiceFive" {  \voiceFour \klavierLHStimmeISeiStilleDemHerrnMendelssohn }
        \context Voice = "PartPTwoVoiceSix" {  \voiceTwo \klavierLHStimmeIISeiStilleDemHerrnMendelssohn }
      >>
    >>

  >>
}