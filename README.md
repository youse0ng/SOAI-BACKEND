🏥 SOAI Spring Boot Project ProtoType

Spring Boot 기반 **의료 소아 복부 X-Ray 분석 및 챗봇 시스템**입니다.  
환자 검색, X-ray 대시보드, Segmentation, Chat-Bot 기능을 제공합니다.

---

## ✨ Features
- 🤖 **Chat-Bot** : 환자 데이터 기반 의료 상담 인터페이스
- 📜 **View History** : 환자별 진단/대화 기록 조회
- 🔎 **Patient Search** : 이름·생년월일 기반 환자 검색
- 📊 **Dashboard** : 환자 Study / Series / Instance 관리 
- 🔬 **Segmentation** : AI 모델을 활용한 의료 영상 분할
- 📝 **Image-meta MultiModal AI** : 환자 복부 X-Ray와 환자의 메타 데이터를 이해하여 진단을 내려주는 모델

---

## 💬 Chat-Bot 화면
### Chat-Bot
<img width="655" height="773" alt="image" src="https://github.com/user-attachments/assets/cc6701ad-aeaa-45d5-a396-28acce887a62" />


### View History
<img width="903" height="735" alt="image" src="https://github.com/user-attachments/assets/dcc1f825-e9ba-434e-aa36-281771ae2a24" />

---

## 📊 대시보드 화면
### 🔍 Search Patient
<img width="1277" height="411" alt="image" src="https://github.com/user-attachments/assets/b0f9f901-e3dd-4e24-9652-d53a61e32f12" />

### 📋 DashBoard
<img width="1117" height="901" alt="image" src="https://github.com/user-attachments/assets/b78baaf9-6fd8-4c30-ab76-12d9b1575bfd" />

### 🔬 Segmentation
<img width="1059" height="845" alt="image" src="https://github.com/user-attachments/assets/05cc981e-34d8-4692-8235-eefcab37d217" />

### 📝 Image-meta Multi Modal Model
<img width="1152" height="900" alt="image" src="https://github.com/user-attachments/assets/174b10fc-51cc-4a8a-9385-e90df7446579" />

---

## ⚙️ Tech Stack
- **Backend** : Spring Boot, JDK 17, FastAPI  
- **Frontend** : JSP, CSS
- **Database** : MariaDB
- **PACS** : Orthanc  
- **AI Model** : Pytorch, HuggingFace
---

## 📌 프로젝트 구조
soai-springboot/

┣ 📂 src

┃ ┣ 📂 main/java/com/team1/soai

┃ ┃ ┣ 📂 controller

┃ ┃ ┣ 📂 service

┃ ┃ ┣ 📂 dto

┃ ┃ ┣ 📂 mapper

┃ ┃ ┗ 📂 config

┃ ┣ 📂 resources

┃ ┃ ┣ 📂 mapper

┃ ┃ ┗ application.properties

┃ ┣ 📂 webapp

┃ ┃ ┣ 📂 WEB-INF

┃ ┃ ┃ ┣ 📂 jsp

┣ 📂 docs

┗ README.md

Team SOAI. 황유성
