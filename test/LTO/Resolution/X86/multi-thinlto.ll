; RUN: opt -module-summary %s -o %t.o
; RUN: llvm-cat -b -o %t2.o %t.o %t.o
; RUN: not llvm-lto2 -o %t3.o %t2.o 2>&1 | FileCheck %s
; CHECK: Expected at most one ThinLTO module per bitcode file

target triple = "x86_64-unknown-linux-gnu"
