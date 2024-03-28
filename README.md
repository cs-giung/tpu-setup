# tpu-setup

## Code Snippets

* a
  ```bash
  python3.10 -m venv .venv
  source .venv/bin/activate
  ```

  ```bash
  pip install -U pip setuptools wheel google-cloud-tpu
  pip install -U "jax[tpu]" -f https://storage.googleapis.com/jax-releases/libtpu_releases.html
  ```

* https://unix.stackexchange.com/questions/1045/getting-256-colors-to-work-in-tmux
  ```bash
  echo "set -g default-terminal "screen-256color"" >> ~/.tmux.conf
  ```

* https://github.com/ayaka14732/jax-smi
  ```bash
  pip install jax-smi
  ```
  
  ```python
  from jax_smi import initialise_tracking
  initialise_tracking()
  # some computation...
  ```
