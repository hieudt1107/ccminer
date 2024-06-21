
#!/bin/bash

# Update Termux
yes | pkg update && pkg upgrade

# Cài các gói cần thiết
yes | pkg install wget 
yes | pkg install nano
yes | pkg install git
yes | pkg install libjansson

# Clone repository ccminer
git clone https://github.com/hieudt1107/ccminer.git

# Chuyển đến thư mục ccminer
cd ccminer

# Cấp quyền thực thi cho các tệp
chmod +x ccminer start.sh run

# Quay trở lại thư mục chính
cd

# Thêm lệnh vào .bashrc để chạy ccminer khi Termux khởi động
echo '~/ccminer/ccminer -c ~/ccminer/config.json' >> .bashrc

