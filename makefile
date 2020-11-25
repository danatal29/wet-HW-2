
#Definitions

CC=gcc
CFLAGS=-g -Wall
CCLINK=gcc
OBJS=file0.o file1.o main.o file2.o file3.o file4.o
RM=rm -f
TARGET =prog

$(TARGET): $(OBJS)
	  $(CCLINK) -o $(TARGET) $(OBJS) 

#Dependencies

main.o: main.c  file0.h file1.h file2.h file3.h file4.h
file0.o: file0.c file0.h file3.h
file1.o: file1.c file1.h file0.h file3.h file4.h
file2.o: file2.c file2.h file4.h
file3.o: file3.c  file3.h file1.h
file4.o: file4.c  file4.h file2.h


#Clean

clean:
	  $(RM) prog *.o *.exe 
