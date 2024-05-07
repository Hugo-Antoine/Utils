# Generate the SSH key quietly, with no output
ssh-keygen -t ed25519 -C "$1" -f ~/.ssh/id_ed25519 -N "" -y > /dev/null 2>&1
 
# Start ssh-agent silently
eval "$(ssh-agent -s)" > /dev/null
 
# Add SSH key to ssh-agent quietly
ssh-add ~/.ssh/id_ed25519 > /dev/null 2>&1
 
# Copy the public key to the clipboard with no output
cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard > /dev/null 2>&1
 
# Echo message without a newline, suppressing all output
echo "The public key has been added to the clipboard! You can paste it where you want"