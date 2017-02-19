// RUN: llvm-mc -triple x86_64-unknown-unknown -mcpu=knl -mattr=+avx512ifma  --show-encoding %s | FileCheck %s

  vpmadd52luq %zmm4, %zmm5, %zmm6
//CHECK: vpmadd52luq %zmm4, %zmm5, %zmm6
//CHECK: encoding: [0x62,0xf2,0xd5,0x48,0xb4,0xf4]

  vpmadd52luq %zmm4, %zmm5, %zmm6 {%k7}
//CHECK: vpmadd52luq %zmm4, %zmm5, %zmm6 {%k7}
//CHECK: encoding: [0x62,0xf2,0xd5,0x4f,0xb4,0xf4]

  vpmadd52luq %zmm4, %zmm5, %zmm6 {%k7} {z}
//CHECK: vpmadd52luq %zmm4, %zmm5, %zmm6 {%k7} {z}
//CHECK: encoding: [0x62,0xf2,0xd5,0xcf,0xb4,0xf4]

  vpmadd52luq %zmm28, %zmm29, %zmm30
//CHECK: vpmadd52luq %zmm28, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x02,0x95,0x40,0xb4,0xf4]

  vpmadd52luq %zmm28, %zmm29, %zmm30 {%k7}
//CHECK: vpmadd52luq %zmm28, %zmm29, %zmm30 {%k7}
//CHECK: encoding: [0x62,0x02,0x95,0x47,0xb4,0xf4]

  vpmadd52luq %zmm28, %zmm29, %zmm30 {%k7} {z}
//CHECK: vpmadd52luq %zmm28, %zmm29, %zmm30 {%k7} {z}
//CHECK: encoding: [0x62,0x02,0x95,0xc7,0xb4,0xf4]

  vpmadd52luq (%rcx), %zmm29, %zmm30
//CHECK: vpmadd52luq (%rcx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb4,0x31]

  vpmadd52luq 0x123(%rax,%r14,8), %zmm29, %zmm30
//CHECK: vpmadd52luq 291(%rax,%r14,8), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x22,0x95,0x40,0xb4,0xb4,0xf0,0x23,0x01,0x00,0x00]

  vpmadd52luq (%rcx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52luq (%rcx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb4,0x31]

  vpmadd52luq 0x1fc0(%rdx), %zmm29, %zmm30
//CHECK: vpmadd52luq 8128(%rdx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb4,0x72,0x7f]

  vpmadd52luq 0x2000(%rdx), %zmm29, %zmm30
//CHECK: vpmadd52luq 8192(%rdx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb4,0xb2,0x00,0x20,0x00,0x00]

  vpmadd52luq -0x2000(%rdx), %zmm29, %zmm30
//CHECK: vpmadd52luq -8192(%rdx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb4,0x72,0x80]

  vpmadd52luq -0x2040(%rdx), %zmm29, %zmm30
//CHECK: vpmadd52luq -8256(%rdx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb4,0xb2,0xc0,0xdf,0xff,0xff]

  vpmadd52luq 0x3f8(%rdx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52luq 1016(%rdx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb4,0x72,0x7f]

  vpmadd52luq 0x400(%rdx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52luq 1024(%rdx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb4,0xb2,0x00,0x04,0x00,0x00]

  vpmadd52luq -0x400(%rdx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52luq -1024(%rdx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb4,0x72,0x80]

  vpmadd52luq -0x408(%rdx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52luq -1032(%rdx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb4,0xb2,0xf8,0xfb,0xff,0xff]

  vpmadd52luq 0x1234(%rax,%r14,8), %zmm29, %zmm30
//CHECK: vpmadd52luq 4660(%rax,%r14,8), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x22,0x95,0x40,0xb4,0xb4,0xf0,0x34,0x12,0x00,0x00]

  vpmadd52huq %zmm4, %zmm5, %zmm6
//CHECK: vpmadd52huq %zmm4, %zmm5, %zmm6
//CHECK: encoding: [0x62,0xf2,0xd5,0x48,0xb5,0xf4]

  vpmadd52huq %zmm4, %zmm5, %zmm6 {%k7}
//CHECK: vpmadd52huq %zmm4, %zmm5, %zmm6 {%k7}
//CHECK: encoding: [0x62,0xf2,0xd5,0x4f,0xb5,0xf4]

  vpmadd52huq %zmm4, %zmm5, %zmm6 {%k7} {z}
//CHECK: vpmadd52huq %zmm4, %zmm5, %zmm6 {%k7} {z}
//CHECK: encoding: [0x62,0xf2,0xd5,0xcf,0xb5,0xf4]

  vpmadd52huq %zmm28, %zmm29, %zmm30
//CHECK: vpmadd52huq %zmm28, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x02,0x95,0x40,0xb5,0xf4]

  vpmadd52huq %zmm28, %zmm29, %zmm30 {%k7}
//CHECK: vpmadd52huq %zmm28, %zmm29, %zmm30 {%k7}
//CHECK: encoding: [0x62,0x02,0x95,0x47,0xb5,0xf4]

  vpmadd52huq %zmm28, %zmm29, %zmm30 {%k7} {z}
//CHECK: vpmadd52huq %zmm28, %zmm29, %zmm30 {%k7} {z}
//CHECK: encoding: [0x62,0x02,0x95,0xc7,0xb5,0xf4]

  vpmadd52huq (%rcx), %zmm29, %zmm30
//CHECK: vpmadd52huq (%rcx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb5,0x31]

  vpmadd52huq 0x123(%rax,%r14,8), %zmm29, %zmm30
//CHECK: vpmadd52huq 291(%rax,%r14,8), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x22,0x95,0x40,0xb5,0xb4,0xf0,0x23,0x01,0x00,0x00]

  vpmadd52huq (%rcx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52huq (%rcx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb5,0x31]

  vpmadd52huq 0x1fc0(%rdx), %zmm29, %zmm30
//CHECK: vpmadd52huq 8128(%rdx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb5,0x72,0x7f]

  vpmadd52huq 0x2000(%rdx), %zmm29, %zmm30
//CHECK: vpmadd52huq 8192(%rdx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb5,0xb2,0x00,0x20,0x00,0x00]

  vpmadd52huq -0x2000(%rdx), %zmm29, %zmm30
//CHECK: vpmadd52huq -8192(%rdx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb5,0x72,0x80]

  vpmadd52huq -0x2040(%rdx), %zmm29, %zmm30
//CHECK: vpmadd52huq -8256(%rdx), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x40,0xb5,0xb2,0xc0,0xdf,0xff,0xff]

  vpmadd52huq 0x3f8(%rdx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52huq 1016(%rdx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb5,0x72,0x7f]

  vpmadd52huq 0x400(%rdx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52huq 1024(%rdx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb5,0xb2,0x00,0x04,0x00,0x00]

  vpmadd52huq -0x400(%rdx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52huq -1024(%rdx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb5,0x72,0x80]

  vpmadd52huq -0x408(%rdx){1to8}, %zmm29, %zmm30
//CHECK: vpmadd52huq -1032(%rdx){1to8}, %zmm29, %zmm30
//CHECK: encoding: [0x62,0x62,0x95,0x50,0xb5,0xb2,0xf8,0xfb,0xff,0xff]

  vpmadd52huq 0x1234(%rax,%r14,8), %zmm29, %zmm30
//CHECK: vpmadd52huq 4660(%rax,%r14,8), %zmm29, %zmm30
//CHECK: encoding: [0x62,0x22,0x95,0x40,0xb5,0xb4,0xf0,0x34,0x12,0x00,0x00]