CC=clang
PROGRAMS = add addin ptr-intro mexplore.noopt mexplore.opt \
					 mexplore-order.noopt mexplore-order.opt \
					 mexplore-with-dynamic mexplore-string mexplore-struct \
					 mexplore-uninitialized mexplore-array mexplore-structalign \
					 l04-review1 l04-review2 linked-list signed-int \
					 ubexplore.noopt ubexplore.opt ubexplore2.noopt ubexplore2.opt
ALLPROGRAMS = $(PROGRAMS)

all: $(ALLPROGRAMS)

include ../common/rules.mk

CFLAGS += -Wno-unused-parameter

%.o: %.c $(BUILDSTAMP)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(DEPCFLAGS) $(O) -o $@ -c $<

%.opt.o: %.c $(BUILDSTAMP)
	$(CC) $(CPPFLAGS) $(CFLAGS) -O3 $(DEPCFLAGS) -o $@ -c $<

%.noopt.o: %.c $(BUILDSTAMP)
	$(CC) $(CPPFLAGS) $(CFLAGS) -O0 $(DEPCFLAGS) -o $@ -c $<

add: add.o addf.o hexdump.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

addin: addin.o hexdump.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

addf.o: addf.c $(BUILDSTAMP)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(DEPCFLAGS) $(O) -fomit-frame-pointer -o $@ -c $<

ptr-intro: ptr-intro.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(O) -o $@ $^

mexplore-with-dynamic mexplore-string mexplore-uninitialized mexplore-array mexplore-struct mexplore-structalign l04-review1 l04-review2 linked-list signed-int: %: %.o hexdump.o
	$(CC) $(CFLAGS) $(LDFLAGS) -O0 -o $@ $^

mexplore-order.noopt mexplore.noopt: %.noopt: %.noopt.o hexdump.o
	$(CC) $(CFLAGS) $(LDFLAGS) -O0 -o $@ $^

mexplore-order.opt mexplore.opt: %.opt: %.opt.o hexdump.o
	$(CC) $(CFLAGS) $(LDFLAGS) -O3 -o $@ $^

ubexplore.noopt ubexplore2.noopt: %.noopt: %.noopt.o hexdump.o
	$(CC) $(CFLAGS) $(LDFLAGS) -O0 -o $@ $^

ubexplore.opt ubexplore2.opt: %.opt: %.opt.o hexdump.o
	$(CC) $(CFLAGS) $(LDFLAGS) -O3 -o $@ $^

clean:
	rm -rf $(ALLPROGRAMS) *.o $(DEPSDIR)

.PHONY: all clean
