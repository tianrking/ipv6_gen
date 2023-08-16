# ipv6_gen

## Introduction

`ipv6_gen` is a collection of tools for managing IPv6 addresses. The project includes scripts for creating, deleting, and testing IPv6 addresses.

## Files and Features

### 1. create_ipv6.bash

This script is used to create IPv6 addresses on a specified network interface. The prefix for the addresses can be configured within the script.

Usage:

```bash
./create_ipv6.bash
```

### 2. delete_ipv6.bash

This script is used to delete IPv6 addresses from a specified network interface. The prefix for the addresses can be configured within the script.

Usage:

```bash
./delete_ipv6.bash
```

### 3. ip_test.py

This Python script is used to detect the current IPv6 address. It periodically queries and prints the detected IPv6 address.

Usage:

```bash
python ip_test.py
```

### 4. auto_set_ip.sh

This script is used for automatically switching IPv6 addresses. It periodically adds new IPv6 addresses to a specified network interface and deletes the oldest address when the maximum number of addresses is reached.

Usage:

```bash
./auto_set_ip.sh
```

## Dependencies

Ensure the following dependencies are installed on your system:

- Bash
- Python
- ip command-line tool

## License

Please refer to the license file in the repository for details.

## Contributing

Contributions to this project are welcome through submitting issues or pull requests.
