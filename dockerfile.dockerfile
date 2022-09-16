FROM fedora
RUN yum -y update
RUN yum install -y git mc cmake rust g++ yum SDL2-devel cargo
RUN yum groupinstall -y "Development Tools"
RUN cd ~ && git clone https://github.com/ja2-stracciatella/ja2-stracciatella.git && cd ja2-stracciatella \
&& mkdir _bin
RUN  cd ~/ja2-stracciatella/_bin/ && cmake ..