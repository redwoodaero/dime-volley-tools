# Markov Model To Estimate Expected Points For Volleyball Games With Limited Available Data

Notes for a potential research paper.

Markov models have been used many times to model the scoring probabilities of various situations in volleyball.

High school volleyball presents a challenge for modeling:

*  Touch-by-touch data does not exist in any significant quantity (in contrast to NCAA, pro, and Olympic levels).
* In fact, any data at all tends to be scarce because of the limited amount of video available to any one coach or scout, and the fact that all data collection is done by volunteers or school teachers for whom coaching is an additional duty.
* There is so much variation in team quality that many matchups are quite lopsided, meaning that, for example, an attempted block might be far more effective than against a more evenly-matched team.

This paper presents a simplified Markov model for volleyball rallies which can be fed with a comparatively small amount of rally data to identify the transition matrix.

Data is gathered from the Georgia High School Association 2022 AAA volleyball state tournament to ensure that matchups are relatively even, and that the level of play is high enough to avoid having randomness dominate the results.

The data gathered is used to find a transition matrix between the states.

The long term probabilities of scoring from any state are inferred using eigenvector analysis of the transition matrix.

That probability of scoring is converted into an expected point value for each state (cite VolleyDork).

The changes in expected point value from state-to-state can be attributed to specific players on each transition.  These expected point transitions are zero-sum; i.e. expected point value gained by a hitter's attack is lost by any players that attempt to block and/or dig. For certain situations, for example an error on a double hit or net violation, the gained point value is distributed to the entire opposing team.

In this way the sum total of all expected points added for every player on the team, less the number of times they served times the expected value at serve, should equal the point differential between the two teams at the end of a set.

This attribution allows coaches to much more clearly see each player's contributions toward winning or losing.  Additionally, the total expected points added, the expected points added per rally, and the expected points added per touch should be quite informative.

## Theoretical Model / Markov States

Serve

Receiving Team In-System Attack

Receiving Team Out-of-System Attack

Receiving Team Freeball

Receiving Team Overpass

Receiving Team Block

Serving Team In-System Attack

Serving Team Out-of-System Attack

Serving Team Freeball

Serving Team Overpass

Serving Team Block

Serving Team Point

Receiving Team Point

* Servers match up againts receivers
* Setters and Attackers match up againts blockers and diggers

Serving and receiving states are treated as separate to disambiguate transitions from those states to one of the terminal states.  The model is constrained so that the two are mirrors of each other. This constraint means there are fewer degrees of freedom in the model, and thus makes the model less susceptible to overfitting.

For the purposes of training the model, there are only the following

Serve

In-System Attack

Out-of-System Attack

Freeball

Overpass

Block

Serving/Attacking Team Point

Receiving/Defending Team Point

## Data Gathering

S-IS-OS-IS-IS-B-OS-F-IS-SP

S-RP (Service Error)

S-SP (Service Ace)

S-IS-OS-IS-IS-B-SP (Block error)

S-IS-OS-IS-IS-B-RP (Block kill)

## Model Training and Validation

## Analysis

## Applications


Player performance evaluation
* Own players -- who should start, when to sub
* Opposing players -- who to "pick on" with service and hits