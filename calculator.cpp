#include "calculator.h"
#include <iostream>
#include <cstdlib>

int add(int a, int b) { return a + b; }
int subtract(int a, int b) { return a - b; }
int multiply(int a, int b) { return a * b; }
double divide(double a, double b) { return (b != 0) ? a / b : 0; }

long long factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

int gcd(int a, int b) {
    return (b == 0) ? a : gcd(b, a % b);
}

int lcm(int a, int b) {
    return (a / gcd(a, b)) * b;
}

int randomInRange(int min, int max) {
    return min + rand() % (max - min + 1);
}