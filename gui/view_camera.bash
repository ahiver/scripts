#!/bin/bash

rosrun image_view image_view image:=${CAMERA_TOPIC} _image_transport:=compressed
