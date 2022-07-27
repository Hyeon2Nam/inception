#!/bin/bash

apt-get update

sudo apt-get install -y apt-transport-https \
ca-certificates \
curl \
software-properties-common \
vim \
systemd

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B48AD6246925553

sudo apt-get update

cp ./resolv.conf /etc/

# 도커 패키지 신뢰성 추가
# f - http의 요청 헤더의 Content-Type을 multipart/form-data로 설정
# s - silent로 진행과정 및 오류 생략
# S - SSL 이용
# L - curl의 결과가 Redirection이더라도, 해당 URL로 작업을 이어감
# 파이프 이후의 apt-key는 다운로드 받은 패키지를 인증된 패키지로 인식 시키기 위해 키 리스트에 패키지를 추가
# (apt는 기본적으로 인증된 패키지들을 키 리스트로 관리)
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# 도커를 설치할 수 있도록 Repository 추가
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"