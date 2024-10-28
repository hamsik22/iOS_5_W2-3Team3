import UIKit

class Calculator {

    // MARK: 더하기
    func addOperation(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand + secondOperand
        // 값의 범위 확인
        var isInRange: Bool = { String(result).count < 16 }()
        // 정수인지 확인
        var isInterger: Bool = { result.truncatingRemainder(dividingBy: 1) == 0 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange && isInterger {
            print("Add : \(Int(result))")
        // 값이 범위 내에 있으며 실수값일 때,
        } else if isInRange && !isInterger {
            print("Add : \(result)")
        // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
    
    // MARK: 빼기
    func substractOperation(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand - secondOperand
        // 값의 범위 확인
        var isInRange: Bool = { String(result).count < 16 }()
        // 정수인지 확인
        var isInterger: Bool = { result.truncatingRemainder(dividingBy: 1) == 0 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange && isInterger {
            print("Sub : \(Int(result))")
        // 값이 범위 내에 있으며 실수값일 때,
        } else if isInRange && !isInterger {
            print("Sub : \(result)")
        // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
    
    // MARK: 곱하기
    func multiplyOperation(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand * secondOperand
        // 값의 범위 확인
        var isInRange: Bool = { String(result).count < 16 }()
        // 정수인지 확인
        var isInterger: Bool = { result.truncatingRemainder(dividingBy: 1) == 0 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange && isInterger {
            print("Multi : \(Int(result))")
        // 값이 범위 내에 있으며 실수값일 때,
        } else if isInRange && !isInterger {
            print("Multi : \(result)")
        // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
    
    // MARK: 나누기
    func divideOperation(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand - secondOperand
        // 값의 범위 확인
        var isInRange: Bool = { String(result).count < 16 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange {
            print("Divide : \(Int(result))")
        // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
    
    // MARK: 나머지 연산
    func remainderOperation(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand.remainder(dividingBy: secondOperand)
        // 값의 범위 확인
        var isInRange: Bool = { String(result).count < 16 }()
        // 정수인지 확인
        var isInterger: Bool = { result.truncatingRemainder(dividingBy: 1) == 0 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange && isInterger {
            print("Remain : \(Int(result))")
        // 값이 범위 내에 있으며 실수값일 때,
        } else if isInRange && !isInterger {
            print("Remain : \(result)")
        // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
}

// 인스턴스 생성하여 변수에 할당
let calculator = Calculator()

// Todo : calculator 변수를 활용하여 사칙연산을 진행
calculator.addOperation(firstOperand: 5, secondOperand: 3)
calculator.addOperation(firstOperand: 5.5, secondOperand: 3.2)
calculator.substractOperation(firstOperand: 5, secondOperand: 3)
calculator.substractOperation(firstOperand: 5.5, secondOperand: 3.2)
calculator.multiplyOperation(firstOperand: 5, secondOperand: 3)
calculator.multiplyOperation(firstOperand: 5.5, secondOperand: 3.2)
calculator.divideOperation(firstOperand: 6, secondOperand: 3)
calculator.divideOperation(firstOperand: 5, secondOperand: 3)
calculator.remainderOperation(firstOperand: 5, secondOperand: 3)
calculator.remainderOperation(firstOperand: 5.5, secondOperand: 3.2)

/// 예외상황
/// 1. 숫자를 3개 이상 입력했을 경우 : 파라미터 갯수에 의해 해당사항 없음
/// 2. 결과가 음수일 경우 : 음수 정상 출력
/// 3. 계산 값이 너무 클 경우 : 결과의 문자크기를 측정하여 처리
/// 4. 실수 계산일 경우 : 결과 기준으로 나머지가 있는 경우 실수 출력, 없는 경우 정수 출력
/// 5. 복합 연산일 경우 : 파라미터 입력으로 해당사항 없음
