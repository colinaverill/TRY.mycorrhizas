#grabbing TRY data of interest
#data set has 10,364,255 lines
#try <- read.table('/fs/data3/caverill/1585.txt',sep="\t")
#library(data.table)
#try <- fread('/fs/data3/caverill/1585.txt')

#There are problems in the data frame that keep this from uploading. Basically it has large notes, with weird formatting w/in the cells that throw off read.table/data.table
#going to move on with a subset of data from TRY I downloaded a while ago

try <- read.table('1118.txt',sep='/t')
try <- read.csv('1118.csv')

try.cn     <- try[try$TraitName == 'Leaf carbon/nitrogen (C/N) ratio',]
try.lignin <- try[try$TraitName == 'Leaf lignin content per leaf dry mass',]
try.lignin <- subset(try,try$TraitID == 87)

#okay, well write script to bring in CN data and match to TRY. See how much coverage you get. 
#okay. There are 1208 species in the FIA species code thing. 
fia<- read.csv('mycorrhizal_SPCD_data.csv')
