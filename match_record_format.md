# Match Record Format

This project is an attempt to create an open-source set of tools for analysing volleyball matches, starting from a very basic attempt to monitor court presence, rotation and serve information, and points for/against.

The match record format is inspired by that used by [Retrosheet](https://retrosheet.org) for recording baseball games.  The file is human-readable text. Each line of the file is a set of comma-separated values representing some piece of information about the game.

Though the primary intent of this format is to express changes in the game/match state without having to reiterate the entire game state, some information will be redundant for the sake of readability and error checking.

One file may hold many matches.

## Line types

Each line will begin with one of the words in the top level bullets below, followed by a comma, then a variable number of comma-separated fields depending upon which line type is recorded.

* `id`

  The id is the marker for the start of a new match.  It has a single field with a unique identifier for this match.  This identifier may be anything but it should be unique to ensure that any two matches are distinguishable from each other.  One possibility is a short string for the home team name followed by a dash and the date in YYYYMMDD followed by a dash and an ordinal for the 1st, 2nd, 3rd match of the day, etc.

  Example:

  ```
    id,METRO13-20220201-1
  ```

* `info`

  Info fields exist to capture metadata about the match.  The second field indicates what information is being given, and the third is the actual data.

  * `hometeam`

  Example:

  ```
    info,hometeam,METRO13
  ```

  * `visteam`

  Example:

  ```
    info,visteam,A5GWINETT13
  ```

  * `site`

  Example:

  ```
    info,site,GWCC
  ```

  * `date`

  Indicated in YYYYMMDD format.

  Example:

  ```
    info,date,20220201
  ```

  * `starttime`

  Example:

  ```
    info,starttime,4:30 PM
  ```

  * `referee`

  Example:

  ```
    info,referee,"Angel Hernandez"
  ```

* `setstart`

  Marks the start of a set.  Three additional fields note the match score and length for reference.

  Format:

  ```
  homesetswon,vissetswon,matchlength
  ```

  Example:

  ```
    setstart,1,2,5
  ```

* `starter`

  Notes the starting lineup for the set.  Optionally, may list known bench players.

  Format:

  ```
  playercode,playernamestring,playerside,courtpos,playpos
  ```

  `playercode`:  7 characters, five lowercase letters and two digits: First four letters of last name, first initial, then two-digit jersey number. For last names shorter than 4 letters, a dashes to pad the characters. For example  Mary Middle, number 99 would be "middm99";  Lisa Libero, number 5 would be "libel05"; Sun Ryu number 1 would be "ryu-s01".
  
  `playernamestring`: The player's full name, or last name and first initial, surrounded by double quotes.

  `playerside`: Either 'h' or 'v', depending if home or visitor.

  `courtpos`: A single digit, 0 thru 7.  0 denotes a player on the bench, 1-6 correspond to position in the rotation, and 7 denotes the libero.
   
   `playpos`: A single letter denoting the player's role in the rotation, if known. S-setter, O-left side or outside hitter, M-middle, R-right-side or opposite hitter, D-defensive specialist, L-libero, X-unknown.

  Example:

  ```
  starter,middm99,"Middle, Mary",h,5,M
  ```

* `play`

  serve(h/v),posserving,touchstring,point(h/v),homescore,visscore

  Data recording the outcome of a play.

  Touchstring is a reserved field to eventually record details of the rally, but the author is not yet sophisticated enough to develop play codes as in baseball.

  It seems likely that codes representing something like "high jump serve to location 6, #17 good pass to location 3, #5 low set to 9, #99 hit to 6--kill" that would record every touch, or maybe the last 3 touches before the point, etc.

* `sub`

  playercodein,courtpos,playercodeout

  playercodeout is redundant with pos

* `libsub`

  playercodein,pos,playercodeout

* `timeout`

  h/v

* `setend`

  homescore,visscore,homesetswon,vissetswon

* `matchend`

  homesetswon,vissetswon,set1score,set2score,set3score,set4score,set5score

  Leave spaces blank if the set was not played.

  Marks the end of a match in an event file.

* `comment`

  A string with any notes about the game not capturable with standard codes: injuries, challenges, ejections, etc.

* `statecorrection`

  Since the text format doesn't have built in constraints and makes assumptions about rules etc. this exists to get the game state substantively correct when the location of an error cannot be found.  For example, if the scorer missed a substitution and noticed 3-4 plays later that the lineup on the court doesn't match what the sheet says, this line allows that correction to happen.

  list of players by position in the game, who has serve, home rotation, vis rotation, set score, match record

* `data`

  Optional data fields to record match statistics, ex kills, assists, digs, errors.

