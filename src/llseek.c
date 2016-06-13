/*
 * llseek.c -- stub calling the llseek system call
 *
 * Copyright (C) 1994, 1995, 1996, 1997 Theodore Ts'o.
 *
 * %Begin-Header%
 * This file may be redistributed under the terms of the
 * GNU Lesser General Public License.
 * %End-Header%
 */

#ifndef _LARGEFILE_SOURCE
# define _LARGEFILE_SOURCE
#endif

#ifndef _LARGEFILE64_SOURCE
# define _LARGEFILE64_SOURCE
#endif

#include <sys/types.h>
#include <errno.h>
#include <unistd.h>
#include <linux/unistd.h>

#include "blkidP.h"


#define my_llseek lseek64

blkid_loff_t blkid_llseek(int fd, blkid_loff_t offset, int whence)
{
	blkid_loff_t result;
	static int do_compat = 0;

	if ((sizeof(off_t) >= sizeof(blkid_loff_t)) ||
	    (offset < ((blkid_loff_t) 1 << ((sizeof(off_t)*8) -1))))
		return lseek(fd, (off_t) offset, whence);

	if (do_compat) {
		errno = EOVERFLOW;
		return -1;
	}

	result = my_llseek(fd, offset, whence);
	if (result == -1 && errno == ENOSYS) {
		/*
		 * Just in case this code runs on top of an old kernel
		 * which does not support the llseek system call
		 */
		do_compat++;
		errno = EOVERFLOW;
	}
	return result;
}



