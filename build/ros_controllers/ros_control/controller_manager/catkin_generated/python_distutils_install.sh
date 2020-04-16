#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/haoran/US_UR3/src/ros_controllers/ros_control/controller_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/haoran/US_UR3/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/haoran/US_UR3/install/lib/python2.7/dist-packages:/home/haoran/US_UR3/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/haoran/US_UR3/build" \
    "/usr/bin/python" \
    "/home/haoran/US_UR3/src/ros_controllers/ros_control/controller_manager/setup.py" \
    build --build-base "/home/haoran/US_UR3/build/ros_controllers/ros_control/controller_manager" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/haoran/US_UR3/install" --install-scripts="/home/haoran/US_UR3/install/bin"
