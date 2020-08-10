#!/bin/bash


echo "Running!!!"
tsocks ncat -l --proxy-type http localhost 3128
