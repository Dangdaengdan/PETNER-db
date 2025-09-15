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
# .env 파일을 편집하여 비밀번호 등을 설정하세요
```

2. 서비스 시작
```bash
docker-compose up -d
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
- User: `petner` (기본값)

### Redis
- Session: `localhost:6379`
- Cache: `localhost:6380`

## 명령어

```bash
# 서비스 시작
docker-compose up -d

# 서비스 중지
docker-compose down

# 로그 확인
docker-compose logs

# 특정 서비스 로그
docker-compose logs postgres
docker-compose logs redis-session
docker-compose logs redis-cache

# 데이터 볼륨까지 완전 삭제
docker-compose down -v
```

## 주의사항

- 프로덕션 환경에서는 `.env` 파일의 비밀번호를 반드시 변경하세요
- Redis 설정에서 `requirepass`를 활성화하여 비밀번호 보호를 설정하세요
- PostgreSQL의 pgvector extension이 미리 설치되어 있어 향후 벡터 검색 기능 확장이 가능합니다