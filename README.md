# 🚗 Vehicle Insurance Prediction - End-to-End ML Project with MLOps

Welcome to the **Vehicle Insurance Prediction** project! This project demonstrates an end-to-end Machine Learning pipeline integrated with modern MLOps tools like **MongoDB Atlas**, **AWS S3**, **Docker**, **GitHub Actions**, and **EC2 Deployment**. The aim is to automate vehicle insurance prediction using scalable, cloud-native architecture and CI/CD best practices.

---

## 🧩 Project Highlights

- 🔍 Exploratory Data Analysis (EDA) & Feature Engineering
- 📦 Modular ML pipeline (Data Ingestion → Validation → Transformation → Training → Evaluation → Deployment)
- ☁️ MongoDB for cloud-hosted data storage
- 🐳 Dockerized deployment with CI/CD
- 🚀 Hosted on AWS EC2 using GitHub self-hosted runners

---

## 📁 Project Structure

```bash
├── .github/workflows/             # GitHub Actions for CI/CD
├── artifact/                      # Artifacts generated (ignored in versioning)
├── docker/                        # Docker config files
├── notebook/                      # Notebooks for EDA and MongoDB operations
├── src/                           # Source code
│   ├── components/                # Data pipeline modules
│   ├── configuration/             # DB and AWS connection setup
│   ├── data_access/               # MongoDB interaction
│   ├── entity/                    # Config and artifact entity definitions
│   ├── aws_storage/               # S3 push/pull helpers
│   ├── pipelines/                 # Training and prediction logic
│   ├── logger.py                  # Logging utility
│   ├── exception.py               # Custom exceptions
│   └── utils/                     # Common utilities
├── templates/                    # HTML files for Flask
├── static/                       # CSS and JS assets
├── requirements.txt              # Python package requirements
├── setup.py                      # Python package metadata
├── pyproject.toml                # Project metadata (PEP 621)
├── app.py                        # Flask entry point
└── README.md                     # This file
```

---

## ⚙️ Setup Instructions

### 🔧 Virtual Environment & Packages
```bash
conda create -n vehicle python=3.10 -y
conda activate vehicle
pip install -r requirements.txt
pip list
```

### ☁️ MongoDB Atlas Setup
1. Create MongoDB Atlas account and project
2. Deploy free M0 cluster
3. Create DB user and allow IP `0.0.0.0/0`
4. Copy connection string and set:
```bash
export MONGODB_URL="mongodb+srv://<username>:<password>@cluster.mongodb.net/?retryWrites=true&w=majority"
```
5. Run `mongoDB_demo.ipynb` to upload dataset

### 🛠️ Local Development & Training
```bash
python demo.py  # triggers pipeline
# or access via browser:
http://<EC2_PUBLIC_IP>:5080/train
```

---

## ☁️ AWS Setup (S3 + EC2)

### ✅ IAM & Bucket
- Create IAM user with `AdministratorAccess`
- Create S3 bucket: `my-model-mlopsproj`
- Save Access Key and Secret Access Key securely

### 🌐 EC2 & Docker
- Launch Ubuntu EC2 instance (t2.medium recommended)
- Install Docker:
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
- Setup GitHub self-hosted runner
- Open EC2 port `5080` in Security Group

### 🔐 Environment Variables
```bash
export AWS_ACCESS_KEY_ID="<your-access-key>"
export AWS_SECRET_ACCESS_KEY="<your-secret-key>"
export AWS_DEFAULT_REGION="us-east-1"
```

---

## 🔁 CI/CD Pipeline (GitHub Actions)
- Docker build and push to ECR
- Deploy container to EC2
- Configure `.github/workflows/aws.yaml`
- Set GitHub secrets:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
  - `AWS_DEFAULT_REGION`
  - `ECR_REPO`

---

## 🌐 Web Application

- Built using Flask
- Routes:
  - `/` → Prediction UI
  - `/train` → Trigger model training
- UI styled using custom CSS
- Deployed on EC2: `http://<EC2_PUBLIC_IP>:5080`

---

## 💡 Why This Project Stands Out

| ✅ Feature | 💬 Description |
|-----------|----------------|
| MLOps-Driven | Complete automation from ingestion to deployment |
| Scalable Infra | Cloud-native: MongoDB Atlas + AWS S3 + EC2 |
| Real-Time Serving | Flask API with UI for prediction and training |
| CI/CD Integrated | GitHub Actions + Docker + ECR + EC2 Runner |
| Production-Ready | Logging, Exception Handling, Config-Driven Code |

---

## 🙌 Final Words

This project reflects strong practical understanding of both Data Science and MLOps — from designing modular pipelines and integrating with databases to deploying models on cloud infrastructure.

> 🚀 Perfect to showcase in job interviews, portfolios, and for real-world use-cases.

---

Feel free to ⭐ this repo and fork it to start your own journey!

