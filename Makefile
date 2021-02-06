export LDIR= .
export GOC = x86_64-xen-ethos-6g
export GOL = x86_64-xen-ethos-6l

export GOARCH = amd64
export TARGET_ARCH = x86_64
export GOLINUXINCLUDE=install
export BUILD=install

.PHONY: all install clean
all: myProgram

install:

# make the package
myType.goo.linux: myType.go
	mkdir install
	linuxGoPackage myType . myType.go

# make the program that includes the package
myProgram: myProgram.go myType.goo.linux
	linuxGo myProgram.go

clean:
	rm -rf myType/ myTypeIndex/
	rm -f myProgram
	rm -f myType.goo.linux myProgram.goo.linux
	rm -rf ethos
	rm -rf install
