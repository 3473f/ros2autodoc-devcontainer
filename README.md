# ros2autodoc-devcontainer
This repo porvides a Visual Studio Code Devcontainer used for developing [ros2autodoc](https://github.com/3473f/ros2autodoc).

## Usage
1. Clone this repo
```
git clone https://github.com/3473f/ros2autodoc-devcontainer
```
2. Rename the folder to `.devcontainer`
```
mv ros2autodoc-devcontainer .devcontainer
```
3. Create a colcon workspace in the same directory
```
mkdir -p colcon_ws/src
```
4. Clone `ros2autodoc` to the workspace
```
git clone https://github.com/3473f/ros2autodoc
```
5. Open the folder in VS Code and launch the container
