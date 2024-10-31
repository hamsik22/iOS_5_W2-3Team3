import UIKit

/// 계산기 클래스
///
/// # 예외상황
/// 1. 숫자를 3개 이상 입력했을 경우 :
///
/// 파라미터 갯수에 의해 해당사항 없음
///
/// 2. 결과가 음수일 경우 :
///
/// 음수 정상 출력
///
/// 3. 계산 값이 너무 클 경우 :
///
/// 결과의 문자크기를 측정하여 처리
///
/// 4. 실수 계산일 경우 :
///
/// 결과 기준으로 나머지가 있는 경우 실수 출력, 없는 경우 정수 출력
///
/// 5. 복합 연산일 경우 :
///
/// 파라미터 입력으로 해당사항 없음
class Calculator: AbstractOperation {
    
    var addOperation = AddOperation()
    var subtractOperation = SubtractOperation()
    var multiplyOperation = MultiplyOperation()
    var divideOperation = DivideOperation()
    var modulusOperation = ModularOperation()
    
    func addition(firstOperand: Float, secondOperand: Float) {
        self.addOperation.perform(firstOperand: firstOperand, secondOperand: secondOperand)
    }
    
    func subtraction(firstOperand: Float, secondOperand: Float) {
        self.subtractOperation.perform(firstOperand: firstOperand, secondOperand: secondOperand)
    }
    
    func multiplication(firstOperand: Float, secondOperand: Float) {
        self.multiplyOperation.perform(firstOperand: firstOperand, secondOperand: secondOperand)
    }
    
    func division(firstOperand: Float, secondOperand: Float) {
        self.divideOperation.perform(firstOperand: firstOperand, secondOperand: secondOperand)
    }
    
    func modular(firstOperand: Float, secondOperand: Float) {
        self.modulusOperation.perform(firstOperand: firstOperand, secondOperand: secondOperand)
    }
    
}

// 계산기 인스턴스 생성
let calculator = Calculator()

// 각 기능을 사용
calculator.addOperation.perform(firstOperand: 10, secondOperand: 20)
calculator.subtractOperation.perform(firstOperand: 10, secondOperand: 20)
calculator.multiplyOperation.perform(firstOperand: 10, secondOperand: 20)
calculator.divideOperation.perform(firstOperand: 10, secondOperand: 20)
calculator.modulusOperation.perform(firstOperand: 10, secondOperand: 20)

// MARK: 더하기
struct AddOperation {
    
    func perform(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand + secondOperand
        // 값의 범위 확인
        var isInRange = { String(result).count < 16 }()
        // 정수인지 확인
        var isInteger = { result.truncatingRemainder(dividingBy: 1) == 0 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange && isInteger {
            print("Add : \(Int(result))")
            // 값이 범위 내에 있으며 실수값일 때,
        } else if isInRange && !isInteger {
            print("Add : \(result)")
            // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
}

// MARK: 빼기
public struct SubtractOperation {
    
    func perform(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand - secondOperand
        // 값의 범위 확인
        var isInRange: Bool = { String(result).count < 16 }()
        // 정수인지 확인
        var isInteger: Bool = { result.truncatingRemainder(dividingBy: 1) == 0 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange && isInteger {
            print("Sub : \(Int(result))")
            // 값이 범위 내에 있으며 실수값일 때,
        } else if isInRange && !isInteger {
            print("Sub : \(result)")
            // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
}

// MARK: 곱하기
public struct MultiplyOperation {
    
    func perform(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand * secondOperand
        // 값의 범위 확인
        var isInRange: Bool = { String(result).count < 16 }()
        // 정수인지 확인
        var isInteger: Bool = { result.truncatingRemainder(dividingBy: 1) == 0 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange && isInteger {
            print("Multi : \(Int(result))")
            // 값이 범위 내에 있으며 실수값일 때,
        } else if isInRange && !isInteger {
            print("Multi : \(result)")
            // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
}
// MARK: 나누기
public struct DivideOperation {
    
    func perform(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand / secondOperand
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
}
// MARK: 나머지 연산
public struct ModularOperation {
    
    func perform(firstOperand: Float, secondOperand: Float) {
        // 결과값 저장
        var result = firstOperand.remainder(dividingBy: secondOperand)
        // 값의 범위 확인
        var isInRange: Bool = { String(result).count < 16 }()
        // 정수인지 확인
        var isInteger: Bool = { result.truncatingRemainder(dividingBy: 1) == 0 }()
        
        // 값이 범위 내에 있으며 정수값일 때,
        if isInRange && isInteger {
            print("Remain : \(Int(result))")
            // 값이 범위 내에 있으며 실수값일 때,
        } else if isInRange && !isInteger {
            print("Remain : \(result)")
            // 그 외,
        } else {
            print("값이 너무 커요!")
        }
    }
}
