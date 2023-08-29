/**
 * @file main.c
 * @author Max Chan <max@maxchan.info>
 *
 * Main entry point for hello-arm64
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

int main(int argc, const char *argv[]) {
	if (argc > 1) printf("hello, %s\n", argv[1]);
	else printf("hello, world\n");
	exit(0);
}
