#!/bin/bash

DATE=$(date +%d%m%y)

# make backup
echo "Doing backup..."
cp -R comit BACKUP/comit_$DATE

echo "Backup finished"

# copy Exel sheet
cp /home/manuel/3D_Design/2019/Volcano/github/Filaments_Profiles.ods /home/manuel/3D_Design/2019/Volcano/github/comit/

# remove old DB
cd /home/manuel/3D_Design/2019/Volcano/github/comit
sed -n '/Break/q;p' README.md > README2.md
echo "#Break" >> README2.md
echo "" >> README2.md
rm README.md
mv README2.md README.md

# convert to cvs
cd /home/manuel/3D_Design/2019/Volcano/github
libreoffice --headless --convert-to csv --outdir /home/manuel/3D_Design/2019/Volcano/github/ Filaments_Profiles.ods
#cd /home/manuel/3D_Design/2019/Volcano/github
cat Filaments_Profiles.csv | ./cvs2md.pl >> comit/README.md
#csvtomd Filaments_Profiles.csv >> comit/README.md

# format for github
cd /home/manuel/3D_Design/2019/Volcano/github/comit
sed -e 's/..\r/<br>/g' README.md > README2.md
sed -e ':a;N;$!ba;s/,,/<br>/g' README.md > README2.md
sed -e 's/--|/  | /g' README2.md > README3.md
rm README2.md
rm README.md
mv README3.md README.md
echo "" >> README.md
echo '### Keywords 

slicing REAL FILAMENT real Real Filament Filament filament 3d printer 3d printing Filament Types "Real Filament" Real Filament slicing settings "Real Filament slicing settings" "Real Filament settings" PET-G / PET (Polyethylene terephthalate) "Real filament print settings" Volcano "volcano Hotend 0.4 Nozzle" Volcano Slicer Profiles, Volcano hotend slic3r profiles, cura, slic3r, Prusa i3, Prusament, Filament, Slicing profiles, 3d printing, 3d printing profiles, 3d printer slicer, 3d printing slicer, 3d print, 3d printer, 3d slicer, stl slicer, slic3r profiles, prusa volcano, prusa i3 volcano, prusa volcano upgrade, prusa volcano hotend, colorfabb vocalno profiles, filament volcano profiles, 3d printer volcano upgrade, ender volcano upgrade, special filaments volcano, special filaments volcano settings, volcano settings for colorfabb, volcano settings for formfutura, FormFutura volcano profiles, Lay filamtens, experimental filaments, faster printing with v6, e3d volcano, ed3 volcano profiles, 3d volcano profiles' >> README.md

#####
### Filament Profiles

#clean up
rm /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/*/*.ini

####
####

# Formfutura Easywood
cp /home/manuel/.PrusaSlicer/filament/*EASY* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_EASYWOOD/
cp /home/manuel/.PrusaSlicer/print/*EASY* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_EASYWOOD/
cp /home/manuel/.PrusaSlicer/printer/*EASY* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_EASYWOOD/

# Colorfabb ngen Flex
cp /home/manuel/.PrusaSlicer/filament/*nGen*FLEX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_nGen_FLEX/
cp /home/manuel/.PrusaSlicer/print/*nGen*FLEX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_nGen_FLEX/
cp /home/manuel/.PrusaSlicer/printer/*nGen*FLEX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_nGen_FLEX/

# FFF World tpu flex
cp /home/manuel/.PrusaSlicer/filament/*FLEXI* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FFFWorld_FLEXISMART/
cp /home/manuel/.PrusaSlicer/print/*FLEXI* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FFFWorld_FLEXISMART/
cp /home/manuel/.PrusaSlicer/printer/*FLEXI* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FFFWorld_FLEXISMART/

# 3dk top heat
cp /home/manuel/.PrusaSlicer/filament/*3dkTOP* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/3dk_3dkTOP/
cp /home/manuel/.PrusaSlicer/print/*3dkTOP* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/3dk_3dkTOP/
cp /home/manuel/.PrusaSlicer/printer/*3dkTOP* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/3dk_3dkTOP/

# Colorfabb lux
cp /home/manuel/.PrusaSlicer/filament/*LUX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_nGen_LUX/
cp /home/manuel/.PrusaSlicer/print/*LUX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_nGen_LUX/
cp /home/manuel/.PrusaSlicer/printer/*LUX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_nGen_LUX/

# Colorfabb steel
cp /home/manuel/.PrusaSlicer/filament/*STEEL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_STEELFILL/
cp /home/manuel/.PrusaSlicer/print/*STEEL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_STEELFILL/
cp /home/manuel/.PrusaSlicer/printer/*STEEL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_STEELFILL/

# Formfutura stone
cp /home/manuel/.PrusaSlicer/filament/*STONE* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_STONEFILL/
cp /home/manuel/.PrusaSlicer/print/*STONE* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_STONEFILL/
cp /home/manuel/.PrusaSlicer/printer/*STONE* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_STONEFILL/

# prusament petg
cp /home/manuel/.PrusaSlicer/filament/*Prusament*PETG* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Prusament_PETG/
cp /home/manuel/.PrusaSlicer/print/*Prusament*PETG* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Prusament_PETG/
cp /home/manuel/.PrusaSlicer/printer/*Prusament*PETG* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Prusament_PETG/

# FormFutura asa apollo x
cp /home/manuel/.PrusaSlicer/filament/*APOLLO* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_APOLLO-X/
cp /home/manuel/.PrusaSlicer/print/*APOLLO* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_APOLLO-X/
cp /home/manuel/.PrusaSlicer/printer/*APOLLO* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_APOLLO-X/

# colorfabb ngen normal
cp /home/manuel/.PrusaSlicer/filament/*NGEN* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_NGEN/
cp /home/manuel/.PrusaSlicer/print/*NGEN* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_NGEN/
cp /home/manuel/.PrusaSlicer/printer/*NGEN* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_NGEN/

# colorfabb glowfill
cp /home/manuel/.PrusaSlicer/filament/*GLOWFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_GLOWFILL/
cp /home/manuel/.PrusaSlicer/print/*GLOWFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_GLOWFILL/
cp /home/manuel/.PrusaSlicer/printer/*GLOWFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_GLOWFILL/

#colorfabb ht
cp /home/manuel/.PrusaSlicer/filament/*HT* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_HT/
cp /home/manuel/.PrusaSlicer/print/*HT* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_HT/
cp /home/manuel/.PrusaSlicer/printer/*HT* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_HT/

#Lay moldlay
cp /home/manuel/.PrusaSlicer/filament/*MOLDLAY* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_MOLDLAY/
cp /home/manuel/.PrusaSlicer/print/*MOLDLAY* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_MOLDLAY/
cp /home/manuel/.PrusaSlicer/printer/*MOLDLAY* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_MOLDLAY/

#Protopasta iron
cp /home/manuel/.PrusaSlicer/filament/*MAGNETIC-IRON* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ProtoPaste_MAGNETIC-IRON/
cp /home/manuel/.PrusaSlicer/print/*MAGNETIC-IRON* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ProtoPaste_MAGNETIC-IRON/
cp /home/manuel/.PrusaSlicer/printer/*MAGNETIC-IRON* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ProtoPaste_MAGNETIC-IRON/

#feelcolor kanova
cp /home/manuel/.PrusaSlicer/filament/*KANOVA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_KANOVA/
cp /home/manuel/.PrusaSlicer/print/*KANOVA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_KANOVA/
cp /home/manuel/.PrusaSlicer/printer/*KANOVA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_KANOVA/

#colorfabb woodfill
cp /home/manuel/.PrusaSlicer/filament/*WOODFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_WOODFILL/
cp /home/manuel/.PrusaSlicer/print/*WOODFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_WOODFILL/
cp /home/manuel/.PrusaSlicer/printer/*WOODFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_WOODFILL/

# Real PETG
cp /home/manuel/.PrusaSlicer/filament/*Real* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Real_PETG/
cp /home/manuel/.PrusaSlicer/print/*Real* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Real_PETG/
cp /home/manuel/.PrusaSlicer/printer/*Real* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Real_PETG/

# copper3d plactive
cp /home/manuel/.PrusaSlicer/filament/*AN1* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Copper3D_PLACTIVE-AN1/
cp /home/manuel/.PrusaSlicer/print/*AN1* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Copper3D_PLACTIVE-AN1/
cp /home/manuel/.PrusaSlicer/printer/*AN1* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Copper3D_PLACTIVE-AN1/

# EUmakers glow blue
cp /home/manuel/.PrusaSlicer/filament/*EUmakers*Blue* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/EUmakers_glow_BLUE/
cp /home/manuel/.PrusaSlicer/print/*EUmakers*Blue* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/EUmakers_glow_BLUE/
cp /home/manuel/.PrusaSlicer/printer/*EUmakers*Blue* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/EUmakers_glow_BLUE/

#druckerrihno marble
cp /home/manuel/.PrusaSlicer/filament/*DruckerRhino*Marble* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/DruckerRhino_marble_PLA/
cp /home/manuel/.PrusaSlicer/print/*DruckerRhino*Marble* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/DruckerRhino_marble_PLA/
cp /home/manuel/.PrusaSlicer/printer/*DruckerRhino*Marble* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/DruckerRhino_marble_PLA/

#eyrone silk
cp /home/manuel/.PrusaSlicer/filament/*Eryone*Silk* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Eryone_silk_PLA/
cp /home/manuel/.PrusaSlicer/print/*Eryone*Silk* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Eryone_silk_PLA/
cp /home/manuel/.PrusaSlicer/printer/*Eryone*Silk* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Eryone_silk_PLA/

#Filoalfa silk
cp /home/manuel/.PrusaSlicer/filament/*ALFAsilk* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FiloAlfa_silk_PLA/
cp /home/manuel/.PrusaSlicer/print/*ALFAsilk* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FiloAlfa_silk_PLA/
cp /home/manuel/.PrusaSlicer/printer/*ALFAsilk* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FiloAlfa_silk_PLA/

#sainsmart PETG
cp /home/manuel/.PrusaSlicer/filament/*PRO-3* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/SainSmart_PRO-3-PETG/
cp /home/manuel/.PrusaSlicer/print/*PRO-3* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/SainSmart_PRO-3-PETG/
cp /home/manuel/.PrusaSlicer/printer/*PRO-3* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/SainSmart_PRO-3-PETG/

#Colorfabb cork
cp /home/manuel/.PrusaSlicer/filament/*CORKFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_CORKFILL/
cp /home/manuel/.PrusaSlicer/print/*CORKFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_CORKFILL/
cp /home/manuel/.PrusaSlicer/printer/*CORKFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_CORKFILL/

#colorfabb copperfill
cp /home/manuel/.PrusaSlicer/filament/*COPPERFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_COPPERFILL/
cp /home/manuel/.PrusaSlicer/print/*COPPERFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_COPPERFILL/
cp /home/manuel/.PrusaSlicer/printer/*COPPERFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_COPPERFILL/

# #Colorfabb bronze
cp /home/manuel/.PrusaSlicer/filament/*BRONZEFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_BRONZEFILL/
cp /home/manuel/.PrusaSlicer/print/*BRONZEFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_BRONZEFILL/
cp /home/manuel/.PrusaSlicer/printer/*BRONZEFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_BRONZEFILL/

# Colorfabb xt-cf20
cp /home/manuel/.PrusaSlicer/filament/*XT-CF20* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_XT-CF20/
cp /home/manuel/.PrusaSlicer/print/*XT-CF20* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_XT-CF20/
cp /home/manuel/.PrusaSlicer/printer/*XT-CF20* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/ColorFabb_XT-CF20/

# LayFelt
cp /home/manuel/.PrusaSlicer/filament/*LAYFELT* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_LAYFELT/
cp /home/manuel/.PrusaSlicer/print/*LAYFELT* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_LAYFELT/
cp /home/manuel/.PrusaSlicer/printer/*LAYFELT* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_LAYFELT/

# Feelcolor HIPS
cp /home/manuel/.PrusaSlicer/filament/*feelcolor*HIPS* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_HIPS/
cp /home/manuel/.PrusaSlicer/print/*feelcolor*HIPS* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_HIPS/
cp /home/manuel/.PrusaSlicer/printer/*feelcolor*HIPS* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_HIPS/

# prusament PLA
cp /home/manuel/.PrusaSlicer/filament/*Prusament*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Prusament_PLA/
cp /home/manuel/.PrusaSlicer/print/*Prusament*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Prusament_PLA/
cp /home/manuel/.PrusaSlicer/printer/*Prusament*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Prusament_PLA/

# orbitech PVA
cp /home/manuel/.PrusaSlicer/filament/*Orbi*PVA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/OrbiTech_PVA/
cp /home/manuel/.PrusaSlicer/print/*Orbi*PVA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/OrbiTech_PVA/
cp /home/manuel/.PrusaSlicer/printer/*Orbi*PVA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/OrbiTech_PVA

# extrudr uv pla
cp /home/manuel/.PrusaSlicer/filament/*Extrudr*NX2* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Extrudr_NX2_PLA/
cp /home/manuel/.PrusaSlicer/print/*Extrudr*NX2* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Extrudr_NX2_PLA/
cp /home/manuel/.PrusaSlicer/printer/*Extrudr*NX2* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Extrudr_NX2_PLA

# extrudr uv pla
cp /home/manuel/.PrusaSlicer/filament/*feelcolor*Matt*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_MATT_PLA/
cp /home/manuel/.PrusaSlicer/print/*feelcolor*Matt*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_MATT_PLA/
cp /home/manuel/.PrusaSlicer/printer/*feelcolor*Matt*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/feelcolor_MATT_PLA

#Lay laywood3d
cp /home/manuel/.PrusaSlicer/filament/*LAYWOO-D3* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_LAYWOO-3D/
cp /home/manuel/.PrusaSlicer/print/*LAYWOO-D3* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_LAYWOO-3D/
cp /home/manuel/.PrusaSlicer/printer/*LAYWOO-D3* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/LayFilaments_LAYWOO-3D/

#ninjatek cheetah
cp /home/manuel/.PrusaSlicer/filament/*CHEETAH* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_CHEETAH/
cp /home/manuel/.PrusaSlicer/print/*CHEETAH* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_CHEETAH/
cp /home/manuel/.PrusaSlicer/printer/*CHEETAH* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_CHEETAH/

#ninjatek ninjaflex
cp /home/manuel/.PrusaSlicer/filament/*NINJAFLEX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_NINJAFLEX/
cp /home/manuel/.PrusaSlicer/print/*NINJAFLEX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_NINJAFLEX/
cp /home/manuel/.PrusaSlicer/printer/*NINJAFLEX* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_NINJAFLEX/

#ninjatek armadillo
cp /home/manuel/.PrusaSlicer/filament/*ARMADILLO* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_ARMADILLO/
cp /home/manuel/.PrusaSlicer/print/*ARMADILLO* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_ARMADILLO/
cp /home/manuel/.PrusaSlicer/printer/*ARMADILLO* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/NinjaTek_ARMADILLO/

# Formfutura MAGIcFILL
cp /home/manuel/.PrusaSlicer/filament/*MAGICFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_MAGICFILL/
cp /home/manuel/.PrusaSlicer/print/*MAGICFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_MAGICFILL/
cp /home/manuel/.PrusaSlicer/printer/*MAGICFILL* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/FormFutura_MAGICFILL/

# carbodeon uDiamond
cp /home/manuel/.PrusaSlicer/filament/*uDIAMOND* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Carbodeon_uDIAMOND/
cp /home/manuel/.PrusaSlicer/print/*uDIAMOND* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Carbodeon_uDIAMOND/
cp /home/manuel/.PrusaSlicer/printer/*uDIAMOND* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Carbodeon_uDIAMOND/

# Polymaker Polysmooth
cp /home/manuel/.PrusaSlicer/filament/*POLYSMOOTH* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Polymaker_POLYSMOOTH/
cp /home/manuel/.PrusaSlicer/print/*POLYSMOOTH* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Polymaker_POLYSMOOTH/
cp /home/manuel/.PrusaSlicer/printer/*POLYSMOOTH* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Polymaker_POLYSMOOTH/

# esun PETG
cp /home/manuel/.PrusaSlicer/filament/*eSun*PETG* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/eSun_PETG/
cp /home/manuel/.PrusaSlicer/print/*eSun*PETG* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/eSun_PETG/
cp /home/manuel/.PrusaSlicer/printer/*eSun*PETG* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/eSun_PETG/

# TOPZEAL COLORCHANGE Temp TCC
cp /home/manuel/.PrusaSlicer/filament/*TCC*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Topzeal_COLORCHANGE_TCC/
cp /home/manuel/.PrusaSlicer/print/*TCC*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Topzeal_COLORCHANGE_TCC/
cp /home/manuel/.PrusaSlicer/printer/*TCC*PLA* /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/Topzeal_COLORCHANGE_TCC/

#mkdir 
PPATH="/home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle"
mkdir -p "$PPATH/Topzeal_COLORCHANGE_TCC/"

# Purge private info

cd /home/manuel/3D_Design/2019/Volcano/github/comit/Volcano_Prusa_Slicer_Profiles/0.4_nozzle/

find . -type f -not -path '*/\.*' -exec sed -i 's/FBT55C8LCA35497E8BC95ED986159ED2//g' {} +
find . -type f -not -path '*/\.*' -exec sed -i 's/http:\/\/Printer:Mk3s4Life@192.168.0.110//g' {} +
find . -type f -not -path '*/\.*' -exec sed -i 's/http:\/\/Printer:Mk3s4Life@192.168.0.236//g' {} +
## Fix G82
find . -type f -not -path '*/\.*' -exec sed -i 's/G82/G80/g' {} +
###### push to github 
cd /home/manuel/3D_Design/2019/Volcano/github/
./git_push.sh
