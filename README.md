# install-OpenCV
Batch to install OpenCV with CUDA and Python binding on Windows
## Dependencies
- NVIDIA CUDA Toolkit
- Python (version >= 3)
- CMake (version >= 3.18.4 is recommended)
- Visual Studio with option "Desktop development with C++" (version 16 2019 is recommended for CMake >= 3.18.4 & version 17 2022 is recommended for CMake 3.23.2)
## Usage
- Download and unzip the OpenCV source code from [github.com/opencv/opencv/releases](https://github.com/opencv/opencv/releases)
- Download and unzip the OpenCV extra modules from [github.com/opencv/opencv_contrib/tags](https://github.com/opencv/opencv_contrib/tags)
- Edit the batch file `installOpenCV.bat` as below:
   - Set `openCvSource` value as the path to your OpenCV source code directory
   - Set `openCvExtraModules` value as the path to your OpenCV extra modules directory
   - Set `openCvBuild` value as the path to the directory where OpenCV is built (the batch file will create this folder if it does not exist yet)
   - Set `generator` value as your Visual Studio version
   - Set `archPtx` value as your NVIDIA GPU architecture version 
   - Set `pyVer` value as your Python version
   - Set `pathToPython` value as the path to your Python directory
   - Set `cudaToolkitDir` value as the path to your CUDA Tookit root directory
- Execute `installOpenCV.bat` for installation
## References
- [OpenCV build tutorial by James Bowley](https://jamesbowley.co.uk/build-opencv-with-cuda-in-windows/) 
- [Matching CUDA arch and CUDA gencode for various NVIDIA architectures](https://arnon.dk/matching-sm-architectures-arch-and-gencode-for-various-nvidia-cards/)
- [Intel's TBB Parallel Programming Library](https://www.intel.com/content/www/us/en/developer/articles/tool/oneapi-standalone-components.html#onetbb)
