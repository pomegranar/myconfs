Turning your Linux Mint PC into a Minecraft server is a great way to enjoy the game with your college friends during winter break. Here's a step-by-step guide to help you set up a Minecraft server on your Linux Mint PC:

**Prerequisites:**

1. **Linux Mint version**: Make sure you're running at least Linux Mint 19 or later (Bionic Beaver).
2. **Java**: Ensure that Java is installed and up-to-date on your system.
3. **Internet connection**: You'll need a stable internet connection to connect to the server.

**Step 1: Install Minecraft Server**

1. Open the Terminal on your Linux Mint PC by pressing `Ctrl+Alt+T` or searching for "Terminal" in the app launcher.
2. Run the following command to add the Minecraft repository:
```bash
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv 7C0CF8E6
```
3. Add the Minecraft repository to your system:
```bash
sudo echo "deb [arch=amd64,arm64] https://launchpad.net/~minecraft/mc/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/minecraft.list
```
4. Update the package list:
```bash
sudo apt update
```
5. Install Minecraft Server:
```bash
sudo apt install minecraft-server
```

**Step 2: Configure Minecraft Server**

1. Edit the Minecraft server configuration file using a text editor (e.g., `nano`):
```bash
sudo nano /etc/minecraft/server.properties
```
2. Set the following settings to your liking:

* `server-name`: The name of your server.
* `world-save-directory`: The directory where your server will save its world files.
* `port`: The port number for your server (default is 25565).
* `gamemode`: The default gamemode for new players.

Example:
```properties
server-name=CollegeCraftServer
world-save-directory=/home/yourusername/.minecraft/worlds
port=25565
gamemode=survival
```
3. Save and exit the file using `Ctrl+X`, then press `Y` to confirm changes, and finally press `Enter` to save.

**Step 3: Start Minecraft Server**

1. Restart the Minecraft server service:
```bash
sudo systemctl restart minecraft-server
```

**Step 4: Join Your Server**

1. On a different machine (or using your Linux Mint PC), launch Minecraft and click on "Multiplayer."
2. Select "Add Server" and enter the following details:

* **Server Address**: `localhost` or the IP address of your Linux Mint PC.
* **Port**: 25565 (the default port for your server).
3. Click "Join Server" to connect to your new Minecraft server.

**Tips and Variations:**

* You can adjust the difficulty level, game mode, and other settings to suit your preferences.
* To add custom plugins or mods, you'll need to install them manually using `apt-get` or another package manager (e.g., `pip` for Python-based mods).
* Consider setting up a proxy server to improve performance and security.
* Be mindful of your internet bandwidth and server resources when hosting multiple players.

By following these steps, you should now have a Minecraft server running on your Linux Mint PC. Have fun gaming with your college friends during winter break!
