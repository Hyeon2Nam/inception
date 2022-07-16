# Repository 인덱스 업데이트
sudo apt-get update

# 도커 설치
sudo apt-get install -y docker.io

# 도커 소켓 /var/run/docker.sock 권한 666 설정하여 다른 사용자도 접근할 수 있도록 변경
sudo chmod 666 /var/run/docker.sock

# gpg "no public key available" 에러 방지
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B48AD6246925553

# 도커 컴포즈 설치 (1.29.2 버전)
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# 도커 컴포즈 실행 권한 부여
sudo chmod +x /usr/local/bin/docker-compose

# 도커 서비스 재시작 시 컨테이너를 종료하지 않도록 설정
sudo su -c 'printf "{\n\t\"live-restore\": true\n}" > /etc/docker/docker.json'

# 도커 서비스 재시작
sudo systemctl restart docker