# 🛡️ Laboratório Prático: Esteira DevSecOps (CI/CD Segura)

[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)](https://github.com/features/actions)
[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/)
[![Semgrep](https://img.shields.io/badge/Semgrep-4A154B?style=for-the-badge&logo=semgrep&logoColor=white)](https://semgrep.dev/)
[![Trivy](https://img.shields.io/badge/Trivy-EDB632?style=for-the-badge&logo=aquasecurity&logoColor=white)](https://aquasecurity.github.io/trivy/)

Este repositório contém a implementação completa de um laboratório prático de **DevSecOps**, simulando um ambiente real de Integração e Entrega Contínua (CI/CD) onde a segurança é integrada desde o início do ciclo de desenvolvimento.

O principal objetivo deste projeto é aplicar o conceito de **Shift-Left Testing**, automatizando a verificação de vulnerabilidades, análise estática de código e segurança de containers antes do deploy final.

---

## 🏗️ Arquitetura do Pipeline

A esteira foi desenvolvida utilizando **GitHub Actions** e está estruturada da seguinte forma:

```text
[Código] ──> [1. Checkout] ──> [2. TruffleHog] ──> [3. Semgrep (SAST)]
                                                          │
[Docker Hub] <── [6. Docker Push] <── [5. Trivy Scan] <── [4. Docker Build]
