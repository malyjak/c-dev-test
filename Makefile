INCDIR   = include
SRCDIR   = src
BUILDDIR = build
OUTDIR   = $(BUILDDIR)/out
TARGET   = $(BUILDDIR)/app

CC       = gcc
CFLAGS   = -Wall -Wextra -I$(INCDIR) -g

SRCS     = $(wildcard $(SRCDIR)/*.c)
OBJS     = $(patsubst $(SRCDIR)/%.c,$(OUTDIR)/%.o,$(SRCS))

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(OUTDIR)/%.o: $(SRCDIR)/%.c | $(OUTDIR)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf $(OUTDIR) $(TARGET)
