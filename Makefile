NAME = f
SRC = f.asm
OBJ = $(SRC:.asm=.o)
NASM = nasm
NASM_FLAGS = -f elf64
LD = ld

all: $(NAME)

$(NAME): $(OBJ)
	$(LD) -s -o $(NAME) $(OBJ)

%.o : %.asm
	$(NASM) $(NASM_FLAGS) -o $@ $<
