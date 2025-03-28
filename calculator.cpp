#include "calculator.h"
#include <iostream>
#include <sstream>
#include <stack>
#include <queue>
#include <cctype>
#include <cmath>
#include <cstdlib>

using namespace std;

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

int precedence(char op) {
    if (op == '+' || op == '-') return 1;
    if (op == '*' || op == '/') return 2;
    return 0;
}

queue<string> infixToPostfix(const string& expr) {
    stack<char> operators;
    queue<string> output;
    istringstream input(expr);
    string token;

    while (input >> token) {
        if (isdigit(token[0])) {
            output.push(token);
        } else if (token == "(") {
            operators.push('(');
        } else if (token == ")") {
            while (!operators.empty() && operators.top() != '(') {
                output.push(string(1, operators.top()));
                operators.pop();
            }
            operators.pop();
        } else {
            while (!operators.empty() && precedence(operators.top()) >= precedence(token[0])) {
                output.push(string(1, operators.top()));
                operators.pop();
            }
            operators.push(token[0]);
        }
    }
    
    while (!operators.empty()) {
        output.push(string(1, operators.top()));
        operators.pop();
    }

    return output;
}

double evaluatePostfix(queue<string> postfix) {
    stack<double> values;

    while (!postfix.empty()) {
        string token = postfix.front();
        postfix.pop();

        if (isdigit(token[0])) {
            values.push(stod(token));
        } else {
            double b = values.top(); values.pop();
            double a = values.top(); values.pop();
            
            switch (token[0]) {
                case '+': values.push(a + b); break;
                case '-': values.push(a - b); break;
                case '*': values.push(a * b); break;
                case '/': values.push(a / b); break;
            }
        }
    }

    return values.top();
}

double evaluateExpression(const string& expression) {
    queue<string> postfix = infixToPostfix(expression);
    return evaluatePostfix(postfix);
}
