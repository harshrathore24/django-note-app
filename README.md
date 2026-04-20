# 📝 Django Note App

A simple and efficient **Note Taking Web Application** built using **Django**.
This project allows users to create, update, delete, and manage personal notes with a clean UI.

---

## 🚀 Features

* User Authentication (Login / Logout / Register)
* Create Notes
* Update Notes
* Delete Notes
* View All Notes
* Responsive UI
* Secure Django Backend

> Users can perform full CRUD operations on notes after authentication. ([GeeksforGeeks][1])

---

## 🛠️ Tech Stack

* **Backend:** Django (Python)
* **Database:** SQLite (default)
* **Frontend:** HTML, CSS, Bootstrap (if used)
* **Server:** Django Development Server / Gunicorn (optional)
* **Version Control:** Git & GitHub

---

## 📂 Project Structure

```
django-note-app/
│── manage.py
│── requirements.txt
│── db.sqlite3
│
├── note_app/          # Main Django App
│   ├── models.py
│   ├── views.py
│   ├── urls.py
│   └── templates/
│
├── project_name/      # Project Settings
│   ├── settings.py
│   ├── urls.py
│
└── static/
```

---

## ⚙️ Installation & Setup

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/harshrathore24/django-note-app.git
cd django-note-app
```

### 2️⃣ Create Virtual Environment

```bash
python3 -m venv venv
source venv/bin/activate   # Linux/Mac
venv\Scripts\activate      # Windows
```

### 3️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

### 4️⃣ Apply Migrations

```bash
python manage.py migrate
```

### 5️⃣ Run Server

```bash
python manage.py runserver
```

---

## 🌐 Access the App

Open your browser and go to:

```
http://127.0.0.1:8000/
```

---

## 🔐 Environment Variables (Optional)

Create a `.env` file for:

* SECRET_KEY
* DEBUG
* DATABASE_URL

---

## 📦 Deployment (Optional)

You can deploy using:

* Docker
* AWS EC2
* Nginx + Gunicorn
* CI/CD (Jenkins / GitHub Actions)

---

## 📸 Screenshots

*(Add screenshots here if available)*

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repo
2. Create a new branch
3. Make your changes
4. Submit a Pull Request

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 👨‍💻 Author

**Harsh Rathore**
DevOps Engineer

---

## ⭐ Support

If you like this project, please ⭐ the repository!

---

[1]: https://www.geeksforgeeks.org/python/note-taking-app-using-django/?utm_source=chatgpt.com "Note-taking App using Django - GeeksforGeeks"
