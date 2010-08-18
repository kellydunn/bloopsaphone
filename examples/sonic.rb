# Sonic 2 Mystic Cave Song (2-Player)

require 'rubygems'
require 'bloops'

b = Bloops.new
b.tempo = 140

melody_1 = b.sound Bloops::SQUARE
b.tune melody_1, <<EOF
b 4 4 4 + c 4 4 8
- 16:b + 16:c d 2 4 - b 2 4
b 4 4 4 + c 4 4 8
- 16:b + 16:c d 4 4 4 f 2 4
g 8 f 8 e f 8 e 8 c
c - 8:b + 2:d 1 8
b 8 a 8 g a 8 g 8 e
e 8:f 2:d 1 4
EOF

melody_2 = b.sound Bloops::SQUARE
melody_2.volume = 0.3
b.tune melody_2, "+ " + <<EOF * 8
8:b 8:b 8:b 8 12:a 24 12:a 24 8:b
4 32:b 32 32:b 32 16 16:b 16 16:b 8:a + 8:c - 8:b 8
EOF

bass = b.sound Bloops::SQUARE
b.tune bass, "- " + <<EOF * 16
8:g 8:d 8:f 16:d 32:g 32 32:g 32 32:g 32 8:d 8:f 8:d
EOF

b.record("sonic.riff")
