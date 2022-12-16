#!/bin/bash

# Remove files that have been downloaded multiple thanks to case sensitivity issues.
# We are calling on the power of a database server (psql) for processing these.
# Add the database login file to your home folder - see 000a - .pgpass
# If you set these differently you can retrieve them via the "env" command.
# Directory names will be handled, since this will solve issues for most files contained inside of them.
# To speed things up, create a list of all directory names and save it in a file.


### Percentage signs removal ###
# These were missed by the question mark perl script (008) as they are %3F which is equal to ?.

# find . -name '*index.html%3F*' > $GEO_LOGS/009-index-question-marks.txt
# Remove the ones that are duplicates.
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/TurboPAS/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/TurboPAS/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/TurboPAS/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/TurboPAS/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/TurboPAS/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/TurboPAS/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/TurboPAS/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/TurboPAS/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/Assembly/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/Assembly/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/Assembly/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/Assembly/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/Assembly/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/Assembly/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/Assembly/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/Assembly/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/Amstrad_CPC/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/programs/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/01-October-2004/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/01-October-2004/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/01-October-2004/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/01-October-2004/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/01-October-2004/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/01-October-2004/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/01-October-2004/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/01-October-2004/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/National_Park/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/01-Oct-2004/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/01-Oct-2004/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/01-Oct-2004/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/01-Oct-2004/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/01-Oct-2004/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/01-Oct-2004/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/01-Oct-2004/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/01-Oct-2004/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/Specimen_Hill/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Bendigo/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/25-April-2005/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/25-April-2005/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/25-April-2005/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/25-April-2005/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/avoca/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/Pyrenees_Ranges/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/environment/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Taradale/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Taradale/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Taradale/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Taradale/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Taradale/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Taradale/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Taradale/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/Taradale/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/modella/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/images/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/cpm22_user/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/franzglaser/jrs/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/franzglaser/jrs/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/franzglaser/jrs/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/franzglaser/jrs/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/franzglaser/jrs/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/franzglaser/jrs/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/franzglaser/jrs/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/franzglaser/jrs/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ResearchTriangle/Lab/7907/downloads/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ResearchTriangle/Lab/7907/downloads/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ResearchTriangle/Lab/7907/downloads/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ResearchTriangle/Lab/7907/downloads/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ResearchTriangle/Lab/7907/downloads/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ResearchTriangle/Lab/7907/downloads/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ResearchTriangle/Lab/7907/downloads/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ResearchTriangle/Lab/7907/downloads/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/babel/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/babel/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/babel/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/babel/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/babel/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/babel/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/babel/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/babel/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/ikind_babel/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/images/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/images/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/images/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/images/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/images/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/images/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/research/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/swatson001/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/agihard/mohl/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/agihard/mohl/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/agihard/mohl/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/agihard/mohl/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/agihard/mohl/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/agihard/mohl/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/agihard/mohl/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/agihard/mohl/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/homeofoscarvermeulen/n8vem/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/homeofoscarvermeulen/n8vem/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/homeofoscarvermeulen/n8vem/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/homeofoscarvermeulen/n8vem/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/homeofoscarvermeulen/n8vem/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/homeofoscarvermeulen/n8vem/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/homeofoscarvermeulen/n8vem/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/homeofoscarvermeulen/n8vem/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/intro/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/intro/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/intro/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/intro/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/intro/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/intro/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/intro/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/intro/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/socketserver/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/socketserver/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/socketserver/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/socketserver/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/socketserver/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/socketserver/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/socketserver/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/socketserver/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tinitermv2/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tinitermv2/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tinitermv2/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tinitermv2/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tinitermv2/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tinitermv2/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tinitermv2/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tinitermv2/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/relays/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/relays/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/relays/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/relays/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/relays/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/relays/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/relays/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/relays/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/bootloader/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/bootloader/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/bootloader/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/bootloader/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/bootloader/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/bootloader/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/bootloader/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/bootloader/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/mytini/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/mytini/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/mytini/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/mytini/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/mytini/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/mytini/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/mytini/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/mytini/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tiniterm/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tiniterm/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tiniterm/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tiniterm/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tiniterm/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tiniterm/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tiniterm/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/tiniterm/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/webserver/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/webserver/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/webserver/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/webserver/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/webserver/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/webserver/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/webserver/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/webserver/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/p8255/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/p8255/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/p8255/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/p8255/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/p8255/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/p8255/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/p8255/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/p8255/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/microcontrollers/tini/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/sincos/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/sincos/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/sincos/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/sincos/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/sincos/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/sincos/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/sincos/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/sincos/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/crc16/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/crc16/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/crc16/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/crc16/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/crc16/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/crc16/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/crc16/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/crc16/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/lib/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/cg/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/cg/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/cg/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/cg/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/cg/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/cg/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/cg/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/cg/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/emptysx/index.html%3FN=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/emptysx/index.html%3FS=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/emptysx/index.html%3FN=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/emptysx/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/emptysx/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/emptysx/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/emptysx/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/emptysx/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/index.html%3FD=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/index.html%3FM=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/index.html%3FS=D
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/index.html%3FD=A
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/3656/c2c/index.html%3FM=A
rm -rv $GEO_WORK/geocities/www.geocities.com/imran_akthar/files/index.html%*
rm -rv $GEO_WORK/geocities/www.geocities.com/lynchaj/index.html%*

# Find the remaining ones that might be forward slashes or other. Duplicated data.
# find . -name '*%*' > $GEO_LOGS/009-percentages.txt

rm -rv $GEO_WORK/geocities/geocities.yahoo.com/index.html?topic*
rm -rv $GEO_WORK/geocities/geocities.yahoo.com/index.html?source=water%*
rm -rv $GEO_WORK/geocities/geocities.yahoo.com/index.html?url*
rm -rv $GEO_WORK/geocities/www.geocities.com/Colosseum/Arena/8157/geobook.html%*
rm -rv $GEO_WORK/geocities/www.geocities.com/js_source/ygIELib9.js%*
rm -rv $GEO_WORK/geocities/www.geocities.com/Athens/Stage/6170/Bolet%*
rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Pines/8509/RobotDocs/index.html?*
rm -rv $GEO_WORK/geocities/www.geocities.com/Paris/Chateau/3070/index.html?*



# We only need the geocities folder as any conflict folders are duplicates.
# This means the directory structure is more or less correct apart from case issues.
# Well what do you know, that's what this script and some future ones set out to sort.

cd $GEO_WORK/geocities
find . -type d > $GEO_LOGS/dir-index.txt

# Ubuntu 12.04
# real    6m52.354s
# user    0m35.492s
# sys     1m56.881s


# Create a database table to hold directory names, directory names converted to lower case.
# No indexes or constraints are present in the table to enable a swift ingest.

# Make sure your database server is prepared and that you have a 
# .pgpass file in case your db server asks for passwords each time!

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles.sql

# Put all this stuff into the database.
# Lots of dots and stars.

$GEO_SCRIPTS/ingest-doubles.pl dir-index.txt

# Ubuntu 12.04
# real	6m33.004s
# user	3m44.182s
# sys	0m37.473s



# Create indexes in the database to speed up sorting.

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles-indexes.sql

# Ubuntu 12.04
# real  6m18.694s
# user  0m0.041s
# sys   0m0.009s

# Generate a sorted list of directories.
psql --no-align --tuples-only -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/do/find-doubles.sql -o $GEO_LOGS/doubles-dir-sorted.txt

# Ubuntu 12.04
# real	341m46.530s
# user	0m0.653s
# sys	0m0.628s

# Feed the double dir list into the dir-compare script that will sort dirnames and their contents.
$GEO_SCRIPTS/remove-double-dirs.pl

# Ubuntu 12.04
# real	1070m56.447s
# user	744m39.551s
# sys	330m5.314s


# The lists are not needed any more, but I am collecting lists to see how mangled they are...
# rm -v $GEO_LOGS/dir-index.txt
# rm -v $GEO_LOGS/doubles-dir-sorted.txt



# The $GEO_WORK drive should report via df -H:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  866G  1.1T   47%   /media/ubuntu/GC_2TB        # aka $GEO_WORK
