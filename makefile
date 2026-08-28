CXX     = g++
CXXFLAGS = -std=c++17 -Wall
TARGET  = app
SRCS    = $(wildcard *.cpp)
OBJS    = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	rm -f $(OBJS) $(TARGET)
