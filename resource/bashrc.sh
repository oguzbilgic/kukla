# Uncomment line in bashrc, so it forces prompt to be colorful
if [ -f /root/.bashrc ]; then
    sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' /root/.bashrc
fi

if [ -f /home/ubuntu/.bashrc ]; then
    sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' /home/ubuntu/.bashrc
fi