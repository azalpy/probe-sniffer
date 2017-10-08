src = $(wildcard *.c)
obj = $(src:.c=.o)

CFLAGS = -Wall -Werror 
LDFLAGS = 

probe_sniffer: $(obj)
	$(CC) -o $@ $^ $(LDFLAGS) $(CFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) probe_sniffer