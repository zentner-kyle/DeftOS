#!/usr/bin/env python2
from __future__ import print_function
import fabricate as fab

def build():
    fab.run('mkdir', '-p', 'build')
    fab.run('arm-none-eabi-as', 'src/boot.s', '-o', 'build/boot.o')
    #fab.run('rustc', '--target', 'target.json', 'src/main.rs', '--emit', 'obj', '-o', 'build/main.o')
    fab.run('arm-none-eabi-ld', '-T', 'src/linker.ld', '-o', 'build/deft.bin', 'build/boot.o')
    #fab.run('mkimage', '-A', 'arm', '-O
    fab.run('cp', 'build/deft.bin', '/srv/tftp/')

fab.main()
