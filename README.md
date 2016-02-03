# Starcraft2

AutoHotKey script for starcraft 2 automation of unit ordering


Requirements:

AutoHotKey https://autohotkey.com/ 
Script can be converted to a stand alone executable
This script relies on keyboard grid layout. 


Recommended:

Gaming keyboard with G1-G18 keys for additional gain in performance


Features:

(1) Automated ordering of preset terran unit compositions according to templates.  

(2) Rapid-fire warp-in for protoss

(3) Automated larva inject for zerg

(4) Lazy-cast for all races

(5) Autosearch for mineral patches


To be done:
Zerg and protoss compositions should be specified. To do so 
compositions should be listed. For instance, 

composition11:

return

should be replaced with 

composition11:

sendq=4    ; order 4 drones (drone hotkey is Q)

sendw=2    ; order 2 pairs of zerglings (zergling hotkey is W)

sende=1    ; order one overlord (overlord hotkey is E)

return     





