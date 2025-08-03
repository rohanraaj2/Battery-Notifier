# Battery Notifier

A simple Bash script to notify you when your laptop battery is fully charged (100%).

## Features
- Checks battery percentage and charging status.
- Sends a desktop notification when the battery is fully charged.
- Plays a sound alert when charging is complete.

## Requirements
- Linux system with `/sys/class/power_supply/BAT0/` available (most laptops).
- `notify-send` for desktop notifications (usually available via `libnotify-bin`).
- `paplay` for playing sound (usually available via `pulseaudio-utils`).

## Usage
1. **Clone or download this repository.**
2. **Make the script executable:**
   ```bash
   chmod +x battery_notify.sh
   ```
3. **Run the script:**
   ```bash
   ./battery_notify.sh
   ```
   Or add it to your startup applications or a cron job for periodic checks.

## Customization
- If your battery is not `BAT0`, edit the `BATTERY_PATH` and `STATUS_PATH` variables in the script.
- You can change the notification sound by editing the path in the `paplay` command.
