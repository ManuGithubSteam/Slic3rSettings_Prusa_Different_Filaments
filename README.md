![Image of Logo](https://github.com/ManuGithubSteam/Slic3rSettings_Prusa_Different_Filaments/blob/master/logo.png)

## Slic3r/ PrusaSilcer Settings - especially for the Volcano Hotend with a 0.4 Nozzle

Here I share my configs for my 3d Printer Prusa i3 Mk3s with different brands and functions cause there are hard to find on the net. Especially if you want a __Volcano Profile__ for a 0.4 nozzle.

It is a lot of trail an error to get it right. So i want to share my starting points.

My goal is to provide profiles for filament with a distinct funktions like: flexible high temp resictance other special properties.

Be aware that every printer is different not only in brand but also in bulding so the values will never be a 100% fit. But this fits MY Prusa i3 MK3s the best.

### Why?

Its hard to find the perfect settings for filament online. Its even harder to find setting for a Volcano with a 0.4 nozzle. Few people seem to use this combination. Everyone seems to use bigger nozzles with the Volcano but you don't have to go bigger, to get more print speed and keep the same quality as with the stock 0.4mm ed3v6 nozzle.

You can keep the 0.4 quality and still get print speeds increasing up to 50%.

So here is it: My Configs for Slic3er/PrusaSlicer with a Volcano hotend and a 0.4mm nozzle. 

I’ve worked with each of these profiles, but make no warranty as to their suitability for use on your printer. Be careful if you have not calibrated your current nozzle and Live-Z settings. I have done some basic prints using each of these settings, but they are all “experimental” and not guaranteed perfect. Most of them I calibrated with 50g filament samples. Use at your own risk!

### How much improvement are we talking?

Here i made some statistics and some pics. This is a 100% benchy the 200% one is still printing....


| Model:  | Benchy | | % increase in print time | 
| ---  | --- | -  |  --- | 
|  Filament:  | Prusament PETG | | | 
|  Layer:       |  0.4mm 0.25mm layer height  | ||
|  Infill:      |  10.00%                     | ||
|  MVS:         |  20                         |  8 ||


|    |  __Volcano Nozzle X__           |  __e3d v6 Nozzle X__  | __% increase in print time__
| ---  | --- | -  |  --- | 
|  __Percentage:__  |  __Print Time:__                |                   | 
|  __100.00%__     |  64 min                     |  94 min           |  __31.00%__
|  __150.00%__     |  133 min                    |  197 min          |  __32.00%__
|  __200.00%__     |  222 min                    |  405 min          |  __45.00%__
|  __250.00%__      |  340 min                    |  667 min          |  __49.00%__



__Real World Example__

Waving Groot 15 cm (100% scale):

e3d v6: 701 min
volcano: 448 min

-> 36% increase in print time.

Corner Join piece from a friend:

e3d v6: 722 min
volcano: 262 min

This is just mental!


### 3D Printer:

Model: Prusa i3 Mk3s

Firmware: latest

These notes are based on my experiences with the Prusa i3 Mk3s printer. If you are using a different printer, please verify the hardware details are same. 

### Slicer:

Type: PrusaSlicer

Version: lastest

### Whats up with the profiles for the e3dv6 ?

Well there was a time before the volcano and these are the profiles from that time. There will be no update by me in the future for v6 profiles. But other people are welcome to contribute.

### What is the quality like with a Volcano and 0.4 nozzle ?

- See the picture folder.

### How can I contribute ?

Im very happy to include other profiles from other people. Please keep these simple rules in mind:

- Its it not my goal to get 20th PLA profile here. My aim is to tender more to the special filaments with special purposes/engeneering etc and cool features.
- Volcano profiles are prefered with supreme quality and bigger print speed, v6 is also ok if it is a special filament
- Please keep the nameing/folders of your profiles in line with my nameing. like this: ColorFabb nGen FLEX - 0.15mm - 0.30mm - MK3S - Volcano 0.4
- Please share/add some pics how good the quality turns out with the profile, i dont want the quality go down by adding just a lot of profiles...
- I will only integrate profiles from/for a Prusa Mk2/s or Mk3/s + MMU (Please MARK this in the profiles!). For other printers please see the sources of your printer.

### Can you make a profile for XY??

Sure, just send me a spool or some samples and i do my best to get a good profile out for you. No guarantees tho! Just send me an email.

### How do you make the profiles?

I orderd a big sample box and try to get some good print profiles out of them. Here is the list. Please note that the list is generated out of the .ods in the repo. There is some magic involved like ,,\n in the file. So please be careful when editing.

I use these parts to tune in the profiles for my volcano:

- Tevo test cube
- 10mm cube
- Stringing test

My priorities for the profiles:

1) Visual finish
2) Layer adheasion
3) As much speed as possible without compromising 1) and 2)

### For what filemants can I find Slic3er Settings ?

----
#Break

  |  Filament                         |  Special Properties                                                                                  |  Volcano Profiles <br> 0.4mm Nozzle
  | ---------------------------------  | ----------------------------------------------------------------------------------------------------  | ----------------------------------------
  |  Real PETG                        |  Alternative to Prusament                                                                            |
  |  Prusament PETG                   |  Good PETG Quality, 0.02 Tolerance<br>Food safe, Good adhesion                                        |  0.35 <br> 0.20 <br> 0.15<br> 0.10<br> 0.07
  |  FormFutura EASYWOOD              |  Wood filament with 40 % Wood<br>Feels and smells like real Wood<br>Good layer masking                 |  0.30<br>0.25<br>0.20<br>0.15<br>0.10
  |  FFFWORLD FlexiSmart TPU          |  Very soft TPU, Good for Cases<br>  Printabability = Medium                                           |  0.20
  |  3dk 3dkTOP                       |  Heat resistant up to 230 Degrees <br> After curing, Food safe                                        |  0.20<br>0.15<br> 0.10
  |  Colorfabb nGen LUX               |  nGen Material<br> Very sprakly in direct sunlight<br>Very strong interlayer adhesion                  |  0.20<br> 0.15<br> 0.10
  |  Colorfabb nGen FLEX              |  Semi-Flex, easy to print<br> Very good layer adheasion, rubber like                                  |  0.30<br>0.25<br>0.20<br>0.15
  |  Colorfabb STEELFILL              |  Feromagnetic, Steel-Feel<br> 80% Steel powder<br> Good Post-Processing, Heavy<br> RECALIBRATE Z!!!     |  0.20<br> 0.15
  |  Colorfabb NGEN                   |                                                                                                      |
  |  Colorfabb XT CF20                |                                                                                                      |
  |  Colorfabb COPPERFILL             |                                                                                                      |
  |  Colorfabb BROZEFILL              |                                                                                                      |
  |  Colorfabb GLOWFILL               |                                                                                                      |
  |  Colorfabb HT                     |                                                                                                      |
  |  Colorfabb PA-CF LOW WARP         |                                                                                                      |
  |  Lay Filaments MoldLay            |                                                                                                      |
  |  Orbi-Tech TPU                    |                                                                                                      |
  |  NinjaTek Cheetah                 |                                                                                                      |
  |  NinjaTek Armadillo               |                                                                                                      |
  |  NinjaTek NinjaFlex               |                                                                                                      |
  |  Proto-pasta Conductive PLA       |                                                                                                      |
  |  Proto-pasta Magnetic Iron PLA    |                                                                                                      |
  |  Lay Filaments Lay-Felt Poro-Lay  |                                                                                                      |
  |  feelcolor Kanova materic         |                                                                                                      |
  |  FormFutura Stonefill             |  50% Stone powder, PLA<br> Stone like look, and a bit of a feel<br>Recalibrate Z!                      |  0.25<br> 0.20<br>0.15<br>0.10
  |  FormFutura ApolloX ASA           |  For outside applications, UV-Resistant<br>Prone to warping, need enclosure<br> nice finish, ABS like  |  0,25<br>0.20<br> 0.15

### Keywords 

slicing REAL FILAMENT real Real Filament Filament filament 3d printer 3d printing Filament Types "Real Filament" Real Filament slicing settings "Real Filament slicing settings" "Real Filament settings" PET-G / PET (Polyethylene terephthalate) "Real filament print settings" Volcano "volcano Hotend 0.4 Nozzle"
