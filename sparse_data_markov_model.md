Every time the ball crosses the net it counts as a non-terminal "state".  That state is an assessment of how the ball crossed the net.

Serve (s)
Deliberate attack (d)
Improvised attack (i)
Freeball (f)
Overpass (o)
Block (b)
First-touch attack (1)

There are two terminal states, on-side point (op) and away-side point (ap).
ap -- service error, ball did not cross net
s-ap -- service ace
s-op -- service error, ball crossed net
s-d
s-i
s-f
s-o
d-d
d-i
d-f
d-o
d-b
d-1
d-op -- attack error
d-ap -- kill (probably)
i-d
i-i
i-f
i-o
i-b
i-1
i-op -- attack error
i-ap -- kill (probably)
f-d
f-i
f-f
f-o
f-b
f-1
f-op -- freeball error
f-ap -- error (probably)
o-d
o-i
o-f
o-o
o-b
o-1
o-op -- overpass error
o-ap -- error (probably)
b-d
b-i
b-f
b-o
b-b
b-1
b-op -- block error
b-ap -- block kill (probably)
1-d
1-i
1-f
1-o
1-b
1-1
1-op -- freeball error
1-ap -- kill off overpass (probably)

Some of these names are chosen to disassociate from existing volleyball terminology. For example, a deliberate 
attack may mostly align with an in-system attack; but here we are choosing to limit it to in-system attacks where 
the setter can play the ball near front-center court and choose from 3-5 possible attacks.  Improvised attacks may 
be technically in-system, but the setter being out of position and thus limited in attacking choices will tend to make
the nature of the resulting attack fundamentally different from the former.

Overpass and freeball retain their normal meaning.

Blocks in this nomenclature are more like "block attempts" rather than "block kills".  Additionally, only block attempts which result in the ball returning over the net count for this definition.  Block attempts where the ball remains on the blockers' side are either an away-side point (for example block error and kill for the attacker, or another ball handling error before the ball can be returned) or are played through and sent back.

First-ball hits happen most commonly after an overpass or a block.  These happen when a player makes an attack without any preceding dig or set.  Though they are usually "improvised" in the literal sense, they are far more likely to score a point than an improvised attack as described above.

The on-side point and away side points are deliberately vague (not "attacker point" or "defender point" or "serving team point" or "receiving team point").  This is to be able to tell the result of an event without having the full context of the point.  For example "overpass-first ball hit-away side point" would mean the player making the first ball hit scored a point for her team.  The complement to that sequence, "overpass-first ball hit-on side point" means the power making the first touch attack hit the ball out of bounds or had a net fault.


After developing the model, you can identify the players involved between the states and distribute credit for gain or loss of expected points evenly.

These