# SCAN-IP Bash Script
# By: Mxr

This Bash script allows you to perform network scans using the Nmap tool. It provides various options to suit your scanning needs.

## Usage

1. Run the script using the following command:

    ```bash
    ./scan-ip.sh
    ```

2. Enter the IP address you want to scan when prompted.

3. Choose a scan option based on your requirements.

## Scan Options

1. **Quick Scan (Top 1000 ports):**
    ```bash
    nmap -F <IP>
    ```

2. **Service and Version Scan:**
    ```bash
    nmap -sV <IP>
    ```

3. **Full Scan (All ports):**
    ```bash
    nmap -p- <IP>
    ```

4. **Network Scan (Discover devices in the network):**
    ```bash
    nmap -sn <IP>
    ```

5. **Vulnerability Script Scan:**
    ```bash
    nmap --script vuln <IP>
    ```

6. **Remote Operating System Scan:**
    ```bash
    nmap -O <IP>
    ```

7. **Remote Software Version Scan:**
    ```bash
    nmap -sV <IP>
    ```

8. **Exit:**
    ```
    Exiting...
    ```

## Contribute

If you have suggestions for improvements or encounter issues, feel free to open an issue or submit a pull request.

## License

This script is under the MIT License. See the [LICENSE](LICENSE) file for more details.
