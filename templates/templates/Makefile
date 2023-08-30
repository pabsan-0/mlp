CC=gcc
CFLAGS=`pkg-config --cflags --libs glib-2.0`

# The following pattern `ex-gslist-1: ex-gslist-1.c`
# Generalized to any file by:
%: %.c
	$(CC) -Wall -g3 -o $@.o $^ $(CFLAGS)