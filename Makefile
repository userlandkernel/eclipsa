.PHONY: all clean

CPID ?= 0x8000

all:
	xcrun -sdk macosx clang -arch x86_64 -Weverything -DCPID=$(CPID) eclipsa.c -o eclipsa -framework CoreFoundation -framework IOKit -O2 -I headers

clean:
	$(RM) eclipsa
