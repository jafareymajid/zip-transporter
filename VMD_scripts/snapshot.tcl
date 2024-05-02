proc takesnapshot {frame} {
    set selection_bd [atomselect top "protein or resid 609" frame $frame]
    set out "step_${frame}.pdb"
    $selection_bd writepdb $out
    $selection_bd delete
}
if {[llength $argv] != 1} {
    puts "Usage: takesnapshot <frame_number>"
    return
}

set frame_number [lindex $argv 0]
takesnapshot $frame_number
