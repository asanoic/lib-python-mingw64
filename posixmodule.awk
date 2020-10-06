/^#\s*define/  && ( \
/HAVE_EXECV/   || \
/HAVE_FORK/    || \
/HAVE_GETEGID/ || \
/HAVE_GETEUID/ || \
/HAVE_GETGID/  || \
/HAVE_GETUID/  || \
/HAVE_OPENDIR/ || \
/HAVE_WAIT/    || \
/HAVE_TTYNAME/ ) { printf "// "; }
/osdefs\.h/ { has = 1; }
/stdio/ { if (has == 0) { print "#include \"osdefs.h\""; } }
1
