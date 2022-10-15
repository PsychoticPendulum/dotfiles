#! /bin/bash

uname -r | sed s/'-arch[0-9]-[0-9]'/''/g
