![Image of Logo](https://github.com/ManuGithubSteam/Slic3rSettings_Prusa_Different_Filaments/blob/master/logo.png)

## Slic3r/ PrusaSilcer Settings - especially for the Volcano Hotend with a 0.4 Nozzle

Here I share my filament configs for my 3d Printer Prusa i3 Mk3s with different brands and functions cause there are hard to find on the net. Especially if you want a __Volcano Profile__ even more so for a 0.4 nozzle.

It is a lot of trail an error to get it right. So i want to share my starting points.

My goal is to provide profiles for filament with a distinct functions like: flexible, high temp ,resictance and other special properties.

Be aware that every printer is different not only in brand but also in bulding so the values will never be a 100% fit. But this fits MY Prusa i3 MK3s the best.

### Why?

Its hard to find the perfect settings for any filament online. Its even harder to find setting for a Volcano Hotend. Much more so with a 0.4 nozzle. Few people seem to use this combination. Everyone seems to use bigger nozzles with the Volcano but you don't have to go bigger, to get more print speed and keep the same quality as with the stock 0.4mm ed3v6 nozzle.

You can keep the 0.4 quality and still get print speeds increasing up to 50%.

So here is it: My Configs for Slic3er/PrusaSlicer with a Volcano hotend and a 0.4mm nozzle. 

I’ve worked with each of these profiles, but make no warranty as to their suitability for use on your printer. Be careful if you have not calibrated your current nozzle and Live-Z settings of your volcano. I have done some basic prints using each of these settings, but they are all “experimental” and not guaranteed perfect. Most of them I calibrated with 50g filament samples. Use at your own risk!

### How much improvement are we talking?

Here i made some statistics and some pics. See the pics folder.


| Print statistics  |  |      
| ---  | --- | 
| Model:  | Benchy | 
|  Filament:  | Prusament PETG | 
|  Layer:       |  0.25mm layer height  | 
|  Infill:      |  10.00%                     | 
|  Nozzle:      |  Nozzle X 0.4mm                     | 


|  __Print Time Comparison__    |  __Volcano Nozzle X__           |  __e3d v6 Nozzle X__  | __% increase in print time__
| ---  | --- | -  |  --- | 
|  MVS*:         |  20                         |  8 (standard Prusa profile) ||
|  __Benchy size:__  |                |                   | 
|  __100.00%__     |  64 min                     |  94 min           |  __31.00%__
|  __150.00%__     |  133 min                    |  197 min          |  __32.00%__
|  __200.00%__     |  222 min                    |  405 min          |  __45.00%__
|  __250.00%__      |  340 min                    |  667 min          |  __49.00%__

*MVS stands for Maximum Volumetric Speed

__Real World Example__

Waving Groot 15 cm (100% scale):

e3d v6: 701 min

volcano: 448 min

-> 36% increase in print time.

----

Corner join piece from a friend:

e3d v6: 722 min

volcano: 262 min

This is just mental!

### Whats that MVS?

MVS stands for maximum volumetric speed. It's a setting that overrules the print speeds. It classifies the maximum output of the hotend of hot plastic ( in general and for a specific filament)
Aka: how much plastic can I melt in 1 second

The volcano has MVS hardware limit of around 25mm/sec and the V6 of 11mm/sec.

Basically the MVS value makes sure that even when you put in infill speed of 200mm/sec that it only prints at that speed that the filament and the hotend can handle to get the print successful out of it.

You can raise the MVS also on the V6 but as the hardware limit is quite low you don't get much out of it. Every filament has a max MVS value but if that value is bigger than 11 you will never reach the maximum speed for it on the V6.

The MVS for petg (prusament) is around 20. So to get the max speed you have to go volcano and safe like 50% of printing time on bigger parts.

For PLA the max MVS is even higher than 20 but I don't have pla around and could not test. So basically a V6 slows you down quite a bit as the hardware limit is at 11.

However, not all filament types can be printed that fast. So with some types like tpu you will not see an improvement over the V6 but in my experience so far I was never actually slower.

MVS can be calculated, it factors In layer height, speed, extrusion width.

But in the end you have to do test prints to find the right value cap for your filament.

Also you can just set it to 20 all the time but then you loose the safety feature and your speeds can not exceed the maximum for that filament otherwise the print gets ruined.

Some maths:

So lets take the formula for infill:

Layer Height X Extrusion Width X Speed = Volumentric speed

0.25 * 0.6 * x = 12

0.15*x =12 >> That gives me 80mm/seconds for infill

So i can set the speed for infill at 80mm/second if i go fo 0.6 extrution width. As it turns out this is the standard setting anyway for the v6 (but with 0.4 width). So no gain here for 12 MVS. 
But as mentioned above the volcano can do 20 for petg. So lets look at that:

0.25 * 0.6 * x = 20

0.15*x =20 >> That gives me 133mm/seconds for infill and maxed out MVS.

See also this post: https://forum.prusaprinters.org/forum/original-prusa-i3-mk3s-mk3-user-mods-octoprint-enclosures-nozzles-.../volcano-with-0-4-0-6-nozzle-speed-and-slicing-help-needed/

### My Hardware/Software combo

__3D Printer:__

Model: Prusa i3 Mk3s

Firmware: 3.7.0 // 3.8 has some bugs so i wait for 3.8.1

These notes are based on my experiences with the Prusa i3 Mk3s printer. If you are using a different printer, please verify the hardware details are the same. 

__Slicer:__

Type: PrusaSlicer

Version: lastest

### What mod do you use the fit the Volcano onto the Prusa Mk3s?

This one:  https://www.thingiverse.com/thing:2989361

### Whats up with the profiles for the e3dv6 ?

Well there was a time before the volcano and these are the profiles from that time. As saif before its hard to come by perfectly tuned profiles for a filament. There will be no update by me in the future for v6 profiles. But other people are welcome to contribute.

### Can I use the volcano profiles in my e3dv6 ?

Yes you can. You just have to adjust the MVS value in the Filament and Print Settings. Use the safe v6 values like 8 for PETG. This will calculate down all the speeds to be safe and unseable with the v6. No gurantrees tho.

### What is the quality like with a Volcano and 0.4 nozzle ?

- See the picture folder.

## How can I contribute ?

Im very happy to include other profiles from other people. Please keep these simple rules in mind:

- Please help fix the beta profiles first, they are printable and funxtional but dont looks super good, depending on the model you print.
- If you print with a filament successful that layer height is missing here, please share that profile.
- Its it not my goal to get 20th PLA profile here. My aim is to tender more to the special filaments with special purposes/engeneering etc and cool features.
- Volcano profiles are prefered with supreme quality and bigger print speed, v6 is also ok if it is a special filament
- Please keep the nameing/folders of your profiles in line with my nameing. like this: ColorFabb nGen FLEX - 0.15mm - 0.30mm - MK3S - Volcano 0.4
- Please share/add some pics how good the quality turns out with the profile.
- I will only integrate profiles from/for a Prusa Mk2/s or Mk3/s + MMU (Please MARK this in the profiles!). For other printers please see the sources of your printer.

### Can you make a profile for XY??

Sure, just send me a spool or some samples and i do my best to get a good profile out for you. No guarantees tho! Just send me an email.

### How do you make the profiles?

I orderd a big sample box and try to get some good print profiles out of them. Here is the list. Please note that the list is generated out of the .ods in the repo. There is some magic involved like <br>\n in the file. So please be careful when editing.

I use these parts to tune in the profiles for my volcano:

- Tevo test cube - own version
- 10mm cube

My priorities for the profiles:

1) Visual finish
2) Layer adheasion
3) As much speed as possible without compromising 1) and 2)

### How do I install the profiles ?

Thats easy:

The profiles go in subfolders here ~.PrusaSilcer:

1) - print folder
-> Files with *QUALITY, DRAFT etc.* in them.

2) - printer folder
-> Files with *MK3S.* in them.

3) - filament folder
-> The Rest of them in the folder

### Can i use the Profiles with Slic3er ?

Well maybe, the projects are forked and go slightly different directions. So im not sure...

### For what filemants can I find PrusaSlicer Settings ?

----
#Break

|Filament|Special Properties|Volcano Profiles <br> 0.4mm Nozzle|
|:--  | :--  | :--  | 
|Real PETG|Good PETG Quality, Alternative to Prusament<br>Food safe, Good adhesion, a bit runny|0.35<br>0.30<br> 0.25<br>0.20<br> 0.15<br> 0.10|
|Prusament PETG|Good PETG Quality, 0.02 Tolerance<br>Food safe, Good adhesion|0.35<br>0.30<br>0.25<br>0.20<br> 0.15<br>0.10<br> 0.07 beta|
|SainSmart Pro-PETG|PETG, 0.02 Tolerance<br>Food safe, Good adhesion, a bit brittle, problematic to print with lower layer heights|0.35<br>0.30<br>0.25<br>0.20<br> 0.15|
|FormFutura EASYWOOD|Wood filament with 40 % Wood<br>Feels and smells like real Wood<br>Good layer masking|0.30<br>0.25<br>0.20<br>0.15<br>0.10|
|FormFutura STONEFILL|50% Stone powder, PLA<br> Stone like look, and a bit of a feel<br>Recalibrate Z!|0.25<br> 0.20<br>0.15<br>0.10|
|FormFutura ApolloX ASA|For outside applications, UV-Resistant<br>Prone to warping, need enclosure<br> nice finish, ABS like, bonds well with ngen|0,25<br>0.20<br> 0.15<br>0.10|
|FFFWORLD FlexiSmart TPU|Very soft TPU, Good for Cases<br>  Printabability = Medium|0.20|
|3dk 3dkTOP|Heat resistant up to 230 Degrees <br> After curing, Food safe|0.20<br>0.15<br> 0.10|
|Colorfabb nGen LUX|nGen Material<br> Very sprakly in direct sunlight<br>Very strong interlayer adhesion|0.25<br>0.20<br> 0.15<br> 0.10|
|Colorfabb nGen FLEX|Semi-Flex, easy to print<br> Very good layer adheasion, rubber like|0.30<br>0.25<br>0.20<br>0.15|
|Colorfabb STEELFILL|Feromagnetic, Steel-Feel<br> 80% Steel powder<br> Good Post-Processing, Heavy<br> RECALIBRATE Z!!!|0.20<br> 0.15|
|Colorfabb NGEN|nGen Material, low shrinkage, no warping<br>Very strong interlayer adhesion<br> Glossy finish, Tg of 85, bonds well with ApolloX|0.25<br>0.20<br>0.15<br>0.10|
|Colorfabb XT CF20|||
|Colorfabb COPPERFILL|||
|Colorfabb BROZEFILL|||
|Colorfabb GLOWFILL|Green Glow at Night. Needs high infill for best glow<br>Very abrasive (more than CF!), use Steelnozzle<br>Glows for +9 months,Needs to be charged with strong light source|0.25<br>0.20<br>0.15<br>0.10<br>0.07 beta|
|Colorfabb HT|A bit Hydrophile, Temp resistant to 100 degrees<br>Super mechanical performance,greater toughness than XT<br>Super strong, nearly see trough, enclousure advised<br>FDA approved = Food safe|0.25<br>0.20<br>0.15<br>0.10 beta<br>0.07 beta|
|Colorfabb PA-CF LOW WARP|||
|Colorfabb Corkfill|||
|Colorfabb WoodFill|Wood like structure, very light parts, very bright wood color<br>30% recycled woodfibres, PLA/PHA + fine pinewood fibres<br>Easy sanded,Good with wood filler and wood stain<br>Very soft filament, after sanding very woodlike|0.25<br>0.20<br>0.15<br>0.10<br>0.07 beta|
|Orbi-Tech TPU|||
|NinjaTek Cheetah|||
|NinjaTek Armadillo|||
|NinjaTek NinjaFlex |||
|Proto-pasta Conductive PLA|||
|Proto-pasta Magnetic Iron PLA|Filament that is feromagnetic, Filament that can RUST<br>PLA base|0.30<br>0.25<br>0.20<br>0.15<br>0.10 beta|
|feelcolor Kanova materic Marble|k/canova mineral stone material,porous for sanding and coloring<br>Suitable for modeling like plaster/soap stone with knife<br>More perimters advised, GLUESTICK needed!,|0.20<br>0.15<br>0.10<br>0.07 beta|
|Lay Filaments Lay-Felt Poro-Lay|Expermimental filament!, gets soft when submerged in water<br>Felt like feel, ||
|Lay Filaments MoldLay|Wax like filament, for lost mold casting<br>Gets water liquid at 275 degrees, let cool down the print!<br>Prints molds for permanent casting and for lost-wax casting.|0.25<br>0.20<br>0.15 beta|
|EUMAKERS PLA Glow Blue|The favourite blue glowing PLA from  Eumakers|0.30<br>0.25<br>0.20<br>0.15<br>0.10|
|Kanesis Weed filament|Hemp filament with 20% Hemp, rought texture.<br> Clogs Hotend EASILY! Do remove after printing. <br>Do NOT Print above 165 degrees!.|Will for now not make a profile. <br>Hotend clogs to easy|
|FiloAlfa ALFAsilk filament|Silk Filament made out AFA Filament, a bit elastic<br> Pretty to look at. Layers get hidden well.<br> Good impact resitance. Glossy.|0.30<br>0.25<br>0.20<br>0.15<br>0.12<br>0.10|
|feelcolor  HIPS filament |||
|Orbi-Tech PVA|||
|Formfutura MagicFill Thermo PLA|||
|PolySmooth|||
|uDiamond PLA by Carbodeon|||
|DruckerRihno Marble PLA|PLA with Marlble effect is actually hard to come by. <br>It actually looks like marble|0.30<br>0.25<br>0.20<br>0.15<br>0.10<br>0.007|
|Eryone Silk Blue PLA|PLA with a Silk feel and very shiny. <br>Hides layers well with 1.5 or less.|0.30<br>0.25<br>0.20<br>0.15<br>0.12<br>0.10<br>0.007|
|Copper 3D PLACTIVE AN1 Antimicrobial Filament|NASA tested, kills 99.99% of fungi, viruses, bacteria<br> And a wide range of microorganisms. Can be thermoformed<br>Good layer adhesion, FDA approved, A bit stringy|0.30<br>0.25<br>0.20<br>0.15<br>0.10|

### Keywords 

slicing REAL FILAMENT real Real Filament Filament filament 3d printer 3d printing Filament Types "Real Filament" Real Filament slicing settings "Real Filament slicing settings" "Real Filament settings" PET-G / PET (Polyethylene terephthalate) "Real filament print settings" Volcano "volcano Hotend 0.4 Nozzle" Volcano Slicer Profiles, Volcano hotend slic3r profiles, cura, slic3r, Prusa i3, Prusament, Filament, Slicing profiles, 3d printing, 3d printing profiles, 3d printer slicer, 3d printing slicer, 3d print, 3d printer, 3d slicer, stl slicer, slic3r profiles, prusa volcano, prusa i3 volcano, prusa volcano upgrade, prusa volcano hotend,
