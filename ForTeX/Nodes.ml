type node =
  | NODE_HBox of hbox_node
  | NODE_VBox of vbox_node
  | NODE_Glue of glue_node
  | NODE_Kern of kern_node
  | NODE_Penalty of penalty_node
  | NODE_Disc of disc_node
  | NODE_Insert of insert_node
  | NODE_Ligature of ligature_node
  | NODE_Rule of rule_node
  | NODE_Math of math_node
  | NODE_Char of char_node
  | NODE_Whatsit of whatsit_node

and hbox_node =
  { content : node list
  ; width   : dimen
  ; depth   : dimen
  ; height  : dimen
  ; shift   : dimen
  ; glue    : glue_node
  }

and vbox_node =
  { content : node list
  ; height  : dimen
  ; width   : dimen
  ; height  : dimen
  ; shift   : dimen
  ; glue    : glue_node
  }

and glue_node =
  { space   : dimen
  ; stretch : (dimen * glue_order)
  ; shrink  : (dimen * glue_order)
  }

and glue_order = 
  | Fil
  | Fill
  | Filll

and kern_node =
  { amount   : dimen
  ; explicit : bool
  }

and penalty_node =
  { value  : float
  ; cost   : float
  ; eject  : bool
  }

and disc_node =
  { pre      : node list
  ; post     : node list
  ; replace  : node list
  }

and insert_node =
  { content  : node list
  ; offset   : dimen
  ; cost     : float
  }

and ligature_node =
  { represents : string
  ; characters : char_node list 
  }

and rule_node =
  { width      : dimen
  ; height     : dimen
  }

and math_node =
  { display_mode : bool
  ; expression   : string
  }

and char_node =
  { char_value   : int
  ; encoding     : encoding_info
  ; typeface     : typeface_info
  }

and mark_node = 
  { size          : int }

and whatsit_node =
  { params        : int }
