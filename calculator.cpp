#include "calculator.h"
#include <iostream>
#include <sstream>
#include <cctype>
#include <cstdlib>
#include <ctime>

using namespace std;

int calculator::add(int a, int b) { return a + b; }
int calculator::subtract(int a, int b) { return a - b; }
int calculator::multiply(int a, int b) { return a * b; }

double calculator::divide(double a, double b) {
    if (b == 0) {
        cerr << "Error: Division by zero." << endl;
        exit(1);
    }
    return a / b;
}

long long calculator::factorial(int n) {
    if (n < 0) {
        cerr << "Error: Factorial of negative number." << endl;
        exit(1);
    }
    long long result = 1;
    for (int i = 2; i <= n; ++i) {
        result *= i;
    }
    return result;
}

int calculator::gcd(int a, int b) {
    a = abs(a);
    b = abs(b);
    return b == 0 ? a : gcd(b, a % b);
}

int calculator::lcm(int a, int b) {
    a = abs(a);
    b = abs(b);
    if (a == 0 || b == 0) {
        cerr << "Error: LCM with zero." << endl;
        exit(1);
    }
    return (a / calculator::gcd(a, b)) * b;
}

int calculator::randomInRange(int min, int max) {
    if (min > max) {
        cerr << "Error: Invalid range." << endl;
        exit(1);
    }
    return min + rand() % (max - min + 1);
}

int calculator::precedence(char op) {
    if (op == '+' || op == '-') return 1;
    if (op == '*' || op == '/') return 2;
    return 0;
}

bool calculator::isOperator(const string& token) {
    return token == "+" || token == "-" || token == "*" || token == "/";
}

bool calculator::isNumber(const string& token) {
    if (token.empty()) return false;
    size_t i = 0;
    if (token[0] == '-' && token.size() > 1) {
        i = 1;
    }
    for (; i < token.size(); ++i) {
        if (!isdigit(token[i])) return false;
    }
    return true;
}

queue<string> calculator::infixToPostfix(const string& expr) {
    stack<char> operators;
    queue<string> output;
    istringstream input(expr);
    string token;
    int parenBalance = 0;

    while (input >> token) {
        if (isNumber(token)) {
            output.push(token);
        } else if (token == "(") {
            operators.push('(');
            parenBalance++;
        } else if (token == ")") {
            parenBalance--;
            if (parenBalance < 0) {
                cerr << "Error: Mismatched parentheses." << endl;
                exit(1);
            }
            while (!operators.empty() && operators.top() != '(') {
                output.push(string(1, operators.top()));
                operators.pop();
            }
            if (operators.empty()) {
                cerr << "Error: Mismatched parentheses." << endl;
                exit(1);
            }
            operators.pop();
        } else if (isOperator(token)) {
            while (!operators.empty() && precedence(operators.top()) >= precedence(token[0])) {
                output.push(string(1, operators.top()));
                operators.pop();
            }
            operators.push(token[0]);
        } else {
            cerr << "Error: Invalid token '" << token << "'." << endl;
            exit(1);
        }
    }

    if (parenBalance != 0) {
        cerr << "Error: Mismatched parentheses." << endl;
        exit(1);
    }

    while (!operators.empty()) {
        if (operators.top() == '(' || operators.top() == ')') {
            cerr << "Error: Mismatched parentheses." << endl;
            exit(1);
        }
        output.push(string(1, operators.top()));
        operators.pop();
    }

    if (output.empty()) {
        cerr << "Error: Empty expression." << endl;
        exit(1);
    }

    return output;
}

double calculator::evaluatePostfix(queue<string> postfix) {
    stack<double> values;

    while (!postfix.empty()) {
        string token = postfix.front();
        postfix.pop();

        if (isNumber(token)) {
            values.push(stod(token));
        } else if (isOperator(token)) {
            if (values.size() < 2) {
                cerr << "Error: Malformed expression." << endl;
                exit(1);
            }
            double b = values.top(); values.pop();
            double a = values.top(); values.pop();
            switch (token[0]) {
                case '+': values.push(a + b); break;
                case '-': values.push(a - b); break;
                case '*': values.push(a * b); break;
                case '/': values.push(calculator::divide(a, b)); break;
            }
        } else {
            cerr << "Error: Invalid token in postfix expression." << endl;
            exit(1);
        }
    }

    if (values.size() != 1) {
        cerr << "Error: Malformed expression." << endl;
        exit(1);
    }

    return values.top();
}

double calculator::evaluateExpression(const string& expression) {
    return evaluatePostfix(infixToPostfix(expression));
}
