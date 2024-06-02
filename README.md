# TPU VM Initial Setup Script

This is my peronal script for setting up a TPU VM.
Special thanks to the following people for their materials: [@ayaka14732](https://github.com/ayaka14732), [@yuneg11](https://github.com/yuneg11).

```bash
wget https://raw.githubusercontent.com/cs-giung/tpu-setup/main/setup.sh
chmod u+x setup.sh
./setup.sh
```

## Miscellaneous

* Using the [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme in [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh):
  ```bash
  wget https://raw.githubusercontent.com/cs-giung/tpu-setup/main/.zshrc -O ~/.zshrc
  ```

* Using 256 colors in [tmux](https://github.com/tmux/tmux):
  ```bash
  echo "set -g default-terminal "screen-256color"" >> ~/.tmux.conf
  ```

* Creating [virtualenv](https://virtualenv.pypa.io/en/latest/) and installing basic packages:
  ```bash
  python3.12 -m venv .venv
  source .venv/bin/activate
  pip install -U pip setuptools wheel google-cloud-tpu
  pip install -U "jax[tpu]" -f https://storage.googleapis.com/jax-releases/libtpu_releases.html
  ```

* Using [jax-smi](https://github.com/ayaka14732/jax-smi) for tracking memory usage of JAX processes:
  ```bash
  pip install jax-smi
  ```
  
  ```python
  from jax_smi import initialise_tracking
  initialise_tracking()
  # some computation...
  ```
