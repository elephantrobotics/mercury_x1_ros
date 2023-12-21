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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/er/mercury_x1_ros/src/navigation-melodic/base_local_planner"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/er/mercury_x1_ros/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/er/mercury_x1_ros/install/lib/python3/dist-packages:/home/er/mercury_x1_ros/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/er/mercury_x1_ros/build" \
    "/usr/bin/python3" \
    "/home/er/mercury_x1_ros/src/navigation-melodic/base_local_planner/setup.py" \
     \
    build --build-base "/home/er/mercury_x1_ros/build/navigation-melodic/base_local_planner" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/er/mercury_x1_ros/install" --install-scripts="/home/er/mercury_x1_ros/install/bin"
