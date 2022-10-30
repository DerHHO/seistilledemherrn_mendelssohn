\version "2.22.0"
#(ly:set-option 'relative-includes #t)

#(set! paper-alist (cons '("Marschbuch" . (cons (* 148.5 mm) (* 120 mm)) ) paper-alist))

#(set-global-staff-size 17)
#(set-default-paper-size "a4")

\include "../Noten/SeiStilleDemHerrnMendelssohn_Noten.ly"


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




\header {
  title = \titel
  subtitle = \untertitel
  dedication = \widmung
  composer = \komponist
  poet = \herausgeber
  arranger = \arrangeur
  tagline = \schlusszeile
  archivnummer = \archivNummerSeiStilleDemHerrnMendelssohn
  qrcode = \klavierauszugQRSeiStilleDemHerrnMendelssohn
  beistrichkomponist = \beistrichKomponistSeiStilleDemHerrnMendelssohn
  beistrichuntertitel = \beistrichUntertitelSeiStilleDemHerrnMendelssohn
  copyright = \copyrightSeiStilleDemHerrnMendelssohn
}

\book {
  \paper {  
    	indent = 0\cm
	short-indent = 0\cm

    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
right-margin = 1.3\cm
two-sided = ##f
inner-margin = 1\cm
outer-margin = 1\cm
first-page-number = 1
#(include-special-characters)
#(define page-breaking ly:page-turn-breaking)

	
}

  \bookOutputName "Klavierauszug"
  \header {
    instrument = "Klavierauszug"
  }
  %%{<firstscorespacing>%} \markup { \vspace #0.5 } %{</firstscorespacing>%}
  \score {
    \header {

    }
    \removeWithTag #'partitur
    \removeWithTag #'klingendepartitur
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'einzelstimme
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreSeiStilleDemHerrnMendelssohn

  }
  %{<ausgabenpagebreak></ausgabenpagebreak>%}

}