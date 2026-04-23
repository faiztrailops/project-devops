#!/bin/bash

echo "🔧 Installing Nginx..."

sudo apt update -y
sudo apt install nginx -y

sudo systemctl start nginx
sudo systemctl enable nginx

echo "📁 Creating website directory..."

sudo mkdir -p /var/www/mysite

echo "🌐 Creating HTML..."

sudo bash -c 'cat > /var/www/mysite/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>My Nginx Site</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">
    <h1>🚀 Welcome to My Nginx Site</h1>
    <p>This site is deployed using a single Bash script.</p>

    <img src="image.jpg" alt="Sample Image">

    <p>DevOps Automation 🚀</p>
</div>

</body>
</html>
EOF'

echo "🎨 Creating CSS..."

sudo bash -c 'cat > /var/www/mysite/style.css <<EOF
body {
    font-family: Arial;
    background-color: #f4f4f4;
    text-align: center;
}

.container {
    margin-top: 50px;
}

h1 {
    color: #2c3e50;
}

img {
    width: 300px;
    margin-top: 20px;
    border-radius: 10px;
}
EOF'

echo "🖼️ Downloading sample image..."

sudo wget -O /var/www/mysite/image.jpg https://via.placeholder.com/300

echo "🔐 Setting permissions..."

sudo chown -R www-data:www-data /var/www/mysite

echo "⚙️ Configuring Nginx..."

sudo bash -c 'cat > /etc/nginx/sites-available/mysite <<EOF
server {
    listen 80;
    server_name _;

    root /var/www/mysite;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF'

sudo ln -sf /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default

echo "🔍 Testing config..."
sudo nginx -t

echo "🔄 Reloading Nginx..."
sudo systemctl reload nginx

echo "✅ Deployment complete!"
echo "🌍 Open: http://<your-server-ip>"
