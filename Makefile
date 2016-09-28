NAME = eensim

CC=g++
CXXFLAGS=--std=c++11 -o -lboost_system -lboost_date_time -lboost_thread
HFLAGS=--std=c++11 -c -lboost_system -lboost_date_time -lboost_thread

SRCDIR = ./src/
ODIR = ./obj/
BINDIR = ./bin/

GRAPHOBJS = $(addprefix $(ODIR), graph.o)
GRAPHOBJSRC = $(addprefix $(SRCDIR), graph.cpp)

SIMSRC = $(addprefix $(SRCDIR), main.cpp)

BINNAME = $(addprefix $(BINDIR), $(NAME))

all : $(SIMSRC) $(GRAPHOBJS)
	    $(CC) $(CXXFLAGS) $(BINNAME) $(SIMSRC) $(GRAPHOBJS)

$(GRAPHOBJS) : $(GRAPHDOBJSRC)
	$(CC) $(HFLAGS) $(GRAPHOBJSRC) -o $@ $<
