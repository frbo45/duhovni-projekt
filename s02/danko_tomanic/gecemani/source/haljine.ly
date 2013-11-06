\version "2.17.29"

\header {
title = "HALJINE"
composer = "DANKO TOMANIĆ"
bpm = "120"
style = "80's POP"
titlex = "GECEMANI"
}

\include "s02.ily"

%NOTE
%\once \override Score.RehearsalMark.Y-offset = #-1.7
%\once \override Score.RehearsalMark.outside-staff-priority = #1
%\once \override Staff.BarLine.extra-spacing-width = #'(0 . 1)
note = \relative c'' {
	\key a \minor
	\mark \default
        \partial 4*3
	a8 h16 c ~ c8 c h a |
        g4 a8. g16 ~ g2|
        r4 a8 h16 c ~ c8 c h a |
        g4 a8. g16 ~ g2 |
        r4 f8 g16 a ~ a8 a g f |
        e4 a8 a ~ a2 |
        r4 f8 g a a a c ~ |
        c8 c ~ c4 r8 a4( c8 ~ |
        c8 h ~ h4) r8 g4 h8 ~ |
        h4. a8 ~ a2 |
        
        \mark \default
        r4 a8 c16 h ~ h8 a g4 |
        r4 c8 c16 h ~ h8 a gis4 |
        r8 c,8 a'16 c8. h8 a g a ~ |
        a8 e ~ e4 r2 |
        r4 a8 c16 h ~ h8 a g4 |
        r4 c8 c16 h ~ h8 a gis4 |
        r8 c,8 a'16 c8. h8 a g a ~ |
        a8 a ~ a4 r2 |
        \bar "|."
}

%AKORDI
%\once \override ChordNames.ChordName.X-offset = #2
%\set chordChanges = ##f
%\set chordChanges = ##t
akordi = \chordmode {
        \set chordChanges = ##f
        \skip4*3
        e1:m7 | a:m7 | e:m7 |
        d1:m7 | a:m7 | d:m7 | f:6 |
        g:6 | a:m7 | f2 g2 | c2 e2:7 |
        f2 g | c1 | f2 g | c e2:7 | 
        f2 g2 | a:m 
}

%HRVATSKI TEKST
lyricsAOne = \lyricmode {
}

lyricsB = \lyricmode {
}

lyricsC = \lyricmode {
}

\score {
<<
        \new ChordNames { \romanChords \transpose c c \akordi }
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
        \addlyrics { \lyricsAOne \lyricsB \lyricsC }
>>
\layout {}
}

\score {
<<
        \new ChordNames { \jazzChords \akordi }
        \new Staff { \note }
>>
\midi { \tempo 4 = 128 }
}


%{
convert-ly (GNU LilyPond) 2.17.95  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29
%}