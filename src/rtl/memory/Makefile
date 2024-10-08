#Copyright (C) 2019 Radhamadhab Dalai - All Rights Reserved
 # You may use, distribute and modify this code under the
 # terms of the license, which unfortunately won't be
 # written for another century.
 #
 # You should have received a copy of the license with
 # this file. If not, please write to: dalai115@gmail.com.
 #


#commands:
#make build

include ../../make/rtl.mk
clean: unbuild
	rm -rf csrc/ simv simv.daidir/ compile.log

compile: build
	vcs -full64 +libext+.v build/*.v -y ../common_module/build/ +lint=all -timescale=1ns/1ns -l compile.log -debug_all +v2k -sverilog
