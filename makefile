
 # @file makefile
 # @author Jason Moss
 # @date 2023-09-11
 # @brief a makefile that compiles the file
 # 
 # Compile the file

#CC compiles files
CC = g++
#Compile with all errors and warnings
CFLAGS = -g -Wall
TARGET = employee

# what for?
all:$(TARGET)

$(TARGET):Employee.o Officer.o Supervisor.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o Officer.o Supervisor.o main.o


Employee.o:Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

Officer.o:Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o:Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp Supervisor.h


main.o:	main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) -c main.cpp



clean:
	$(RM) $(TARGET) *.o *~
