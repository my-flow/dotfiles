# Load grc (Generic Colouriser) configuration
# This file enables colorized output for various command-line tools

# Check if grc is installed and the configuration file exists
if test -f /etc/grc.fish
    # Attempt to source the grc configuration
    source /etc/grc.fish
end

