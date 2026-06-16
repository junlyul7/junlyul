# Stage 4 Scenario Pack

## Purpose

Use these prompts to test the Bizrouter flow and the two skills:

1. `manual-voc-router`
2. `manual-voc-search`
3. `manual-voc-draft`

## Scenario 1

- Input: `안녕하세요`
- Expected router label: `casual_chat`
- Expected next skill: none

## Scenario 2

- Input: `실손보험료가 왜 올라요?`
- Expected router label: `customer_inquiry`
- Expected next skill: `manual-voc-search`
- Expected search match: `DOC-001`
- Expected draft: `실손보험 보험료는 손해율, 위험률, 갱신 시점 등의 영향으로 인상될 수 있습니다.`

## Scenario 3

- Input: `변액연금 연금개시연령 변경 가능한가요?`
- Expected router label: `customer_inquiry`
- Expected next skill: `manual-voc-search`
- Expected search match: `DOC-002`
- Expected draft: `시스템 (계약사항조회 > 연금액 조회) 화면과 변액연금_연금개시연령변경_연금액조회매뉴얼을 참고하시면 답변이 가능합니다.`

## Scenario 4

- Input: `종신보험 납입기간 변경하고 싶어요`
- Expected router label: `customer_inquiry`
- Expected next skill: `manual-voc-search`
- Expected search match: `DOC-003`
- Expected draft: `계약사항조회 (계약사항조회 > 납입정보 조회) 화면과 종신보험_납입기간변경_납입정보조회매뉴얼을 참고하시면 답변이 가능합니다.`

## Scenario 5

- Input: `간병보험 보험금 청구방법 알려주세요`
- Expected router label: `customer_inquiry`
- Expected next skill: `manual-voc-search`
- Expected search match: `DOC-011`
- Expected draft: `보험금청구시스템 (보험금청구시스템 > 청구서류 안내) 화면과 간병보험_보험금청구방법_청구안내매뉴얼을 참고하시면 답변이 가능합니다.`

## Scenario 6

- Input: `변액유니버설 펀드변경 가능해요?`
- Expected router label: `customer_inquiry`
- Expected next skill: `manual-voc-search`
- Expected search match: `DOC-017`
- Expected draft: `펀드관리시스템 (펀드관리시스템 > 펀드변경) 화면과 변액유니버설_펀드변경_펀드변경매뉴얼을 참고하시면 답변이 가능합니다.`

## Scenario 7

- Input: `보험료를 알려줘`
- Expected router label: `human_handoff`
- Expected next skill: none

## Scenario 8

- Input: `이 문의는 어느 부서가 봐야 하나요?`
- Expected router label: `needs_clarification`
- Expected next skill: none

## Scenario 9

- Input: `종합보험 종합보장 확인`
- Expected router label: `customer_inquiry`
- Expected next skill: `manual-voc-search`
- Expected search match: `DOC-030`
- Expected draft: `종합보험의 보장내용은 가입하신 담보와 특약 구성에 따라 달라집니다.`

## Scenario 10

- Input: `유병자보험 가입가능 여부 알려줘`
- Expected router label: `customer_inquiry`
- Expected next skill: `manual-voc-search`
- Expected search match: `DOC-025`
- Expected draft: `유병자보험의 가입가능 여부는 상품별 가입조건에 따라 달라집니다.`

## How to test

1. Send the input to `manual-voc-router`.
2. If the label is `customer_inquiry`, pass the same input to `manual-voc-search`.
3. If search returns a safe match, pass that row to `manual-voc-draft`.
4. Compare the result against the expected output above.

