/*
 * This software is to get the time from system.
 * Author: Gaojiquan LaoYang <sndnvaps@gmail.com>
 * Date: 2013/05/19
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <time.h>
#include <unistd.h>
#include <string.h>
#include "get_time.h"

#define MAX_LENTH 1024

char *get_time(void) {
	char time_ptr[MAX_LENTH];
	time_t timep;
	struct tm *time_tm;
	struct stat st;
	time(&timep);
	time_tm = gmtime(&timep);
	snprintf(time_ptr, MAX_LENTH - 1, "%4d-%02d-%02d %02d:%02d:%02d", 1900 + time_tm->tm_year, time_tm->tm_mon + 1, time_tm->tm_mday, (time_tm->tm_hour + 8) % 24, time_tm->tm_min, time_tm->tm_sec);
	return time_ptr;
}


