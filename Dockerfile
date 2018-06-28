FROM ubuntu

LABEL maintainer="Moses Liao <moses.liao.sd@gmail.com>"

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install software-properties-common openssl git locales ant unzip g++ libgdk-pixbuf2.0-dev python-pip cmake libx11-dev libxmu-dev libglu1-mesa-dev libgl2ps-dev libxi-dev libzip-dev libpng-dev libcurl4-gnutls-dev libfontconfig1-dev libsqlite3-dev libglew-dev libssl-dev libgtk-3-dev libglfw3 libglfw3-dev xorg-dev

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN cd /opt && \
    wget -q https://dl.google.com/android/repository/android-ndk-r17b-linux-x86_64.zip && \
    unzip *ndk*linux*.zip && \
    rm *ndk*linux*.zip

ENV NDK_ROOT /opt/android-ndk-r17b

RUN mkdir -p /opt/android-sdk && cd /opt/android-sdk && \
    wget -q https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip && \
    unzip *tools*linux*.zip && \
    rm *tools*linux*.zip

ENV ANDROID_SDK_ROOT /opt/android-sdk
ENV PATH="$ANDROID_SDK_ROOT/tools/bin:${PATH}"

# ADD license_accepter.sh /opt/
RUN sdkmanager --licenses

RUN git clone https://github.com/cocos2d/cocos2d-x.git /cocos2dx
RUN cd /cocos2dx && git checkout cocos2d-x-3.17
RUN /cocos2dx/download-deps.py --remove-download yes
RUN cd /cocos2dx && git submodule update --init

ENV COCOS_X_ROOT /cocos2dx
ENV COCOS_CONSOLE_ROOT /cocos2dx/tools/cocos2d-console/bin
ENV COCOS_TEMPLATE_ROOT /cocos2dx/templates
ENV ANT_ROOT /usr/bin/ant

ENV PATH="/cocos2dx/tools/cocos2d-console/bin:${PATH}"
ENV PATH="/cocos2dx/template:${PATH}"

RUN cd /cocos2dx && ./setup.py

RUN apt-get -y autoclean && apt-get -y autoremove

# Testing for cocos2dx
RUN cd /cocos2dx/build && echo 'y' | ./install-deps-linux.sh
RUN cd /cocos2dx/build && mkdir linux-build && cd linux-build && cmake ../..

# Define default command.
CMD ["bash"]

#entrypoint
WORKDIR /project
