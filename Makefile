CFLAGS = -g3 -Wall -Wextra -Wcast-qual -Wcast-align -g
CFLAGS += -Winline -Wfloat-equal -Wnested-externs
CFLAGS += -D_GNU_SOURCE -std=gnu99 -pthread
PROMPT = -DPROMPT
EXECS = server client test
.PHONY = all clean
all: $(EXECS)
server: server.c db.c comm.c
	$(CC) $(CFLAGS) $(PROMPT) $^ -o $@
client: client.c
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -f $(EXECS)
