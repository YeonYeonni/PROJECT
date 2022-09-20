# 개발 환경 (OS)
    google colabotory (Linux)

# 라이브러리
    numpy pandas matplotlib seaborn sklearn 

# 전체 실행 프로세스
## 1. 데이터 분석
    categorical, numeric 변수
    target
    상관분석

## 2. 데이터 전처리
### 1) Feature Drop
      ID 변수 (ADID, DSP ID, 매체 ID, 애드유닛 ID, 노출 ID, SSP 입찰ID,
                 DSP 입찰ID, AX 낙찰ID, WUID (웹 유저 ID), OS 버전 ID, 국가코드 ID)
      광고 응답 광고주 도메인, 광고 응답 소재 카테고리
      시각, P5
      
### 2) Dummy Variable
      ADID타입, 플랫폼, OS종류, 사이즈ID

### 3) Feature Engineering
      (1) P2 & P3 (bidfloors) < P4 (AX bidprice) 를 만족하면 1, 그렇지 않으면 0
      (2) P4 - P3
      (3) P4 - P2

## 3. 모델링
    RandomForest

## 4. 예측
    accuracy : 0.86
    precision : 0.88 (0), 0.81 (1)
    recall : 0.93 (0), 0.68 (1)
    f1-score : 0.90 (0), 0.74 (1)
    
## 5. 모델 저장
