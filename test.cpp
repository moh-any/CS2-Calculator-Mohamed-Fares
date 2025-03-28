#include <iostream>
#include "calculator.h"

using namespace std;

int main() {
    cout << "Addition: " << add(5, 3) << endl;
    cout << "Subtraction: " << subtract(10, 4) << endl;
    cout << "Multiplication: " << multiply(6, 7) << endl;
    cout << "Division: " << divide(20, 5) << endl;
    cout << "Factorial: " << factorial(5) << endl;
    cout << "GCD: " << gcd(24, 36) << endl;
    cout << "LCM: " << lcm(12, 18) << endl;
    cout << "Random: " << randomInRange(1, 10) << endl;

    string expression = "3 + 4 * ( 2 - 1 ) / 5";
    cout << "Expression: " << expression << " = " << evaluateExpression(expression) << endl;

    return 0;
}
