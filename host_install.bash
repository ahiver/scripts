#!/bin/bash

source ./host.env.bash

pushd $SCRIPTS_DIR > /dev/null

# make bash scripts executable
find . -type f -name "*.bash" -print0 | xargs -0 chmod +x

./install/install_docs.bash
#./install/install_ros.bash
./install/install_ros_plugins.bash
./install/install_vins.bash
./install/install_host_utils.bash
# camera calibration
./install/install_kalibr.bash
# imu calibration
./install/install_allan_variance.bash
# install services to start ros and ros nodes on ubuntu startup
# Comment out if you prefer to run manually
./install_host_services.bash

popd > /dev/null
