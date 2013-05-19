#make for build mkbootimg 
#create by sn 2012-5-23 21:14:18
#modify date 2013-4-9 21:37:48
#modify data 2013-05-19 
CROSS_COMPILE := 
CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)ld
AR = $(CROSS_COMPILE)ar
LDCFLAGES =
STATIC_LIB = libmincrypt.a
LIBGET_TIME_OBJ := get_time.o
LIBGET_TIME_SRC := get_time.c
STATIC_LIB_GET_TIME := libget_time.a

#MKBOOTIMG_TARGET = arm-mkbootimg
MKBOOTIMG_OBJ = mkbootimg.o get_time.o
MKBOOTIMG_SRC = mkbootimg.c get_time.c 
#UNPACKBOOT_TARGET = arm-unpackbootimg
UNPACKBOOTIMG_OBJ = unpackbootimg.o get_time.o
UNPACKBOOTIMG_SRC = unpackbootimg.c get_time.c 
LIBMINCRYPT_OBJ = sha.o rsa.o
SHA_SRC = sha.c
RSA_SRC = rsa.c
MKBOOTFS_OBJ = mkbootfs.o
MKBOOTFS_SRC = mkbootfs.c
all: lib  mkboot unpackboot mkbootimg  
mkbootimg:$(MKBOOTIMG_OBJ)
	$(CC) -o $@ $< $(STATIC_LIB) get_time.o 
$(MKBOOTIMG_OBJ):$(MKBOOTIMG_SRC)
%.o:%.c
	$(CC) -c $< 

unpackboot:unpackbootimg
unpackbootimg:$(UNPACKBOOTIMG_OBJ)
	$(CC) -o $@ $< $(STATIC_LIB) get_time.o
$(UNPACKBOOTIMG_OBJ):$(UNPACKBOOTIMG_SRC)
%.o:%.c
	$(CC) -c $<

mkboot:mkbootfs
mkbootfs:$(MKBOOTFS_OBJ)
	$(CC) -o $@ $<
$(MKBOOTFS_OBJ):$(MKBOOTFS_SRC)
	$(CC) -c $<

lib:libmincrypt.a
libmincrypt.a:$(LIBMINCRYPT_OBJ)
	$(AR) -r $(STATIC_LIB) $(LIBMINCRYPT_OBJ) 
sha.o:$(SHA_SRC)
	$(CC) -c  $<
rsa.o:$(RSA_SRC)
	$(CC) -c  $<



clean:
	rm -f mkbootfs mkbootimg unpackbootimg $(MKBOOTIMG_OBJ)  $(UNPACKBOOTIMG_OBJ) $(LIBMINCRYPT_OBJ) $(STATIC_LIB) $(MKBOOTFS_OBJ) *.a *.o 

