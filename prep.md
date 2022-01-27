# Prep for CTFs

## Enumeration
### OSINT
- [ ] Social Media
- [ ] CrunchBase
- [ ] SAM - System for Award Managment

### Reccy
#### Subdomain Enumeration
- [ ] whois
- [ ] nslookup
- [ ] dnsdumpster
- [ ] Sublist3r
- [ ] crt.sh
- [ ] amass
<drop open">
<stuff>
	1. ``` sudo apt install snapd```
	2. ``` service snapd start```
	3. ``` snap install amass```
	4. ``` snap run amass```
</stuff>
</drop>

### In-Depth Scanning
- [ ] ping / pingsweep / masscan
- [ ] Verify UDP / TCP
- [ ] Verify FWs
- nmap -Pn
- [ ] OS Type


## Web App
- [ ] Banner - http/s
- ``` nc <target> <port>```
- ``` <verb> / /http/1.0 ```

- ``` openssl s_client -connect <target>.<top-level domain>:<port> ```
- ``` <verb> / http/1.0 ```

- [ ] httprint (signature based)
- ``` httprint -P0 -h <target hosts> -s <signature file> ``` -> automatic fingerprinting
- [ ] OPTIONS
- [ ] Check for uploads
- [ ] Proxy the site(s)  (BurpSuite, ZAP)
- [ ] Dirb, gobuster, feroxbuster, etc
- [ ] XSS (Expand)
- [ ] Types of XSS
- [ ] SQL (Expand)

## System Exploitation
### Vulnerability Scanning
- [ ] OpenVAS, Nessus, nmap, GFI Lan Guard

### System PrivEsc
- [ ] Linenum.sh
- [ ] Unshadow
- [ ] Hydra
- [ ] Windows Shares
- [ ] msfconsole

