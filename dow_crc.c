#include <stdio.h>
#include <string.h>

#include "dow_crc.h"

int
main(int argc, char *argv[])
{
	unsigned char crc;

	if (argc == 2) {
		crc = dow_crc((const unsigned char *)argv[1], strlen(argv[1]));
		printf("crc8: 0x%x\n", crc);
	} else {
		printf("Usage: %s <string>\n", argv[0]);
	}
}
