type fil_kind =
  | FILKIND_Fil
  | FILKIND_Fill
  | FILKIND_Filll

and glueset_ratio = 
  | GLUESET_Finite
  | GLUESET_Fil
  | GLUESET_Fill
  | GLUESET_Filll

and box_layout =
  | BOXLAYOUT_Natural
  | BOXLAYOUT_Fixed     of tex_dimen
  | BOXLAYOUT_Spread    of tex_dimen

and 'a box =
  { height          : tex_dimen
  ; depth           : tex_dimen
  ; width           : tex_dimen
  ; contents        : 'a list
  ; glueset_ratio   : glueset_ratio option
  }

and horizbox_item =
  | HBOX_Node   of tex_node
  | HBOX_Skip   of tex_glue
  | HBOX_Box    of tex_box

and vertbox_item =
  | VBOX_Box    of tex_box
  | VBOX_Skip   of tex_glue

and tex_box =
  | BOX_Horiz   of horizbox_item box
  | BOX_Vert    of vertbox_item box

and tex_glue =
  { space       : tex_dimen
  ; stretch     : tex_dimen
  ; shrink      : tex_dimen
  }

and tex_dimen =
  | DIMEN_Normal        of tex_metric
  | DIMEN_Mu            of tex_metric
  | DIMEN_Fil           of fil_kind * tex_metric
  | DIMEN_Spring        of tex_dimen

and tex_metric =
  | METRIC_Point        of float
  | METRIC_Pica         of float
  | METRIC_Inch         of float
  | METRIC_BigPoint     of float
  | METRIC_Centimeter   of float
  | METRIC_Millimiter   of float
  | METRIC_DidotPoint   of float
  | METRIC_Cicero       of float
  | METRIC_ScaledPoint  of float

