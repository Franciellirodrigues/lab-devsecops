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
```


### 🔬 Etapas Detalhadas do Fluxo:

1. **Checkout do Código:** Prepara o ambiente virtual do runner baixando a versão mais recente do repositório.
2. **Scanner de Segredos (Secret Detection):** O **TruffleHog** varre o código à procura de chaves de API, tokens ou credenciais expostas por acidente.
3. **SAST (Static Application Security Testing):** O **Semgrep** analisa a estrutura estática do código em busca de falhas lógicas e más práticas de segurança.
4. **Build da Imagem:** O Docker compila a aplicação gerando uma imagem localizada no ambiente temporário.
5. **Container Scanning (SCA):** O **Trivy** analisa todas as camadas da imagem Docker gerada, mapeando pacotes vulneráveis e listando as vulnerabilidades conhecidas (CVEs).
6. **Deploy Seguro (CD):** Após passar por todas as barreiras de segurança, a esteira autentica com segurança e faz o upload da imagem validada para o **Docker Hub**.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas

* **Orquestração:** GitHub Actions
* **Análise Estática (SAST):** Semgrep
* **Análise de Segredos:** TruffleHog (Truffle Security)
* **Segurança de Container:** Aqua Security Trivy
* **Ambiente de Container:** Docker & Docker Hub



       
