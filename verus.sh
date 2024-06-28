
#!/bin/bash

echo "deb https://mirrors.nguyenhoang.cloud/termux/termux-main stable main" > $PREFIX/etc/apt/sources.list



# Update Termux
yes | pkg update 
yes | pkg upgrade

# Cài các gói cần thiết
yes | pkg install wget 
yes | pkg install nano
yes | pkg install git
yes | pkg install libjansson

# Clone repository ccminer
git clone https://github.com/hieudt1107/ccminer.git

# Thêm lệnh vào .bashrc để chạy ccminer khi Termux khởi động
echo '~/ccminer/ccminer -c ~/ccminer/config.json' >> .bashrc

# Chuyển đến thư mục ccminer
cd ccminer

# Cấp quyền thực thi cho các tệp
chmod +x ccminer start.sh run




