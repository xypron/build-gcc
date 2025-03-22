all:
	make build

gcc:
	git clone git://gcc.gnu.org/git/gcc.git gcc

build: gcc
	mkdir -p build
	cd build && \
	../gcc/configure \
	-v \
	--with-pkgversion='basepoints-gcc-15-8647-gcb537f0d838' \
	--enable-languages=c,ada,cobol,c++,d,fortran,go,lto,m2,objc,obj-c++,rust \
	--prefix=/usr \
	--with-gcc-major-version-only \
	--program-suffix=-15 \
	--program-prefix=riscv64-linux-gnu- \
	--enable-shared \
	--enable-linker-build-id \
	--libexecdir=/usr/libexec \
	--without-included-gettext \
	--enable-threads=posix \
	--libdir=/usr/lib \
	--enable-nls \
	--enable-clocale=gnu \
	--enable-libstdcxx-debug \
	--enable-libstdcxx-time=yes \
	--with-default-libstdcxx-abi=new \
	--enable-libstdcxx-backtrace \
	--enable-gnu-unique-object \
	--disable-libquadmath \
	--disable-libquadmath-support \
	--enable-plugin \
	--enable-default-pie \
	--with-system-zlib \
	--enable-libphobos-checking=release \
	--with-target-system-zlib=auto \
	--enable-objc-gc=auto \
	--enable-multiarch \
	--disable-werror \
	--disable-multilib \
	--with-abi=lp64d \
	--with-arch=rv64imafdcv_zicbom_zicboz_zicntr_zicond_zicsr_zifencei_zihintntl_zihintpause_zihpm_zfa_zfhmin_zba_zbb_zbs_zkt_zvbb_zvkt \
	--enable-checking=yes \
	--build=riscv64-linux-gnu \
	--host=riscv64-linux-gnu \
	--target=riscv64-linux-gnu
	cd build && \
	make -j$$(nproc)
	cd build && \
	make check -j$$(nproc)
