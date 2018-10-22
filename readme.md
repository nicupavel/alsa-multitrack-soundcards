# ALSA Configs for multi channel audio cards

This repository holds ALSA configs for several multi channel cards that creates dsnoop devices that can be used
directly by sound recording applications like darkice, arecord etc.

Most of the multi channel cards internally have either multiple stereo inputs that needs to be split (ESI Maya/Julia) to map correct input connector to software input or a 8/16 channels on single input (Behringer FCA1616, Tascam 16x8)

## Installation
Copy the corresponding asound.conf.??? to /etc/ and reload alsa. You might need to edit hw x,y entries if you have multiple cards on your system so x points to correct card.

