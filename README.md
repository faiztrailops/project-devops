# pro# 🚀 Nginx Auto Deployment Script

This project contains a simple Bash script to automatically install and configure Nginx, and deploy a static website with HTML, CSS, and an image — all in one go.

---

## 📌 Features

* Installs Nginx automatically
* Starts and enables Nginx service
* Creates a custom web directory
* Generates HTML and CSS files
* Downloads a sample image
* Configures Nginx server block
* Deploys website instantly

---

## 📁 Project Structure

```
deploy-nginx.sh
```

> All website files (HTML, CSS, image) are generated dynamically by the script.

---

## ⚙️ Requirements

* Ubuntu / Debian-based system
* Sudo privileges
* Internet connection

---

## ▶️ Usage

### 1. Clone the repository

```bash
git clone https://github.com/faiztrailops/project-devops.git
cd project-devops
```

### 2. Make script executable

```bash
chmod +x deploy-nginx.sh
```

### 3. Run the script

```bash
./deploy-nginx.sh
```

---

## 🌐 Access Website

After successful execution, open your browser:

```
http://<your-server-ip>
```

---

## 🛠️ Nginx Service Commands

Start:

```bash
sudo systemctl start nginx
```

Stop:

```bash
sudo systemctl stop nginx
```

Restart:

```bash
sudo systemctl restart nginx
```

Status:

```bash
systemctl status nginx
```

---

## 📸 Output

* A simple webpage with:

  * Heading
  * Description
  * Image
  * Basic styling

---

## 🔒 Notes

* Default Nginx config is replaced with a custom site
* Runs on port 80
* Make sure port 80 is allowed in firewall

---

## 🚀 Future Improvements

* Add HTTPS (Let's Encrypt SSL)
* Dockerize the application
* Add CI/CD pipeline (GitHub Actions)
* Custom domain support

---

## 👨‍💻 Author

**Suhail Akhter**
DevOps & IT Enthusiast

---

## ⭐ If you like this project

Give it a star on GitHub ⭐
ject-devops
