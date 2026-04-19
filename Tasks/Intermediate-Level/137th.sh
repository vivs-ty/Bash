# 137. Create a simple menu-driven script.

#!/bin/bash

show_menu() {
    clear
    echo "=================================="
    echo "     Cloud Server Manager"
    echo "=================================="
    echo "1. List running servers"
    echo "2. Check server status"
    echo "3. Start a server"
    echo "4. Stop a server"
    echo "5. View system info"
    echo "6. Exit"
    echo "=================================="
    echo -n "Enter your choice [1-6]: "
}

list_servers() {
    echo "Listing all servers..."
    echo "  server-1 (running)"
    echo "  server-2 (running)"
    echo "  server-3 (stopped)"
    echo "  server-4 (running)"
    read -p "Press Enter to continue..."
}

check_status() {
    echo "Checking server status..."
    echo "  server-1: running - CPU: 45% - Memory: 2.1GB"
    echo "  server-2: running - CPU: 78% - Memory: 4.5GB"
    echo "  server-3: stopped"
    echo "  server-4: running - CPU: 12% - Memory: 1.2GB"
    read -p "Press Enter to continue..."
}

start_server() {
    read -r -p "Enter server name to start: " server
    echo "Starting $server..."
    echo "Server $server started successfully!"
    read -p "Press Enter to continue..."
}

stop_server() {
    read -r -p "Enter server name to stop: " server
    echo "Stopping $server..."
    echo "Server $server stopped successfully!"
    read -p "Press Enter to continue..."
}

show_sysinfo() {
    echo "System Information:"
    echo "  Hostname: $(hostname)"
    echo "  Uptime: $(uptime -p)"
    echo "  Disk Usage: $(df -h / | tail -1 | awk '{print $5}') used"
    echo "  Memory: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
    read -p "Press Enter to continue..."
}

while true; do
    show_menu
    read choice
    
    case $choice in
        1) list_servers ;;
        2) check_status ;;
        3) start_server ;;
        4) stop_server ;;
        5) show_sysinfo ;;
        6) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid option!"; sleep 1 ;;
    esac
done
