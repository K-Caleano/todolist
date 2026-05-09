# To-Do List with AI (Supabase + Gemini)

이 프로젝트는 Supabase를 백엔드로 사용하고, Google Gemini API를 사용하여 할 일의 난이도를 자동으로 분석하는 프리미엄 To-Do List 애플리케이션입니다.

## 주요 기능
- **CRUD**: 할 일 생성, 조회, 완료 체크, 삭제 (Supabase 연동)
- **AI 분석**: 할 일을 입력하면 Gemini API가 난이도('쉬움', '중간', '어려움')를 분석하여 태그와 색상으로 표기
- **Premium Design**: Dark mode, Glassmorphism, Framer Motion 애니메이션 적용

## 설정 방법

### 1. 환경 변수 설정
`.env.example` 파일을 복사하여 `.env` 파일을 만들고 아래 정보를 입력하세요.
- `VITE_SUPABASE_URL`: Supabase 프로젝트 URL
- `VITE_SUPABASE_ANON_KEY`: Supabase 프로젝트 Anon Key
- `VITE_GEMINI_API_KEY`: Google AI Studio에서 발급받은 Gemini API Key

### 2. Supabase 테이블 생성
`supabase_schema.sql` 파일의 SQL 쿼리를 Supabase SQL Editor에서 실행하여 `todos` 테이블을 생성하세요.

### 3. 설치 및 실행
```bash
npm install
npm run dev
```

## 기술 스택
- **Frontend**: React (Vite), TypeScript
- **Styling**: Vanilla CSS
- **Backend**: Supabase
- **AI**: Google Gemini API (gemini-1.5-flash)
- **Icons**: Lucide React
- **Animations**: Framer Motion
