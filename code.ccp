
;;;***************************************************
;;;*************  knowledge _ base  ******************
;;;***************************************************

(deffacts knowledge-base 
   (goal is type.coffee)
   (legalanswers are no yes)
;;;;***********************
 (rule (if hot is yes)
        (then hots is hoty))
(rule (if hot is no) 
         (then hots is icy))
   (question hot is "is your coffee hot ?")
;;;;***********************
 (rule (if hots is icy and  IMilk is yes )
		(then IMilks is IcyMilk))
(rule (if  hots is icy and  IMilk is no) 
         (then  type.coffee is coldBrew))
   (question IMilk is "dose your coffee contain cold milk??")
;;;;***********************
(rule (if IMilks is IcyMilk and IChocolate is yes )
		(then IChocolates is havechocolate))
(rule (if IMilks is IcyMilk and IChocolate is no) 
         (then type.coffee is icedLatte))
   (question IChocolate is "dose your coffee contain chocolate?")


;;;;***********************
(rule (if IChocolates is havechocolate and IWhite is yes )
		(then type.coffee is IcedWhiteMocha))
(rule (if IChocolates is havechocolate and IWhite is no) 
         (then type.coffee is IcedMocha))
   (question IWhite is "is it white chocolate ?")
;;;;***********************
 (rule (if hots is hoty and HMilk is yes)
        (then HMilks  is haveMilk ))
(rule (if  hots is hoty and HMilk is no) 
         (then Hmilks is NoMilk))
   (question HMilk is "does your coffee contain hot milk ?")
;;;;***********************
 (rule (if HMilks  is NoMilk and Cardamom is yes)
        (then type.coffee is ArabicCoffee ))
(rule (if  HMilks  is NoMilk and Cardamom is no) 
         (then Cardamoms is noCardamom ))
   (question Cardamom is "Does your coffee contain cardamom  ?")
;;;;***********************
 (rule (if Cardamoms is noCardamom and filtered is yes)
        (then type.coffee is blackCoffee))
(rule (if  Cardamoms is noCardamom and filtered is no) 
		(then type.coffee is amiricano))
   (question  filtered is "is your coffee filtered 
?")
;;;;***********************   
 (rule (if HMilks is haveMilk and MTH25ES is yes)
        (then type.coffee is cortado))
(rule (if   HMilks is haveMilk and MTH25ES is  no) 
         (then MTH25ESs is noMTH25ES))
   (question  MTH25ES is "Does your coffee have more than 25% espresso?")
;;;;***********************   
 (rule (if  MTH25ESs is noMTH25ES and ESfoam is yes)
        (then type.coffee is cappuccino))
(rule (if  MTH25ESs is noMTH25ES and ESfoam is  no) 
         (then ESfoams is noESfoam))
   (question  ESfoam is "does your coffee contain foam?")
;;;;***********************   
 (rule (if  ESfoams is noESfoam and HChocolate is yes)
        (then HChocolates is haveHChocolate ))
(rule (if ESfoams is noESfoam and HChocolate is no)
        (then HChocolates is noHChocolate))
   (question  HChocolate is "dose your coffee contain chocolate ?")
;;;;***********************   
 (rule (if HChocolates is haveHChocolate and HWhite is yes)
        (then type.coffee is whiteMocha))
(rule (if HChocolates is haveHChocolate and HWhite is no)
        (then type.coffee is mocha))
   (question  HWhite is "is it white chocolate ?")
;;;;***********************   
(rule (if  HChocolates is noHChocolate and HCFoam is yes)
        (then type.coffee is latte))
(rule (if  HChocolates is noHChocolate and HCFoam is no)
        (then type.coffee is flatWhite))
   (question  HCFoam is "does your coffee contain foam ?")
;;;;***********************   
   (answer is "I think your coffee is a " type.coffee) ))
