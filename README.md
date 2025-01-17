<p align="center">
    <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" align="center" width="30%">
</p>
<p align="center"><h1 align="center">DOCKER-COMPOSE-JELLYFIN</h1></p>
<p align="center">
        <em>Streamlined orchestration for seamless media management.</em>
</p>
<p align="center">
        <img src="https://img.shields.io/github/license/B-ki/docker-compose-jellyfin?style=default&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
        <img src="https://img.shields.io/github/last-commit/B-ki/docker-compose-jellyfin?style=default&logo=git&logoColor=white&color=0080ff" alt="last-commit">
        <img src="https://img.shields.io/github/languages/top/B-ki/docker-compose-jellyfin?style=default&color=0080ff" alt="repo-top-language">
        <img src="https://img.shields.io/github/languages/count/B-ki/docker-compose-jellyfin?style=default&color=0080ff" alt="repo-language-count">
</p>
<p align="center"><!-- default option, no dependency badges. -->
</p>
<p align="center">
        <!-- default option, no dependency badges. -->
</p>
<br>

##  Table of Contents

- [ Overview](#-overview)
- [ Features](#-features)
- [ Project Structure](#-project-structure)
  - [ Project Index](#-project-index)
- [ Getting Started](#-getting-started)
  - [ Prerequisites](#-prerequisites)
  - [ Installation](#-installation)
  - [ Usage](#-usage)
  - [ Testing](#-testing)
- [ Project Roadmap](#-project-roadmap)
- [ Contributing](#-contributing)
- [ License](#-license)
- [ Acknowledgments](#-acknowledgments)

---

##  Overview

**docker-compose-jellyfin** simplifies setting up a media server with Jellyfin, Nginx, Sonarr, and Radarr using Docker containers. It streamlines networking, volumes, and configuration, making it easy to manage media libraries. Ideal for media enthusiasts seeking a seamless, customizable media server setup without complex configurations.

---

##  Features

|      | Feature         | Summary       |
| :--- | :---:           | :---          |
| ⚙️  | **Architecture**  | <ul><li>Orchestrates Docker containers for services like Nginx, Jellyfin, Sonarr, Radarr, and more.</li><li>Manages networking and volumes for seamless integration.</li></ul> |
| 🔩 | **Code Quality**  | <ul><li>Well-structured `docker-compose.yml` for managing services.</li><li>Consistent use of environment variables in `env.sample` for project configuration.</li></ul> |
| 📄 | **Documentation** | <ul><li>Primary documentation in various formats (YAML, sample, shell).</li><li>Usage of Makefile for managing Docker containers with defined commands.</li></ul> |
| 🔌 | **Integrations**  | <ul><li>Integrates services like Bazarr, Qbittorrent, Fail2ban, Flaresolverr, and more.</li><li>Utilizes Nginx-proxy for routing traffic to different services.</li></ul> |
| 🧩 | **Modularity**    | <ul><li>Modular setup with separate containers for different services.</li><li>Easy orchestration of services like Jellyfin, Radarr, Sonarr using Docker Compose in Makefile.</li></ul> |
| 🧪 | **Testing**       | <ul><li>Testing commands not explicitly mentioned in the documentation.</li><li>Potential for adding testing scripts for ensuring service reliability.</li></ul> |
| ⚡️  | **Performance**   | <ul><li>Efficient orchestration of containers for optimized performance.</li><li>Utilizes Docker for lightweight and scalable deployments.</li></ul> |
| 🛡️ | **Security**      | <ul><li>Includes Fail2ban for intrusion prevention.</li><li>Potential for enhancing security measures through container hardening and network security configurations.</li></ul> |
| 📦 | **Dependencies**  | <ul><li>Relies on various dependencies like Docker, Nginx-proxy, Jellyfin, Radarr, Sonarr, etc.</li><li>Dependencies managed through `docker-compose.yml` and Makefile.</li></ul> |
| 🚀 | **Scalability**   | <ul><li>Scalable architecture supporting the addition of new services and containers.</li><li>Potential for horizontal scaling by replicating containers based on demand.</li></ul> |

---

##  Project Structure

```sh
└── docker-compose-jellyfin/
    ├── Backups
    │   ├── jellyfin-config-backup.tar
    │   ├── npm.tar
    │   ├── prowlarr_backup_v1.15.0.4361_2024.04.07_01.00.47.zip
    │   ├── qbittorrent.tar
    │   ├── radarr_backup_v5.3.6.8612_2024.04.07_00.58.35.zip
    │   ├── sonarr_backup_v4.0.3.1413_2024.04.07_00.59.31.zip
    │   └── uptimekuma.tar
    ├── Makefile
    ├── docker-compose.yml
    ├── env.sample
    └── update-backup.sh
```


###  Project Index
<details open>
        <summary><b><code>DOCKER-COMPOSE-JELLYFIN/</code></b></summary>
        <details> <!-- __root__ Submodule -->
                <summary><b>__root__</b></summary>
                <blockquote>
                        <table>
                        <tr>
                                <td><b><a href='https://github.com/B-ki/docker-compose-jellyfin/blob/master/docker-compose.yml'>docker-compose.yml</a></b></td>
                                <td>- Orchestrates Docker containers for services like Nginx, Jellyfin, Sonarr, Radarr, and more<br>- Manages networking and volumes for seamless integration.</td>
                        </tr>
                        <tr>
                                <td><b><a href='https://github.com/B-ki/docker-compose-jellyfin/blob/master/env.sample'>env.sample</a></b></td>
                                <td>Define environment variables for project configuration, including user and group IDs, timezone, paths for Jellyfin configuration and cache, download and media paths, and server IP.</td>
                        </tr>
                        <tr>
                                <td><b><a href='https://github.com/B-ki/docker-compose-jellyfin/blob/master/update-backup.sh'>update-backup.sh</a></b></td>
                                <td>- Automates backup and synchronization of critical project files and configurations to a designated GitHub repository<br>- This script ensures the latest versions of essential data are securely stored and version-controlled for seamless project maintenance and recovery.</td>
                        </tr>
                        <tr>
                                <td><b><a href='https://github.com/B-ki/docker-compose-jellyfin/blob/master/Makefile'>Makefile</a></b></td>
                                <td>- Facilitates building, starting, and managing multiple Docker containers in the project<br>- Defines commands for cleaning, building, starting, stopping, and updating various services<br>- Enables easy orchestration of services like Jellyfin, Radarr, Sonarr, and more using Docker Compose.</td>
                        </tr>
                        </table>
                </blockquote>
        </details>
</details>

---
##  Getting Started

###  Prerequisites

Before getting started with docker-compose-jellyfin, ensure your runtime environment meets the following requirements:

- **Programming Language:** Error detecting primary_language: {'yml': 1, 'sample': 1, 'sh': 1}
- **Container Runtime:** Docker


###  Installation

Install docker-compose-jellyfin using one of the following methods:

**Build from source:**

1. Clone the docker-compose-jellyfin repository:
```sh
❯ git clone https://github.com/B-ki/docker-compose-jellyfin
```

2. Navigate to the project directory:
```sh
❯ cd docker-compose-jellyfin
```

3. Install the project dependencies:


**Using `docker`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker build -t B-ki/docker-compose-jellyfin .
```




###  Usage
Run docker-compose-jellyfin using the following command:
**Using `docker`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Docker-2CA5E0.svg?style={badge_style}&logo=docker&logoColor=white" />](https://www.docker.com/)

```sh
❯ docker run -it {image_name}
```


###  Testing
Run the test suite using the following command:
echo 'INSERT-TEST-COMMAND-HERE'

---
##  Project Roadmap

- [X] **`Task 1`**: <strike>Implement feature one.</strike>
- [ ] **`Task 2`**: Implement feature two.
- [ ] **`Task 3`**: Implement feature three.

---

##  Contributing

- **💬 [Join the Discussions](https://github.com/B-ki/docker-compose-jellyfin/discussions)**: Share your insights, provide feedback, or ask questions.
- **🐛 [Report Issues](https://github.com/B-ki/docker-compose-jellyfin/issues)**: Submit bugs found or log feature requests for the `docker-compose-jellyfin` project.
- **💡 [Submit Pull Requests](https://github.com/B-ki/docker-compose-jellyfin/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.

<details closed>
<summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your github account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone https://github.com/B-ki/docker-compose-jellyfin
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to github**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.
8. **Review**: Once your PR is reviewed and approved, it will be merged into the main branch. Congratulations on your contribution!
</details>

<details closed>
<summary>Contributor Graph</summary>
<br>
<p align="left">
   <a href="https://github.com{/B-ki/docker-compose-jellyfin/}graphs/contributors">
      <img src="https://contrib.rocks/image?repo=B-ki/docker-compose-jellyfin">
   </a>
</p>
</details>

---

##  License

This project is protected under the [SELECT-A-LICENSE](https://choosealicense.com/licenses) License. For more details, refer to the [LICENSE](https://choosealicense.com/licenses/) file.

---

##  Acknowledgments

- List any resources, contributors, inspiration, etc. here.

---
