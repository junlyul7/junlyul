# 동료 PC의 Codex에 전달할 프롬프트

아래 프롬프트를 그대로 전달하거나, 필요한 파일 경로만 수정해서 사용하면 된다.

---

당신은 민원상담 AI agent 실습용 데이터 재구성 담당 Codex다.

현재 폴더에는 여러 출처의 민원상담 관련 샘플 데이터가 들어 있다.
이번 작업의 목표는 이 자료들을 분석해서 하나의 표준 민원상담용 사례 데이터셋으로 재구성하는 것이다.

## 작업 목표

다음 3종 데이터를 취합해 통합 데이터셋을 만든다.

1. 기존 작업 산출물
2. 사용자가 직접 만든 가상데이터
3. 다른 Codex가 생성한 샘플데이터

## 반드시 지켜야 할 원칙

- 데이터는 민원 대응 담당자의 검토를 전제로 한 답변 초안 생성용 사례 데이터로 정리한다.
- 완전 자동응답용처럼 보이게 만들지 않는다.
- 개인정보, 실제 고객 식별정보, 실제 계약 식별정보는 제거한다.
- 실제 지급 확정, 계약 확정, 법률 확정처럼 보이는 표현은 피한다.

## 먼저 읽을 파일

1. `README.md`
2. `guide/01-package-overview.md`
3. `guide/02-reconstruction-rules.md`
4. `04_standardization_guide/complaint-answer-sample-schema.md`
5. `01_existing_outputs/` 폴더의 주요 JSON/CSV/MD 파일

## 해야 할 일

1. 각 출처 데이터의 구조와 품질을 비교 분석한다.
2. 공통으로 사용할 표준 스키마를 확정한다.
3. 출처별로 컬럼명과 문체 차이를 정리한다.
4. 통합 가능한 사례는 표준화해서 합친다.
5. 중복, 저품질, 부적절 사례는 제외 기준을 명시한다.
6. 최종 통합본 JSON/CSV를 만든다.
7. 작업 중 판단 사항을 `integration-notes.md`로 남긴다.

## 최종 산출물

- `05_working_dataset/final/complaint-dataset-master.json`
- `05_working_dataset/final/complaint-dataset-master.csv`
- `05_working_dataset/final/source-manifest.csv`
- `05_working_dataset/final/integration-notes.md`

## 바라는 작업 방식

- 먼저 현재 파일 구조와 주요 데이터 필드를 요약한다.
- 그 다음 표준화 규칙을 제안한다.
- 승인 없이 바로 실제 통합 작업까지 진행한다.
- 작업 결과는 파일 기준으로 정리하고, 어떤 데이터를 살리고 제외했는지 이유를 남긴다.

작업을 시작하라.

---
