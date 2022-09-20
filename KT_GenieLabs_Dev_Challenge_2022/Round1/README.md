# 개발 환경 (OS)
    Google Colaboratory (Linux)

# 라이브러리
    numpy, pandas, matplotlib, seaborn, sklearn, tensorflow (keras), joblib, pickle

# 전체 실행 프로세스
## 1. 데이터 분석
    categorical, numeric 변수
    target 분포 시각화 (data imbalance 확인)
    상관분석 (heatmap 시각화)

## 2. 데이터 전처리
### 1) Feature Drop
      ID 변수 (ADID, DSP ID, 매체 ID, 애드유닛 ID, 노출 ID, SSP 입찰ID,
                 DSP 입찰ID, AX 낙찰ID, WUID (웹 유저 ID), OS 버전 ID, 국가코드 ID)
      광고 응답 광고주 도메인, 광고 응답 소재 카테고리
      시각, P5
      
### 2) Dummy Variable
      ADID타입, 플랫폼, OS종류, 사이즈ID

### 3) Feature Engineering
      (1) P1 ~ P4의 회귀 계수를 이용해 testset의 P5 예측 (Linear Regression)
      (2) P2 & P3 (bidfloors) < P4 (AX bidprice) 를 만족하면 1, 그렇지 않으면 0
      (3) P4 - P3
      (4) P4 - P2

## 3. 모델링
    RandomForest

## 4. 예측
    <img width="80%" src="https://user-images.githubusercontent.com/79257220/191269426-e2dab9ec-efbc-44ec-9452-675675f10bc1.png"/>

    
## 5. 모델 저장
