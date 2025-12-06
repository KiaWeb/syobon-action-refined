del syobon.data
del syobon.html
del syobon.js
del syobon.wasm

cd emsdk

call emsdk install latest
call emsdk activate latest

cd ..

call emsdk_env.bat

emcc main.cpp loadg.cpp DxLib.cpp -s USE_SDL=1 -s USE_SDL_IMAGE=1 --preload-file res@res --preload-file SE@SE --preload-file BGM@BGM -o syobon.html --use-preload-plugins -s STACK_SIZE=512000 -s INITIAL_MEMORY=256MB -s USE_GLFW=3 -s ALLOW_BLOCKING_ON_MAIN_THREAD=0
