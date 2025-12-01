
📌 Cricket Scoreboard with AI Commentary

Real-time cricket scoreboard with **AI-generated ball-by-ball commentary** using **Google Gemini**, and **live audio streaming** using **Google Cloud Text-to-Speech (TTS)**.

---

## **🎬 Live Demo (Animated Preview Placeholder)**





---

## **✨ Features**

* 🔴 **Real-time ball-by-ball score updates**
* 🤖 **AI-generated contextual commentary** (Google Gemini)
* 🔊 **Natural audio commentary** (Google Cloud TTS)
* ⚡ **Live streaming via Server-Sent Events (SSE)**
* 🧠 **Scalable async processing with Redis + BullMQ**
* 🏏 **Complete match management** (Teams, Players, Toss, Innings)
* 🎧 **Audio queue system** — plays AI commentary sequentially
* 📱 **Responsive UI built with React + Vite**

---



## **🛠️ Tech Stack**

### **Frontend**

* React.js + Vite
* EventSource (SSE)
* HTML5 Audio API
* CSS3

### **Backend**

* Node.js
* Express.js
* MongoDB + Mongoose
* Redis + BullMQ
* Google Gemini API
* Google Cloud Text-to-Speech

### DevOps

* Docker
* MongoDB Atlas
* Railway / Render / Vercel

---

## **📂 Project Structure**

```
/project
  ├── client/           # React frontend
  ├── server/           # Node.js backend
  │   ├── routes/
  │   ├── controllers/
  │   ├── models/
  │   ├── workers/      # BullMQ workers
  │   ├── services/     # AI + TTS logic
  │   └── sse/          # SSE event manager
  └── README.md
```

---

## 🚀 How to Run the Project

### **1️⃣ Clone Repo**

```bash
git clone (https://github.com/thunderavi/ScoreBoard)
cd filename
```

### **2️⃣ Backend Setup**

```bash
cd server
npm install
```

Create `.env` file:

```
PORT=4000
MONGO_URI=<your-mongo-uri>
REDIS_URL=redis://localhost:6379
SESSION_SECRET=secret123
GEMINI_API_KEY=<your-api-key>
GOOGLE_TTS_KEY=<google-key>
```

Run backend:

```bash
npm run dev
```

Run workers:

```bash
node workers/commentaryWorker.js
node workers/audioWorker.js
```

---

### **3️⃣ Frontend Setup**

```bash
cd client
npm install
npm run dev
```

---

## **📡 How the System Works (Short Flow)**

1. Admin records a ball (runs/wicket/etc).
2. Backend updates MongoDB instantly.
3. SSE pushes score update to all viewers.
4. Commentary job → Google Gemini → returns text.
5. Text sent to TTS worker → generates audio.
6. SSE sends `audioReady` event → frontend plays audio automatically.

---

## **🖥️ Screenshots**



<img width="1882" height="881" alt="matchsetup" src="https://github.com/user-attachments/assets/d969a688-1018-4a6a-952d-7c32575b5e8c" />
<img width="1892" height="876" alt="tossmatch" src="https://github.com/user-attachments/assets/47c820de-cf40-4afe-99fe-0ff3f9b7ae0d" />
<img width="1912" height="880" alt="coomentyapp" src="https://github.com/user-attachments/assets/cef0fcde-7609-4f39-9942-2cce35c0c237" />
<img width="1900" height="892" alt="coomenrty cast" src="https://github.com/user-attachments/assets/4354cf51-c1ce-4f0a-8254-9aae817c7839" />
<img width="1913" height="871" alt="user dahboard" src="https://github.com/user-attachments/assets/6832bdcd-2e44-423f-aff9-085a49f802c5" />
<img width="1611" height="801" alt="login signup" src="https://github.com/user-attachments/assets/d1be95e1-6416-4a86-b08d-01c829692189" />
<img width="1890" height="887" alt="homepage" src="https://github.com/user-attachments/assets/28c2863e-95f8-4833-9c7f-7779b23a312d" />
<img width="1890" height="886" alt="crciket team" src="https://github.com/user-attachments/assets/0d791b8f-a092-4cc4-82ea-e2891f9bb5ba" />
<img width="1911" height="887" alt="Team" src="https://github.com/user-attachments/assets/948c14fd-93db-4319-bb16-74653c4d2f5a" />



## **🏆 Key Highlights**

* ⚡ < 100ms real-time score updates
* 🎤 Human-like AI audio commentary
* 🧵 Fully asynchronous, non-blocking backend
* 📈 Scales to 100–200+ viewers easily

---


