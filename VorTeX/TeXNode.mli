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
                | GLOFilll
        and glue_sign = 
                | GLSStretching
                | GLSShrinking
                | GLSENormal
        type node_list = tex_node list * list_attr
        and tex_node = 
                | NODERule of tex_rule
                | NODEInsert  of tex_insert
                | NODEMark of tex_mark
                | NODEAdjust of tex_adjust
                | NODELigature of tex_ligature
                | NODEDiscretionary of tex_discretionary
                | NODEWhatsit of tex_whatsit
                | NODEMath of tex_math
                | NODEGlue of tex_glue
                | NODKern of tex_kern
                | NODEPenalty of tex_penalty
                | NODEUnset of tex_unset
                | NODEStyle of tex_style
        and tex_rule = (* TODO *)
        and tex_insert = (* TODO *)
        and tex_mark = (* TODO *)
        and tex_adjust = (* TODO *)
        and tex_ligature = (* TODO *)
        and tex_discretionary = (* TODO *)
        and tex_whatsit = (* TODO *)
        and tex_math = (* TODO *)
        and tex_glue =
                { 
                  stretch: TeXMetrics.elasticity; 
                  shrink: TexMetrics.elasticity;
                }
        and tex_kern = 
                | KERNExplicit of int
                | KERNAccent of int
        and tex_penalty =
                | PENALTYEject of TexMetrics.neg_inf_badness
                | PENALTYValue of int
        and tex_unset = 
            { glue_stretch: int; glue_shrink: int; span_count: int; }
        and tex_style = (* TODO *)

end

