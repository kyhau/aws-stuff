#!/bin/bash

kernel="2.6.39"
distro="xyz"
cat > example.txt << EOL
line 1, ${kernel}
line 2,
line 3, ${distro}
line 4 line
EOL

cat example.txt
rm example.txt