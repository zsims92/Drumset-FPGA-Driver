transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2016/CSCE/230/Project/DRUMSETDRIVER.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/lpm_decode0.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/timer.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/falu.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/mux4.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/various_logic_unit.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/lab7_task2.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/mux2.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/lab7_task1.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/mux2_32.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/not32.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/reg16.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/Reg1.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/Reg_16.vhd}
vcom -93 -work work {H:/Onedrive/UNL/Classes/SPRING2015/CSCE/230TA/Project/ProjectFiles/MUX2_1.vhd}

do "H:/Onedrive/UNL/Classes/SPRING2016/CSCE/230/DrumSetDriver.do"
