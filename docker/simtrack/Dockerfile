FROM cogrob/simtrack:cuda

RUN apt-get update

# build simtrack
ADD build.sh /root/build.sh
RUN cd /root \
  && bash build.sh
