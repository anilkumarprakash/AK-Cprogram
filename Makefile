CC=gcc
CFLAGS=-Wall -Wextra -std=c11

# Find all .c files in Basic/
SRCS=$(wildcard Basic/*.c)
OBJS=$(SRCS:.c=.o)
TARGET=a.out

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

Basic/%.o: Basic/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f Basic/*.o $(TARGET)

.PHONY: all clean
