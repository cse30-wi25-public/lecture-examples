 We provide a phony target clean to rm all the .o files
# 
# Run make to run with warnings
# Run make WARN= to run without warnings
# Run make DEBUG= to run without debug
# Run make DEBUG= WARN= to run without debug and warnings
# Run make clean to clean objects

CC = gcc
OBJS = main.o add5.o
WARN = -Wall -Wextra -Wformat-security
DEBUG = -g
CFLAGS = -I. -std=gnu17 $(DEBUG) $(WARN) -O0 -marm
LIBS =

.PHONY: clean

addem: $(OBJS)
	$(CC) $(CFLAGS) -o $@  add5.o main.o $(LIBS)

%.o: %.S
	$(CC) -c $(CFLAGS) $< -o $@
clean:
	rm -f $(OBJS) main.o add5.o
