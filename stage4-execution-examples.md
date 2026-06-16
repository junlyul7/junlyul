# Stage 4 Execution Examples

## Example 1

- Input: `안녕하세요`
- Router: `casual_chat`
- Search: not run
- Draft: not run

## Example 2

- Input: `실손보험료가 왜 올라요?`
- Router: `customer_inquiry`
- Search: `DOC-001` / `exact`
- Draft: `실손보험 보험료는 손해율, 위험률, 갱신 시점 등의 영향으로 인상될 수 있습니다.`

## Example 3

- Input: `변액연금 연금개시연령 변경 가능한가요?`
- Router: `customer_inquiry`
- Search: `DOC-002` / `exact`
- Draft: `시스템 (계약사항조회 > 연금액 조회) 화면과 변액연금_연금개시연령변경_연금액조회매뉴얼을 참고하시면 답변이 가능합니다.`

## Example 4

- Input: `종신보험 납입기간 변경하고 싶어요`
- Router: `customer_inquiry`
- Search: `DOC-003` / `exact`
- Draft: `계약사항조회 (계약사항조회 > 납입정보 조회) 화면과 종신보험_납입기간변경_납입정보조회매뉴얼을 참고하시면 답변이 가능합니다.`

## Example 5

- Input: `간병보험 보험금 청구방법 알려주세요`
- Router: `customer_inquiry`
- Search: `DOC-011` / `exact`
- Draft: `보험금청구시스템 (보험금청구시스템 > 청구서류 안내) 화면과 간병보험_보험금청구방법_청구안내매뉴얼을 참고하시면 답변이 가능합니다.`

## Example 6

- Input: `변액유니버설 펀드변경 가능해요?`
- Router: `customer_inquiry`
- Search: `DOC-017` / `exact`
- Draft: `펀드관리시스템 (펀드관리시스템 > 펀드변경) 화면과 변액유니버설_펀드변경_펀드변경매뉴얼을 참고하시면 답변이 가능합니다.`

## Example 7

- Input: `보험료를 알려줘`
- Router: `human_handoff`
- Search: not run
- Draft: `해당 내용은 답변이 불가하며 세부 내용은 상품관련 voc 담당자에게 문의 바랍니다.`

## Example 8

- Input: `이 문의는 어느 부서가 봐야 하나요?`
- Router: `needs_clarification`
- Search: not run
- Draft: not run

## Example 9

- Input: `종합보험 종합보장 확인`
- Router: `customer_inquiry`
- Search: `DOC-030` / `exact`
- Draft: `종합보험의 보장내용은 가입하신 담보와 특약 구성에 따라 달라집니다.`

## Example 10

- Input: `유병자보험 가입가능 여부 알려줘`
- Router: `customer_inquiry`
- Search: `DOC-025` / `exact`
- Draft: `유병자보험의 가입가능 여부는 상품별 가입조건에 따라 달라집니다.`

