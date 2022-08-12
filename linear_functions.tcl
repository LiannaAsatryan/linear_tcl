#!/usr/bin/tclsh

#this function returns true if there are more than <n> digits after the point in the <num>
proc precision { num n } {
        set p 1
        for {set i 0} {$i<$n} {incr i} {
                set p [expr {$p*10}]
        }
        #p=10^n
        set d [expr {$num * $p }]
        if { [expr {abs($d)}] > [expr {abs(int($d))}] } {
                return true
        } else { return false }
}

#this function returns the solution(as a string) of the ax+b=0 linear equation
proc linear { a b } {
        if { $a == 0 && $b == 0 } {
                #infinity
                return "R"
        }
        if { $b != 0 && $a == 0 } {
                return "no solution"
        }
        if { $b == 0 } {
                return "0"
        }  else {
                set res [expr { (- $b * 1.0) / ($a) }]
                #to avoid the num.0 case
                if { $res == [expr int($res)]} { return [expr int($res)]}
                if { [precision $res 4] } {
                        return [format {%.4f} $res]
                }
                return $res
        }
}


#this function checks whether all the inputs in the input_file are real numbers
#if they are, the function returns true, and returns false otherwise
proc check_input {} {
        set file_data [read_data "input.txt"]
        set data [split $file_data "\n"]
        foreach line $data {
                set str1 [lindex $line 0]
                set str2 [lindex $line 1]
                if {![string is double $str1] || ![string is double $str2]} { return false}
        }
        return true
}

#this function reads data from the given file and returns that
proc read_data { file_name } {
        set fp [open $file_name]
        set file_data [read $fp]
        close $fp
        return $file_data
}

#this function writes the given data in the given file
proc write_data { file_name output_data } {
        set fp [open $file_name w+]
        puts $fp $output_data
        close $fp
}

#this function deletes the generated files
proc clean_files {} {
        file delete -force "output.txt"
        file delete -force "result.txt"
}

#this function reads the data drom the given file 
#splits it into lines and returns the list
proc get_data { file_name } {
        set file_data [read_data $file_name]
        set data [split $file_data "\n"]
        return $data
}

