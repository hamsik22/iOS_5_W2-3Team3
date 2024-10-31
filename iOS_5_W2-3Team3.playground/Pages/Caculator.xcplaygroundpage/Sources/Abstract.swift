//
//  Untitled.swift
//  
//
//  Created by 황석현 on 10/31/24.
//
import Foundation

/// 계산 결과에 대한 기능등을 구현해야함
/// 반복적인 코드이지만 필요한 기능임
/// 추후 타입 메서드로 구현할 가능성도 생각이 듬
public protocol AbstractOperation {
    func addition(firstOperand: Float, secondOperand: Float)
    func subtraction(firstOperand: Float, secondOperand: Float)
    func multiplication(firstOperand: Float, secondOperand: Float)
    func division(firstOperand: Float, secondOperand: Float)
    func modular(firstOperand: Float, secondOperand: Float)
}
