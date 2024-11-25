# Directories
SRC_DIR := src
BIN_DIR := bin

# Compiler and flags
CXX := g++
CXXFLAGS := -Wall -O2

# Linker flags
LDFLAGS := -lglfw -lGL -lassimp

# Your project's source files
SRC := $(SRC_DIR)/main.cpp $(SRC_DIR)/glad.c

# Output binary
TARGET := $(BIN_DIR)/out

# Default target
all: $(TARGET)

# Link the program
$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)

# Clean target to remove compiled files
clean:
	rm -f $(TARGET)

# Phony targets
.PHONY: all clean
