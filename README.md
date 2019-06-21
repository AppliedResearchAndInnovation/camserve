# CamServe
This is a tool to serve images captured from camera over the network as PNG.
This can be used for benchmarking image quality.

## Usage
1. Install necessary prerequistes (debian instructions):
    ```sh
    sudo apt-get install -y python3-pip python3-venv \
        libatlas3-base libwebp6 libtiff5 libjasper1 libilmbase-dev \
        libopenexr-dev libgstreamer1.0-dev libavcodec57 libavformat57 \
        libswscale4 libqtgui4 libqt4-test
    ```
2. Enable camera. Run `sudo raspi-config`
    - Interfacing Options > P1 Camera
    - Enable and reboot
3. Enable camera module as given [here](https://stackoverflow.com/a/52462621):
    ```sh
    sudo modprobe bcm2835-v4l2
    ```
3. Copy/clone this repository on the target device
4. Install virtual envrironment:
    ```sh
    ./setup.sh
    ```
5. Activate the virtual environment:
    ```sh
    source camenv/bin/activate
    ```
6. Start the server:
    ```sh
    ./camserve
    ```

### Acquire image on Workstation
The image is available at the `_image` API endpoint. You can specify height and
width using `h` and `w` URL parameters respectively. Keep in mind that all
combinations of height and width may not work. Unspecified dimensions default to
640 (height) and 480 (width). Examples (assuming device is at sbc.example.com):

```sh
curl -o image.png sbc.example.com/_image
curl -o image.png sbc.example.com/_image?w=640&h=480
```

## License
Copyright (c) Gokul Das B

All contents of this repository are licensed under GNU GPL v3 or later.
