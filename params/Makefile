# EXE - objects we want to build
# OBJS - ojects we want to compile (from c)
# 
# We provide a phony target clean to rm all the .o files
# 
# Run make to run with warnings
# Run make WARN= to run without warnings
# Run make DEBUG= to run without debug
# Run make DEBUG= WARN= to run without debug and warnings
# Run make clean to clean objects

CC = gcc
OBJS = main.o
WARN = -Wall -Wextra -Wformat-security
DEBUG = -g
CFLAGS = -I. -std=gnu17 $(DEBUG) $(WARN) -O0 -marm
LIBS =

.PHONY: clean

parmsin: $(OBJS)
	$(CC) $(CFLAGS) -o $@  params_in.o main.o $(LIBS)
parmsout: $(OBJS)
	$(CC) $(CFLAGS) -o $@  params_out.o $(LIBS)

%.o: %.S
	$(CC) -c $(CFLAGS) $< -o $@
clean:
	rm -f $(OBJS) params_in.o params_out.o parmsin parmsout
