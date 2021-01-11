FROM centos:7
RUN yum -y update
RUN yum -y upgrade
RUN yum install epel-release -y
RUN yum groupinstall "Development Tools" -y
RUN yum -y install \
    flex \
    elfutils-libelf-devel \
    libtool-ltdl-devel \
    libsndfile-devel \
    bison \
    git \
    wget \
    python \
    zlib-devel \
    glib2-devel \
    autoconf \
    automake \
    edk2-tools \
    libtool \
    libseccomp-devel \
    pixman-devel \
    bc \
    gcc-plugin-devel \
    gcc-c++ \
    quilt \
    dracut \
    inotify-tools \
    glibmm24-devel
RUN yum install python3 -y
RUN mkdir /source -p
WORKDIR /source
