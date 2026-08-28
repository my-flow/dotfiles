-- Extra autostart processes.

-- Auto-rotate the internal display from the accelerometer (background daemon).
o.exec_on_start("~/.local/bin/screen-rotation")

-- Password manager.
o.launch_on_start("bitwarden-desktop")
