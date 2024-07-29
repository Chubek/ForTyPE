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
  | DIMEN_Pica pc -> DIMEN_Point (pc *. ConvFactors.point_per_pica)
  | DIMEN_Inch inch -> DIMEN_Point (inch *. ConvFactors.point_per_inch)
  | DIMEN_BigPoint bp -> DIMEN_Point (bp *. ConvFactors.point_per_bigpoint)
  | DIMEN_Centimeter cm -> DIMEN_Point (cm *. ConvFactors.point_per_centimeter)
  | DIMEN_DidotPoint dd -> DIMEN_Point (dd *. ConvFactors.point_per_didotpoint)
  | DIMEN_Cicero cc -> DIMEN_Point (cc *. ConvFactors.point_per_cicero)
  | DIMEN_ScaledPoint sp -> DIMEN_Point (sp *. (1.0 /. ConvFactors.point_per_scaledpoint))

let conv_to_pica = function
  | DIMEN_Pica pc -> DIMEN_Pica pc
  | DIMEN_Point pt -> DIMEN_Pica (pt *. ConvFactors.pica_per_point)
  | DIMEN_Inch inch -> DIMEN_Pica (inch *. ConvFactors.pica_per_inch)
  | DIMEN_BigPoint bp -> DIMEN_Pica (bp *. ConvFactors.pica_per_bigpoint)
  | DIMEN_Centimeter cm -> DIMEN_Pica (cm *. ConvFactors.pica_per_centimeter)
  | DIMEN_DidotPoint dd -> DIMEN_Pica (dd *. ConvFactors.pica_per_didotpoint)
  | DIMEN_Cicero cc -> DIMEN_Pica (cc *. ConvFactors.pica_per_cicero)
  | DIMEN_ScaledPoint sp -> DIMEN_Pica (sp *. ConvFactors.pica_per_scaledpoint)

let conv_to_inch = function
  | DIMEN_Inch inch -> DIMEN_Inch inch
  | DIMEN_Point pt -> DIMEN_Inch (pt *. ConvFactors.inch_per_point)
  | DIMEN_Pica pc -> DIMEN_Inch (pc *. ConvFactors.inch_per_pica)
  | DIMEN_BigPoint bp -> DIMEN_Inch (bp *. ConvFactors.inch_per_bigpoint)
  | DIMEN_Centimeter cm -> DIMEN_Inch (cm *. ConvFactors.inch_per_centimeter)
  | DIMEN_DidotPoint dd -> DIMEN_Inch (dd *. ConvFactors.inch_per_didotpoint)
  | DIMEN_Cicero cc -> DIMEN_Inch (cc *. ConvFactors.inch_per_cicero)
  | DIMEN_ScaledPoint sp -> DIMEN_Inch (sp *. ConvFactors.inch_per_scaledpoint)

let conv_to_bigpoint = function
  | DIMEN_BigPoint bp -> DIMEN_BigPoint bp
  | DIMEN_Point pt -> DIMEN_BigPoint (pt *. ConvFactors.bigpoint_per_point)
  | DIMEN_Pica pc -> DIMEN_BigPoint (pc *. ConvFactors.bigpoint_per_pica)
  | DIMEN_Inch inch -> DIMEN_BigPoint (inch *. ConvFactors.bigpoint_per_inch)
  | DIMEN_Centimeter cm -> DIMEN_BigPoint (cm *. ConvFactors.bigpoint_per_centimeter)
  | DIMEN_DidotPoint dd -> DIMEN_BigPoint (dd *. ConvFactors.bigpoint_per_didotpoint)
  | DIMEN_Cicero cc -> DIMEN_BigPoint (cc *. ConvFactors.bigpoint_per_cicero)
  | DIMEN_ScaledPoint sp -> DIMEN_BigPoint (sp *. ConvFactors.bigpoint_per_scaledpoint)

let conv_to_centimeter = function
  | DIMEN_Centimeter cm -> DIMEN_Centimeter cm
  | DIMEN_Point pt -> DIMEN_Centimeter (pt *. ConvFactors.centimeter_per_point)
  | DIMEN_Pica pc -> DIMEN_Centimeter (pc *. ConvFactors.centimeter_per_pica)
  | DIMEN_Inch inch -> DIMEN_Centimeter (inch *. ConvFactors.centimeter_per_inch)
  | DIMEN_BigPoint bp -> DIMEN_Centimeter (bp *. ConvFactors.centimeter_per_bigpoint)
  | DIMEN_DidotPoint dd -> DIMEN_Centimeter (dd *. ConvFactors.centimeter_per_didotpoint)
  | DIMEN_Cicero cc -> DIMEN_Centimeter (cc *. ConvFactors.centimeter_per_cicero)
  | DIMEN_ScaledPoint sp -> DIMEN_Centimeter (sp *. ConvFactors.centimeter_per_scaledpoint)

let conv_to_didotpoint = function
  | DIMEN_DidotPoint dd -> DIMEN_DidotPoint dd
  | DIMEN_Point pt -> DIMEN_DidotPoint (pt *. ConvFactors.didotpoint_per_point)
  | DIMEN_Pica pc -> DIMEN_DidotPoint (pc *. ConvFactors.didotpoint_per_pica)
  | DIMEN_Inch inch -> DIMEN_DidotPoint (inch *. ConvFactors.didotpoint_per_inch)
  | DIMEN_BigPoint bp -> DIMEN_DidotPoint (bp *. ConvFactors.didotpoint_per_bigpoint)
  | DIMEN_Centimeter cm -> DIMEN_DidotPoint (cm *. ConvFactors.didotpoint_per_centimeter)
  | DIMEN_Cicero cc -> DIMEN_DidotPoint (cc *. ConvFactors.didotpoint_per_cicero)
  | DIMEN_ScaledPoint sp -> DIMEN_DidotPoint (sp *. ConvFactors.didotpoint_per_scaledpoint)

let conv_to_cicero = function
  | DIMEN_Cicero cc -> DIMEN_Cicero cc
  | DIMEN_Point pt -> DIMEN_Cicero (pt *. ConvFactors.cicero_per_point)
  | DIMEN_Pica pc -> DIMEN_Cicero (pc *. ConvFactors.cicero_per_pica)
  | DIMEN_Inch inch -> DIMEN_Cicero (inch *. ConvFactors.cicero_per_inch)
  | DIMEN_BigPoint bp -> DIMEN_Cicero (bp *. ConvFactors.cicero_per_bigpoint)
  | DIMEN_Centimeter cm -> DIMEN_Cicero (cm *. ConvFactors.cicero_per_centimeter)
  | DIMEN_DidotPoint dd -> DIMEN_Cicero (dd *. ConvFactors.cicero_per_didotpoint)
  | DIMEN_ScaledPoint sp -> DIMEN_Cicero (sp *. ConvFactors.cicero_per_scaledpoint)

let conv_to_scaledpoint = function
  | DIMEN_ScaledPoint sp -> DIMEN_ScaledPoint sp
  | DIMEN_Point pt -> DIMEN_ScaledPoint (pt *. ConvFactors.scaledpoint_per_point)
  | DIMEN_Pica pc -> DIMEN_ScaledPoint (pc *. ConvFactors.scaledpoint_per_pica)
  | DIMEN_Inch inch -> DIMEN_ScaledPoint (inch *. ConvFactors.scaledpoint_per_inch)
  | DIMEN_BigPoint bp -> DIMEN_ScaledPoint (bp *. ConvFactors.scaledpoint_per_bigpoint)
  | DIMEN_Centimeter cm -> DIMEN_ScaledPoint (cm *. ConvFactors.scaledpoint_per_centimeter)
  | DIMEN_DidotPoint dd -> DIMEN_ScaledPoint (dd *. ConvFactors.scaledpoint_per_didotpoint)
  | DIMEN_Cicero cc -> DIMEN_ScaledPoint (cc *. ConvFactors.scaledpoint_per_cicero)

