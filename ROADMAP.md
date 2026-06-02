# DevOps Roadmap

Each day has one topic, one hands-on task, and one portfolio artifact. Adjust
the tools to match your preferred cloud provider and operating system.

## Phase 1: Foundations

| Day | Topic | Hands-on task | Artifact |
| --- | --- | --- | --- |
| 001 | DevOps mindset | Map how a code change reaches a user | Delivery-flow notes |
| 002 | SDLC and delivery flow | Compare waterfall, agile, and continuous delivery | Short comparison |
| 003 | Workstation setup | Install Git, Docker, and an editor; record versions | Setup checklist |
| 004 | Linux navigation | Practice `pwd`, `ls`, `cd`, `mkdir`, and `find` | Command notes |
| 005 | Files and text | Practice `cat`, `less`, `grep`, `head`, and `tail` | Text-processing examples |
| 006 | Users and permissions | Practice users, groups, `chmod`, and `chown` | Permissions lab |
| 007 | Processes and services | Inspect processes, services, and logs | Troubleshooting notes |
| 008 | Packages and environment | Install a package and use environment variables | Setup script |
| 009 | Bash scripting | Write a timestamped backup script | Backup script |
| 010 | Health checks | Check disk, memory, and a web endpoint | Health-check script |
| 011 | Networking basics | Inspect IP addresses, ports, routes, and DNS | Networking cheat sheet |
| 012 | HTTP and HTTPS | Inspect headers and status codes with `curl` | HTTP notes |
| 013 | SSH | Create a key pair and document secure remote access | SSH guide |
| 014 | Git essentials | Practice commits, branches, and history | Git exercise |
| 015 | Pull requests | Resolve a merge conflict in a practice branch | Conflict-resolution notes |
| 016 | GitHub workflow | Create an issue, branch, and pull request | Linked issue and PR |
| 017 | YAML and JSON | Write and validate sample configuration files | Config examples |
| 018 | Virtualization and containers | Compare VMs and containers for one use case | Decision note |
| 019 | Configuration management | Write an Ansible inventory and simple playbook | Starter playbook |
| 020 | Foundation capstone | Automate a basic Linux workstation or VM bootstrap | Bootstrap project |

## Phase 2: Containers and Delivery

| Day | Topic | Hands-on task | Artifact |
| --- | --- | --- | --- |
| 021 | Docker concepts | Run and inspect a container | Docker notes |
| 022 | Dockerfiles | Containerize a small web app | Dockerfile |
| 023 | Image layers | Improve build caching and image size | Before-and-after notes |
| 024 | Volumes and config | Persist data and pass environment variables | Run instructions |
| 025 | Container networking | Connect two containers | Networking lab |
| 026 | Docker Compose | Run an app and database together | Compose file |
| 027 | Health checks | Add a container health check | Updated container config |
| 028 | Registries and tags | Build, tag, and push an image | Tagging notes |
| 029 | Container security | Run as non-root and scan an image | Security findings |
| 030 | Container capstone | Package a multi-service demo app | Containerized demo |
| 031 | CI concepts | Diagram a build, test, and release pipeline | Pipeline diagram |
| 032 | GitHub Actions | Run a first workflow on push | Workflow file |
| 033 | Automated quality checks | Add linting or tests to CI | Quality workflow |
| 034 | Build automation | Build a container image in CI | Build workflow |
| 035 | Secrets and variables | Use repository variables and a test secret | Secure config notes |
| 036 | Dependency caching | Cache dependencies and compare runtimes | Timing notes |
| 037 | Releases | Create a tag, changelog entry, and release | Release notes |
| 038 | CD concepts | Define development, staging, and production gates | Promotion plan |
| 039 | Simple deployment | Publish a small static site or docs site | Live deployment |
| 040 | Delivery capstone | Build a CI/CD workflow for the demo app | Working pipeline |

## Phase 3: Cloud and Infrastructure as Code

| Day | Topic | Hands-on task | Artifact |
| --- | --- | --- | --- |
| 041 | Cloud fundamentals | Compare IaaS, PaaS, and SaaS examples | Cloud comparison |
| 042 | IAM | Design least-privilege roles for a small app | IAM notes |
| 043 | Regions, networks, and cost | Sketch a small regional architecture | Architecture diagram |
| 044 | Terraform basics | Install Terraform and explore HCL | First config |
| 045 | Terraform lifecycle | Run `init`, `plan`, `apply`, and `destroy` locally | Lifecycle notes |
| 046 | Variables and outputs | Parameterize a Terraform configuration | Updated config |
| 047 | State | Inspect state and document how to protect it | State notes |
| 048 | Modules | Extract reusable infrastructure into a module | Terraform module |
| 049 | Remote state | Design a shared-state approach | State design |
| 050 | Terraform capstone | Provision a repeatable local or cloud environment | IaC project |
| 051 | Cloud CLI | Configure one provider CLI and inspect your account | CLI cheat sheet |
| 052 | Virtual networks | Design subnets, routes, and address ranges | Network diagram |
| 053 | Firewalls | Define ingress and egress rules for an app | Rule table |
| 054 | Compute | Launch or model a small compute workload | Compute notes |
| 055 | Object storage | Create a bucket and document secure access | Storage lab |
| 056 | DNS and load balancing | Trace a request from DNS to an app | Request-flow diagram |
| 057 | Managed databases | Compare a managed database with self-hosting | Decision note |
| 058 | Secrets management | Store and retrieve a secret securely | Secrets workflow |
| 059 | Cost controls | Add tags and define a small budget | Cost checklist |
| 060 | Cloud capstone | Document and provision a small cloud architecture | Cloud project |

## Phase 4: Kubernetes and Platforms

| Day | Topic | Hands-on task | Artifact |
| --- | --- | --- | --- |
| 061 | Kubernetes architecture | Explain control-plane and worker components | Architecture notes |
| 062 | Local cluster | Start `kind`, `minikube`, or Docker Desktop Kubernetes | Cluster setup |
| 063 | Pods | Run and inspect a pod | Pod manifest |
| 064 | Deployments | Create, scale, and update a deployment | Deployment manifest |
| 065 | Services | Expose a deployment inside the cluster | Service manifest |
| 066 | Configuration | Use ConfigMaps and Secrets | Config manifests |
| 067 | Probes | Add readiness and liveness checks | Updated deployment |
| 068 | Resources | Add CPU and memory requests and limits | Resource notes |
| 069 | Namespaces and RBAC | Create a namespace and a limited role | RBAC manifests |
| 070 | Kubernetes capstone | Deploy the demo app to a local cluster | App manifests |
| 071 | Ingress and TLS | Route traffic through an ingress | Ingress manifest |
| 072 | Storage | Attach persistent storage to a workload | Storage manifests |
| 073 | Helm | Package the demo app as a Helm chart | Helm chart |
| 074 | Rollouts | Perform and roll back an application update | Rollout notes |
| 075 | Autoscaling | Configure or model horizontal pod autoscaling | HPA manifest |
| 076 | GitOps | Explain pull-based delivery and repository structure | GitOps design |
| 077 | Argo CD | Explore an Argo CD application manifest | Application manifest |
| 078 | Environments | Model dev, staging, and production overlays | Environment layout |
| 079 | Policy and scanning | Scan manifests and note policy violations | Findings report |
| 080 | Platform capstone | Deliver the demo app with a repeatable platform workflow | Platform project |

## Phase 5: Reliability, Security, and Capstone

| Day | Topic | Hands-on task | Artifact |
| --- | --- | --- | --- |
| 081 | SLI, SLO, and SLA | Define reliability targets for the demo app | Reliability targets |
| 082 | Logging | Collect and search structured application logs | Logging notes |
| 083 | Metrics | Expose and inspect useful application metrics | Metrics list |
| 084 | Dashboards | Build a simple service dashboard | Dashboard screenshot |
| 085 | Alerts | Design actionable alerts and avoid noisy ones | Alert rules |
| 086 | Tracing | Trace a request across components | Trace notes |
| 087 | Incident response | Write a lightweight incident process | Incident checklist |
| 088 | Runbooks | Document recovery for one common failure | Runbook |
| 089 | Postmortems | Write a blameless practice postmortem | Postmortem |
| 090 | Observability capstone | Add an observability plan to the demo app | Observability pack |
| 091 | DevSecOps | Map security checks across the delivery pipeline | Security pipeline |
| 092 | Dependency scanning | Scan dependencies and triage findings | Findings report |
| 093 | Image scanning | Scan a container image and fix one issue | Updated image |
| 094 | Secret scanning | Detect and prevent committed secrets | Prevention notes |
| 095 | IaC scanning | Scan infrastructure configuration | IaC findings |
| 096 | Backups | Perform a backup and restore drill | Restore notes |
| 097 | Resilience | Design high availability and disaster recovery | Resilience diagram |
| 098 | Performance and cost | Identify one performance and one cost improvement | Optimization notes |
| 099 | Portfolio polish | Add architecture, setup, and troubleshooting docs | Project documentation |
| 100 | Final capstone | Present the complete delivery platform and retrospective | Final project |
