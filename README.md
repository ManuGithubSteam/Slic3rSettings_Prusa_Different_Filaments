# Slic3r/ PrusaSilcer Settings - especially for the Volcano Hotend with a 0.4 Nozzle

Here I share my configs of filament for my 3d Printer Prusa i3 Mk3s with different brands and functions, cause there are hard to find on the net. Especially if you want a Volcano Profile for a 0.4 nozzle.

It is a lot of trail an error to get it right. So i want to share my starting points.

My goal is to provide pfofiles for filament with a distinct funktion like: flexible, high temp resictance, other speacisl properties.

Be aware, that every printer is dirrent not only in brand but also in bulding so the values will never be a 100% fit. But this fits MY Prusa i3 MK3 the best.

## Why?

Its hard to find the perfect settings for filament online. Its even harder, to find setting for a Volcano with a 0.4 nozzle. Few people seem to use this combination. Everyone seems to use bigger nozzles with the Volcano but you dont have to, to get more print speed and keep the same quality.

But that has is advantages like a keeping the 0.4 quality and still get print speeds increasing up to 50%.

So here is it: My Configs for Slic3er/PrusaSlicer with a Volcano hotend and a 0.4mm nozzle. 

## How much improvement are we talking?

Here i made some statistics and some pics. This is a 100% benchy the 200% one is still printing....


| Model:  | Benchy | | % increase in print time | 
| ---  | --- | ---| --- | 
|  Filament:  | Prusament PETG | | | 
|  Layer:       |  0.4mm 0.25mm layer height  | ||
|  Infill:      |  10.00%                     | ||
|  MVS:         |  20                         |  8 ||
|  Hotend:      |  __Volcano Nozzle X__           |  __e3d v6 Nozzle X__  |
|  __Percentage:__  |  __Print Time:__                |                   | 
|  __100.00%__     |  64 min                     |  94 min           |  __31.00%__
|  __150.00%__     |  133 min                    |  197 min          |  __32.00%__
|  __200.00%__     |  222 min                    |  405 min          |  __45.00%__
|  __250.00%__      |  340 min                    |  667 min          |  __49.00%__



__Real World Example__

Waving Groot 15,5cm (100% scale):

e3d v6: 701 min
volcano: 448 min

-> 36% increase in print time.

Corner Join piece from a friend:

e3d v6: 722 min
volcano: 262 min

This is just mental!


## 3D Printer:

- Model: Prusa i3 Mk3s 
- Firmware: latest

## Slicer

- Type: PrusaSlicer
- Version: lastest

---------------

## What is the quality like with a Volcano and 0.4 nozzle ?

- See the picture folder.

## Keywords

slicing, REAL FILAMENT, real, Real Filament, Filament, filament, 3d printer, 3d printing, Filament Types, "Real Filament", Real Filament slicing settings, "Real Filament slicing settings", "Real Filament settings", PET-G / PET (Polyethylene terephthalate), "Real filament print settings"

----
#Break

|  Filament                         |  Special Properties                                                                            |  Volcano Profiles 0.4mm Nozzle
|-----------------------------------|------------------------------------------------------------------------------------------------|-------------------------------
|  Real PETG                        |  Alternative to Prusament                                                                      |
|  Prusament PETG                   |  Good PETG Quality, 0.02 Tolerance                                                             |  0.35 0.20 0.15 0.10 0.07
|  FormFutura WOOD                  |  Wood filament with 40 % Wood                                                                  |  0.15
|  FFFWORLD FlexiSmart TPU          |  Very soft TPU, Good for Cases, <br>Printabability = Medium                                     |  0.20
|  3dk 3dkTOP                       |  Heat resistant up to 230 Degrees<br>  After curing                                                |  0.20
0.15
0.10
|  Colorfabb nGen LUX               |  nGen Material, 
Very sprakly in direct sunlight                                               |  0.20
0.15
0.10
  |  Colorfabb nGen FLEX              |  Semi-Flex, easy to print, 
very good layer adheasion, rubber like                             |  0.30
0.25
0.20
0.15
  |  Colorfabb STEELFILL              |  Feromagnetic, Steel-Feel, 
50% Steel powder, 
Good Post-Processing, Heavy, 
RECALIBRATE Z!!!  |  0.20
0.15
  |  Colorfabb NGEN                   |                                                                                                |
  |  Colorfabb XT CF20                |                                                                                                |
  |  Colorfabb COPPERFILL             |                                                                                                |
  |  Colorfabb BROZEFILL              |                                                                                                |
  |  Colorfabb GLOWFILL               |                                                                                                |
  |  Colorfabb HT                     |                                                                                                |
  |  Colorfabb PA-CF LOW WARP         |                                                                                                |
  |  Lay Filaments MoldLay            |                                                                                                |
  |  Orbi-Tech TPU                    |                                                                                                |
  |  NinjaTek Cheetah                 |                                                                                                |
  |  NinjaTek Armadillo               |                                                                                                |
  |  NinjaTek NinjaFlex               |                                                                                                |
  |  Proto-pasta Conductive PLA       |                                                                                                |
  |  Proto-pasta Magnetic Iron PLA    |                                                                                                |
  |  Lay Filaments Lay-Felt Poro-Lay  |                                                                                                |
  |  feelcolor Kanova materic         |                                                                                                |
  |  FormFutura Stonefill             |  50% Stone powder, PLA,
Stone like look, and a bit of a feel, 
Recalibrate Z!                  |  0.10
0.15
0.20
0.25
  |  FormFutura ApolloX ASA           |                                                                                                |
