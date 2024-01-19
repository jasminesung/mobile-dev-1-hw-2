import UIKit

func Payment(loanAmount: Int, noOfPayments: Int, interestRate: Float) -> Float {
    let rate = powf((1 + interestRate), Float(noOfPayments))
    let dividend = interestRate * rate
    let divisor = rate - 1
    return Float(loanAmount) * (dividend / divisor)
}
print(Payment(loanAmount: 150000, noOfPayments: 30, interestRate: 0.05))
print(Payment(loanAmount: 20000, noOfPayments: 2, interestRate: 0.044 / 12))
