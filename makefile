PROG = dow_crc
OBJS = dow_crc.o
LIBS = 
CSTD = -std=c99

WARN = -Wall -pedantic
CFLAGS += $(CSTD) $(WARN)
LDFLAGS += $(CSTD)

$(PROG): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $@

.c.o:
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f $(PROG) $(OBJS)
