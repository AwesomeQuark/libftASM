$1 :
	nasm -f macho 1.s -o $1.o
	ld $1.o -macosx_version_min 10.8 -lSystem
