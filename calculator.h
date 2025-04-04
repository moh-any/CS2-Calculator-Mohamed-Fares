#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <string>
#include <queue>
#include <stack>

class calculator {
public:
    static int add(int a, int b);
    static int subtract(int a, int b);
    static int multiply(int a, int b);
    static double divide(double a, double b);
    static long long factorial(int n);
    static int gcd(int a, int b);
    static int lcm(int a, int b);
    static int randomInRange(int min, int max);
    static double evaluateExpression(const std::string& expression);

private:
    static int precedence(char op);
    static bool isOperator(const std::string& token);
    static bool isNumber(const std::string& token);
    static std::queue<std::string> infixToPostfix(const std::string& expr);
    static double evaluatePostfix(std::queue<std::string> postfix);
};

#endif
