#!/bin/bash
evtest --grab $(lib_input_helper $(libinput list-devices))
