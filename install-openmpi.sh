#!/bin/bash

DIR=/opt
VERSION=1.10

wget https://www.open-mpi.org/software/ompi/v$VERSION/downloads/openmpi-$VERSION.0.tar.gz
tar xvf openmpi-*.tar.gz
cd openmpi-$VERSION.0
./configure --prefix="/home/$USER/.openmpi"
make; sudo make install
export PATH="$PATH:/home/$USER/.openmpi/bin";
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/$USER/.openmpi/lib/"
echo export PATH="$PATH:/home/$USER/.openmpi/bin" >> /home/$USER/.bashrc ;
echo export LD_LIBRARY_PATH="$LD_LIBRARY_PA*TH:/home/$USER/.openmpi/lib/" >> /home/$USER/.bashrc
