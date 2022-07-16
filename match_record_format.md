# Match Record Format

This project is an attempt to create an open-source set of tools for analysing volleyball matches, starting from a very basic attempt to monitor court presence, rotation and serve information, and points for/against.

The match record format is inspired by that used by [Retrosheet](https://retrosheet.org) for recording baseball games.  The file is human-readable text. Each line of the file is a set of comma-separated values representing some piece of information about the game.

Though the primary intent of this format is to express changes in the game/match state without having to reiterate the entire game state, some information will be redundant for the sake of readability and error checking.

One file may hold many matches.

* id

  Marker for the start of a new match

* info

  * hometeam

  * visteam

  * site

  * date

  * starttime

  * referee

* setstart

  homesetswon,vissetswon

* starter

  playercode,playernamestring,playerside(h/v),courtpos,playpos

  Court position 0 == on the bench

  Player code:  7 characters, all lowercase.  First 4 letters of last name, first initial, then 2-digit jersey number.

  Ex.  Mary Middle, number 99 would be "middm99";  Lisa Libero, number 5 would be "libel05"

  Play pos: S-setter, L-left side or outside hitter, M-middle, R-right-side or opposite hitter, D-defensive specialist, B-libero

* play

  serve(h/v),posserving,touchstring,point(h/v),homescore,visscore

  Data recording the outcome of a play.

  Touchstring is a reserved field to eventually record details of the rally, but the author is not yet sophisticated enough to develop play codes as in baseball.

  It seems likely that codes representing something like "high jump serve to location 6, #17 good pass to location 3, #5 low set to 9, #99 hit to 6--kill" that would record every touch, or maybe the last 3 touches before the point, etc.

* sub

  playercodein,courtpos,playercodeout

  playercodeout is redundant with pos

* libsub

  playercodein,pos,playercodeout

* timeout

  h/v

* setend

  homescore,visscore,homesetswon,vissetswon

* matchend

  homesetswon,vissetswon,set1score,set2score,set3score,set4score,set5score

  Leave spaces blank if the set was not played.

  Marks the end of a match in an event file.

* comment

  A string with any notes about the game not capturable with standard codes: injuries, challenges, ejections, etc.

* statecorrection

  Since the text format doesn't have built in constraints and makes assumptions about rules etc. this exists to get the game state substantively correct when the location of an error cannot be found.  For example, if the scorer missed a substitution and noticed 3-4 plays later that the lineup on the court doesn't match what the sheet says, this line allows that correction to happen.

  list of players by position in the game, who has serve, home rotation, vis rotation, set score, match record

* data

  Optional data fields to record match statistics, ex kills, assists, digs, errors.

