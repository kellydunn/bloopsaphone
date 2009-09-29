# Mario Kart Theme (SNES)

require 'rubygems'
require 'bloops'

b = Bloops.new
b.tempo = 160

melody_1 = b.sound Bloops::SQUARE
b.tune melody_1, <<EOF
b 4 4 4 + c 4 4 8
- 16:b + 16:c d 2 4 - b 2 4
b 4 4 4 + c 4 4 8
- 16:b + 16:c d 4 4 4 f 2 4
3:g 3:f e 3:f 3:e c
c - 8:b + 2:d 1
EOF

melody_2 = b.sound Bloops::SINE
b.tune melody_2, [
"+ 8:b 8:b 8:b 8 8:a 8:a 8:b",
"4 16:b 16:b 16 8:b 16:b 8:a + 8:c - 8:b 8:g",
"8:b 8:b 8:b 8 8:a 8:a 8:b",
"4 16:b 16:b 16 8:b 16:b 8:a + 8:c - 8:b 8:g",
"8:b 8:b 8:b 8 8:a 8:a 8:b",
"4 16:b 16:b 16 8:b 16:b 8:a + 8:c - 8:b 8:g",
"8:b 8:b 8:b 8 8:a 8:a 8:b",
"4 16:b 16:b 16 8:b 16:b 8:a + 8:c - 8:b 8:g",
"8:b 8:b 8:b 8 8:a 8:a 8:b",
"4 16:b 16:b 16 8:b 16:b 8:a + 8:c - 8:b 8:g",
"8:b 8:b 8:b 8 8:a 8:a 8:b",
"4 16:b 16:b 16 8:b 16:b 8:a + 8:c - 8:b 8:g",
].join(" ")

#bass = b.sound Bloops::SQUARE
#b.tune bass, <<EOF
#- c 2 c d 2 d e 2 e 2:f - 2:b +
#c 2 c d 2 d e 2 e 2:d - 2:b +
#c 2 c d 2 d e 2 e 2:f - 2:b +
#c 2 c d 2 d e 2 e 2:d - 2:b +
#1:c
#EOF

b.record("sonic.riff")
