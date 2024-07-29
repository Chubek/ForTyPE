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

and hbox_node =
  { content : node list
  ; width   : dimen
  }

and vbox_node =
  { content : node list
  ; height  : dimen
  }

and glue_node =
  { space   : dimen
  ; stretch : dimen
  ; shrink  : dimen
  }

and kern_node =
  { amount : dimen }

and penalty_node =
  { value  : dimen }

and disc_node =
  { pre      : node list
  ; post     : node list
  ; replace  : node list
  }

and insert_node =
  { content  : node list
  ; offset   : dimen
  }

and ligature_node =
  { characters : char_node list }

and rule_node =
  { width      : dimen
  ; height     : dimen
  }

and math_node =
  { expression : string }

and char_node =
  { encoding: int
  ; value   : int
  }
