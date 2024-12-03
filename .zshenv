
. "$HOME/.cargo/env"
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin

function create_rust_app {
  if [[ -z "$1" ]]; then
    echo "Error: Application name is required"
    return 1
  fi

  cargo new --bin $1
  cd $1
  echo -e "\n[lints.clippy]\npedantic = \"warn\"\nnursery = \"warn\"" >> Cargo.toml
}

