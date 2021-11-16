EXE	= mclife
OBJS	= doCol.o

LIBS	= -lcse30life

CC	= gcc

DEBUG	= -g
WARN	= -Wall -Wextra
CSTD	= -std=c11
CFLAGS	:= -I. -D_POSIX_C_SOURCE $(DEBUG) $(WARN) $(CSTD) -L/home/linux/ieng6/cs30fa21c/public/local/arm/lib

.PHONY: clean

$(EXE) : $(OBJS) 
	$(CC) -o $@ $(CFLAGS) $(OBJS) $(LIBS)

doCol.o : doCol.S
	$(CC) -c $(CFLAGS) -gstabs+ doCol.S

clean :
	rm -f $(LOBJS)
	rm -f $(OBJS)
	rm -f $(EXE)

