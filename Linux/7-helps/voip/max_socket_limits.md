### How to Find the Maximum Number of Sockets That Can Be Opened in Linux  

In Linux, the maximum number of open file descriptors (including sockets) for a process and the entire system is controlled by kernel settings. Here’s how to check and modify these limits.  

---

### 1. **Process Limits**  
#### Check the soft and hard limits for the current shell:  
```bash
ulimit -n      # Current soft limit (often 1024 by default)  
ulimit -Hn     # Hard limit (maximum possible value)  
```

#### For a specific process (e.g., Kamailio):  
```bash
cat /proc/<PID>/limits | grep "Max open files"  
```
where `<PID>` is the process ID.  

---

### 2. **System-Wide Limit**  
```bash
cat /proc/sys/fs/file-max  
```
Example output:  
```
9223372036854775807  
```
This is the absolute maximum number of file descriptors for the entire system. To temporarily change it:  
```bash
echo 2000000 > /proc/sys/fs/file-max  
```
For a permanent change, add to `/etc/sysctl.conf`:  
```ini
fs.file-max = 2000000  
```
Apply changes:  
```bash
sysctl -p  
```

---

### 3. **User-Specific Limits**  
The file `/etc/security/limits.conf` defines per-user limits. Example:  
```ini
*               soft    nofile          100000  
*               hard    nofile          200000  
kamailio        soft    nofile          500000  
kamailio        hard    nofile          500000  
```
Where:  
- `*` applies to all users,  
- `kamailio` applies to a specific user,  
- `nofile` sets the max number of open files (including sockets).  

**Important**: After modifying, relogin or restart the service.  

---

### 4. **Check Current Usage**  
#### Total open file descriptors in the system:  
```bash
cat /proc/sys/fs/file-nr  
```
Example output:  
```
5632  0   9223372036854775807  
```
- First number = currently used file descriptors.  
- Second number = allocated but unused descriptors.  
- Third number = system-wide max (`file-max`).  

#### For a specific process:  
```bash
ls -1 /proc/<PID>/fd | wc -l  
```

---

### 5. **Optimization for Kamailio/SIP Servers**  
If Kamailio handles thousands of calls:

0. Increase limits for running process
   ```bash
   prlimit --pid <PID> --nofile=<SOFT>[:<HARD>]
   ```
1. Increase limits in `/etc/security/limits.conf`:  
   ```ini
   kamailio hard nofile 500000  
   kamailio soft nofile 500000  
   ```
2. Add to Kamailio’s config (`kamailio.cfg`):  
   ```cfg
   children=8  
   tcp_max_connections=200000  
   ```
3. Restart Kamailio:  
   ```bash
   systemctl restart kamailio  
   ```

---

### 6. **Theoretical Maximum**  
- **64-bit systems**: Up to `2^63-1` (`9223372036854775807`), but the actual limit depends on:  
  - Available RAM (~1 KB per descriptor).  
  - Kernel settings (`fs.file-max`, `fs.nr_open`).  

---

### Summary  
- **For a process**: `ulimit -n` (current), `ulimit -Hn` (max).  
- **For the system**: `cat /proc/sys/fs/file-max`.  
- **Recommendation**: For high-load SIP servers, set `nofile ≥100000` and monitor usage via `file-nr`.
