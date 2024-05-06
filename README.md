# xr17v35x.c driver for MaxLinear PCI Family of UARTs (XR17V258/254/252/358/354/352/8358/4358/8354) (XR17D158/154/152)

This drivers have not been updated on MaxLinear website since 2019, and  breaking changes have been introduced in
Linux kernel V6.0.0 & V6.1.0 on the API used by this driver. Also some fixes in `Makefile` have been made.

This repo try to fix theses changes but, as don't have hardware in hand at the moment, the changes have not
been tested yet.

The drivers sources are shipped w/ DEBUG mode in `Makefile` enabled by default, leading in certain case to heavily bloat 
the kernel logs, so i've also disabled this as default.

Note: the drivers sources are shipped w/ RS422 as default but i use it w/ RS485 so this line have been changed, 
feel free to disable RS485 feature depends on your needs:

```c 
#define ENABLE_RS485                1
```