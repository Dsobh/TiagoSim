FROM ros:humble
USER root
ARG DEBIAN_FRONTEND=noninteractive

#Tiago Simulation Package
COPY ./src/install/sim_package.sh /home/sim_package.sh
RUN chmod +x /home/sim_package.sh && /home/sim_package.sh


