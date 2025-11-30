# 🏢 Enterprise Michel's House Infrastructure as Code

<div align="center">

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Ubiquiti](https://img.shields.io/badge/Ubiquiti-%230559C9.svg?style=for-the-badge&logo=ubiquiti&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

[![ISO 27001](https://img.shields.io/badge/ISO-27001-blue?style=flat-square)](https://www.iso.org/isoiec-27001-information-security.html)
[![SOC 2](https://img.shields.io/badge/SOC-2%20Type%20II-green?style=flat-square)](https://www.aicpa.org/interestareas/frc/assuranceadvisoryservices/aicpasoc2report.html)
[![HIPAA](https://img.shields.io/badge/HIPAA-Compliant-red?style=flat-square)](https://www.hhs.gov/hipaa/index.html)
[![PCI DSS](https://img.shields.io/badge/PCI-DSS%20Level%201-yellow?style=flat-square)](https://www.pcisecuritystandards.org/)
[![GDPR](https://img.shields.io/badge/GDPR-Compliant-purple?style=flat-square)](https://gdpr.eu/)
[![NIST](https://img.shields.io/badge/NIST-800-53-orange?style=flat-square)](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)
![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=flat-square)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)

</div>

---

## 📖 The Saga of Enterprise-Grade Home Infrastructure

In a world where residential networks crumble under the weight of Netflix binge-watching and Zoom meetings, one engineer dared to dream bigger. This is not just a home network—this is **Enterprise Michel's House**, a bastion of reliability, security, and audacious resilience in the face of digital chaos.

### The Origin Story

Once upon a time, a network engineer looked at their home setup and thought: *"Why should my house network be any less robust than a Fortune 500 company's?"* And thus, the journey began. Armed with Terraform, Ubiquiti hardware, and an unhealthy obsession with infrastructure as code, the transformation commenced.

### The Vision

Every VLAN meticulously planned. Every WLAN configured with precision. Every subnet documented and version-controlled. This isn't just infrastructure—it's a declaration that home networks deserve enterprise-level care and attention.

**Currently operating as a single-site deployment with eyes on the horizon for a potential second site** 🌍—because why have one enterprise-grade network when you could have two? (Redundancy is a beautiful thing.)

### What Makes This "Enterprise"?

- ✅ **Infrastructure as Code**: Every configuration is version-controlled, reviewable, and repeatable
- ✅ **Multi-Site Ready**: Architecture designed with future expansion in mind
- ✅ **Compliance Focused**: Built with enterprise security and compliance standards in mind
- ✅ **Disaster Recovery**: Complete infrastructure can be rebuilt from code in minutes
- ✅ **Documentation First**: Because future you will thank present you
- ✅ **Security Hardened**: Following industry best practices and security frameworks

---

## 🏗️ Architecture

### Current Infrastructure

- **Site**: `default` (Primary)
- **Networks**:
  - `Default` (Corporate LAN) - 192.168.1.0/24
  - `IOT` (IoT VLAN) - 192.168.4.0/24 (VLAN 2)
  - `Dream Machine Special Edition` (WireGuard VPN) - 192.168.8.0/24
- **WLANs**:
  - `raffy1968` (Primary WiFi) - WPA2/WPA3, Multi-band support

### Future Enhancements

- 🔮 Second site deployment (pending location acquisition)
- 🔮 Automated failover and redundancy
- 🔮 Advanced monitoring and observability
- 🔮 Zero-trust network architecture

---

## 🚀 Quick Start

### Prerequisites

- Terraform >= 1.0
- Access to UniFi Controller
- Valid API credentials

### Setup

1. **Clone the repository**
   ```bash
   git clone git@github.com:almiche/enterprise-michels-house.git
   cd enterprise-michels-house
   ```

2. **Navigate to the UniFi configuration**
   ```bash
   cd unifi
   ```

3. **Create your `terraform.tfvars` file**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars with your credentials
   ```

4. **Initialize Terraform**
   ```bash
   terraform init
   ```

5. **Review the plan**
   ```bash
   terraform plan
   ```

6. **Apply the configuration**
   ```bash
   terraform apply
   ```

---

## 📁 Project Structure

```
enterprise-michels-house/
├── README.md           # You are here
├── .gitignore         # Protects sensitive files
└── unifi/             # UniFi infrastructure configuration
    ├── main.tf        # Main Terraform configuration
    ├── variables.tf   # Variable definitions
    ├── outputs.tf     # Output values
    ├── versions.tf    # Provider version constraints
    └── terraform.tfvars.example  # Example variables (safe to commit)
```

---

## 🔒 Security & Compliance

This infrastructure follows enterprise-grade security practices:

- **Sensitive Data**: All credentials stored in `terraform.tfvars` (gitignored)
- **Least Privilege**: API keys scoped to minimum required permissions
- **Encryption**: All connections use TLS/SSL
- **Audit Trail**: All changes version-controlled and traceable

### Compliance Certifications

While this is a personal project, the infrastructure is designed following:

- **ISO 27001**: Information Security Management
- **SOC 2 Type II**: Security, availability, and confidentiality controls
- **HIPAA**: Healthcare data protection standards
- **PCI DSS Level 1**: Payment card industry security standards
- **GDPR**: European data protection regulations
- **NIST 800-53**: Security controls for federal information systems

*Note: Actual certification requires formal audit processes. This project implements controls aligned with these frameworks.*

---

## 🤝 Contributing

PRs welcome! This is a personal project, but if you find it inspiring or want to suggest improvements, feel free to open an issue or submit a pull request.

---

## 📝 License

MIT License - because sharing is caring, and infrastructure should be accessible.

---

## 🙏 Acknowledgments

- **Ubiquiti Networks** for making enterprise-grade networking accessible
- **HashiCorp** for Terraform and the IaC revolution
- **The DevOps Community** for endless inspiration
- **Future Second Site** (you know who you are) for being a goal worth pursuing

---

<div align="center">

**Built with ❤️ and an unreasonable amount of attention to detail**

*"Home is where the network uptime is."*

---

⭐ **Star this repo if you believe home networks deserve enterprise love!** ⭐

</div>
