CFLAGS += -g -Wall -Wextra -pthread -fsanitize=address
CXXFLAGS += -std=c++17 -g -Wall -Wextra -pthread -fsanitize=address

all: ec ep

e%: %.c
	$(CC) $(CFLAGS) -o $@ $^

e%: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^
