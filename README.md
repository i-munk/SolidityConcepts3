# SolidityConcepts3 - Calculator

이 프로젝트는 Solidity의 추상 컨트랙트, 인터페이스, 라이브러리, 예외 처리 등을 종합적으로 실습하기 위한 계산기 스마트 컨트랙트입니다. 두 개의 주요 컨트랙트인 `AbstractCalculator`와 `Calculator`를 통해 다양한 연산 기능과 오류 처리를 구현합니다.

---

## 📐 구성 요소

### ✅ MathLibrary (라이브러리)
- `add(a, b)` – 덧셈
- `subtract(a, b)` – 뺄셈 (언더플로 방지)
- `multiply(a, b)` – 곱셈
- `divide(a, b)` – 나눗셈 (0으로 나누기 방지)

### ✅ ICalculator (인터페이스)
- 공통 연산 함수 `add`, `subtract`, `multiply`, `divide` 정의

### ✅ AbstractCalculator (추상 컨트랙트)
- `ICalculator` 인터페이스 상속
- `MathLibrary`를 `uint256` 타입에 적용
- 연산 함수들을 구현하여 상속 대상에게 제공

### ✅ Calculator (구현 컨트랙트)
- `AbstractCalculator`를 상속
- `calculate(uint256 a, uint256 b, string operation)` 함수 구현
  - `"add"`, `"subtract"`, `"multiply"`, `"divide"` 문자열에 따라 해당 연산 수행
  - 잘못된 연산자 입력 시 `"Invalid operation"` 예외 발생

---

## 🧪 테스트

```bash
npm install
npx hardhat test test/Calculator.test.ts
```

### 테스트 항목
- 라이선스 및 Solidity 버전 명시 여부
- 인터페이스 및 라이브러리 import 확인
- 추상 컨트랙트 상속 및 연산 함수 구현 여부
- `calculate()` 함수의 정상 작동 및 예외 처리 (`Underflow`, `Divide by zero`, `Invalid operation`)

---

## 📁 파일 구조

```
contracts/
├── Calculator.sol
├── AbstractCalculator.sol
├── ICalculator.sol
└── MathLibrary.sol

test/
└── Calculator.test.ts

README.md
```

---

## 🎯 학습 포인트

- 추상 컨트랙트와 인터페이스의 차이점 이해
- `using for`를 활용한 라이브러리 적용
- 입력값 검증을 통한 예외 처리 `require`
- `keccak256`으로 문자열 비교

이 실습은 Solidity에서 모듈화된 스마트 컨트랙트 구조 설계와 연산 로직 구현에 대한 이해를 높이는 데 도움을 줍니다.
