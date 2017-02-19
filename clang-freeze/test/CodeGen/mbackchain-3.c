// RUN: %clang -mno-backchain --target=s390x-linux -S -emit-llvm -o - %s | FileCheck %s

// CHECK: define void @foo() [[NUW:#[0-9]+]]
void foo(void) {
}

// CHECK-NOT: "backchain"