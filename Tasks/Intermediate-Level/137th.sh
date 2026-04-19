# 137. Create a simple menu-driven script.

#!/bin/bash

show_menu() {
    clear
    echo "=================================="
    echo "      Cloud Server Manager"
    echo "=================================="
    echo "1. Display all running servers"
    echo "2. Check server health status"
    echo "3. Initialize a new server"
    echo "4. Terminate an existing server"
    echo "5. Display system diagnostics"
    echo "6. Exit application"
    echo "=================================="
    echo -n "Please enter your selection [1-6]: "
}

list_servers() {
    echo "Retrieving the list of all active servers..."
    echo "  server-1 (Running)"
    echo "  server-2 (Running)"
    echo "  server-3 (Stopped)"
    echo "  server-4 (Running)"
    read -r -p "Press Enter to return to the main menu..."
}

check_status() {
    echo "Polling the health status of all servers..."
    echo "  server-1: Running - CPU: 45% - Memory: 2.1GB"
    echo "  server-2: Running - CPU: 78% - Memory: 4.5GB"
    echo "  server-3: Stopped"
    echo "  server-4: Running - CPU: 12% - Memory: 1.2GB"
    read -r -p "Press Enter to return to the main menu..."
}

start_server() {
    read -r -p "Enter the hostname of the server you wish to start: " server
    echo "Initiating boot sequence for $server..."
    echo "Server $server has been started successfully."
    read -r -p "Press Enter to return to the main menu..."
}

stop_server() {
    read -r -p "Enter the hostname of the server you wish to terminate: " server
    echo "Initiating shutdown sequence for $server..."
    echo "Server $server has been stopped successfully."
    read -r -p "Press Enter to return to the main menu..."
}

show_sysinfo() {
    echo "System Diagnostics:"
    echo "  Hostname: $(hostname)"
    echo "  System Uptime: $(uptime -p)"
    echo "  Root Disk Usage: $(df -h / | tail -1 | awk '{print $5}') utilized"
    echo "  Memory Utilization: $(free -h | grep Mem | awk '{print $3 " / " $2}')"
    read -r -p "Press Enter to return to the main menu..."
}

while true; do
    show_menu
    read -r choice
    
    case $choice in
        1) list_servers ;;
        2) check_status ;;
        3) start_server ;;
        4) stop_server ;;
        5) show_sysinfo ;;
        6) echo "Exiting application. Goodbye!"; exit 0 ;;
        *) echo "Invalid selection. Please try again."; sleep 1 ;;
    esac
done
