/* SPDX-License-Identifier: GPL-2.0+ */
/*
 * Copyright (c) 2011-2012 The Chromium OS Authors.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */

SECTIONS
{

	. = ALIGN(4);
	.u_boot_list : {
		KEEP(*(SORT(.u_boot_list*)));
	}

	_u_boot_sandbox_getopt : {
		*(.u_boot_sandbox_getopt_start)
		KEEP(*(.u_boot_sandbox_getopt))
		*(.u_boot_sandbox_getopt_end)
	}
}

INSERT AFTER .data;
