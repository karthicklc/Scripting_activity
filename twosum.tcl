proc two_sum {nums target} {
    array set hash {}
    
    foreach num $nums index {
        set complement [expr {$target - $num}]
        if {[info exists hash($complement)]} {
            return [list $hash($complement) $index]
        }
        set hash($num) $index
    }
    
    return {}
}
