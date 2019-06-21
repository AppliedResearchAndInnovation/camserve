# CamServe
This is a tool to serve images captured from camera over the network as PNG.
This can be used for benchmarking image quality.

## Usage
1. Copy/clone this repository on the target device
2. Install virtual envrironment:
    ```sh
    ./setup.sh
    ```
3. Activate the virtual environment:
    ```sh
    source camenv/bin/activate
    ```
4. Start the server:
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
