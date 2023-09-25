# Interesting Volleyball Research Questions

## Expected Points

Qualitatively, we believe that a deliberate attack (where the
setter has multiple attack options and chooses what she thinks
is best) is the most likely to score points or at least limit
the ability of the opponent to respond with an effective
attack.  An improvised attack is less likely to score, and a 
freeball even less.  An overpass is considered downright
likely to give up a score.

But quantitatively, it is not clear how much better or worse
each outcome is from the point of view of maximizing expected
points.

## Identifying the highest leverage skill improvements

For a bad team, the difference in the expected points between
an in-system attack and a freeball could inform their team
tactical approach and therefore how to best spend practice time.
For example, if a freeball is worth 0.1 expected points and an
out-of-system attack is worth 0.11 expected points, the team
should focus their practice time on defense--their strategy
should be to just keep the ball in play and freeball every time
waiting for their opponents to error.  However, if the expected
point values are -0.3 and +0.5 respectively, the team should
focus on the out-of-system setting and hitting because that
drastically increases their chances of scoring.

## Player evaluation

Expected points model could be used to determine "expected
points added".  What that means is this:
* Imagine an in-system attack results in an average of 0.7
  points, a freeball results in an average of -0.3 points.
* Now consider four particular in-system attacks:
  * Betty Basher hits and gets a kill.  She took a situation
    that resulted in an average of 0.7 points and actually
    got 1.0 points, an expected points added of 0.3.
  * Holly Hitter hits and the opponent has to freeball.
    She took a situation that resulted in an average of 0.7
    points and actually created a situation worth  0.3 points,
    an expected points added of -0.4.
  * Tina Tipper hits and the opponent is able to play the ball
    into an in-system attack.She took a situation that resulted
    in an average of 0.7 points and actually created a situation
    worth -0.7 points, an expected points added of -1.4.
  * Nina Novice hits into the net. She took a situation that
    resulted in an average of 0.7 points and actually created a situation worth -1.0 points, an expected points added of
    -1.7.
By examining play by play video, the transition between states
can be attributed to select players; attacks can be attributed to
setters and hitters, defense can be attributed to back row or
blockers, and the expected points added can be accumulated to
each player:
* Total expected points added can show a player's overall
  contribution to team wins and losses.
* Expected points added per rally or per touch is a measure
  of a players efficiency.
* Comparison of players' EPA/T by position can give a measure of
  best player by position (we would expect middles and liberos
  to have different average EPA/T because they do different 
  things and have drastically different numbers of touches).
* Success rate (number of times EPA is positive / touches) to
  compare across positions (i.e. if a player consistently adds
  value every touch, even if the average is low, she is doing
  well at her job).
All of these things can point to where to train up and utilize 
your own players, and where the weaker players in opposing teams
might be.

## Serve aggressiveness

* I've heard the rule of thumb that optimal service error rate is 10%.  Any more is giving up too many points, any less and the serves are too easy to play.
* There are two questions that are interesting here:
  * Are service error rate and (non-error) service outcomes correlated? In other words, is there a quantity that can be measured as "serve aggressiveness"?
  * If so, what is the optimal (i.e. resulting in the most points) service error rate?
* Can serve aggressiveness by quantified?
  * Height above net (think of this as a normal distribution, what aim point do you want to get N% of the served balls over the net)
  * Time to reach net (how hard hit, how close to the net contacted)
  * Float/topspin
  * Height of contact

## Physics of the serve

How many horizontal inches can you land a serve closer in the
opposite court for every additional vertical inch you can contact
the ball in serve?

## Team ratings

ELO based on set outcomes
ELO attributed to a particular rotation, based on rally outcomes.

## Trinsey triangle and how our girls measure up

## Open source version of datavolley

## Hypotheses of the most fertile ground for creating more points

1. Improving out-of-system/semi-system attacks / avoid freeballs (i.e. take a swing instead of just rolling it over the net) 
1. Improving freeball quality (i.e. aim for the donut or the court corners)
1. Reducing service errors even if it reduces aces.