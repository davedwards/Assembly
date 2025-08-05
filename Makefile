# Define variables
ASM = gcc
ASM_FLAGS = -static -nostdlib 
TARGET = asm
SOURCE = asm.s

# Default target
all: $(TARGET)
	
$(TARGET): $(OBJECT)
	$(ASM) $(SOURCE) $(ASM_FLAGS) $< -o $(TARGET)

run:
	./$(TARGET)

# Clean target to remove generated files
clean:
	rm -f $(OBJECT) $(TARGET)
