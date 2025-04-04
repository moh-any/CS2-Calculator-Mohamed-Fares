#include "calculator.h"
#include <iostream>

using namespace std;

int main() {
    srand(time(NULL));

    cout << "2 + 3 = " << calculator::add(2, 3) << endl;
    cout << "5 - 3 = " << calculator::subtract(5, 3) << endl;
    cout << "4 * 6 = " << calculator::multiply(4, 6) << endl;
    cout << "15 / 4 = " << calculator::divide(15, 4) << endl;
    cout << "5! = " << calculator::factorial(5) << endl;
    cout << "GCD(24, 36) = " << calculator::gcd(24, 36) << endl;
    cout << "LCM(6, 8) = " << calculator::lcm(6, 8) << endl;
    cout << "Random (1-100): " << calculator::randomInRange(1, 100) << endl;
    cout << "Expression (3 + 4) * 2 - 7: " << calculator::evaluateExpression("( 3 + 4 ) * 2 - 7") << endl;
    cout << "Expression -5 + 3 * 2: " << calculator::evaluateExpression("-5 + 3 * 2") << endl;

    return 0;
}
