# Markov Model To Estimate Expected Points For Volleyball Games With Limited Available Data

## Introduction

Volleyball is a game characterized by sequences of actions where

Markov models have been used many times to model the scoring probabilities of various situations in volleyball.

High school volleyball presents a challenge for modeling:

*  Touch-by-touch data does not exist in any significant quantity (in contrast to NCAA, pro, and Olympic levels).
* In fact, any data at all tends to be scarce because of the limited amount of video available to any one coach or scout, and the fact that all data collection is done by volunteers or school teachers for whom coaching is an additional duty.
* There is so much variation in team quality that many matchups are quite lopsided, meaning that, for example, an attempted block might be far more effective than against a more evenly-matched team.

This paper presents a simplified Markov model for volleyball rallies which can be fed with a comparatively small amount of rally data to identify the transition matrix.
(A different try . . .)

Every time the ball crosses the net or is hit toward the net with intent to cross it counts as a
non-terminal "state".  That state is an assessment of how the ball crossed the net.

Serve (s)
Deliberate attack (d)
Improvised attack (i)
Freeball (f)
Overpass (o)
Block (b)
First-touch attack (1)

There are two terminal states, point (p) and error (e). Both terminal states are defined with respect
to the previous state.  For example, d-e means that the team attacking errored.  d-p means that the
attacking team scored a kill, or that the defending team had a dig error, ball handling error, net
error, etc.

|to --><br>from   | s | d | i | f | o | 1 | b | e | p |
|---|---|---|---|---|---|---|---|---|---|
| s | 0.0  |   |   |   |   |   |   |   |   |
| d | 0.0  |   |   |   |   |   |   |   |   |
| i | 0.0  |   |   |   |   |   |   |   |   |
| f | 0.0  |   |   |   |   |   |   |   |   |
| o | 0.0  |   |   |   |   |   |   |   |   |
| 1 | 0.0  |   |   |   |   |   |   |   |   |
| b | 0.0  |   |   |   |   |   |   |   |   |
| e | 0.0  |0.0   | 0.0  | 0.0  | 0.0  | 0.0  |0.0   |1.0   | 0.0  |
| p | 0.0  |0.0   | 0.0  | 0.0  | 0.0  | 0.0  |0.0   |0.0   | 1.0  |

Some of these names are chosen to disassociate from existing volleyball terminology. For example, a
deliberate attack may mostly align with an in-system attack; but here we are choosing to limit it to
in-system attacks where the setter can play the ball near front-center court and choose from 3-5
possible attacks.  Improvised attacks may be technically in-system, but the setter being out of
position and thus limited in attacking choices will tend to make the nature of the resulting attack
fundamentally different from the former.

Overpass and freeball retain their normal meaning.

Blocks in this nomenclature are more like "block attempts" rather than "block kills".  Additionally,
only block attempts which result in the ball returning over the net count for this definition.  Block
attempts where the ball remains on the blockers' side are either an away-side point (for example block
error and kill for the attacker, or another ball handling error before the ball can be returned) or are played through and sent back.

First-ball hits happen most commonly after an overpass or a block.  These happen when a player makes
an attack without any preceding dig or set.  Though they are usually "improvised" in the literal
sense, they are far more likely to score a point than an improvised attack as described above.

After developing the model, you can identify the players involved between the states and distribute
credit for gain or loss of expected points evenly.

These transistion probabilities cannot be directly used as a Markov transition matrix because they
