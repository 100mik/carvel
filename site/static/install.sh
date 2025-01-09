


#!/bin/bash
## **This is an autogenerated file, do not change it manually**

if test -z "$BASH_VERSION"; then
  echo "Please run this script using bash, not sh or any other shell." >&2
  exit 1
fi

install() {
  set -euo pipefail

  dst_dir="${K14SIO_INSTALL_BIN_DIR:-/usr/local/bin}"

  if [ -x "$(command -v wget)" ]; then
    dl_bin="wget -nv -O-"
  else
    dl_bin="curl -s -L"
  fi

  shasum -v 1>/dev/null 2>&1 || (echo "Missing shasum binary" && exit 1)

  if [[ `uname` == Darwin ]]; then
    binary_type=darwin-amd64
    
    ytt_checksum=833dda4d66e1d16d97dd8435140205587ddee6de25de3e1bf2d8766ad071e574
    imgpkg_checksum=036870d2489abec4b7d4fd4fdde7bc88d3945d55743d0a9282f3a47dc78eac53
    kbld_checksum=7a15d842a954854e0c04ff86264b686e7c8da43a2321338b4408b9b4af44f7c8
    kapp_checksum=0daa557bf6b00f99c187219b7765dc758a16801f5db462b88479d55aaae9b008
    kwt_checksum=ea9e6eb76b203799d9f0d3177ac32b9d1d8e531bae363141dfe7030cb6e53a88
    vendir_checksum=693d956011994b5be2491f7534faae1cb0a07cfed911cf5b9e0f3da65db36707
    kctrl_checksum=6b6ce86d5cfba186e25f6de085787eefa4937465fe56de0470d359749a205119
  else
    binary_type=linux-amd64
    
    ytt_checksum=026a12ee7108ff2d1150eb1347d544367d92e993ade7b2d2727c4c8d13a47a6b
    imgpkg_checksum=15ca4f8ec4c7a1c6ecf06740a942149887a73845565f0ffbf6ccbf013b65a58a
    kbld_checksum=e076af83ef05765e6bf825f2bf5ac31c365cc0d513b7317bd634f3b9c6b5ee5d
    kapp_checksum=14207d33130e833d201f2cd6e3e87435fb8b9534298843ed3c00fe7cda5221df
    kwt_checksum=1022483a8b59fe238e782a9138f1fee6ca61ecf7ccd1e5f0d98e95c56df94d87
    vendir_checksum=3d31f00efc0a11a8dfcf662d45a120d18f99105d1502bbfe12a6cbd9d0b1f570
    kctrl_checksum=d7dfb3b306d957486e14631e3aa6f5a4c7dfc8892bde5eb1a233635b188c0b2a
  fi

  echo "Installing ${binary_type} binaries..."

  
  echo "Installing ytt..."
  $dl_bin https://github.com/carvel-dev/ytt/releases/download/v0.51.1/ytt-${binary_type} > /tmp/ytt
  echo "${ytt_checksum}  /tmp/ytt" | shasum -c -
  mv /tmp/ytt ${dst_dir}/ytt
  chmod +x ${dst_dir}/ytt
  echo "Installed ${dst_dir}/ytt v0.51.1"
  
  echo "Installing imgpkg..."
  $dl_bin https://github.com/carvel-dev/imgpkg/releases/download/v0.44.0/imgpkg-${binary_type} > /tmp/imgpkg
  echo "${imgpkg_checksum}  /tmp/imgpkg" | shasum -c -
  mv /tmp/imgpkg ${dst_dir}/imgpkg
  chmod +x ${dst_dir}/imgpkg
  echo "Installed ${dst_dir}/imgpkg v0.44.0"
  
  echo "Installing kbld..."
  $dl_bin https://github.com/carvel-dev/kbld/releases/download/v0.45.0/kbld-${binary_type} > /tmp/kbld
  echo "${kbld_checksum}  /tmp/kbld" | shasum -c -
  mv /tmp/kbld ${dst_dir}/kbld
  chmod +x ${dst_dir}/kbld
  echo "Installed ${dst_dir}/kbld v0.45.0"
  
  echo "Installing kapp..."
  $dl_bin https://github.com/carvel-dev/kapp/releases/download/v0.64.0/kapp-${binary_type} > /tmp/kapp
  echo "${kapp_checksum}  /tmp/kapp" | shasum -c -
  mv /tmp/kapp ${dst_dir}/kapp
  chmod +x ${dst_dir}/kapp
  echo "Installed ${dst_dir}/kapp v0.64.0"
  
  echo "Installing kwt..."
  $dl_bin https://github.com/carvel-dev/kwt/releases/download/v0.0.8/kwt-${binary_type} > /tmp/kwt
  echo "${kwt_checksum}  /tmp/kwt" | shasum -c -
  mv /tmp/kwt ${dst_dir}/kwt
  chmod +x ${dst_dir}/kwt
  echo "Installed ${dst_dir}/kwt v0.0.8"
  
  echo "Installing vendir..."
  $dl_bin https://github.com/carvel-dev/vendir/releases/download/v0.43.0/vendir-${binary_type} > /tmp/vendir
  echo "${vendir_checksum}  /tmp/vendir" | shasum -c -
  mv /tmp/vendir ${dst_dir}/vendir
  chmod +x ${dst_dir}/vendir
  echo "Installed ${dst_dir}/vendir v0.43.0"
  
  echo "Installing kctrl..."
  $dl_bin https://github.com/carvel-dev/kapp-controller/releases/download/v0.55.0/kctrl-${binary_type} > /tmp/kctrl
  echo "${kctrl_checksum}  /tmp/kctrl" | shasum -c -
  mv /tmp/kctrl ${dst_dir}/kctrl
  chmod +x ${dst_dir}/kctrl
  echo "Installed ${dst_dir}/kctrl v0.55.0"
  
}

install
