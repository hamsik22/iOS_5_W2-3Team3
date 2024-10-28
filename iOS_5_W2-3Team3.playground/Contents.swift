import UIKit

class Calculator {
        // Todo : 내부 구현하기
    func AddOperation(firstOperand: Int, secondOperand: Int) -> Int {
        firstOperand + secondOperand
    }
    func SubstractOperation(firstOperand: Int, secondOperand: Int) -> Int {
        firstOperand - secondOperand
    }
    func MultiplyOperation(firstOperand: Int, secondOperand: Int) -> Int {
        firstOperand * secondOperand
    }
    func DivideOperation(firstOperand: Int, secondOperand: Int) -> Int {
        firstOperand / secondOperand
    }
}

// 인스턴스 생성하여 변수에 할당
let calculator = Calculator()

// Todo : calculator 변수를 활용하여 사칙연산을 진행
// MARK: 더하기
// 예상 값: 8
print(calculator.AddOperation(firstOperand: 3, secondOperand: 5))
// MARK: 빼기
// 예상 값: 5
print(calculator.SubstractOperation(firstOperand: 10, secondOperand: 5))
// MARK: 곱하기
// 예상 값: 4
print(calculator.MultiplyOperation(firstOperand: 2, secondOperand: 2))
// MARK: 나누기
// 예상 값: 3
print(calculator.DivideOperation(firstOperand: 6, secondOperand: 2))

/// 예외상황
/// 1. 숫자를 3개 이상 입력했을 경우
/// 2. 결과가 음수일 경우
/// 3. 계산 값이 너무 클 경우
/// 4. 실수 계산일 경우
/// 5. 복합 연산일 경우
