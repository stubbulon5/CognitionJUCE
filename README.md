# CognitionJUCE
Cognition Music Theory Visualization  built on JUCE


# Setup

- Install VSCode and "C/C++ IntelliSense, debugging, and code browsing". `(ms-vscode.cpptools)` extensio

- Install cmake (eg brew install cmake), then run

```
~ git clone --recurse-submodules -j8 git@github.com:stubbulon5/CognitionJUCE.git
~ cd CognitionJUCE
~ mkdir build_debug && cd build_debug
~ cmake .. && cmake --build . --config Debug


~ Todo 
- research difference between a debug/release build
- research why debugger does not work consistently


# The executable should now exist in `build_debug/Cognition_artefacts/Cognition.app`


cmake -B -DCMAKE_BUILD_TYPE=Release 


```
To pull the latest, incl. JUCE, run :
```
git pull --recurse-submodules
```




Name: C/C++
Id: ms-vscode.cpptools
Description: C/C++ IntelliSense, debugging, and code browsing.
Version: 1.22.11
Publisher: Microsoft
VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools





<details>
<summary>Guide for creating a new CMake based JUCE project</summary>
# Creating a JUCE Project with CMake
In [this blog post](https://www.nextstudio-daw.org/dev_log/2023/08/14/hello-world/), I will guide you through the process of setting up a JUCE project using CMake. JUCE is a powerful framework for building audio and multimedia applications, and CMake is a widely used tool for generating build systems. By combining these two tools, we can streamline the project setup process and focus on developing our audio application or plugin.

## Step 1: Create a Project Folder
The first step is to create a new project folder on your system. You can name it anything you like, but for this example, let’s call it “MyJUCEProject.”

mkdir MyJUCEProject
## Step 2: Clone JUCE from GitHub
Navigate to your project folder and clone the JUCE repository:
```
cd MyJUCEProject
git clone https://github.com/juce-framework/JUCE.git
```

## Step 3: Copy the CMake Template
After cloning JUCE, locate the “GuiApp” folder within “JUCE/examples/CMake/” and copy its contents into your project’s main directory:
```
cp -r JUCE/examples/CMake/GuiApp/* .
```
If you want to create a plugin, you shoud use this command instead:
```
cp -r JUCE/examples/CMake/AudioPlugin/* .
```

## Step 4: Customize CMakeLists.txt
In the main project directory, open the “CMakeLists.txt” file. Look for line 27:
#add_subdirectory(JUCE)
which should be commented out with a “#” symbol. Remove the “#” to include the cloned JUCE folder in the CMake configuration.

## Step 5: Create a Build Directory
Now, create a separate “build” folder within your project directory to keep the build artifacts organized.

```
mkdir build
```

## Step 6: Generate the Build System
Navigate to the “build” directory in the terminal or command prompt and run CMake from there to generate the build system based on the customized “CMakeLists.txt”:
```
cd build
cmake ..
```

## Step 7: Build the Project
Finally, use the build system to compile your JUCE project. Execute the following command in the “build” directory:
```
cmake --build .
```

And that’s it. If everything wend well. your built is located in the artifacts folder in your build folder. In a real project we would adjust the project name and set useful variables for it in the CMakeLists.txt. Also we would move our source code into a subfolder. But this setup could be a useful starting point and a easy to remember approach.
</details>