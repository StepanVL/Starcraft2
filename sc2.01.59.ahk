;=========================================================================================
;KEYS
;=========================================================================================
; scrolllock		     Suspend  
; Pause                      reload
; caps                       drag
; shift A/Z                  lift off/land                       ; changed (!)
; F8/F9                      start/stop autoproduction
; widows key                  double click (do I need it?)
; G11 and G12                jump in and out of minimap
; G7-G10                     7-0
; space                      manipulate workers
; ^left down right up        race set to z t p or printed

; Capslock+F4                      zero unit count  (fix if go for other race)
; G1-G3                      save location 1-3
; G4-G6                      load location 1-3
; printscreen                print out units
; #f  #g                      get upgrades (engineering bay/eb+armory)


; 7 and F4                    zerg inject
; numpad+                     Toggle idle worker search 
; F4 -                        zerg inject, otherwise order full batch of units (panic mode)
; F5                          confirm ordering
; F3                          get upgrades
; F8                          Start autobatching
; F9                          stop autobatching
; numpad 0                    toggle autoupgrades
; NumpadDel                    toggle worker production
; NumpadDiv                    Zerg larva
; NumpadMult                   Protoss warp in


SetKeyDelay, 30, 30
SetDefaultMouseSpeed, 0


; ` & F2   make workers  

; ` & F4      Initial get race 
; +F12      Cycle race
; ` & F6      gl hf


;=========================================================================================
;reserved keys
;=========================================================================================
;6        tmp save group
;7        zerg queens or starport/stargate
;8        factory or gateway
;9        rax or gates then robo
;0        hatcheries, cc, nex
;location 8


;=========================================================================================
;NEED TO ADD
;=========================================================================================
; protoss ordering
; zerg ordering

;=========================================
; Reload
;=========================================
Pause::
reload
sleep, 10
SetCapsLockState, AlwaysOff
return

*printscreen::
SendInput {'` Up}{Ctrl up}{Alt up}{Shift up}{capslock up}{Tab up}{Lwin up}
return

*scrolllock::Suspend


*LWin::return

RWin::return



;#IfWinActive ahk_class StarCraft II
 

Capslock::
SendInput {click middle Down}
While GetKeyState("Capslock","P") 
sleep, 10
SendInput {click middle Up}
return



$#z::
SendInput  {n}{click}
return




$#x::
SendInput  {m}{click}
return



$#c::
SendInput  {,}{click}
return



$#a::
SendInput {n}{click}
keywait, a
return

$#s::
SendInput {m}{click}
keywait, s
return

$#d::
SendInput {,}{click}
keywait, d
return


#F1::
race = 1
mysleepmain=10
mysleepafter=30
SoundBeep, 1000, 100
return

#F2::
race = 2
mysleepmain=10
mysleepafter=30
SoundBeep, 1000, 100
Sleep, 400
SoundBeep, 1000, 100
return

#F3::
race = 3
mysleepmain=10
mysleepafter=30
SoundBeep, 1000, 100
Sleep, 400
SoundBeep, 1000, 100
Sleep, 400
SoundBeep, 1000, 100
return








` & F6::
SendInput  {Enter}{h}{i}{Enter}
Sleep, 2000
SendInput  {Enter}^{tab}{g}{l}{space}{h}{f}{Enter}
Sleep, 10
return






`::
SendInput {0}{NumpadDiv}{NumpadMult}
return



` & 1::
SendInput {home}{PgUp}{0}{NumpadDiv}{u}{End}{PgDn}
keywait, 1
return

` & 2::
SendInput {home}{PgUp}{0}{NumpadDiv}{u 2}{End}{PgDn}
keywait, 2
return

` & 3::
SendInput {home}{PgUp}{0}{NumpadDiv}{u 3}{End}{PgDn}
keywait, 3
return

` & 4::
SendInput {home}{PgUp}{0}{NumpadDiv}{u 4}{End}{PgDn}
keywait, 4
return

` & 5::
SendInput {home}{PgUp}{0}{NumpadDiv}{u 5}{End}{PgDn}
keywait, 5
return

` & 6::
SendInput {home}{PgUp}{0}{NumpadDiv}{u 6}{End}{PgDn}
keywait, 6
return





` & q::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		While GetKeyState("q","P"){ 
		Sleep, %mysleepmain%
		Send {u}
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 2 ){
	SendInput {home}{PgUp}{9}
		While GetKeyState("q","P"){ 
		Sleep, %mysleepmain%
		Send {u}
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 3 ){
	SendInput {9}{NumpadMult} 
		While GetKeyState("q","P"){ 
		Sleep, %mysleepmain%
		Send {u}{click}
		}
		Send {esc}
	}
return
	
	




` & w::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		While GetKeyState("w","P"){
		Sleep, %mysleepmain%
		Send {i}
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 2 ){
	SendInput {home}{PgUp}{9}
		While GetKeyState("w","P"){ 
		Sleep, %mysleepmain%
		Send {i}
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 3 ){
	SendInput {9}{NumpadMult} 
		While GetKeyState("w","P"){ 
		Sleep, %mysleepmain%
		Send {i}{click} 
		}
	Send {esc}
	}
return
	

	
` & e::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		While GetKeyState("e","P"){ 
		Sleep, %mysleepmain%
		Send {o} 
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 2 ){
	SendInput {home}{PgUp}{9}
		While GetKeyState("e","P"){ 
		Sleep, %mysleepmain%
		Send {o} 
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 3 ){
	SendInput {9}{NumpadMult} 
		While GetKeyState("e","P"){ 
		Sleep, %mysleepmain%
		Send {o}{click}                     
		}
		Send {esc}		
	}
return	
	
` & r::                       
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		While GetKeyState("r","P"){ 
		Sleep, %mysleepmain%
		Send {p} 
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 2 ){
	SendInput {home}{PgUp}{9}
		While GetKeyState("r","P"){ 
		Sleep, %mysleepmain%
		Send {p}
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 3 ){
	SendInput {9}{NumpadMult} 
		While GetKeyState("r","P"){ 
		Sleep, %mysleepmain%
		Send {p}{click}                        
		}
		Send {esc}
	}
return		
	
` & t::                 
if (race == 1 ){                    ; zerg inject 
	SendInput {home}{PgUp}{7}{backspace} 
	While GetKeyState("t","P"){
		Sleep, 80
		Send {x}{Click 960, 435  left}{backspace} 
		}
	sleep, %mysleepafter%
	SendInput  {x up}{End}{PgDn}              
	}
if (race == 2 ){
	SendInput {home}{PgUp}{9}
		While GetKeyState("t","P"){ 
		Sleep, %mysleepmain%
		Send {[} 
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
if (race == 3 ){
	SendInput {9}{NumpadMult} 
		While GetKeyState("t","P"){ 
		Sleep, %mysleepmain%
		Send {[}{click}                        
		}
		Send {esc}
	}
return	

` & a::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race ==2 or race == 3){
	SendInput {home}{PgUp}{8}
		}
While GetKeyState("a","P"){ 
	Sleep, %mysleepmain%  
	Send {j}
	}
sleep, %mysleepafter%
SendInput {End}{PgDn}
return


` & s::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race ==2 or race == 3){
	SendInput {home}{PgUp}{8}
		}

While GetKeyState("s","P"){ 
	Sleep, %mysleepmain%  
	Send {k}
	}
sleep, %mysleepafter%
SendInput {End}{PgDn}
return


` & d::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race ==2 or race == 3){
	SendInput {home}{PgUp}{8}
		}

While GetKeyState("d","P"){ 
	Sleep, %mysleepmain%  
	Send {l}
	}
sleep, %mysleepafter%
SendInput {End}{PgDn}
return


` & f::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race ==2 or race == 3){
	SendInput {home}{PgUp}{8}
		}

While GetKeyState("f","P"){ 
	Sleep, %mysleepmain%  
	Send {`;}
	}
sleep, %mysleepafter%
SendInput {End}{PgDn}
return




` & g::
if (race == 1 ){           ; build evo chamber on enemy expo
sendinput {Esc}
Sleep, 120
send {b}
Sleep, 120
send {b}
Sleep, 120
send {s}
Sleep, 120
send {s}
Sleep, 120
send {click left 960, 445}
Sleep, 120
send {click left 960, 445}
	}
if (race == 2 0r race == 3){
	SendInput {home}{PgUp}{8}
		While GetKeyState("g","P")
		{ 
		Sleep, %mysleepmain%
		Send {'} 
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
	}
return

` & z::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race == 2 or race == 3){
		SendInput {home}{PgUp}{7}
		}

		While GetKeyState("z","P"){ 
		Sleep, %mysleepmain%
		Send {n}  
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
return


` & x::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race == 2 or race == 3){
		SendInput {home}{PgUp}{7}
		}

		While GetKeyState("x","P"){ 
		Sleep, %mysleepmain%
		Send {m}  
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
return



` & c::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race == 2 or race == 3){
		SendInput {home}{PgUp}{7}
		}

		While GetKeyState("c","P"){ 
		Sleep, %mysleepmain%
		Send {,}  
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
return

` & v::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race == 2 or race == 3){
		SendInput {home}{PgUp}{7}
		}

		While GetKeyState("v","P"){ 
		Sleep, %mysleepmain%
		Send {.}  
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
return


` & b::
if (race == 1 ){
	SendInput {home}{PgUp}{0}{NumpadDiv}
		}
if (race == 2 or race == 3){
		SendInput {home}{PgUp}{7}
		}

		While GetKeyState("b","P"){ 
		Sleep, %mysleepmain%
		Send {/}  
		}
	sleep, %mysleepafter%
	SendInput {End}{PgDn}
return



` &  F11::
Found1X = 0
Found1Y = 0
firsttime=1
stop = 1
server=0

loop, 5
{
CoordMode Pixel
ImageSearch, Found1X, Found1Y,  1, 1, 1919, 1079, *120 K:\samples\portraitE.bmp
if (Found1X > 0){
	server:="E"
    	SoundBeep 1000, 100
	Sleep, 50 
	SoundBeep 1000, 100
		}

if Found1X > 0
            break
Sleep, 500
CoordMode Pixel
ImageSearch, Found1X, Found1Y,  1, 1, 1919, 1079, *120 K:\samples\portraitUS.bmp
if (Found1X > 0){
	server:="US"
    	SoundBeep 1000, 100
	Sleep, 50 
	SoundBeep 1000, 100
	Sleep, 50 
	SoundBeep 1000, 100
		}

if Found1X > 0
            break
Sleep, 500
      }
if (Found1X == 0){
soundbeep, 1000, 300
}
else{
Found2X := Found1X + 100
Found2Y := Found1Y + 100
Found3Y+=0
Found3Y+=0
ready=0

loop,
{
CoordMode Pixel
ImageSearch, Found3X, Found3Y,  Found1X, Found1Y, Found2X, Found2Y, *120 K:\samples\portrait%server%.bmp
Sleep, 50
if (ErrorLevel > 0){
ready+=1
}
else{
ready=0
}
if ready > 2
            break
}
Gosub, gamestart
}
return


` & F4::
Gosub, gamestart
return








;======================
; jump in and out of minimap G11 and G12
;======================

^Numpad4::SendInput {Click, 150, 945 0}
^Numpad5::SendInput {Click, 990, 405 0}









;==================
; zero all unit counts (redundant)
;==================






Numpad1::
race+=0
stop = 1
Gosub, composition0%race%
composition=1
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 100
}
stop=0
Gosub, startproduction
return

Numpad2::
race+=0
stop = 1
Gosub, composition0%race%
composition=2
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
}
stop=0
Gosub, startproduction
return

Numpad3::
race+=0
stop = 1
Gosub, composition0%race%
composition=3
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
}
stop=0
Gosub, startproduction
return

Numpad4::
race+=0
stop = 1
Gosub, composition0%race%
composition=4
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
}
stop=0
Gosub, startproduction
return

Numpad5::
race+=0
stop = 1
Gosub, composition0%race%
composition=5
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 900, 100
Sleep, 200
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 200
}
stop=0
Gosub, startproduction
return

Numpad6::
race+=0
stop = 1
Gosub, composition0%race%
composition=6
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 200
Sleep, 100
SoundBeep, 1000, 100
}
stop=0
Gosub, startproduction
return

Numpad7::
race+=0
stop = 1
Gosub, composition0%race%
composition=7
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 200
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
}
stop=0
Gosub, startproduction
return

Numpad8::
race+=0
stop = 1
Gosub, composition0%race%
composition=8
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 200
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1000, 100
}
stop=0
Gosub, startproduction
return

Numpad9::
race+=0
stop = 1
Gosub, composition0%race%
composition=9
if (race >=1 ){
Gosub, composition%composition%%race%
SoundBeep, 800, 100
Sleep, 100
SoundBeep, 1000, 300
}
stop=0
Gosub, startproduction
return





NumpadDel::
stop+=0
race+=0
stoptmp := %stop%
sendn+=0
stop = 1
sendn := sendn > 0 ? 0 : 3

if (sendn>0){
SoundBeep, 1000, 100
Sleep, 100
SoundBeep, 1100, 100
}
if (sendn==0){
SoundBeep, 1000, 100
}
if (stoptmp == 0 ){
stop = 0 
if ( race == 2 ){
Gosub, terranstart
}
if ( race == 3){
Gosub, protossstart
}
Gosub, firstbatch
Gosub, mainmanual
}
return

Numpad0::
race+=0
stop+=0
stoptmp := %stop%
upgrades+=0
stop = 1
upgrades := upgrades==1 ? 0 : 1
SoundBeep, 500+450*upgrades, 100
if (stoptmp == 0 ){
stop = 0 
if ( race == 2 ){
Gosub, terranstart
}
if ( race == 3){
Gosub, protossstart
}
Gosub, firstbatch
Gosub, mainmanual
}

return







;===============================================================================
;Unit dialing begins
;===============================================================================

;======================
; pass key if unmodified
;======================

$u::Send {u}
$i::Send {i}
$o::Send {o}
$p::Send {p}
$[::Send {[}
$]::Send {]}
$j::Send {j}
$k::Send {k}
$l::Send {l}
$n::Send {n}
$m::Send {m}
$,::Send {,}
$.::Send {.}
$/::Send {/}
$'::Send {'}
`;::SendInput {`;}


space:: Send {space}
Shift & /:: Send {?} 
Shift & [:: Send {{}
Shift & ]:: Send {}}
    


;======================
; set unit comositon
;======================             
u & 0::sendq=0
u & 1::sendq=1
u & 2::sendq=2
u & 3::sendq=3
u & 4::sendq=4
u & 5::sendq=5
u & 6::sendq=6
u & 7::sendq=7
u & 8::sendq=8
u & 9::sendq=9
u & -::sendq+=-1
u & =::sendq+=1

i & 0::sendw=0
i & 1::sendw=1
i & 2::sendw=2
i & 3::sendw=3
i & 4::sendw=4
i & 5::sendw=5
i & 6::sendw=6
i & 7::sendw=7
i & 8::sendw=8
i & 9::sendw=9

o & 0::sende=0
o & 1::sende=1
o & 2::sende=2
o & 3::sende=3
o & 4::sende=4
o & 5::sende=5
o & 6::sende=6
o & 7::sende=7
o & 8::sende=8
o & 9::sende=9
 
p & 0::sendr=0
p & 1::sendr=1
p & 2::sendr=2
p & 3::sendr=3
p & 4::sendr=4
p & 5::sendr=5
p & 6::sendr=6
p & 7::sendr=7
p & 8::sendr=8
p & 9::sendr=9
 
j & 0::senda=0
j & 1::senda=1
j & 2::senda=2
j & 3::senda=3
j & 4::senda=4
j & 5::senda=5
j & 6::senda=6
j & 7::senda=7
j & 8::senda=8
j & 9::senda=9
 
k & 0::sends=0
k & 1::sends=1
k & 2::sends=2
k & 3::sends=3
k & 4::sends=4
k & 5::sends=5
k & 6::sends=6
k & 7::sends=7
k & 8::sends=8
k & 9::sends=9

l & 0::sendd=0
l & 1::sendd=1
l & 2::sendd=2
l & 3::sendd=3
l & 4::sendd=4
l & 5::sendd=5
l & 6::sendd=6
l & 7::sendd=7
l & 8::sendd=8
l & 9::sendd=9


`; & 0::sendf=0
`; & 1::sendf=1
`; & 2::sendf=2
`; & 3::sendf=3
`; & 4::sendf=4
`; & 5::sendf=5
`; & 6::sendf=6
`; & 7::sendf=7
`; & 8::sendf=8
`; & 9::sendf=9

' & 0::sendg=0
' & 1::sendg=1
' & 2::sendg=2
' & 3::sendg=3
' & 4::sendg=4
' & 5::sendg=5
' & 6::sendg=6
' & 7::sendg=7
' & 8::sendg=8
' & 9::sendg=9

n & 0::sendz=0
n & 1::sendz=1
n & 2::sendz=2
n & 3::sendz=3
n & 4::sendz=4
n & 5::sendz=5
n & 6::sendz=6
n & 7::sendz=7
n & 8::sendz=8
n & 9::sendz=9

m & 0::sendx=0
m & 1::sendx=1
m & 2::sendx=2
m & 3::sendx=3
m & 4::sendx=4
m & 5::sendx=5
m & 6::sendx=6
m & 7::sendx=7
m & 8::sendx=8
m & 9::sendx=9

, & 0::sendc=0
, & 1::sendc=1
, & 2::sendc=2
, & 3::sendc=3
, & 4::sendc=4
, & 5::sendc=5
, & 6::sendc=6
, & 7::sendc=7
, & 8::sendc=8
, & 9::sendc=9

. & 0::sendv=0
. & 1::sendv=1
. & 2::sendv=2
. & 3::sendv=3
. & 4::sendv=4
. & 5::sendv=5
. & 6::sendv=6
. & 7::sendv=7
. & 8::sendv=8
. & 9::sendv=9
          
/ & 0::sendb=0
/ & 1::sendb=1
/ & 2::sendb=2
/ & 3::sendb=3
/ & 4::sendb=4
/ & 5::sendb=5
/ & 6::sendb=6
/ & 7::sendb=7
/ & 8::sendb=8
/ & 9::sendb=9 

space & 0::sendn=0
space & 1::sendn=1
space & 2::sendn=2
space & 3::sendn=3
space & 4::sendn=4
space & 5::sendn=5
space & 6::sendn=6
space & 7::sendn=7
space & 8::sendn=8
space & 9::sendn=9




^F8::
startbeep+=0
startbeep := startbeep > 0 ? 0 : 1
loop
{
SoundBeep, 1000, 30
sleep, 40
SoundBeep, 2000, 30
sleep, 19900
if startbeep = 1
break
}
return

                                                           

;============================
;autoproduce
;============================   
F8::
stop+= 0
stop := stop > 0 ? 0 : 1
if (stop==1){
SoundBeep, 1200, 100
sleep, 30
SoundBeep, 800, 100
}
else{
SoundBeep, 1000, 100
sleep, 30
SoundBeep, 1200, 100
}
Gosub, startproduction
return

startproduction:
if (race == 1 ){

Gosub, zergmain
}


if (race == 2 ){
Gosub, terranstart
Gosub, firstbatch
Gosub, mainmanual
}
if (race == 3 ){
Gosub, firstbatch
Gosub, mainmanual
}
return

zergmain:
loop
{
SoundBeep, 750, 10
sleep, 10
SoundBeep, 750, 10
sleep, 10
Sleep, 30000
if stop == 1
break
}
return


;============================Protoss=================================


protossstart:
qtime := 38    ; zeal
wtime := 37    ; sentry
etime := 42    ; stalker
rtime := 55    ; ht
ttime := 55    ; dt                     
atime := 30    ; obs
stime := 50    ; prism
dtime := 55    ; immortal
ftime := 75    ; col
gtime := 99999  ; no such unit                          
ztime := 35    ; nix
xtime := 50    ; oracle
ctime := 60    ; void ray
vtime := 60    ; tempest
btime := 120   ;carrier
ntime := 17    ;probe
sendn+=0
sendq+=0
sendw+=0
sende+=0
sendr+=0
sendt+=0
senda+=0
sends+=0
sendd+=0
sendf+=0
sendg+=0 
sendz+=0 
sendx+=0
sendc+=0 
sendv+=0 
sendb+=0 

sendn1+=0
sendq1+=0
sendw1+=0
sende1+=0
sendr1+=0
sendt1+=0
senda1+=0
sends1+=0
sendd1+=0
sendf1+=0
sendg1+=0 
sendz1+=0 
sendx1+=0
sendc1+=0 
sendv1+=0 
sendb1+=0
return







;============================Terran=================================


terranstart:
qtime := 25
wtime := 30
etime := 45
rtime := 40
ttime := 50                            ;fix this!!
atime := 30
stime := 45
dtime := 60
ftime := 40
gtime := 50                            ;fix this!!
ztime := 42
xtime := 42
ctime := 60
vtime := 60
btime := 90
ntime := 17    ;scv
sendn+=0
sendq+=0
sendw+=0
sende+=0
sendr+=0
sendt+=0
senda+=0
sends+=0
sendd+=0
sendf+=0
sendg+=0 
sendz+=0 
sendx+=0
sendc+=0 
sendv+=0 
sendb+=0 

sendn1+=0
sendq1+=0
sendw1+=0
sende1+=0
sendr1+=0
sendt1+=0
senda1+=0
sends1+=0
sendd1+=0
sendf1+=0
sendg1+=0 
sendz1+=0 
sendx1+=0
sendc1+=0 
sendv1+=0 
sendb1+=0
return





;=====================================================================================================================
; FIRST BATCH
;===================================================================================================================== 

firstbatch:
SoundBeep, 750, 100


sendstring01:="{home}{PgUp}"
sendstring02:=""
sendstring03:=""

sum8 := ( senda + sends + sendd + sendf + sendg ) * 10
sum8+=0

if (sum8 >= 1){
tmpstring01 := ""
loop, %senda%
{
tmpstring01 := tmpstring01  . "j0"
}
loop, %sends%
{
tmpstring01 := tmpstring01  . "k0"
}
loop, %sendd%
{
tmpstring01 := tmpstring01  . "l0"
}
loop, %sendf%
{
tmpstring01 := tmpstring01  . ";0"
}
loop, %sendg%
{
tmpstring01 := tmpstring01  . "'0"
}
Sort tmpstring01, Random D0  
tmpstring02 := RegExReplace( tmpstring01 , "0", "")

sendstring01 := sendstring01 . "8" . tmpstring02

}

sum7 := ( sendz + sendx + sendc + sendv + sendb )* 10  
sum7+=0

if (sum7 >= 1){
tmpstring01 := ""
loop, %sendz%
{
tmpstring01 := tmpstring01  . "n0"
}
loop, %sendx%
{
tmpstring01 := tmpstring01  . "m0"
}
loop, %sendc%
{
tmpstring01 := tmpstring01  . ",0"
}
loop, %sendv%
{
tmpstring01 := tmpstring01  . ".0"
}
loop, %sendb%
{
tmpstring01 := tmpstring01  . "/0"
}
Sort tmpstring01, Random D0  
tmpstring02 := RegExReplace( tmpstring01 , "0", "")

sendstring01 := sendstring01 . "7" . tmpstring02

}
sum78 := sum7 + sum8

sum9 := ( sendq + sendw + sende + sendr + sendt ) * 10
sum9+=0

if (sum9 >= 1){
tmpstring01 := ""
loop, %sendq%
{
tmpstring01 := tmpstring01  . "u0"
}
loop, %sendw%
{
tmpstring01 := tmpstring01  . "i0"
}
loop, %sende%
{
tmpstring01 := tmpstring01  . "o0"
}
loop, %sendr%
{
tmpstring01 := tmpstring01  . "p0"
}
loop, %sendt%
{
tmpstring01 := tmpstring01  . "[0"
}
Sort tmpstring01, Random D0  
tmpstring02 := RegExReplace( tmpstring01 , "0", "")

sendstring02 := sendstring02 . "9" . tmpstring02

}


if ( sendn >= 1){
sendstring03 := "{0}{q " . sendn . "}"
}


sendstring03 := sendstring03 . "{End}{PgDn}"


Send %sendstring01%
Send %sendstring02%
SendInput %sendstring03%
return




;============================Terran manual buy=================================
mainmanual:
autobuy = 0
count = 0
 Loop
{
   If stop == 1
      Break 

Sleep, 3000

   If stop == 1
      Break 
count+=1

sendq2:= Floor((count * sendq *  3 * 1.38 )/qtime) - Floor(((count-1) * sendq *  3 * 1.38 )/qtime)
sendw2:= Floor((count * sendw *  3 * 1.38 )/wtime) - Floor(((count-1) * sendw *  3 * 1.38 )/wtime)
sende2:= Floor((count * sende *  3 * 1.38 )/etime) - Floor(((count-1) * sende *  3 * 1.38 )/etime)
sendr2:= Floor((count * sendr *  3 * 1.38 )/rtime) - Floor(((count-1) * sendr *  3 * 1.38 )/rtime)
sendt2:= Floor((count * sendt *  3 * 1.38 )/ttime) - Floor(((count-1) * sendt *  3 * 1.38 )/ttime)
sendy2:= Floor((count * sendy *  3 * 1.38 )/ytime) - Floor(((count-1) * sendy *  3 * 1.38 )/ytime)
senda2:= Floor((count * senda *  3 * 1.38 )/atime) - Floor(((count-1) * senda *  3 * 1.38 )/atime)
sends2:= Floor((count * sends *  3 * 1.38 )/stime) - Floor(((count-1) * sends *  3 * 1.38 )/stime)
sendd2:= Floor((count * sendd *  3 * 1.38 )/dtime) - Floor(((count-1) * sendd *  3 * 1.38 )/dtime)
sendf2:= Floor((count * sendf *  3 * 1.38 )/ftime) - Floor(((count-1) * sendf *  3 * 1.38 )/ftime)
sendg2:= Floor((count * sendg *  3 * 1.38 )/gtime) - Floor(((count-1) * sendg *  3 * 1.38 )/gtime)
sendz2:= Floor((count * sendz *  3 * 1.38 )/ztime) - Floor(((count-1) * sendz *  3 * 1.38 )/ztime)
sendx2:= Floor((count * sendx *  3 * 1.38 )/xtime) - Floor(((count-1) * sendx *  3 * 1.38 )/xtime)
sendc2:= Floor((count * sendc *  3 * 1.38 )/ctime) - Floor(((count-1) * sendc *  3 * 1.38 )/ctime)
sendv2:= Floor((count * sendv *  3 * 1.38 )/vtime) - Floor(((count-1) * sendv *  3 * 1.38 )/vtime)
sendb2:= Floor((count * sendb *  3 * 1.38 )/btime) - Floor(((count-1) * sendb *  3 * 1.38 )/btime)
sendn2:= Floor((count * sendn *  3 * 1.38 )/ntime) - Floor(((count-1) * sendn *  3 * 1.38 )/ntime)



sendn1+=sendn2
sendq1+=sendq2
sendw1+=sendw2
sende1+=sende2
sendr1+=sendr2
sendt1+=sendt2
senda1+=senda2
sends1+=sends2
sendd1+=sendd2
sendf1+=sendf2
sendg1+=sendg2
sendz1+=sendz2
sendx1+=sendx2
sendc1+=sendc2
sendv1+=sendv2
sendb1+=sendb2


sendn1 := sendn1 > 1.5*sendn ? 1.5*sendn : sendn1
sendq1 := sendq1 > 1.5*sendq ? 1.5*sendq : sendq1
sendw1 := sendw1 > 1.5*sendw ? 1.5*sendw : sendw1
sende1 := sende1 > 1.5*sende ? 1.5*sende : sende1
sendr1 := sendr1 > 1.5*sendr ? 1.5*sendr : sendr1
sendt1 := sendt1 > 1.5*sendt ? 1.5*sendt : sendt1

senda1 := senda1 > 1.5*senda ? 1.5*senda : senda1
sends1 := sends1 > 1.5*sends ? 1.5*sends : sends1
sendd1 := sendd1 > 1.5*sendd ? 1.5*sendd : sendd1
sendf1 := sendf1 > 1.5*sendf ? 1.5*sendf : sendf1
sendg1 := sendg1 > 1.5*sendg ? 1.5*sendg : sendg1

sendz1 := sendz1 > 1.5*sendz ? 1.5*sendz : sendz1
sendx1 := sendx1 > 1.5*sendx ? 1.5*sendx : sendx1
sendc1 := sendc1 > 1.5*sendc ? 1.5*sendc : sendc1
sendv1 := sendv1 > 1.5*sendv ? 1.5*sendv : sendv1
sendb1 := sendb1 > 1.5*sendb ? 1.5*sendb : sendb1





newbatch = senda2 + sends2 + sendd2 + sendf2 + sendg2 + sendz2 + sendx2 + sendc2 + sendv2 + sendb2 + sendq2 + sendw2 + sende2 + sendr2 + sendt2 + sendn2 
combobatch = senda1 + sends1 + sendd1 + sendf1 + sendg1 + sendz1 + sendx1 + sendc1 + sendv1 + sendb1 + sendq1 + sendw1 + sende1 + sendr1 + sendt1 + sendn1 + upgrades



sendstring := "{home}{PgUp}"
sendstring1 := ""
sendstring2 := ""

sum8 := senda1 + sends1 + sendd1 + sendf1 + sendg1 
sum8+=0

if (sum8 >= 1){
tmpstring := ""
loop, %senda1%
{
tmpstring := tmpstring  . "j0"
}
loop, %sends1%
{
tmpstring := tmpstring  . "k0"
}
loop, %sendd1%
{
tmpstring := tmpstring  . "l0"
}
loop, %sendf1%
{
tmpstring := tmpstring  . ";0"
}
loop, %sendg1%
{
tmpstring := tmpstring  . "'0"
}
Sort tmpstring, Random D0  
tmpstring1 := RegExReplace( tmpstring , "0", "")

sendstring1 := "8" . tmpstring1 . "5"

}

sum7 := sendz1 + sendx1 + sendc1 + sendv1 + sendb1 
sum7+=0

if (sum7 >= 1){
tmpstring := ""
loop, %sendz1%
{
tmpstring := tmpstring  . "n0"
}
loop, %sendx1%
{
tmpstring := tmpstring  . "m0"
}
loop, %sendc1%
{
tmpstring := tmpstring  . ",0"
}
loop, %sendv1%
{
tmpstring := tmpstring  . ".0"
}
loop, %sendb1%
{
tmpstring := tmpstring  . "/0"
}
Sort tmpstring, Random D0  
tmpstring1 := RegExReplace( tmpstring , "0", "")

sendstring1 := sendstring1 . "7" . tmpstring1 .  "5"

}

sum9 := sendq1 + sendw1 + sende1 + sendr1 + sendt1 
sum9+=0

if (sum9 >= 1){
tmpstring := ""
loop, %sendq1%
{
tmpstring := tmpstring  . "u0"
}
loop, %sendw1%
{
tmpstring := tmpstring  . "i0"
}
loop, %sende1%
{
tmpstring := tmpstring  . "o0"
}
loop, %sendr1%
{
tmpstring := tmpstring  . "p0"
}
loop, %sendt1%
{
tmpstring := tmpstring  . "[0"
}
Sort tmpstring, Random D0  
tmpstring1 := RegExReplace( tmpstring , "0", "")

sendstring1 := sendstring1 . "9" . tmpstring1  . "5"

}



Sort sendstring1, Random D5 
sendstring1 := RegExReplace( sendstring1 , "5", "")


if ( sendn >= 1){
sendstring2 := "{0}{q " . sendn . "}"
}


upsstring:=""
if (combobatch > 0 ){
upsstring := sendn >= 1 ? upsstring : "{0}"
weaponorarmor+=0

woa := Mod(weaponorarmor,2)==0 ? "q" : "w"

upsstring:= upsstring . "{tab}{" . %woa% . "}{tab}{" . %woa% . "}"
weaponorarmor := weaponorarmor==0 ? 1 : 0
sendstring2 := sendstring2 . upsstring
}
sendstring2 := sendstring2 . "{End}{PgDn}"


if ( Mod(count,4) == 0 && newbatch > 0 ){
SoundBeep, 1000, 120
SoundBeep, 1100, 120
SoundBeep, 1200, 120
}

}
return







;==============================
;Terran subs ended
;==============================




gamestart:
mysleepmain=10
mysleepafter=30

stopidle=0
stop = 1
upgrades = 0
SendInput  {backspace}
Sleep, 40
SendInput  {backspace}{Click 960, 410}{Click 960, 450}+{0}{Numpaddiv}{q}{q}
Sleep,0
SendInput  {backspace}{Click 920, 410}{Click 1010, 400}+{0}{Numpaddiv}{q}{q}
idleworker=0
idleworkertmp=0
race=0

loop, 6
{
Sleep, 1000
race  = 0


CoordMode Pixel
ImageSearch, FoundX, FoundY,  15, 765, 36, 786, *50 K:\samples\z.jpg
if (ErrorLevel < 0.5 ){
       race = 1
       SoundBeep, 1000, 100
       idleworker = 0
      }
if ( race < 0.5  ){

ImageSearch, FoundX, FoundY,  15, 765, 36, 786, *50 K:\samples\t.jpg
if (ErrorLevel < 0.5 ){
race = 2
SoundBeep, 1000, 100
Sleep, 400
SoundBeep, 1000, 100
idleworker = 0
      }
      }
if ( race < 0.5  ){
ImageSearch, FoundX, FoundY,  15, 765, 36, 786, *50 K:\samples\p.jpg
if (ErrorLevel < 0.5 ){
race = 3
SoundBeep, 1000, 100
Sleep, 400
SoundBeep, 1000, 100
Sleep, 400
SoundBeep, 1000, 100
idleworker = 0
      }                           
      }

if race > 0.5
                  break
}



if ( race < 0.5  ){
SoundBeep, 1000, 100
Sleep, 200
SoundBeep, 1000, 100
Sleep, 200
SoundBeep, 1000, 100
Sleep, 200
SoundBeep, 1000, 100
}

if ( race >= 2 ) {
sendn=2
sendq=0
sendw=0
sende=0
sendr=0
sendt=0
senda=0
sends=0
sendd=0
sendf=0
sendg=0 
sendz=0 
sendx=0
sendc=0 
sendv=0 
sendb=0 
}
firsttime+=0
if (firsttime == 1){
;Sleep, 2000
;Sendinput  {Enter}{h}{i}{Enter}
Sleep, 2000
Sendinput  {Enter}{Tab}{g}{l}{space}{h}{f}{Enter}
}
;Random, rand, 2000, 4000
;Sleep, %Rand%
;SendInput {Enter}{g}{l}{space}{h}{f}{Enter}
return


F4::
Gosub, firstbatch
return

F5::
Send %sendstring%
Send %sendstring1%
Send %sendstring2%
sendn1=0
sendq1=0
sendw1=0
sende1=0
sendr1=0
sendt1=0
senda1=0
sends1=0
sendd1=0
sendf1=0
sendg1=0
sendz1=0
sendx1=0
sendc1=0
sendv1=0
sendb1=0
sendn2=0
sendq2=0
sendw2=0
sende2=0
sendr2=0
sendt2=0
senda2=0
sends2=0
sendd2=0
sendf2=0
sendg2=0
sendz2=0
sendx2=0
sendc2=0
sendv2=0
sendb2=0
return



F6::
sendq=0
sendw=0
sende=0
sendr=0
sendt=0
senda=0
sends=0
sendd=0
sendz=0
sendx=0
sendc=0
sendv=0
sendn=0
return








;========================
;Race not set
;========================

composition00: 
SoundBeep, 1000, 100
Sleep, 200
SoundBeep, 1000, 100
Sleep, 200
SoundBeep, 1000, 100
Sleep, 200
SoundBeep, 1000, 100
return



;========================
;reset units
;========================

composition0:
sendn+=0
sendq=0
sendw=0
sende=0
sendr=0
sendt=0
senda=0
sends=0
sendd=0
sendf=0
sendg=0
sendz=0
sendx=0
sendc=0
sendv=0
sendb=0
return

composition01:
Gosub, composition0
return
composition02:
Gosub, composition0
return
composition03:
Gosub, composition0
return

;========================
;Zerg compositions (idk)
;========================
;Numpad 0&1    
;Numpad 0&2     
;Numpad 0&3     
;Numpad 0&4     
;Numpad 0&5     
;Numpad 0&6     
;Numpad 0&7     
;Numpad 0&8     
;Numpad 0&9

composition11:
return
composition21: 
return
composition31: 
return
composition41: 
return
composition51: 
return
composition61: 
return
composition71: 
return
composition81: 
return
composition91: 
return


;========================
;Terran compositions
;========================
;Numpad 0&1     reapers
;Numpad 0&2     scv+marines 
;Numpad 0&3     4 rax mmm+medivac
;Numpad 0&4     mmm 7 rax 1 fac 1 starport
;Numpad 0&5     15 rax + 3 fac + 3 starport mmm  
;Numpad 0&6     mine drop cheese
;Numpad 0&7     hellion+banshee
;Numpad 0&8     4 factories +1 starport
;Numpad 0&9	~10 factories+5 starports

composition12:    ; reaper
sendn=2
sende=4
return

composition22:   ; scv+marines  
sendn=2
sendq=2
sendw=1
sends=1
sendx=2
return


composition32:   ; early 3 base mmm
sendn=2
sendq=4
sendw=3
sendd=1
sendx=2
return


composition42:   ; mmm 7 rax 1 fac 1 starport
sendq=6
sendw=4
senda=0.3
sends=0
sendd=0.7
sendz=5
sendx=1
return

composition52:   ; 15 rax + 3 fac + 3 starport mmm
sendn=0
sendq=8
sendw=5
sendr=1
senda=2
sendd=2
sendz=3
sendx=1
sendc=1
return

composition62:   ; mine drop cheese
sendq=2
sendw=2
sends=2
sendx=2
return
return

composition72:   ; hellion+banshee
sendq=2
sendw=2
senda=4
sendv=2


composition82:   ; 4 factories +1 starport
sendq=1
senda=4
sendd=2
sendg=1
sendz=1.5
sendx=0.5
return

composition92:   ; ~10 factories+5 starports
sendn=0
sendq=2
sendw=1
senda=6
sendd=3
sendg=1
sendz=4
sendc=1
sendv=1
sendb=1
return


;========================
;Protoss compositions
;========================
;Numpad 0&1     stalker+centry+oracle
;Numpad 0&2     nix
;Numpad 0&3     5 stargates nix+void and 1 robo imma
;Numpad 0&4     8 stargates, add carriers and tempest
;Numpad 0&5     3 robo
;Numpad 0&6     
;Numpad 0&7     
;Numpad 0&8     
;Numpad 0&9


composition13:    ; stalker+centry+oracle
sendn=2
sendw=0.5
sende=0.5
sends=1
return

composition23:   ; nix
sendn=2
senda=2
return


composition33:   ; 5 stargates nix+void and 1 robo imma
sendn=2
senda=3
sendd=2
sendz=0.25
sendc=0.75
return


composition43:   ; 8 stargates, add carriers and tempest
sendn=0
senda=2
sendd=2
sendf=2
sendg=2
sendz=0.25
sendc=0.75
return

composition53:   ;  3 robo
sendc=1
sendv=2
return

composition63:   ; 

return

composition73:   ; 

return

composition83:   ; 

return

composition93:   ; 

return




