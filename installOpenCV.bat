set "openCvSource=D:/SOURCE/opencv-4.6.0/opencv-4.6.0"
set "openCvExtraModules=D:/SOURCE/opencv-4.6.0/opencv_contrib-4.6.0/modules"
set "openCvBuild=D:/SOURCE/opencv-4.6.0/build"
set "buildType=Release"
set "generator=Visual Studio 17 2022"
mkdir "%openCvBuild%"
"C:\Program Files\CMake\bin\cmake.exe" ^
-B"%openCvBuild%/" ^
-H"%openCvSource%/" ^
-G"%generator%" ^
-DCMAKE_BUILD_TYPE="%buildType%" ^
-DOPENCV_EXTRA_MODULES_PATH="%openCvExtraModules%/" ^
-DINSTALL_TESTS=ON ^
-DINSTALL_C_EXAMPLES=ON ^
-DBUILD_EXAMPLES=ON ^
-DBUILD_opencv_world=ON ^
-DWITH_CUDA=ON ^
-DCUDA_TOOLKIT_ROOT_DIR="%CUDA_PATH%" ^
-DCUDA_FAST_MATH=ON ^
-DWITH_CUBLAS=ON ^
-DCUDA_ARCH_PTX=8.6 ^
-DWITH_NVCUVID=ON ^
-DWITH_OPENGL=ON ^
-DWITH_MFX=ON ^
-DBUILD_opencv_cudaarithm=OFF ^
-DBUILD_opencv_cudabgsegm=OFF ^
-DBUILD_opencv_cudafeatures2d=OFF ^
-DBUILD_opencv_cudafilters=OFF ^
-DBUILD_opencv_cudaimgproc=OFF ^
-DBUILD_opencv_cudalegacy=OFF ^
-DBUILD_opencv_cudaobjdetect=OFF ^
-DBUILD_opencv_cudaoptflow=OFF ^
-DBUILD_opencv_cudastereo=OFF ^
-DBUILD_opencv_cudawarping=OFF ^
-DBUILD_opencv_cudacodec=OFF ^
-DWITH_MKL=ON ^
-DMKL_USE_MULTITHREAD=ON ^
-DMKL_WITH_TBB=ON ^
-DWITH_TBB=ON ^
-DOPENCV_ENABLE_NONFREE=ON ^
-DBUILD_opencv_rgbd=OFF ^
-DHAVE_opencv_python3=ON ^
-DBUILD_opencv_python3=ON ^
-DPYTHON3_INCLUDE_DIR="%PYTHON_INCLUDE_PATH%" ^
-DPYTHON3_LIBRARY="%PYTHON_LIBRARY_PATH%" ^
-DPYTHON3_EXECUTABLE="%PYTHON_EXECUTABLE_PATH%" ^
-DPYTHON3_NUMPY_INCLUDE_DIRS="%PYTHON_NUMPY_PATH%" ^
-DPYTHON3_PACKAGES_PATH="%PYTHON_SITE_PACKAGES_PATH%" ^
-DOPENCV_SKIP_PYTHON_LOADER=ON

"C:\Program Files\CMake\bin\cmake.exe" --build %openCvBuild% --target INSTALL --config Release


