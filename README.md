# rm_root
Root directory for each rm project. Contains build tools, set up scripts, etc.

# Post setup steps
1. modify the fork you are using to allow for jobs
2. modify the build container command to point towards your repo (instructions are in the script)

# Post build steps
1. make the telemetry data accessible
When you are done building your docker container, modify the following command so that the host directory points the folder
that contains your test data and then run it. This command should make it so that the test programs will be able to access the test data.
docker run -d -v /absolute/path/on/host:/:ro image_name


# Deleting Docker containers

1. stop the container
2. delete the container
3. delete the image
4. delete the volume (ws). This is crucial.