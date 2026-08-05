CC := gcc
CFLAGS := -Wall -Wextra -Wpedantic -O2 -I./include
LDFLAGS := -L./lib -Wl,-rpath,'$$ORIGIN/lib'

markov:
	$(CC) $(CFLAGS) $(LDFLAGS) -lhashtable -llinkedlist -lutils -o generate generate.c

.PHONY: clean
clean:
	rm generate
