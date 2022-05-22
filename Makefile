example: ip_connection.o brick_imu_v2.o example_simple.o
	gcc -pthread -o example ip_connection.o brick_imu_v2.o example_simple.o

example2: ip_connection.o brick_imu_v2.o example_callback.o
	gcc -pthread -o example2 ip_connection.o brick_imu_v2.o example_callback.o

ip_connection.o: ip_connection.c
	gcc -pthread -c ip_connection.c

brick_imu_v2.o: brick_imu_v2.c
	gcc -pthread -c brick_imu_v2.c

example_simple.o: example_simple.c
	gcc -pthread -c example_simple.c

clean: 
	rm *.o
