#include <iostream>
#include "calculator.h"
#include <cstdlib>
using namespace std;
int main() {
    srand(time(0));
    cout << "Addition: " << add(5, 3) << endl;
    cout << "Subtraction: " << subtract(10, 4) << endl;
    cout << "Multiplication: " << multiply(6, 7) << endl;
    cout << "Division: " << divide(20, 5) << endl;
    cout << "Factorial: " << factorial(5) << endl;
    cout << "GCD: " << gcd(24, 36) << endl;
    cout << "LCM: " << lcm(12, 18) << endl;
    cout << "Random: " << randomInRange(1, 10) << endl;
    return 0;
}
