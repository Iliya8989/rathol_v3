# 🚀 راهنمای جامع Rathole (نسخه 3.0)

## 🐀 رت هول چیست؟

Rathole یک پروکسی معکوس قدرتمند، امن و کارآمد است که با زبان Rust نوشته شده و برای عبور از NAT طراحی شده است. این ابزار به شما امکان می‌دهد ارتباطات شبکه‌ای خود را به صورت ایمن و با سرعت بالا تونل کنید.

## 🛠️ نصب و راه‌اندازی

برای نصب Rathole، دستور زیر را در ترمینال سرور خود (دبیان یا اوبونتو) اجرا کنید:

```bash
bash <(curl -Ls --ipv4 https://raw.githubusercontent.com/Iliya8989/rathol_v3/main/script.sh)

```

## 📸 رابط کاربری

![منوی Rathole](https://github.com/Iliya8989/rathol_v3/blob/main/menu.png)

## ✨ ویژگی‌های کلیدی

- 🛡️ امنیت بالا
- 🚄 عملکرد سریع و کارآمد
- 🌐 پشتیبانی از چندین سرور و سرویس
- 🔧 قابلیت تنظیم آسان



## 🎛️ راهنمای کانفیگ

پس از اجرای اسکریپت، مراحل زیر را دنبال کنید:

### 1️⃣ کانفیگ سرور ایران

1. گزینه 1 (کانفیگ تانل) را انتخاب کنید.
2. گزینه 1 (سرور ایران) را انتخاب کنید.
3. پورت تانل را وارد کنید (مثلاً 8080).
4. تعداد و پورت‌های کانفیگ‌ها را مشخص کنید.
5. نوع پروتکل انتقال (TCP یا UDP) را انتخاب کنید.

### 2️⃣ کانفیگ سرور خارج

1. گزینه 1 (کانفیگ تانل) و سپس گزینه 2 (سرور خارج) را انتخاب کنید.
2. تعداد سرورهای ایران را وارد کنید.
3. آدرس و پورت تانل سرور ایران را وارد کنید.
4. تعداد و پورت‌های کانفیگ‌ها را مشخص کنید.
5. نوع پروتکل انتقال را انتخاب کنید.

## 🔍 مدیریت سرویس

- **بررسی وضعیت**: گزینه 3 را انتخاب کنید.
- **ریستارت سرویس‌ها**: گزینه 5 را انتخاب کنید.
- **حذف و پاکسازی**: گزینه 2 را انتخاب کنید.

## ⏱️ تنظیم کرون جاب

1. گزینه 6 را انتخاب کنید.
2. برای اضافه کردن کرون جاب، گزینه 1 را انتخاب کنید.
3. سرور مورد نظر و زمان ریستارت را مشخص کنید.

## 🔐 افزایش امنیت

1. گزینه 7 (Change security token) را انتخاب کنید.
2. یک توکن امنیتی جدید وارد کنید.
3. این مرحله را برای هر دو سرور با یک توکن یکسان انجام دهید.

## 🌐 راه‌اندازی چند سرور

می‌توانید چندین سرور خارج را به یک سرور ایران متصل کنید:

1. در سرور ایران، چندین کانفیگ با پورت‌های مختلف ایجاد کنید.
2. برای هر سرور خارج، یک کانفیگ با پورت منحصر به فرد تنظیم کنید.
3. اطمینان حاصل کنید که پورت تانل برای همه سرورها یکسان است.

## 📊 مانیتورینگ پورت

1. گزینه 6 از منوی اصلی را انتخاب کنید.
2. برای اضافه کردن پورت‌ها، گزینه 1 را انتخاب کنید.
3. پورت‌ها را با کاما جدا کنید (مثال: `8080, 443, 2058`).
4. برای مشاهده ترافیک، گزینه 2 را انتخاب کنید.

## 📜 مشاهده لاگ‌ها

- **سرور ایران**: `journalctl -eu rathole-iran.service`
- **سرور خارج**: `journalctl -eu rathole-kharej.service`

## ⚡ بهینه‌سازی سرعت

اگر با مشکل سرعت پایین مواجه شدید:

1. 🖥️ منابع سیستم (CPU و RAM) را بررسی کنید.
2. 🛠️ از اسکریپت Optimizer استفاده کنید و BBR را فعال کنید.
3. 🔬 با استفاده از iperf3، سرعت پورت سرور را آزمایش کنید.
4. 🔄 پورت‌های تانل و کانفیگ را تغییر دهید.
5. 🔧 در صورت عدم بهبود، سرور را بازسازی (ریبیلد) کنید.




## 📢 ارتباط با ما

برای اطلاعات بیشتر و آپدیت‌ها، به کانال تلگرام ما بپیوندید:
[https://t.me/freekconfig2ray](https://t.me/freekconfig2ray)


---

🎉 از انتخاب Rathole متشکریم! امیدواریم این ابزار به شما در بهبود ارتباطات شبکه‌ای‌تان کمک کند.
