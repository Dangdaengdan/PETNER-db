# PETNER Database Setup

PETNER 프로젝트의 데이터베이스 환경 설정입니다.

## 구성 요소

- **PostgreSQL 17** with pgvector extension
- **Redis Session** - 세션 저장용
- **Redis Cache** - 캐시 저장용

## 빠른 시작

1. 환경 변수 설정
```bash
cp .env.example .env
# .env 파일을 편집하여 실제 값으로 설정하세요 (팀 노션 페이지 참고)
```

2. 서비스 시작
```bash
docker compose up -d
```

3. 상태 확인
```bash
docker-compose ps
```

## 포트 정보

- PostgreSQL: `5432`
- Redis Session: `6379` 
- Redis Cache: `6380`

## 접속 정보

### PostgreSQL
- Host: `localhost:5432`
- Database: `petnerdb`
- User: `.env` 파일에서 설정 (POSTGRES_USER)
- Password: `.env` 파일에서 설정 (POSTGRES_PASSWORD)

### Redis
- Session: `localhost:6379`
- Cache: `localhost:6380`

## 명령어

```bash
# 서비스 시작
docker compose up -d

# 서비스 중지
docker compose down

# 로그 확인
docker compose logs

# 특정 서비스 로그
docker compose logs postgres
docker compose logs redis-session
docker compose logs redis-cache

# 데이터 볼륨까지 완전 삭제
docker compose down -v
```

## 주의사항

⚠️ **`.env` 파일은 절대 Git에 커밋하지 마세요!**

- 실제 환경변수 값은 팀 노션 페이지에서 관리
- `.env.example` 파일만 Git에 포함됨
- 새로운 환경변수 추가 시 `.env.example`도 함께 업데이트
- Redis 설정에서 `requirepass`를 활성화하여 비밀번호 보호를 설정하세요
- PostgreSQL의 pgvector extension이 미리 설치되어 있어 향후 벡터 검색 기능 확장이 가능합니다