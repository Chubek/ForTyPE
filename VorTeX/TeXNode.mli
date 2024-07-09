module TeXNode = struct
        type list_attr =
                {
                        is_vert: bool;
                        offsets: (int * int * int);
                        dimens: (int * int * int);
                        shiftn: int;
                        glue_order: glue_order;
                        glue_sign: glue_sign;
                        glue_set: int;
                }
        and glue_order =
                | GLONormal
                | GLOFil
                | GLOFill
                | FLOFilll
        and glue_sign = 
                | GLSStretching
                | GLSShrinking
                | GLSENormal
        type node_list = texnode list * list_attr
        type node_type = 
                | NODERule of tex_rule
                | NODEInsert  of tex_insert
                | NODEMark of tex_mark
                | NODEAdjust of tex_adjust
                | NODELigature of tex_ligature
                | NODEDiscretionary of tex_discretionary
                | NODEWhatsit of tex_whatsit
                | NODEMath of tex_math
                | NODEGlue of tex_glue
        and tex_rule = (* TODO *)
        and tex_insert = (* TODO *)
        and tex_mark = (* TODO *)
        and tex_adjust = (* TODO *)
        and tex_ligature = (* TODO *)
        and tex_discretionary = (* TODO *)
        and tex_whatsit = (* TODO *)
        and tex_math = (* TODO *)
        and tex_glue = (* TODO *)

end

