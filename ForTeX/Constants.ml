module ConvFactors = struct
  (* Conversion factors for converting to DIMEN_Point *)
  let point_per_pica = 12.0
  let point_per_inch = 72.27
  let point_per_bigpoint = 1.005
  let point_per_centimeter = 28.4
  let point_per_didotpoint = 1.070
  let point_per_cicero = 12.84  (* 1 cicero = 12 Didot points and 1 Didot point = 1.070 points *)
  let point_per_scaledpoint = 1.0 /. 65536.0

  (* Conversion factors for converting to DIMEN_Pica *)
  let pica_per_point = 1.0 /. point_per_pica
  let pica_per_inch = 1.0 /. (point_per_inch /. point_per_pica)
  let pica_per_bigpoint = 1.0 /. (point_per_bigpoint /. point_per_pica)
  let pica_per_centimeter = 1.0 /. (point_per_centimeter /. point_per_pica)
  let pica_per_didotpoint = 1.0 /. (point_per_didotpoint /. point_per_pica)
  let pica_per_cicero = point_per_cicero /. point_per_pica
  let pica_per_scaledpoint = 1.0 /. (point_per_scaledpoint /. point_per_pica)

  (* Conversion factors for converting to DIMEN_Inch *)
  let inch_per_point = 1.0 /. point_per_inch
  let inch_per_pica = 1.0 /. (point_per_pica /. point_per_inch)
  let inch_per_bigpoint = 1.0 /. (point_per_bigpoint /. point_per_inch)
  let inch_per_centimeter = 1.0 /. (point_per_centimeter /. point_per_inch)
  let inch_per_didotpoint = 1.0 /. (point_per_didotpoint /. point_per_inch)
  let inch_per_cicero = 1.0 /. (point_per_cicero /. point_per_inch)
  let inch_per_scaledpoint = 1.0 /. (point_per_scaledpoint /. point_per_inch)

  (* Conversion factors for converting to DIMEN_BigPoint *)
  let bigpoint_per_point = 1.0 /. point_per_bigpoint
  let bigpoint_per_pica = 1.0 /. (point_per_pica /. point_per_bigpoint)
  let bigpoint_per_inch = 1.0 /. (point_per_inch /. point_per_bigpoint)
  let bigpoint_per_centimeter = 1.0 /. (point_per_centimeter /. point_per_bigpoint)
  let bigpoint_per_didotpoint = 1.0 /. (point_per_didotpoint /. point_per_bigpoint)
  let bigpoint_per_cicero = 1.0 /. (point_per_cicero /. point_per_bigpoint)
  let bigpoint_per_scaledpoint = 1.0 /. (point_per_scaledpoint /. point_per_bigpoint)

  (* Conversion factors for converting to DIMEN_Centimeter *)
  let centimeter_per_point = 1.0 /. point_per_centimeter
  let centimeter_per_pica = 1.0 /. (point_per_pica /. point_per_centimeter)
  let centimeter_per_inch = 1.0 /. (point_per_inch /. point_per_centimeter)
  let centimeter_per_bigpoint = 1.0 /. (point_per_bigpoint /. point_per_centimeter)
  let centimeter_per_didotpoint = 1.0 /. (point_per_didotpoint /. point_per_centimeter)
  let centimeter_per_cicero = 1.0 /. (point_per_cicero /. point_per_centimeter)
  let centimeter_per_scaledpoint = 1.0 /. (point_per_scaledpoint /. point_per_centimeter)

  (* Conversion factors for converting to DIMEN_DidotPoint *)
  let didotpoint_per_point = 1.0 /. point_per_didotpoint
  let didotpoint_per_pica = 1.0 /. (point_per_pica /. point_per_didotpoint)
  let didotpoint_per_inch = 1.0 /. (point_per_inch /. point_per_didotpoint)
  let didotpoint_per_bigpoint = 1.0 /. (point_per_bigpoint /. point_per_didotpoint)
  let didotpoint_per_centimeter = 1.0 /. (point_per_centimeter /. point_per_didotpoint)
  let didotpoint_per_cicero = 1.0 /. (point_per_cicero /. point_per_didotpoint)
  let didotpoint_per_scaledpoint = 1.0 /. (point_per_scaledpoint /. point_per_didotpoint)

  (* Conversion factors for converting to DIMEN_Cicero *)
  let cicero_per_point = 1.0 /. point_per_cicero
  let cicero_per_pica = 1.0 /. (point_per_pica /. point_per_cicero)
  let cicero_per_inch = 1.0 /. (point_per_inch /. point_per_cicero)
  let cicero_per_bigpoint = 1.0 /. (point_per_bigpoint /. point_per_cicero)
  let cicero_per_centimeter = 1.0 /. (point_per_centimeter /. point_per_cicero)
  let cicero_per_didotpoint = 1.0 /. (point_per_didotpoint /. point_per_cicero)
  let cicero_per_scaledpoint = 1.0 /. (point_per_scaledpoint /. point_per_cicero)

  (* Conversion factors for converting to DIMEN_ScaledPoint *)
  let scaledpoint_per_point = 1.0 /. point_per_scaledpoint
  let scaledpoint_per_pica = 1.0 /. (point_per_pica /. point_per_scaledpoint)
  let scaledpoint_per_inch = 1.0 /. (point_per_inch /. point_per_scaledpoint)
  let scaledpoint_per_bigpoint = 1.0 /. (point_per_bigpoint /. point_per_scaledpoint)
  let scaledpoint_per_centimeter = 1.0 /. (point_per_centimeter /. point_per_scaledpoint)
  let scaledpoint_per_didotpoint = 1.0 /. (point_per_didotpoint /. point_per_scaledpoint)
  let scaledpoint_per_cicero = 1.0 /. (point_per_cicero /. point_per_scaledpoint)
end

