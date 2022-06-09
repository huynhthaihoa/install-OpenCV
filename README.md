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
   - Specify the path to your OpenCV source code directory as `openCvSource`
   - Specify the path to your OpenCV extra modules directory as `openCvExtraModules`
   - Specify the path to the directory where OpenCV is built as `openCvBuild` (the batch file will create this folder if it does not exist yet)
   - Set `generator` value according to your Visual Studio version
   - Set `DCUDA_ARCH_PTX` value according to your NVIDIA GPU architecture version (Reference: [Matching CUDA arch and CUDA gencode for various NVIDIA architectures](https://arnon.dk/matching-sm-architectures-arch-and-gencode-for-various-nvidia-cards/))
- Define these system variables:
   - `CUDA_PATH`: path to your CUDA Tookit root directory (e.g, ``C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.7``)
   - `PYTHON_INCLUDE_PATH`: path to your Python include directory (e.g, ``C:\Users\hoa\AppData\Local\Programs\Python\Python39\include``)
   - `PYTHON_LIBRARY_PATH`: path to your Python library (e.g, ``C:\Users\hoa\AppData\Local\Programs\Python\Python39\libs\python39.lib``)
   - `PYTHON_EXECUTABLE_PATH`: path to your Python executable file (e.g, ``C:\Users\hoa\AppData\Local\Programs\Python\Python39\python.exe``)
   - `PYTHON_NUMPY_PATH`: path to your Numpy include directory (e.g, ``C:\Users\hoa\AppData\Local\Programs\Python\Python39\Lib\site-packages\numpy\core\include``)
   - `PYTHON_SITE_PACKAGES_PATH`: Path to your Python site-packages directory (e.g, ``C:\Users\hoa\AppData\Local\Programs\Python\Python39\Lib\site-packages``) 
- Execute `installOpenCV.bat` for installation
