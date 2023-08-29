#!/usr/bin/make -F

TARGET := hello-arm64
C_FILES := $(wildcard src/*.c)
OBJS := $(C_FILES:.c=.c.o)

CC := gcc
LIBS += -lm -lpthread

all: $(TARGET)
.PHONY: all

$(TARGET): $(OBJS)
	$(CC) $(OBJS) $(LIBS) $(LDFLAGS) -o $(TARGET)

%.c.o: %.c
	$(CC) -std=gnu17 $< -Wall $(CFLAGS) -c -o $@

clean:
	-rm -rf $(TARGET) $(OBJS)
.PHONY: clean
