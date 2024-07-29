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
  | DIMEN_Point pt -> DIME_Point pt
  | DIMEN_Pica pc -> DIMEN_Point (pc *. 12.0)
  | DIMEN_Inch inch -> DIMEN_Point (inch *. 72.27)
  | DIMEN_BigPoint bp -> DIMEN_Point (bp *. 1.005)
  | DIMEN_Centimeter cm -> DIMEN_Point (cm *. 28.4)
  | DIMEN_DidotPoint dd -> DIMEN_Point (dd *. 1.070)
  | DIMEN_Cicero cc -> DIMEN_Point (cc *. 12.84)
  | DIMEN_ScaledPoint sp -> DIMEN_Point (cc /. 66536)
