# Curseforge Docker
The goal of this docker is to run curseforge in a sandbox environment allowing you to update
your addons without having to run overwolf software on your computer.

The volume mount will mount your Windows World of Warcraft folder into the location that
curseforge expects it to be in for auto detection.

# Running the Container

1) Install [Docker](https://www.docker.com/products/docker-desktop/)
1) Run this command in a terminal (CMD)
   ```shell
    docker run -p 6080:80 -v "//c/Program Files (x86)/World of Warcraft":"/root/.wine/drive_c/Program Files/World of Warcraft/" growlithe/curseforge-docker:latest
    ```
1) Open your browser to [http://localhost:6080/](http://localhost:6080/)
    1) The screen might be white for a few seconds while the display boots up
1) Click the run_curseforge.sh icon on the desktop
1) Once inside the app, click on WoW
1) Select your game version (Retail, BCC, WOTLKC, etc)
1) Click the refresh button to load the currently installed addons
    1) This button is all the way to the right of the row with "Sync" and looks like two arrows in a circle
1) Update and find new addons as you please
1) Stop the container once you are done (start it when you want to update again)
