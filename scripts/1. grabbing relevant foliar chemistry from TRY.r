#grabbing foliar lignin and CN from multiple data sets. 

#try data set
try <- read.csv('data/1118.csv')

#aggregating try CN and lignin by species. 
try.cn     <- try[try$TraitName == 'Leaf carbon/nitrogen (C/N) ratio',]
try.lignin <- try[try$TraitName == 'Leaf lignin content per leaf dry mass',]
try.lignin <- subset(try,try$TraitID == 87)

#data supplied by Alexey. Used for remote sensing validation of leaf lignin and nitrogen
angers<-read.csv('data/angers.dat') #38 unqiue species
fft   <-read.csv(   'data/fft.dat') #58 unique species
lopex <-read.csv( 'data/lopex.dat') #45 unique species, all crops from france


#this is all the species in the FIA data set, as well as those species mycorrhizal associations. 
fia<- read.csv('mycorrhizal_SPCD_data.csv')


