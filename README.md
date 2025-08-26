# 🏥 SOAI Spring Boot Project ProtoType

Spring Boot 기반 **의료 소아 복부 X-Ray 분석 및 챗봇 시스템**입니다.  
환자 검색, X-ray 대시보드, Segmentation, Chat-Bot 기능을 제공합니다.

---

## ✨ Features
- 🤖 **Chat-Bot** : 환자 데이터 기반 의료 상담 인터페이스
- 📜 **View History** : 환자별 진단/대화 기록 조회
- 🔎 **Patient Search** : 이름·생년월일 기반 환자 검색
- 📊 **Dashboard** : 환자 Study / Series / Instance 관리 및 DICOM 뷰어
- 🩻 **Segmentation** : AI 모델을 활용한 의료 영상 분할

---

## 💬 Chat-Bot 화면
### Chat-Bot
<img width="610" height="741" alt="Chat-Bot UI" src="https://github.com/user-attachments/assets/f96aba72-f14f-4ed2-b600-d385c6984a19" />

### View History
<img width="810" height="737" alt="History UI" src="https://github.com/user-attachments/assets/a34c9cf3-8070-4472-952a-79569c2dd884" />

---

## 📊 대시보드 화면
### 🔍 Search Patient
<img width="854" height="133" alt="Search Patient UI" src="https://github.com/user-attachments/assets/e9d03c97-508f-4774-ae7d-4c460a2af0ce" />

### 📋 DashBoard
<img width="936" height="751" alt="Dashboard UI" src="https://github.com/user-attachments/assets/44c0bf4e-621a-42b3-ad16-88006c9ef7b5" />

### 🔬 Segmentation
<img width="1049" height="777" alt="Segmentation UI" src="https://github.com/user-attachments/assets/56edcba7-2209-4ca2-99a6-34d861db03b4" />

---

## ⚙️ Tech Stack
- **Backend** : Spring Boot, Java 17  
- **Frontend** : JSP, HTML, CSS, JavaScript  
- **Database** : MySQL  
- **PACS** : Orthanc  
- **AI Model** : ONNX (Segmentation)  

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
