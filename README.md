# tpu-setup

## Code Snippets

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
