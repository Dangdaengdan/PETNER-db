# 1. 공식 OpenSearch 이미지를 기반으로 시작
FROM opensearchproject/opensearch:2.11.0

# 2. nori 플러그인을 설치하는 명령어를 실행 (이 작업은 이미지 빌드 시 딱 한번만 실행됨)
RUN /usr/share/opensearch/bin/opensearch-plugin install analysis-nori --batch