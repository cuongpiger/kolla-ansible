#!/usr/bin/sh

# [cuongdm]
# Troubleshotting
#   - Install latexmk: https://zoomadmin.com/HowToInstall/UbuntuPackage/latexmk
#   - Install xelatex: https://github.com/rstudio/bookdown/issues/292
#   - Install xindy: https://github.com/sphinx-doc/sphinx/issues/8941

cmd=$1

generate_pdf_doc() {
  echo "Building the DevStack documentation"
  rm -rf doc/build/pdf
  sphinx-build -W --keep-going -b latex -j auto doc/source doc/build/pdf
  make -C doc/build/pdf
}

install_deps() {
  sudo apt-get update -y && \
  sudo apt-get install -y latexmk && \
  sudo apt-get install -y texlive-xetex && \
  sudo apt install -y xindy
}

if [ "$cmd" = "generate-docs" ]; then
  echo "Generating the Kolla Ansible documentation"
  generate_pdf_doc
  exit 0
elif [ "$cmd" = "install-deps" ]; then
  echo "Installing dependencies"
  install_deps
  exit 0
else
  echo "Usage: $0 generate-docs|install-deps"
  exit 1
fi
