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
EXE = swapit
OBJS = swap.o main.o
WARN = -Wall -Wextra -Wformat-security
DEBUG = -g
CFLAGS = -I. -std=gnu17 $(DEBUG) $(WARN) -O0 -marm
LIBS =

.PHONY: clean

$(EXE): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)

clean:
	rm -f $(OBJS) $(EXE)

