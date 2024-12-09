


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
    
    ytt_checksum=fa1badba07995154c3537502d453503e0994a49793d2f54e33ff9d0137de133c
    imgpkg_checksum=036870d2489abec4b7d4fd4fdde7bc88d3945d55743d0a9282f3a47dc78eac53
    kbld_checksum=a81eced438e60a0ba3c87c3823673eb9f935a8e0e7694c0232e70674001f014e
    kapp_checksum=46b9961d8998c4a797ea3d648b83cf18be616945b48119d0b1e7a66813dc3658
    kwt_checksum=ea9e6eb76b203799d9f0d3177ac32b9d1d8e531bae363141dfe7030cb6e53a88
    vendir_checksum=ad63b667c7756cac7804e080861b3e794fbfc83ba662f5461928c30fe890a828
    kctrl_checksum=eae250c163e61f0ffea6ebb749280fcc0893e26f9509989d60dbe90675001019
  else
    binary_type=linux-amd64
    
    ytt_checksum=f7ac37761607fefe06a4cc40840a3378a6e8365417d70d06f171cbc4d5469aca
    imgpkg_checksum=15ca4f8ec4c7a1c6ecf06740a942149887a73845565f0ffbf6ccbf013b65a58a
    kbld_checksum=ffd557f0057c22b8f49ff77ee1ea40d93f3da2b9cb18a82e9dda9399970c2282
    kapp_checksum=33702a40b6032ada742d73c59afeb393d0830a1913e3a599ca995eba3e68a57e
    kwt_checksum=1022483a8b59fe238e782a9138f1fee6ca61ecf7ccd1e5f0d98e95c56df94d87
    vendir_checksum=f878f3e16b702c47e42b2215a670d65028bc0158643ed28a2dfaa6f37b1344ac
    kctrl_checksum=f06df7375eb4edc4a7ddb194a0c608d627efa2387faa539552d029d9bd901b9e
  fi

  echo "Installing ${binary_type} binaries..."

  
  echo "Installing ytt..."
  $dl_bin https://github.com/carvel-dev/ytt/releases/download/v0.51.0/ytt-${binary_type} > /tmp/ytt
  echo "${ytt_checksum}  /tmp/ytt" | shasum -c -
  mv /tmp/ytt ${dst_dir}/ytt
  chmod +x ${dst_dir}/ytt
  echo "Installed ${dst_dir}/ytt v0.51.0"
  
  echo "Installing imgpkg..."
  $dl_bin https://github.com/carvel-dev/imgpkg/releases/download/v0.44.0/imgpkg-${binary_type} > /tmp/imgpkg
  echo "${imgpkg_checksum}  /tmp/imgpkg" | shasum -c -
  mv /tmp/imgpkg ${dst_dir}/imgpkg
  chmod +x ${dst_dir}/imgpkg
  echo "Installed ${dst_dir}/imgpkg v0.44.0"
  
  echo "Installing kbld..."
  $dl_bin https://github.com/carvel-dev/kbld/releases/download/v0.44.1/kbld-${binary_type} > /tmp/kbld
  echo "${kbld_checksum}  /tmp/kbld" | shasum -c -
  mv /tmp/kbld ${dst_dir}/kbld
  chmod +x ${dst_dir}/kbld
  echo "Installed ${dst_dir}/kbld v0.44.1"
  
  echo "Installing kapp..."
  $dl_bin https://github.com/carvel-dev/kapp/releases/download/v0.63.3/kapp-${binary_type} > /tmp/kapp
  echo "${kapp_checksum}  /tmp/kapp" | shasum -c -
  mv /tmp/kapp ${dst_dir}/kapp
  chmod +x ${dst_dir}/kapp
  echo "Installed ${dst_dir}/kapp v0.63.3"
  
  echo "Installing kwt..."
  $dl_bin https://github.com/carvel-dev/kwt/releases/download/v0.0.8/kwt-${binary_type} > /tmp/kwt
  echo "${kwt_checksum}  /tmp/kwt" | shasum -c -
  mv /tmp/kwt ${dst_dir}/kwt
  chmod +x ${dst_dir}/kwt
  echo "Installed ${dst_dir}/kwt v0.0.8"
  
  echo "Installing vendir..."
  $dl_bin https://github.com/carvel-dev/vendir/releases/download/v0.41.1/vendir-${binary_type} > /tmp/vendir
  echo "${vendir_checksum}  /tmp/vendir" | shasum -c -
  mv /tmp/vendir ${dst_dir}/vendir
  chmod +x ${dst_dir}/vendir
  echo "Installed ${dst_dir}/vendir v0.41.1"
  
  echo "Installing kctrl..."
  $dl_bin https://github.com/carvel-dev/kapp-controller/releases/download/v0.54.0/kctrl-${binary_type} > /tmp/kctrl
  echo "${kctrl_checksum}  /tmp/kctrl" | shasum -c -
  mv /tmp/kctrl ${dst_dir}/kctrl
  chmod +x ${dst_dir}/kctrl
  echo "Installed ${dst_dir}/kctrl v0.54.0"
  
}

install
