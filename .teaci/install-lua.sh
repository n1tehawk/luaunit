# This is a shell script to help with setting up the desired Lua environment.
# It is intended to be run as build (sub)command from within Tea CI.

# version numbers and file names for binaries from http://sf.net/p/luabinaries/
VER_51=5.1.5
VER_52=5.2.4
VER_53=5.3.2
ZIP_51=lua-${VER_51}_Win32_bin.zip
ZIP_52=lua-${VER_52}_Win32_bin.zip
ZIP_53=lua-${VER_53}_Win32_bin.zip

# MinGW prefix (for pacman)
MINGW=mingw-w64-i686-

if [[ "${LUA}" == "lua5.1.exe" ]]; then
  echo Setting up Lua 5.1 ...
  curl -fLsS -o ${ZIP_51} http://sourceforge.net/projects/luabinaries/files/${VER_51}/Tools%20Executables/${ZIP_51}/download
  unzip ${ZIP_51}
fi

if [[ "${LUA}" == "lua52.exe" ]]; then
    echo Setting up Lua 5.2 ...
  curl -fLsS -o ${ZIP_52} http://sourceforge.net/projects/luabinaries/files/${VER_52}/Tools%20Executables/${ZIP_52}/download
  unzip ${ZIP_52}
fi

if [[ "${LUA}" == "lua53.exe" ]]; then
    echo Setting up Lua 5.3 ...
  curl -fLsS -o ${ZIP_53} http://sourceforge.net/projects/luabinaries/files/${VER_53}/Tools%20Executables/${ZIP_53}/download
  unzip ${ZIP_53}
fi

if [[ "${LUAENV}" == "luajit" ]]; then
    echo Setting up LuaJIT ...
    pacman -S -v --needed --noconfirm --noprogressbar ${MINGW}luajit-git
    which lua
    which luajit
    which ${MINGW}luajit
    which ${MINGW}luajit-git
fi
