module type TeX_NODE = sig
        type t
        type t'
        type attrs
end


module TeX_List : TeX_NODE = struct
        type t = 
                | Stretching of int
                | Shrinking of int
        type t' =
                | InfL1
                | InfL2
                | InfL3
        type attrs =
                { width: int
                ; depth: int
                ; height: int
                ; elasticity: int
                ; is_vertical: bool
                }
end


