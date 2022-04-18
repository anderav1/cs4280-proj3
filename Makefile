# Lexi Anderson
# CS4280, Proj 3
# Makefile


CC = g++
CFLAGS = -g -Wall -std=c++11
OBJS = main.o parser.o scanner.o
DEPS = parser.h scanner.h node.h token.h
TARGET = statSem

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^
  
$(OBJS): %.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) -o $@ -c $<
  

# clean up generated files
.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJS)
  
  
