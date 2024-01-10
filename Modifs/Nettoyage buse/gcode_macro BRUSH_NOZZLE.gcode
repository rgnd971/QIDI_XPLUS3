[gcode_macro BRUSH_NOZZLE]
# chauffer la buse pour de meilleurs résultats
variable_x1: 19      # gauche de la brosse          <<<edit this value>>>
variable_x2: 59      # droite de la brosse          <<<edit this value>>>
variable_y1: -17     # valeur en y de la brosse     <<<edit this value>>>
variable_z1: 2.3       # hauteur de la buze           <<<edit this value>>>
gcode:
    G28             ;Déplacement de tous les axes vers leurs origines homing
    G90             ;Toutes les coordonnées exécutées à partir de maintenant sont en rapport à l'origine de la machine
    G0 Z5 F3600     ;s'assurer que la buse est au-dessus de la goupille de butée
    G0 X{x1} Y{y1}  ;left position
    G0 Z{z1}        ;Descendre a la hauteur voulue pret pour l'essuyage

    #M117 Brushing Nozzle       ;Afficher un message    
    G0 X{x2} F7000  ;move right
    G0 X{x1}        ;move left
    G0 X{x2}        ;move right
    G0 X{x1}        ;move left
    G0 X{x2}        ;move right
    G0 X{x1}        ;move left
    G0 X{x2}        ;move right
    G0 X{x1}        ;move left
    G0 X{x2}        ;move right
    G0 X{x1}        ;move left
    G0 Z50 F3600     ;Relever la buse lorsque l'opération est terminée
    G0 X10 Y10
    #M117 Nozzle Cleaned        ;Afficher un message