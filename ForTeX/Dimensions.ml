type dimen =
  | DIMEN_Point of float
  | DIMEN_Pica of float
  | DIMEN_Inch of float
  | DIMEN_BigPoint of float
  | DIMEN_Centimeter of float
  | DIMEN_DidotPoint of float
  | DIMEN_Cicero of float
  | DIMEN_ScaledPoint of float

let conv_to_point = function
  | DIMEN_Point pt -> DIMEN_Point pt
  | DIMEN_Pica pc -> DIMEN_Point (pc *. 12.0)
  | DIMEN_Inch inch -> DIMEN_Point (inch *. 72.27)
  | DIMEN_BigPoint bp -> DIMEN_Point (bp *. 1.005)
  | DIMEN_Centimeter cm -> DIMEN_Point (cm *. 28.4)
  | DIMEN_DidotPoint dd -> DIMEN_Point (dd *. 1.070)
  | DIMEN_Cicero cc -> DIMEN_Point (cc *. 12.84)
  | DIMEN_ScaledPoint sp -> DIMEN_Point (sp /. 65536.0)

let conv_to_pica = function
  | DIMEN_Pica pc -> DIMEN_Pica pc
  | DIMEN_Point pt -> DIMEN_Pica (pt /. 12.0)
  | DIMEN_Inch inch -> DIMEN_Pica (inch *. (72.27 /. 12.0))
  | DIMEN_BigPoint bp -> DIMEN_Pica (bp *. (1.005 /. 12.0))
  | DIMEN_Centimeter cm -> DIMEN_Pica (cm *. (28.4 /. 12.0))
  | DIMEN_DidotPoint dd -> DIMEN_Pica (dd *. (1.070 /. 12.0))
  | DIMEN_Cicero cc -> DIMEN_Pica (cc *. 1.070)
  | DIMEN_ScaledPoint sp -> DIMEN_Pica (sp /. (65536.0 *. 12.0))

let conv_to_inch = function
  | DIMEN_Inch inch -> DIMEN_Inch inch
  | DIMEN_Point pt -> DIMEN_Inch (pt /. 72.27)
  | DIMEN_Pica pc -> DIMEN_Inch (pc *. (12.0 /. 72.27))
  | DIMEN_BigPoint bp -> DIMEN_Inch (bp *. (1.005 /. 72.27))
  | DIMEN_Centimeter cm -> DIMEN_Inch (cm *. (28.4 /. 72.27))
  | DIMEN_DidotPoint dd -> DIMEN_Inch (dd *. (1.070 /. 72.27))
  | DIMEN_Cicero cc -> DIMEN_Inch (cc *. (1.070 /. 6.0))  
  | DIMEN_ScaledPoint sp -> DIMEN_Inch (sp /. (65536.0 *. 72.27))

let conv_to_bigpoint = function
  | DIMEN_BigPoint bp -> DIMEN_BigPoint bp
  | DIMEN_Point pt -> DIMEN_BigPoint (pt /. 1.005)
  | DIMEN_Pica pc -> DIMEN_BigPoint (pc *. (12.0 /. 1.005))
  | DIMEN_Inch inch -> DIMEN_BigPoint (inch *. (72.27 /. 1.005))
  | DIMEN_Centimeter cm -> DIMEN_BigPoint (cm *. (28.4 /. 1.005))
  | DIMEN_DidotPoint dd -> DIMEN_BigPoint (dd *. (1.070 /. 1.005))
  | DIMEN_Cicero cc -> DIMEN_BigPoint (cc *. (12.84 /. 1.005))  
  | DIMEN_ScaledPoint sp -> DIMEN_BigPoint (sp /. (65536.0 *. 1.005))

let conv_to_centimeter = function
  | DIMEN_Centimeter cm -> DIMEN_Centimeter cm
  | DIMEN_Point pt -> DIMEN_Centimeter (pt /. 28.4)
  | DIMEN_Pica pc -> DIMEN_Centimeter (pc *. (12.0 /. 28.4))
  | DIMEN_Inch inch -> DIMEN_Centimeter (inch *. (72.27 /. 28.4))
  | DIMEN_BigPoint bp -> DIMEN_Centimeter (bp *. (1.005 /. 28.4))
  | DIMEN_DidotPoint dd -> DIMEN_Centimeter (dd *. (1.070 /. 28.4))
  | DIMEN_Cicero cc -> DIMEN_Centimeter (cc *. (12.84 /. 28.4))  
  | DIMEN_ScaledPoint sp -> DIMEN_Centimeter (sp /. (65536.0 *. 28.4))

let conv_to_didotpoint = function
  | DIMEN_DidotPoint dd -> DIMEN_DidotPoint dd
  | DIMEN_Point pt -> DIMEN_DidotPoint (pt /. 1.070)
  | DIMEN_Pica pc -> DIMEN_DidotPoint (pc *. (12.0 /. 1.070))
  | DIMEN_Inch inch -> DIMEN_DidotPoint (inch *. (72.27 /. 1.070))
  | DIMEN_BigPoint bp -> DIMEN_DidotPoint (bp *. (1.005 /. 1.070))
  | DIMEN_Centimeter cm -> DIMEN_DidotPoint (cm *. (28.4 /. 1.070))
  | DIMEN_Cicero cc -> DIMEN_DidotPoint (cc *. 12.0)  
  | DIMEN_ScaledPoint sp -> DIMEN_DidotPoint (sp /. (65536.0 *. 1.070))

let conv_to_cicero = function
  | DIMEN_Cicero cc -> DIMEN_Cicero cc
  | DIMEN_Point pt -> DIMEN_Cicero (pt /. 12.84)
  | DIMEN_Pica pc -> DIMEN_Cicero (pc *. (12.0 /. 12.84))
  | DIMEN_Inch inch -> DIMEN_Cicero (inch *. (72.27 /. 12.84))
  | DIMEN_BigPoint bp -> DIMEN_Cicero (bp *. (1.005 /. 12.84))
  | DIMEN_Centimeter cm -> DIMEN_Cicero (cm *. (28.4 /. 12.84))
  | DIMEN_DidotPoint dd -> DIMEN_Cicero (dd *. (1.070 /. 12.84))
  | DIMEN_ScaledPoint sp -> DIMEN_Cicero (sp /. (65536.0 *. 12.84))

let conv_to_scaledpoint = function
  | DIMEN_ScaledPoint sp -> DIMEN_ScaledPoint sp
  | DIMEN_Point pt -> DIMEN_ScaledPoint (pt *. 65536.0)
  | DIMEN_Pica pc -> DIMEN_ScaledPoint (pc *. 12.0 *. 65536.0)
  | DIMEN_Inch inch -> DIMEN_ScaledPoint (inch *. 72.27 *. 65536.0)
  | DIMEN_BigPoint bp -> DIMEN_ScaledPoint (bp *. 1.005 *. 65536.0)
  | DIMEN_Centimeter cm -> DIMEN_ScaledPoint (cm *. 28.4 *. 65536.0)
  | DIMEN_DidotPoint dd -> DIMEN_ScaledPoint (dd *. 1.070 *. 65536.0)
  | DIMEN_Cicero cc -> DIMEN_ScaledPoint (cc *. 12.84 *. 65536.0)  


