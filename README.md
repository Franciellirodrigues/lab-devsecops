# 🛡️ Hands-on Lab: DevSecOps Pipeline (Secure CI/CD)

[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)](https://github.com/features/actions)
[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/)
[![Semgrep](https://img.shields.io/badge/Semgrep-4A154B?style=for-the-badge&logo=semgrep&logoColor=white)](https://semgrep.dev/)
[![Trivy](https://img.shields.io/badge/Trivy-EDB632?style=for-the-badge&logo=aquasecurity&logoColor=white)](https://aquasecurity.github.io/trivy/)

This repository contains the complete implementation of a hands-on **DevSecOps** laboratory, simulating a real-world Continuous Integration and Continuous Deployment (CI/CD) environment where security is tightly integrated from the very beginning of the development lifecycle.

The primary objective of this project is to enforce the **Shift-Left Testing** methodology, automating vulnerability assessment, static application security testing, and container security scans prior to final production release.

---

## 🏗️ Pipeline Architecture

The automation workflow was engineered using **GitHub Actions** and is structured as follows:

```text
[Code] ──> [1. Checkout] ──> [2. TruffleHog] ──> [3. Semgrep (SAST)]
                                                          │
[Docker Hub] <── [6. Docker Push] <── [5. Trivy Scan] <── [4. Docker Build]

```
### 🔬 Detailed Workflow Stages:

1. **Source Code Checkout:** Preprovisions the virtual environment of the ephemeral runner by pulling the latest version of the repository.
2. **Secrets Detection:** **TruffleHog** scans the codebase looking for API keys, tokens, or plaintext credentials inadvertently left in the source history.
3. **SAST (Static Application Security Testing):** **Semgrep** executes semantic analysis on the codebase structure to identify code flaws, logical gaps, and security anti-patterns.
4. **Image Build Generation:** Docker compiles the microservice application, creating a local image inside the runner environment.
5. **Container Scanning (SCA):** **Trivy** thoroughly inspects all layer manifests within the generated Docker image, mapping vulnerable base packages and auditing known vulnerabilities (CVEs).
6. **Secure Deployment (CD):** Once all preceding security gates have passed successfully, the pipeline Dragon-authenticates securely and uploads the validated immutable image to **Docker Hub**.

---

## 🛠️ Tech Stack & Tooling

* **CI/CD Orchestration:** GitHub Actions
* **Static Analysis (SAST):** Semgrep
* **Secrets Verification:** TruffleHog (Truffle Security)
* **Container Security Analysis (SCA):** Aqua Security Trivy
* **Container Infrastructure & Hub:** Docker & Docker Hub



       
