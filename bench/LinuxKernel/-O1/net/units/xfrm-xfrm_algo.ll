; ModuleID = 'net/xfrm/xfrm_algo.c'
source_filename = "net/xfrm/xfrm_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_aalg_get_byid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_aalg_get_byid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_ealg_get_byid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_ealg_get_byid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_calg_get_byid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_calg_get_byid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_aalg_get_byname: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_aalg_get_byname ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_ealg_get_byname: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_ealg_get_byname ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_calg_get_byname: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_calg_get_byname ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_aead_get_byname: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_aead_get_byname ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_aalg_get_byidx: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_aalg_get_byidx ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_ealg_get_byidx: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_ealg_get_byidx ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_probe_algs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_probe_algs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_count_pfkey_auth_supported: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_count_pfkey_auth_supported ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_xfrm_count_pfkey_enc_supported: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad xfrm_count_pfkey_enc_supported ; .previous"

%struct.xfrm_algo_list = type { ptr, i32, i32, i32 }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon, %struct.sadb_alg }
%union.anon = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.xfrm_algo_encr_info = type { ptr, i16, i16 }
%struct.pcpu_hot = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.xfrm_algo_comp_info = type { i16 }
%struct.xfrm_aead_name = type { ptr, i32 }

@xfrm_aalg_list = internal constant %struct.xfrm_algo_list { ptr @aalg_list, i32 10, i32 14, i32 14 }, align 8, !dbg !0
@__UNIQUE_ID___addressable_xfrm_aalg_get_byid604 = internal global ptr @xfrm_aalg_get_byid, section ".discard.addressable", align 8, !dbg !9
@xfrm_ealg_list = internal constant %struct.xfrm_algo_list { ptr @ealg_list, i32 11, i32 5, i32 15 }, align 8, !dbg !50
@__UNIQUE_ID___addressable_xfrm_ealg_get_byid605 = internal global ptr @xfrm_ealg_get_byid, section ".discard.addressable", align 8, !dbg !11
@xfrm_calg_list = internal constant %struct.xfrm_algo_list { ptr @calg_list, i32 3, i32 2, i32 15 }, align 8, !dbg !111
@__UNIQUE_ID___addressable_xfrm_calg_get_byid606 = internal global ptr @xfrm_calg_get_byid, section ".discard.addressable", align 8, !dbg !13
@__UNIQUE_ID___addressable_xfrm_aalg_get_byname607 = internal global ptr @xfrm_aalg_get_byname, section ".discard.addressable", align 8, !dbg !15
@__UNIQUE_ID___addressable_xfrm_ealg_get_byname608 = internal global ptr @xfrm_ealg_get_byname, section ".discard.addressable", align 8, !dbg !17
@__UNIQUE_ID___addressable_xfrm_calg_get_byname609 = internal global ptr @xfrm_calg_get_byname, section ".discard.addressable", align 8, !dbg !19
@xfrm_aead_list = internal constant %struct.xfrm_algo_list { ptr @aead_list, i32 8, i32 3, i32 15 }, align 8, !dbg !113
@__UNIQUE_ID___addressable_xfrm_aead_get_byname610 = internal global ptr @xfrm_aead_get_byname, section ".discard.addressable", align 8, !dbg !21
@__UNIQUE_ID___addressable_xfrm_aalg_get_byidx611 = internal global ptr @xfrm_aalg_get_byidx, section ".discard.addressable", align 8, !dbg !23
@__UNIQUE_ID___addressable_xfrm_ealg_get_byidx612 = internal global ptr @xfrm_ealg_get_byidx, section ".discard.addressable", align 8, !dbg !25
@.str = private unnamed_addr constant [21 x i8] c"net/xfrm/xfrm_algo.c\00", align 1, !dbg !27
@__UNIQUE_ID___addressable_xfrm_probe_algs613 = internal global ptr @xfrm_probe_algs, section ".discard.addressable", align 8, !dbg !33
@__UNIQUE_ID___addressable_xfrm_count_pfkey_auth_supported614 = internal global ptr @xfrm_count_pfkey_auth_supported, section ".discard.addressable", align 8, !dbg !35
@__UNIQUE_ID___addressable_xfrm_count_pfkey_enc_supported615 = internal global ptr @xfrm_count_pfkey_enc_supported, section ".discard.addressable", align 8, !dbg !37
@__UNIQUE_ID_file616 = internal constant [34 x i8] c"xfrm_algo.file=net/xfrm/xfrm_algo\00", section ".modinfo", align 1, !dbg !39
@__UNIQUE_ID_license617 = internal constant [22 x i8] c"xfrm_algo.license=GPL\00", section ".modinfo", align 1, !dbg !45
@aead_list = internal global [8 x %struct.xfrm_algo_desc] [%struct.xfrm_algo_desc { ptr @.str.1, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.2, i16 64 } }, %struct.sadb_alg { i8 18, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.1, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.2, i16 96 } }, %struct.sadb_alg { i8 19, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.1, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.2, i16 128 } }, %struct.sadb_alg { i8 20, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.3, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.2, i16 64 } }, %struct.sadb_alg { i8 14, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.3, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.2, i16 96 } }, %struct.sadb_alg { i8 15, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.3, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.2, i16 128 } }, %struct.sadb_alg { i8 16, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.4, ptr null, i8 2, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.2, i16 128 } }, %struct.sadb_alg { i8 23, i8 8, i16 128, i16 256, i16 0 } }, %struct.xfrm_algo_desc { ptr @.str.5, ptr null, i8 0, %union.anon { %struct.xfrm_algo_aead_info { ptr @.str.2, i16 128 } }, %struct.sadb_alg zeroinitializer }], align 16, !dbg !134
@.str.1 = private unnamed_addr constant [18 x i8] c"rfc4106(gcm(aes))\00", align 1, !dbg !115
@.str.2 = private unnamed_addr constant [6 x i8] c"seqiv\00", align 1, !dbg !120
@.str.3 = private unnamed_addr constant [18 x i8] c"rfc4309(ccm(aes))\00", align 1, !dbg !125
@.str.4 = private unnamed_addr constant [18 x i8] c"rfc4543(gcm(aes))\00", align 1, !dbg !127
@.str.5 = private unnamed_addr constant [30 x i8] c"rfc7539esp(chacha20,poly1305)\00", align 1, !dbg !129
@.str.6 = private unnamed_addr constant [12 x i8] c"digest_null\00", align 1, !dbg !139
@.str.7 = private unnamed_addr constant [10 x i8] c"hmac(md5)\00", align 1, !dbg !144
@.str.8 = private unnamed_addr constant [4 x i8] c"md5\00", align 1, !dbg !149
@.str.9 = private unnamed_addr constant [11 x i8] c"hmac(sha1)\00", align 1, !dbg !154
@.str.10 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1, !dbg !159
@.str.11 = private unnamed_addr constant [13 x i8] c"hmac(sha256)\00", align 1, !dbg !164
@.str.12 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1, !dbg !169
@.str.13 = private unnamed_addr constant [13 x i8] c"hmac(sha384)\00", align 1, !dbg !174
@.str.14 = private unnamed_addr constant [13 x i8] c"hmac(sha512)\00", align 1, !dbg !176
@.str.15 = private unnamed_addr constant [13 x i8] c"hmac(rmd160)\00", align 1, !dbg !178
@.str.16 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1, !dbg !180
@.str.17 = private unnamed_addr constant [10 x i8] c"xcbc(aes)\00", align 1, !dbg !182
@.str.18 = private unnamed_addr constant [10 x i8] c"cmac(aes)\00", align 1, !dbg !184
@.str.19 = private unnamed_addr constant [10 x i8] c"hmac(sm3)\00", align 1, !dbg !186
@.str.20 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1, !dbg !188
@aalg_list = internal global [10 x { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg }] [{ ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.6, ptr null, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info zeroinitializer, [12 x i8] undef }, %struct.sadb_alg { i8 -5, i8 0, i16 0, i16 0, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.7, ptr @.str.8, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 128 }, [12 x i8] undef }, %struct.sadb_alg { i8 2, i8 0, i16 128, i16 128, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.9, ptr @.str.10, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 160 }, [12 x i8] undef }, %struct.sadb_alg { i8 3, i8 0, i16 160, i16 160, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.11, ptr @.str.12, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 256 }, [12 x i8] undef }, %struct.sadb_alg { i8 5, i8 0, i16 256, i16 256, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.13, ptr null, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 192, i16 384 }, [12 x i8] undef }, %struct.sadb_alg { i8 6, i8 0, i16 384, i16 384, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.14, ptr null, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 256, i16 512 }, [12 x i8] undef }, %struct.sadb_alg { i8 7, i8 0, i16 512, i16 512, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.15, ptr @.str.16, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 160 }, [12 x i8] undef }, %struct.sadb_alg { i8 8, i8 0, i16 160, i16 160, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.17, ptr null, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 128 }, [12 x i8] undef }, %struct.sadb_alg { i8 9, i8 0, i16 128, i16 128, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.18, ptr null, i8 0, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 96, i16 128 }, [12 x i8] undef }, %struct.sadb_alg zeroinitializer }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_auth_info, [12 x i8] }, %struct.sadb_alg } { ptr @.str.19, ptr @.str.20, i8 2, [7 x i8] undef, { %struct.xfrm_algo_auth_info, [12 x i8] } { %struct.xfrm_algo_auth_info { i16 256, i16 256 }, [12 x i8] undef }, %struct.sadb_alg { i8 10, i8 0, i16 256, i16 256, i16 0 } }], align 16, !dbg !190
@.str.22 = private unnamed_addr constant [17 x i8] c"ecb(cipher_null)\00", align 1, !dbg !193
@.str.23 = private unnamed_addr constant [12 x i8] c"cipher_null\00", align 1, !dbg !198
@.str.24 = private unnamed_addr constant [9 x i8] c"cbc(des)\00", align 1, !dbg !200
@.str.25 = private unnamed_addr constant [4 x i8] c"des\00", align 1, !dbg !205
@.str.26 = private unnamed_addr constant [9 x i8] c"echainiv\00", align 1, !dbg !207
@.str.27 = private unnamed_addr constant [14 x i8] c"cbc(des3_ede)\00", align 1, !dbg !209
@.str.28 = private unnamed_addr constant [9 x i8] c"des3_ede\00", align 1, !dbg !214
@.str.29 = private unnamed_addr constant [11 x i8] c"cbc(cast5)\00", align 1, !dbg !216
@.str.30 = private unnamed_addr constant [6 x i8] c"cast5\00", align 1, !dbg !218
@.str.31 = private unnamed_addr constant [14 x i8] c"cbc(blowfish)\00", align 1, !dbg !220
@.str.32 = private unnamed_addr constant [9 x i8] c"blowfish\00", align 1, !dbg !222
@.str.33 = private unnamed_addr constant [9 x i8] c"cbc(aes)\00", align 1, !dbg !224
@.str.34 = private unnamed_addr constant [4 x i8] c"aes\00", align 1, !dbg !226
@.str.35 = private unnamed_addr constant [13 x i8] c"cbc(serpent)\00", align 1, !dbg !228
@.str.36 = private unnamed_addr constant [8 x i8] c"serpent\00", align 1, !dbg !230
@.str.37 = private unnamed_addr constant [14 x i8] c"cbc(camellia)\00", align 1, !dbg !233
@.str.38 = private unnamed_addr constant [9 x i8] c"camellia\00", align 1, !dbg !235
@.str.39 = private unnamed_addr constant [13 x i8] c"cbc(twofish)\00", align 1, !dbg !237
@.str.40 = private unnamed_addr constant [8 x i8] c"twofish\00", align 1, !dbg !239
@.str.41 = private unnamed_addr constant [18 x i8] c"rfc3686(ctr(aes))\00", align 1, !dbg !241
@.str.42 = private unnamed_addr constant [9 x i8] c"cbc(sm4)\00", align 1, !dbg !243
@.str.43 = private unnamed_addr constant [4 x i8] c"sm4\00", align 1, !dbg !245
@ealg_list = internal global [11 x { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg }] [{ ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.22, ptr @.str.23, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr null, i16 8, i16 0 } }, %struct.sadb_alg { i8 11, i8 0, i16 0, i16 0, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.24, ptr @.str.25, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 64, i16 64 } }, %struct.sadb_alg { i8 2, i8 8, i16 64, i16 64, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.27, ptr @.str.28, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 64, i16 192 } }, %struct.sadb_alg { i8 3, i8 8, i16 192, i16 192, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.29, ptr @.str.30, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 64, i16 128 } }, %struct.sadb_alg { i8 6, i8 8, i16 40, i16 128, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.31, ptr @.str.32, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 64, i16 128 } }, %struct.sadb_alg { i8 7, i8 8, i16 40, i16 448, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.33, ptr @.str.34, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 128, i16 128 } }, %struct.sadb_alg { i8 12, i8 8, i16 128, i16 256, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.35, ptr @.str.36, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 128, i16 128 } }, %struct.sadb_alg { i8 -4, i8 8, i16 128, i16 256, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.37, ptr @.str.38, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 128, i16 128 } }, %struct.sadb_alg { i8 22, i8 8, i16 128, i16 256, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.39, ptr @.str.40, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 128, i16 128 } }, %struct.sadb_alg { i8 -3, i8 8, i16 128, i16 256, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.41, ptr null, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.2, i16 128, i16 160 } }, %struct.sadb_alg { i8 13, i8 8, i16 160, i16 288, i16 0 } }, { ptr, ptr, i8, { %struct.xfrm_algo_encr_info }, %struct.sadb_alg } { ptr @.str.42, ptr @.str.43, i8 2, { %struct.xfrm_algo_encr_info } { %struct.xfrm_algo_encr_info { ptr @.str.26, i16 128, i16 128 } }, %struct.sadb_alg { i8 24, i8 16, i16 128, i16 256, i16 0 } }], align 16, !dbg !247
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.45 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1, !dbg !250
@.str.46 = private unnamed_addr constant [4 x i8] c"lzs\00", align 1, !dbg !252
@.str.47 = private unnamed_addr constant [5 x i8] c"lzjh\00", align 1, !dbg !254
@calg_list = internal global [3 x { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_comp_info, [14 x i8] }, %struct.sadb_alg }] [{ ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_comp_info, [14 x i8] }, %struct.sadb_alg } { ptr @.str.45, ptr null, i8 2, [7 x i8] undef, { %struct.xfrm_algo_comp_info, [14 x i8] } { %struct.xfrm_algo_comp_info { i16 90 }, [14 x i8] undef }, %struct.sadb_alg { i8 2, i8 0, i16 0, i16 0, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_comp_info, [14 x i8] }, %struct.sadb_alg } { ptr @.str.46, ptr null, i8 2, [7 x i8] undef, { %struct.xfrm_algo_comp_info, [14 x i8] } { %struct.xfrm_algo_comp_info { i16 90 }, [14 x i8] undef }, %struct.sadb_alg { i8 3, i8 0, i16 0, i16 0, i16 0 } }, { ptr, ptr, i8, [7 x i8], { %struct.xfrm_algo_comp_info, [14 x i8] }, %struct.sadb_alg } { ptr @.str.47, ptr null, i8 2, [7 x i8] undef, { %struct.xfrm_algo_comp_info, [14 x i8] } { %struct.xfrm_algo_comp_info { i16 50 }, [14 x i8] undef }, %struct.sadb_alg { i8 4, i8 0, i16 0, i16 0, i16 0 } }], align 16, !dbg !256
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID___addressable_xfrm_aalg_get_byid604, ptr @__UNIQUE_ID___addressable_xfrm_ealg_get_byid605, ptr @__UNIQUE_ID___addressable_xfrm_calg_get_byid606, ptr @__UNIQUE_ID___addressable_xfrm_aalg_get_byname607, ptr @__UNIQUE_ID___addressable_xfrm_ealg_get_byname608, ptr @__UNIQUE_ID___addressable_xfrm_calg_get_byname609, ptr @__UNIQUE_ID___addressable_xfrm_aead_get_byname610, ptr @__UNIQUE_ID___addressable_xfrm_aalg_get_byidx611, ptr @__UNIQUE_ID___addressable_xfrm_ealg_get_byidx612, ptr @__UNIQUE_ID___addressable_xfrm_probe_algs613, ptr @__UNIQUE_ID___addressable_xfrm_count_pfkey_auth_supported614, ptr @__UNIQUE_ID___addressable_xfrm_count_pfkey_enc_supported615, ptr @__UNIQUE_ID_file616, ptr @__UNIQUE_ID_license617], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_aalg_get_byid(i32 noundef %alg_id) #0 align 16 !dbg !270 {
entry:
  %alg_id.addr = alloca i32, align 4
  store i32 %alg_id, ptr %alg_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %alg_id.addr, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = load i32, ptr %alg_id.addr, align 4, !dbg !276
  %conv = sext i32 %0 to i64, !dbg !277
  %1 = inttoptr i64 %conv to ptr, !dbg !278
  %call = call ptr @xfrm_find_algo(ptr noundef @xfrm_aalg_list, ptr noundef @xfrm_alg_id_match, ptr noundef %1, i32 noundef 1) #7, !dbg !279
  ret ptr %call, !dbg !280
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xfrm_find_algo(ptr noundef %algo_list, ptr noundef %match, ptr noundef %data, i32 noundef %probe) #0 align 16 !dbg !281 {
entry:
  %retval = alloca ptr, align 8
  %algo_list.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %probe.addr = alloca i32, align 4
  %list = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %algo_list, ptr %algo_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %algo_list.addr, metadata !293, metadata !DIExpression()), !dbg !300
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !294, metadata !DIExpression()), !dbg !301
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !295, metadata !DIExpression()), !dbg !302
  store i32 %probe, ptr %probe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !296, metadata !DIExpression()), !dbg !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #8, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %list, metadata !297, metadata !DIExpression()), !dbg !305
  %0 = load ptr, ptr %algo_list.addr, align 8, !dbg !306
  %algs = getelementptr inbounds %struct.xfrm_algo_list, ptr %0, i32 0, i32 0, !dbg !307
  %1 = load ptr, ptr %algs, align 8, !dbg !307
  store ptr %1, ptr %list, align 8, !dbg !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %i, metadata !298, metadata !DIExpression()), !dbg !309
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %status, metadata !299, metadata !DIExpression()), !dbg !310
  store i32 0, ptr %i, align 4, !dbg !311
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !314
  %3 = load ptr, ptr %algo_list.addr, align 8, !dbg !316
  %entries = getelementptr inbounds %struct.xfrm_algo_list, ptr %3, i32 0, i32 1, !dbg !317
  %4 = load i32, ptr %entries, align 8, !dbg !317
  %cmp = icmp slt i32 %2, %4, !dbg !318
  br i1 %cmp, label %for.body, label %for.end, !dbg !319

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %match.addr, align 8, !dbg !320
  %6 = load ptr, ptr %list, align 8, !dbg !323
  %7 = load i32, ptr %i, align 4, !dbg !324
  %idx.ext = sext i32 %7 to i64, !dbg !325
  %add.ptr = getelementptr %struct.xfrm_algo_desc, ptr %6, i64 %idx.ext, !dbg !325
  %8 = load ptr, ptr %data.addr, align 8, !dbg !326
  %call = call i32 %5(ptr noundef %add.ptr, ptr noundef %8) #7, !dbg !320
  %tobool = icmp ne i32 %call, 0, !dbg !320
  br i1 %tobool, label %if.end, label %if.then, !dbg !327

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !328

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %list, align 8, !dbg !329
  %10 = load i32, ptr %i, align 4, !dbg !331
  %idxprom = sext i32 %10 to i64, !dbg !329
  %arrayidx = getelementptr %struct.xfrm_algo_desc, ptr %9, i64 %idxprom, !dbg !329
  %available = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx, i32 0, i32 2, !dbg !332
  %bf.load = load i8, ptr %available, align 8, !dbg !332
  %bf.clear = and i8 %bf.load, 1, !dbg !332
  %tobool1 = icmp ne i8 %bf.clear, 0, !dbg !329
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !333

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr %list, align 8, !dbg !334
  %12 = load i32, ptr %i, align 4, !dbg !335
  %idxprom3 = sext i32 %12 to i64, !dbg !334
  %arrayidx4 = getelementptr %struct.xfrm_algo_desc, ptr %11, i64 %idxprom3, !dbg !334
  store ptr %arrayidx4, ptr %retval, align 8, !dbg !336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !336

if.end5:                                          ; preds = %if.end
  %13 = load i32, ptr %probe.addr, align 4, !dbg !337
  %tobool6 = icmp ne i32 %13, 0, !dbg !337
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !339

if.then7:                                         ; preds = %if.end5
  br label %for.end, !dbg !340

if.end8:                                          ; preds = %if.end5
  %14 = load ptr, ptr %list, align 8, !dbg !341
  %15 = load i32, ptr %i, align 4, !dbg !342
  %idxprom9 = sext i32 %15 to i64, !dbg !341
  %arrayidx10 = getelementptr %struct.xfrm_algo_desc, ptr %14, i64 %idxprom9, !dbg !341
  %name = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx10, i32 0, i32 0, !dbg !343
  %16 = load ptr, ptr %name, align 8, !dbg !343
  %17 = load ptr, ptr %algo_list.addr, align 8, !dbg !344
  %type = getelementptr inbounds %struct.xfrm_algo_list, ptr %17, i32 0, i32 2, !dbg !345
  %18 = load i32, ptr %type, align 4, !dbg !345
  %19 = load ptr, ptr %algo_list.addr, align 8, !dbg !346
  %mask = getelementptr inbounds %struct.xfrm_algo_list, ptr %19, i32 0, i32 3, !dbg !347
  %20 = load i32, ptr %mask, align 8, !dbg !347
  %call11 = call i32 @crypto_has_alg(ptr noundef %16, i32 noundef %18, i32 noundef %20) #7, !dbg !348
  store i32 %call11, ptr %status, align 4, !dbg !349
  %21 = load i32, ptr %status, align 4, !dbg !350
  %tobool12 = icmp ne i32 %21, 0, !dbg !350
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !352

if.then13:                                        ; preds = %if.end8
  br label %for.end, !dbg !353

if.end14:                                         ; preds = %if.end8
  %22 = load i32, ptr %status, align 4, !dbg !354
  %conv = trunc i32 %22 to i8, !dbg !354
  %23 = load ptr, ptr %list, align 8, !dbg !355
  %24 = load i32, ptr %i, align 4, !dbg !356
  %idxprom15 = sext i32 %24 to i64, !dbg !355
  %arrayidx16 = getelementptr %struct.xfrm_algo_desc, ptr %23, i64 %idxprom15, !dbg !355
  %available17 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx16, i32 0, i32 2, !dbg !357
  %bf.load18 = load i8, ptr %available17, align 8, !dbg !358
  %bf.value = and i8 %conv, 1, !dbg !358
  %bf.clear19 = and i8 %bf.load18, -2, !dbg !358
  %bf.set = or i8 %bf.clear19, %bf.value, !dbg !358
  store i8 %bf.set, ptr %available17, align 8, !dbg !358
  %25 = load ptr, ptr %list, align 8, !dbg !359
  %26 = load i32, ptr %i, align 4, !dbg !360
  %idxprom20 = sext i32 %26 to i64, !dbg !359
  %arrayidx21 = getelementptr %struct.xfrm_algo_desc, ptr %25, i64 %idxprom20, !dbg !359
  store ptr %arrayidx21, ptr %retval, align 8, !dbg !361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !361

for.inc:                                          ; preds = %if.then
  %27 = load i32, ptr %i, align 4, !dbg !362
  %inc = add i32 %27, 1, !dbg !362
  store i32 %inc, ptr %i, align 4, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %if.then13, %if.then7, %for.cond
  store ptr null, ptr %retval, align 8, !dbg !368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !368

cleanup:                                          ; preds = %for.end, %if.end14, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !369
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !369
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #8, !dbg !369
  %28 = load ptr, ptr %retval, align 8, !dbg !369
  ret ptr %28, !dbg !369
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xfrm_alg_id_match(ptr noundef %entry1, ptr noundef %data) #0 align 16 !dbg !370 {
entry:
  %entry.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !372, metadata !DIExpression()), !dbg !374
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !373, metadata !DIExpression()), !dbg !375
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !376
  %desc = getelementptr inbounds %struct.xfrm_algo_desc, ptr %0, i32 0, i32 4, !dbg !377
  %sadb_alg_id = getelementptr inbounds %struct.sadb_alg, ptr %desc, i32 0, i32 0, !dbg !378
  %1 = load i8, ptr %sadb_alg_id, align 8, !dbg !378
  %conv = zext i8 %1 to i64, !dbg !376
  %2 = load ptr, ptr %data.addr, align 8, !dbg !379
  %3 = ptrtoint ptr %2 to i64, !dbg !380
  %cmp = icmp eq i64 %conv, %3, !dbg !381
  %conv2 = zext i1 %cmp to i32, !dbg !381
  ret i32 %conv2, !dbg !382
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_ealg_get_byid(i32 noundef %alg_id) #0 align 16 !dbg !383 {
entry:
  %alg_id.addr = alloca i32, align 4
  store i32 %alg_id, ptr %alg_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %alg_id.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i32, ptr %alg_id.addr, align 4, !dbg !387
  %conv = sext i32 %0 to i64, !dbg !388
  %1 = inttoptr i64 %conv to ptr, !dbg !389
  %call = call ptr @xfrm_find_algo(ptr noundef @xfrm_ealg_list, ptr noundef @xfrm_alg_id_match, ptr noundef %1, i32 noundef 1) #7, !dbg !390
  ret ptr %call, !dbg !391
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_calg_get_byid(i32 noundef %alg_id) #0 align 16 !dbg !392 {
entry:
  %alg_id.addr = alloca i32, align 4
  store i32 %alg_id, ptr %alg_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %alg_id.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i32, ptr %alg_id.addr, align 4, !dbg !396
  %conv = sext i32 %0 to i64, !dbg !397
  %1 = inttoptr i64 %conv to ptr, !dbg !398
  %call = call ptr @xfrm_find_algo(ptr noundef @xfrm_calg_list, ptr noundef @xfrm_alg_id_match, ptr noundef %1, i32 noundef 1) #7, !dbg !399
  ret ptr %call, !dbg !400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_aalg_get_byname(ptr noundef %name, i32 noundef %probe) #0 align 16 !dbg !401 {
entry:
  %name.addr = alloca ptr, align 8
  %probe.addr = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !406, metadata !DIExpression()), !dbg !408
  store i32 %probe, ptr %probe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !407, metadata !DIExpression()), !dbg !409
  %0 = load ptr, ptr %name.addr, align 8, !dbg !410
  %1 = load i32, ptr %probe.addr, align 4, !dbg !411
  %call = call ptr @xfrm_find_algo(ptr noundef @xfrm_aalg_list, ptr noundef @xfrm_alg_name_match, ptr noundef %0, i32 noundef %1) #7, !dbg !412
  ret ptr %call, !dbg !413
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xfrm_alg_name_match(ptr noundef %entry1, ptr noundef %data) #0 align 16 !dbg !414 {
entry:
  %entry.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !416, metadata !DIExpression()), !dbg !419
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !417, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %name, metadata !418, metadata !DIExpression()), !dbg !422
  %0 = load ptr, ptr %data.addr, align 8, !dbg !423
  store ptr %0, ptr %name, align 8, !dbg !422
  %1 = load ptr, ptr %name, align 8, !dbg !424
  %tobool = icmp ne ptr %1, null, !dbg !424
  br i1 %tobool, label %land.rhs, label %land.end9, !dbg !425

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %name, align 8, !dbg !426
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !427
  %name2 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %3, i32 0, i32 0, !dbg !428
  %4 = load ptr, ptr %name2, align 8, !dbg !428
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef %4) #7, !dbg !429
  %tobool3 = icmp ne i32 %call, 0, !dbg !429
  br i1 %tobool3, label %lor.rhs, label %lor.end, !dbg !430

lor.rhs:                                          ; preds = %land.rhs
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !431
  %compat = getelementptr inbounds %struct.xfrm_algo_desc, ptr %5, i32 0, i32 1, !dbg !432
  %6 = load ptr, ptr %compat, align 8, !dbg !432
  %tobool4 = icmp ne ptr %6, null, !dbg !431
  br i1 %tobool4, label %land.rhs5, label %land.end, !dbg !433

land.rhs5:                                        ; preds = %lor.rhs
  %7 = load ptr, ptr %name, align 8, !dbg !434
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !435
  %compat6 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %8, i32 0, i32 1, !dbg !436
  %9 = load ptr, ptr %compat6, align 8, !dbg !436
  %call7 = call i32 @strcmp(ptr noundef %7, ptr noundef %9) #7, !dbg !437
  %tobool8 = icmp ne i32 %call7, 0, !dbg !438
  %lnot = xor i1 %tobool8, true, !dbg !438
  br label %land.end

land.end:                                         ; preds = %land.rhs5, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs5 ], !dbg !439
  br label %lor.end, !dbg !430

lor.end:                                          ; preds = %land.end, %land.rhs
  %11 = phi i1 [ true, %land.rhs ], [ %10, %land.end ]
  br label %land.end9

land.end9:                                        ; preds = %lor.end, %entry
  %12 = phi i1 [ false, %entry ], [ %11, %lor.end ], !dbg !439
  %land.ext = zext i1 %12 to i32, !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !440
  ret i32 %land.ext, !dbg !441
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_ealg_get_byname(ptr noundef %name, i32 noundef %probe) #0 align 16 !dbg !442 {
entry:
  %name.addr = alloca ptr, align 8
  %probe.addr = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !444, metadata !DIExpression()), !dbg !446
  store i32 %probe, ptr %probe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !445, metadata !DIExpression()), !dbg !447
  %0 = load ptr, ptr %name.addr, align 8, !dbg !448
  %1 = load i32, ptr %probe.addr, align 4, !dbg !449
  %call = call ptr @xfrm_find_algo(ptr noundef @xfrm_ealg_list, ptr noundef @xfrm_alg_name_match, ptr noundef %0, i32 noundef %1) #7, !dbg !450
  ret ptr %call, !dbg !451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_calg_get_byname(ptr noundef %name, i32 noundef %probe) #0 align 16 !dbg !452 {
entry:
  %name.addr = alloca ptr, align 8
  %probe.addr = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !454, metadata !DIExpression()), !dbg !456
  store i32 %probe, ptr %probe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !455, metadata !DIExpression()), !dbg !457
  %0 = load ptr, ptr %name.addr, align 8, !dbg !458
  %1 = load i32, ptr %probe.addr, align 4, !dbg !459
  %call = call ptr @xfrm_find_algo(ptr noundef @xfrm_calg_list, ptr noundef @xfrm_alg_name_match, ptr noundef %0, i32 noundef %1) #7, !dbg !460
  ret ptr %call, !dbg !461
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_aead_get_byname(ptr noundef %name, i32 noundef %icv_len, i32 noundef %probe) #0 align 16 !dbg !462 {
entry:
  %name.addr = alloca ptr, align 8
  %icv_len.addr = alloca i32, align 4
  %probe.addr = alloca i32, align 4
  %data = alloca %struct.xfrm_aead_name, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !466, metadata !DIExpression()), !dbg !474
  store i32 %icv_len, ptr %icv_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %icv_len.addr, metadata !467, metadata !DIExpression()), !dbg !475
  store i32 %probe, ptr %probe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %probe.addr, metadata !468, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #8, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %data, metadata !469, metadata !DIExpression()), !dbg !478
  %name1 = getelementptr inbounds %struct.xfrm_aead_name, ptr %data, i32 0, i32 0, !dbg !479
  %0 = load ptr, ptr %name.addr, align 8, !dbg !480
  store ptr %0, ptr %name1, align 8, !dbg !479
  %icvbits = getelementptr inbounds %struct.xfrm_aead_name, ptr %data, i32 0, i32 1, !dbg !479
  %1 = load i32, ptr %icv_len.addr, align 4, !dbg !481
  store i32 %1, ptr %icvbits, align 8, !dbg !479
  %2 = load i32, ptr %probe.addr, align 4, !dbg !482
  %call = call ptr @xfrm_find_algo(ptr noundef @xfrm_aead_list, ptr noundef @xfrm_aead_name_match, ptr noundef %data, i32 noundef %2) #7, !dbg !483
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #8, !dbg !484
  ret ptr %call, !dbg !485
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xfrm_aead_name_match(ptr noundef %entry1, ptr noundef %data) #0 align 16 !dbg !486 {
entry:
  %entry.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %aead = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !488, metadata !DIExpression()), !dbg !494
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !489, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 8, ptr %aead) #8, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %aead, metadata !490, metadata !DIExpression()), !dbg !497
  %0 = load ptr, ptr %data.addr, align 8, !dbg !498
  store ptr %0, ptr %aead, align 8, !dbg !497
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %name, metadata !493, metadata !DIExpression()), !dbg !500
  %1 = load ptr, ptr %aead, align 8, !dbg !501
  %name2 = getelementptr inbounds %struct.xfrm_aead_name, ptr %1, i32 0, i32 0, !dbg !502
  %2 = load ptr, ptr %name2, align 8, !dbg !502
  store ptr %2, ptr %name, align 8, !dbg !500
  %3 = load ptr, ptr %aead, align 8, !dbg !503
  %icvbits = getelementptr inbounds %struct.xfrm_aead_name, ptr %3, i32 0, i32 1, !dbg !504
  %4 = load i32, ptr %icvbits, align 8, !dbg !504
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !505
  %uinfo = getelementptr inbounds %struct.xfrm_algo_desc, ptr %5, i32 0, i32 3, !dbg !506
  %icv_truncbits = getelementptr inbounds %struct.xfrm_algo_aead_info, ptr %uinfo, i32 0, i32 1, !dbg !507
  %6 = load i16, ptr %icv_truncbits, align 8, !dbg !507
  %conv = zext i16 %6 to i32, !dbg !505
  %cmp = icmp eq i32 %4, %conv, !dbg !508
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !509

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %name, align 8, !dbg !510
  %tobool = icmp ne ptr %7, null, !dbg !510
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !511

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %name, align 8, !dbg !512
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !513
  %name4 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %9, i32 0, i32 0, !dbg !514
  %10 = load ptr, ptr %name4, align 8, !dbg !514
  %call = call i32 @strcmp(ptr noundef %8, ptr noundef %10) #7, !dbg !515
  %tobool5 = icmp ne i32 %call, 0, !dbg !516
  %lnot = xor i1 %tobool5, true, !dbg !516
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !517
  %land.ext = zext i1 %11 to i32, !dbg !511
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !518
  call void @llvm.lifetime.end.p0(i64 8, ptr %aead) #8, !dbg !518
  ret i32 %land.ext, !dbg !519
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_aalg_get_byidx(i32 noundef %idx) #0 align 16 !dbg !520 {
entry:
  %retval = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load i32, ptr %idx.addr, align 4, !dbg !526
  %call = call i32 @aalg_entries() #7, !dbg !528
  %cmp = icmp uge i32 %0, %call, !dbg !529
  br i1 %cmp, label %if.then, label %if.end, !dbg !530

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !531
  br label %return, !dbg !531

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %idx.addr, align 4, !dbg !532
  %idxprom = zext i32 %1 to i64, !dbg !533
  %arrayidx = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i64 0, i64 %idxprom, !dbg !533
  store ptr %arrayidx, ptr %retval, align 8, !dbg !534
  br label %return, !dbg !534

return:                                           ; preds = %if.end, %if.then
  %2 = load ptr, ptr %retval, align 8, !dbg !535
  ret ptr %2, !dbg !535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @aalg_entries() #3 align 16 !dbg !536 {
entry:
  ret i32 10, !dbg !539
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @xfrm_ealg_get_byidx(i32 noundef %idx) #0 align 16 !dbg !540 {
entry:
  %retval = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !542, metadata !DIExpression()), !dbg !543
  %0 = load i32, ptr %idx.addr, align 4, !dbg !544
  %call = call i32 @ealg_entries() #7, !dbg !546
  %cmp = icmp uge i32 %0, %call, !dbg !547
  br i1 %cmp, label %if.then, label %if.end, !dbg !548

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !549
  br label %return, !dbg !549

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %idx.addr, align 4, !dbg !550
  %idxprom = zext i32 %1 to i64, !dbg !551
  %arrayidx = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i64 0, i64 %idxprom, !dbg !551
  store ptr %arrayidx, ptr %retval, align 8, !dbg !552
  br label %return, !dbg !552

return:                                           ; preds = %if.end, %if.then
  %2 = load ptr, ptr %retval, align 8, !dbg !553
  ret ptr %2, !dbg !553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ealg_entries() #3 align 16 !dbg !554 {
entry:
  ret i32 11, !dbg !555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @xfrm_probe_algs() #0 align 16 !dbg !556 {
entry:
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %i, metadata !560, metadata !DIExpression()), !dbg !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %status, metadata !561, metadata !DIExpression()), !dbg !564
  br label %do.body, !dbg !565

do.body:                                          ; preds = %entry
  %call = call i32 @preempt_count() #7, !dbg !566
  %conv = sext i32 %call to i64, !dbg !566
  %and = and i64 %conv, 65280, !dbg !566
  %tobool = icmp ne i64 %and, 0, !dbg !566
  %lnot = xor i1 %tobool, true, !dbg !566
  %lnot1 = xor i1 %lnot, true, !dbg !566
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !566
  %conv2 = sext i32 %lnot.ext to i64, !dbg !566
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !566
  %tobool3 = icmp ne i64 %expval, 0, !dbg !566
  br i1 %tobool3, label %if.then, label %if.end, !dbg !569

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !566

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !570

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !572

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !572

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !570

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 821, i32 0, i64 12) #8, !dbg !574, !srcloc !576
  br label %do.cond7, !dbg !574

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !574

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !570

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !570

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !570

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !569

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !569

do.end12:                                         ; preds = %do.cond11
  store i32 0, ptr %i, align 4, !dbg !577
  br label %for.cond, !dbg !579

for.cond:                                         ; preds = %for.inc, %do.end12
  %0 = load i32, ptr %i, align 4, !dbg !580
  %call13 = call i32 @aalg_entries() #7, !dbg !582
  %cmp = icmp slt i32 %0, %call13, !dbg !583
  br i1 %cmp, label %for.body, label %for.end, !dbg !584

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !585
  %idxprom = sext i32 %1 to i64, !dbg !587
  %arrayidx = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i64 0, i64 %idxprom, !dbg !587
  %name = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx, i32 0, i32 0, !dbg !588
  %2 = load ptr, ptr %name, align 16, !dbg !588
  %call15 = call i32 @crypto_has_ahash(ptr noundef %2, i32 noundef 0, i32 noundef 0) #7, !dbg !589
  store i32 %call15, ptr %status, align 4, !dbg !590
  %3 = load i32, ptr %i, align 4, !dbg !591
  %idxprom16 = sext i32 %3 to i64, !dbg !593
  %arrayidx17 = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i64 0, i64 %idxprom16, !dbg !593
  %available = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx17, i32 0, i32 2, !dbg !594
  %bf.load = load i8, ptr %available, align 16, !dbg !594
  %bf.clear = and i8 %bf.load, 1, !dbg !594
  %conv18 = zext i8 %bf.clear to i32, !dbg !593
  %4 = load i32, ptr %status, align 4, !dbg !595
  %cmp19 = icmp ne i32 %conv18, %4, !dbg !596
  br i1 %cmp19, label %if.then21, label %if.end28, !dbg !597

if.then21:                                        ; preds = %for.body
  %5 = load i32, ptr %status, align 4, !dbg !598
  %conv22 = trunc i32 %5 to i8, !dbg !598
  %6 = load i32, ptr %i, align 4, !dbg !599
  %idxprom23 = sext i32 %6 to i64, !dbg !600
  %arrayidx24 = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i64 0, i64 %idxprom23, !dbg !600
  %available25 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx24, i32 0, i32 2, !dbg !601
  %bf.load26 = load i8, ptr %available25, align 16, !dbg !602
  %bf.value = and i8 %conv22, 1, !dbg !602
  %bf.clear27 = and i8 %bf.load26, -2, !dbg !602
  %bf.set = or i8 %bf.clear27, %bf.value, !dbg !602
  store i8 %bf.set, ptr %available25, align 16, !dbg !602
  br label %if.end28, !dbg !600

if.end28:                                         ; preds = %if.then21, %for.body
  br label %for.inc, !dbg !603

for.inc:                                          ; preds = %if.end28
  %7 = load i32, ptr %i, align 4, !dbg !604
  %inc = add i32 %7, 1, !dbg !604
  store i32 %inc, ptr %i, align 4, !dbg !604
  br label %for.cond, !dbg !605, !llvm.loop !606

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !608
  br label %for.cond29, !dbg !610

for.cond29:                                       ; preds = %for.inc56, %for.end
  %8 = load i32, ptr %i, align 4, !dbg !611
  %call30 = call i32 @ealg_entries() #7, !dbg !613
  %cmp31 = icmp slt i32 %8, %call30, !dbg !614
  br i1 %cmp31, label %for.body33, label %for.end58, !dbg !615

for.body33:                                       ; preds = %for.cond29
  %9 = load i32, ptr %i, align 4, !dbg !616
  %idxprom34 = sext i32 %9 to i64, !dbg !618
  %arrayidx35 = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i64 0, i64 %idxprom34, !dbg !618
  %name36 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx35, i32 0, i32 0, !dbg !619
  %10 = load ptr, ptr %name36, align 16, !dbg !619
  %call37 = call i32 @crypto_has_skcipher(ptr noundef %10, i32 noundef 0, i32 noundef 0) #7, !dbg !620
  store i32 %call37, ptr %status, align 4, !dbg !621
  %11 = load i32, ptr %i, align 4, !dbg !622
  %idxprom38 = sext i32 %11 to i64, !dbg !624
  %arrayidx39 = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i64 0, i64 %idxprom38, !dbg !624
  %available40 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx39, i32 0, i32 2, !dbg !625
  %bf.load41 = load i8, ptr %available40, align 16, !dbg !625
  %bf.clear42 = and i8 %bf.load41, 1, !dbg !625
  %conv43 = zext i8 %bf.clear42 to i32, !dbg !624
  %12 = load i32, ptr %status, align 4, !dbg !626
  %cmp44 = icmp ne i32 %conv43, %12, !dbg !627
  br i1 %cmp44, label %if.then46, label %if.end55, !dbg !628

if.then46:                                        ; preds = %for.body33
  %13 = load i32, ptr %status, align 4, !dbg !629
  %conv47 = trunc i32 %13 to i8, !dbg !629
  %14 = load i32, ptr %i, align 4, !dbg !630
  %idxprom48 = sext i32 %14 to i64, !dbg !631
  %arrayidx49 = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i64 0, i64 %idxprom48, !dbg !631
  %available50 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx49, i32 0, i32 2, !dbg !632
  %bf.load51 = load i8, ptr %available50, align 16, !dbg !633
  %bf.value52 = and i8 %conv47, 1, !dbg !633
  %bf.clear53 = and i8 %bf.load51, -2, !dbg !633
  %bf.set54 = or i8 %bf.clear53, %bf.value52, !dbg !633
  store i8 %bf.set54, ptr %available50, align 16, !dbg !633
  br label %if.end55, !dbg !631

if.end55:                                         ; preds = %if.then46, %for.body33
  br label %for.inc56, !dbg !634

for.inc56:                                        ; preds = %if.end55
  %15 = load i32, ptr %i, align 4, !dbg !635
  %inc57 = add i32 %15, 1, !dbg !635
  store i32 %inc57, ptr %i, align 4, !dbg !635
  br label %for.cond29, !dbg !636, !llvm.loop !637

for.end58:                                        ; preds = %for.cond29
  store i32 0, ptr %i, align 4, !dbg !639
  br label %for.cond59, !dbg !641

for.cond59:                                       ; preds = %for.inc86, %for.end58
  %16 = load i32, ptr %i, align 4, !dbg !642
  %call60 = call i32 @calg_entries() #7, !dbg !644
  %cmp61 = icmp slt i32 %16, %call60, !dbg !645
  br i1 %cmp61, label %for.body63, label %for.end88, !dbg !646

for.body63:                                       ; preds = %for.cond59
  %17 = load i32, ptr %i, align 4, !dbg !647
  %idxprom64 = sext i32 %17 to i64, !dbg !649
  %arrayidx65 = getelementptr [3 x %struct.xfrm_algo_desc], ptr @calg_list, i64 0, i64 %idxprom64, !dbg !649
  %name66 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx65, i32 0, i32 0, !dbg !650
  %18 = load ptr, ptr %name66, align 16, !dbg !650
  %call67 = call i32 @crypto_has_comp(ptr noundef %18, i32 noundef 0, i32 noundef 128) #7, !dbg !651
  store i32 %call67, ptr %status, align 4, !dbg !652
  %19 = load i32, ptr %i, align 4, !dbg !653
  %idxprom68 = sext i32 %19 to i64, !dbg !655
  %arrayidx69 = getelementptr [3 x %struct.xfrm_algo_desc], ptr @calg_list, i64 0, i64 %idxprom68, !dbg !655
  %available70 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx69, i32 0, i32 2, !dbg !656
  %bf.load71 = load i8, ptr %available70, align 16, !dbg !656
  %bf.clear72 = and i8 %bf.load71, 1, !dbg !656
  %conv73 = zext i8 %bf.clear72 to i32, !dbg !655
  %20 = load i32, ptr %status, align 4, !dbg !657
  %cmp74 = icmp ne i32 %conv73, %20, !dbg !658
  br i1 %cmp74, label %if.then76, label %if.end85, !dbg !659

if.then76:                                        ; preds = %for.body63
  %21 = load i32, ptr %status, align 4, !dbg !660
  %conv77 = trunc i32 %21 to i8, !dbg !660
  %22 = load i32, ptr %i, align 4, !dbg !661
  %idxprom78 = sext i32 %22 to i64, !dbg !662
  %arrayidx79 = getelementptr [3 x %struct.xfrm_algo_desc], ptr @calg_list, i64 0, i64 %idxprom78, !dbg !662
  %available80 = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx79, i32 0, i32 2, !dbg !663
  %bf.load81 = load i8, ptr %available80, align 16, !dbg !664
  %bf.value82 = and i8 %conv77, 1, !dbg !664
  %bf.clear83 = and i8 %bf.load81, -2, !dbg !664
  %bf.set84 = or i8 %bf.clear83, %bf.value82, !dbg !664
  store i8 %bf.set84, ptr %available80, align 16, !dbg !664
  br label %if.end85, !dbg !662

if.end85:                                         ; preds = %if.then76, %for.body63
  br label %for.inc86, !dbg !665

for.inc86:                                        ; preds = %if.end85
  %23 = load i32, ptr %i, align 4, !dbg !666
  %inc87 = add i32 %23, 1, !dbg !666
  store i32 %inc87, ptr %i, align 4, !dbg !666
  br label %for.cond59, !dbg !667, !llvm.loop !668

for.end88:                                        ; preds = %for.cond59
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !670
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !670
  ret void, !dbg !670
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #4 align 16 !dbg !671 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #8, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !674, metadata !DIExpression()), !dbg !676
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #9, !dbg !676, !srcloc !677
  store i32 %0, ptr %pfo_val__, align 4, !dbg !676
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !676
  %conv = zext i32 %1 to i64, !dbg !676
  %conv1 = trunc i64 %conv to i32, !dbg !676
  store i32 %conv1, ptr %tmp, align 4, !dbg !676
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #8, !dbg !678
  %2 = load i32, ptr %tmp, align 4, !dbg !676
  %and = and i32 %2, 2147483647, !dbg !679
  ret i32 %and, !dbg !680
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !681 dso_local i32 @crypto_has_ahash(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !685 dso_local i32 @crypto_has_skcipher(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @calg_entries() #3 align 16 !dbg !687 {
entry:
  ret i32 3, !dbg !688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_has_comp(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #3 align 16 !dbg !689 {
entry:
  %alg_name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store ptr %alg_name, ptr %alg_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alg_name.addr, metadata !692, metadata !DIExpression()), !dbg !695
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !693, metadata !DIExpression()), !dbg !696
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !694, metadata !DIExpression()), !dbg !697
  %0 = load i32, ptr %type.addr, align 4, !dbg !698
  %and = and i32 %0, -16, !dbg !698
  store i32 %and, ptr %type.addr, align 4, !dbg !698
  %1 = load i32, ptr %type.addr, align 4, !dbg !699
  %or = or i32 %1, 2, !dbg !699
  store i32 %or, ptr %type.addr, align 4, !dbg !699
  %2 = load i32, ptr %mask.addr, align 4, !dbg !700
  %or1 = or i32 %2, 15, !dbg !700
  store i32 %or1, ptr %mask.addr, align 4, !dbg !700
  %3 = load ptr, ptr %alg_name.addr, align 8, !dbg !701
  %4 = load i32, ptr %type.addr, align 4, !dbg !702
  %5 = load i32, ptr %mask.addr, align 4, !dbg !703
  %call = call i32 @crypto_has_alg(ptr noundef %3, i32 noundef %4, i32 noundef %5) #7, !dbg !704
  ret i32 %call, !dbg !705
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xfrm_count_pfkey_auth_supported() #0 align 16 !dbg !706 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %i, metadata !708, metadata !DIExpression()), !dbg !711
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %n, metadata !709, metadata !DIExpression()), !dbg !712
  store i32 0, ptr %i, align 4, !dbg !713
  store i32 0, ptr %n, align 4, !dbg !715
  br label %for.cond, !dbg !716

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !717
  %call = call i32 @aalg_entries() #7, !dbg !719
  %cmp = icmp slt i32 %0, %call, !dbg !720
  br i1 %cmp, label %for.body, label %for.end, !dbg !721

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !722
  %idxprom = sext i32 %1 to i64, !dbg !724
  %arrayidx = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i64 0, i64 %idxprom, !dbg !724
  %available = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx, i32 0, i32 2, !dbg !725
  %bf.load = load i8, ptr %available, align 16, !dbg !725
  %bf.clear = and i8 %bf.load, 1, !dbg !725
  %conv = zext i8 %bf.clear to i32, !dbg !724
  %tobool = icmp ne i32 %conv, 0, !dbg !724
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !726

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !727
  %idxprom1 = sext i32 %2 to i64, !dbg !728
  %arrayidx2 = getelementptr [10 x %struct.xfrm_algo_desc], ptr @aalg_list, i64 0, i64 %idxprom1, !dbg !728
  %pfkey_supported = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx2, i32 0, i32 2, !dbg !729
  %bf.load3 = load i8, ptr %pfkey_supported, align 16, !dbg !729
  %bf.lshr = lshr i8 %bf.load3, 1, !dbg !729
  %bf.clear4 = and i8 %bf.lshr, 1, !dbg !729
  %conv5 = zext i8 %bf.clear4 to i32, !dbg !728
  %tobool6 = icmp ne i32 %conv5, 0, !dbg !728
  br i1 %tobool6, label %if.then, label %if.end, !dbg !730

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %n, align 4, !dbg !731
  %inc = add i32 %3, 1, !dbg !731
  store i32 %inc, ptr %n, align 4, !dbg !731
  br label %if.end, !dbg !732

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !729

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !733
  %inc7 = add i32 %4, 1, !dbg !733
  store i32 %inc7, ptr %i, align 4, !dbg !733
  br label %for.cond, !dbg !734, !llvm.loop !735

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %n, align 4, !dbg !737
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8, !dbg !738
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !738
  ret i32 %5, !dbg !739
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xfrm_count_pfkey_enc_supported() #0 align 16 !dbg !740 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !744
  call void @llvm.dbg.declare(metadata ptr %i, metadata !742, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8, !dbg !744
  call void @llvm.dbg.declare(metadata ptr %n, metadata !743, metadata !DIExpression()), !dbg !746
  store i32 0, ptr %i, align 4, !dbg !747
  store i32 0, ptr %n, align 4, !dbg !749
  br label %for.cond, !dbg !750

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !751
  %call = call i32 @ealg_entries() #7, !dbg !753
  %cmp = icmp slt i32 %0, %call, !dbg !754
  br i1 %cmp, label %for.body, label %for.end, !dbg !755

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !756
  %idxprom = sext i32 %1 to i64, !dbg !758
  %arrayidx = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i64 0, i64 %idxprom, !dbg !758
  %available = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx, i32 0, i32 2, !dbg !759
  %bf.load = load i8, ptr %available, align 16, !dbg !759
  %bf.clear = and i8 %bf.load, 1, !dbg !759
  %conv = zext i8 %bf.clear to i32, !dbg !758
  %tobool = icmp ne i32 %conv, 0, !dbg !758
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !760

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !761
  %idxprom1 = sext i32 %2 to i64, !dbg !762
  %arrayidx2 = getelementptr [11 x %struct.xfrm_algo_desc], ptr @ealg_list, i64 0, i64 %idxprom1, !dbg !762
  %pfkey_supported = getelementptr inbounds %struct.xfrm_algo_desc, ptr %arrayidx2, i32 0, i32 2, !dbg !763
  %bf.load3 = load i8, ptr %pfkey_supported, align 16, !dbg !763
  %bf.lshr = lshr i8 %bf.load3, 1, !dbg !763
  %bf.clear4 = and i8 %bf.lshr, 1, !dbg !763
  %conv5 = zext i8 %bf.clear4 to i32, !dbg !762
  %tobool6 = icmp ne i32 %conv5, 0, !dbg !762
  br i1 %tobool6, label %if.then, label %if.end, !dbg !764

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %n, align 4, !dbg !765
  %inc = add i32 %3, 1, !dbg !765
  store i32 %inc, ptr %n, align 4, !dbg !765
  br label %if.end, !dbg !766

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !763

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !767
  %inc7 = add i32 %4, 1, !dbg !767
  store i32 %inc7, ptr %i, align 4, !dbg !767
  br label %for.cond, !dbg !768, !llvm.loop !769

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %n, align 4, !dbg !771
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8, !dbg !772
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !772
  ret i32 %5, !dbg !773
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !774 dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !775 dso_local i32 @strcmp(ptr noundef, ptr noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!261, !262, !263, !264, !265, !266, !267, !268}
!llvm.ident = !{!269}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xfrm_aalg_list", scope: !2, file: !3, line: 660, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/xfrm/.xfrm_algo.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/xfrm/xfrm_algo\22 -D KBUILD_BASENAME=\22xfrm_algo\22 -D KBUILD_MODNAME=\22xfrm_algo\22 -D __KBUILD_MODNAME=kmod_xfrm_algo -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/xfrm/xfrm_algo.ll net/xfrm/xfrm_algo.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/xfrm/xfrm_algo.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05d30540b70941985510c3524c4606e8")
!4 = !{!5, !6, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !33, !35, !37, !39, !45, !0, !50, !111, !113, !115, !120, !125, !127, !129, !134, !139, !144, !149, !154, !159, !164, !169, !174, !176, !178, !180, !182, !184, !186, !188, !190, !193, !198, !200, !205, !207, !209, !214, !216, !218, !220, !222, !224, !226, !228, !230, !233, !235, !237, !239, !241, !243, !245, !247, !250, !252, !254, !256}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_aalg_get_byid604", scope: !2, file: !3, line: 721, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_ealg_get_byid605", scope: !2, file: !3, line: 728, type: !5, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_calg_get_byid606", scope: !2, file: !3, line: 735, type: !5, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_aalg_get_byname607", scope: !2, file: !3, line: 751, type: !5, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_ealg_get_byname608", scope: !2, file: !3, line: 758, type: !5, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_calg_get_byname609", scope: !2, file: !3, line: 765, type: !5, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_aead_get_byname610", scope: !2, file: !3, line: 792, type: !5, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_aalg_get_byidx611", scope: !2, file: !3, line: 801, type: !5, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_ealg_get_byidx612", scope: !2, file: !3, line: 810, type: !5, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 821, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 168, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32}
!32 = !DISubrange(count: 21)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_probe_algs613", scope: !2, file: !3, line: 842, type: !5, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_count_pfkey_auth_supported614", scope: !2, file: !3, line: 853, type: !5, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xfrm_count_pfkey_enc_supported615", scope: !2, file: !3, line: 864, type: !5, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file616", scope: !2, file: !3, line: 866, type: !41, isLocal: true, isDefinition: true, align: 8)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 272, elements: !43)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!43 = !{!44}
!44 = !DISubrange(count: 34)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license617", scope: !2, file: !3, line: 866, type: !47, isLocal: true, isDefinition: true, align: 8)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 176, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 22)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "xfrm_ealg_list", scope: !2, file: !3, line: 667, type: !52, isLocal: true, isDefinition: true)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_algo_list", file: !3, line: 646, size: 192, elements: !54)
!54 = !{!55, !105, !106, !110}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "algs", scope: !53, file: !3, line: 647, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_algo_desc", file: !58, line: 1485, size: 384, elements: !59)
!58 = !DIFile(filename: "./include/net/xfrm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c67a3c10da72da23e8746ea3c937e8a5")
!59 = !{!60, !62, !63, !69, !70, !96}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !58, line: 1486, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "compat", scope: !57, file: !58, line: 1487, baseType: !61, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !57, file: !58, line: 1488, baseType: !64, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !65, line: 17, baseType: !66)
!65 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !67, line: 21, baseType: !68)
!67 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pfkey_supported", scope: !57, file: !58, line: 1489, baseType: !64, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "uinfo", scope: !57, file: !58, line: 1495, baseType: !71, size: 128, offset: 192)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !57, file: !58, line: 1490, size: 128, elements: !72)
!72 = !{!73, !81, !86, !92}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "aead", scope: !71, file: !58, line: 1491, baseType: !74, size: 128)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_algo_aead_info", file: !58, line: 1465, size: 128, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "geniv", scope: !74, file: !58, line: 1466, baseType: !61, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "icv_truncbits", scope: !74, file: !58, line: 1467, baseType: !78, size: 16, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !65, line: 19, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !67, line: 24, baseType: !80)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !71, file: !58, line: 1492, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_algo_auth_info", file: !58, line: 1470, size: 32, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "icv_truncbits", scope: !82, file: !58, line: 1471, baseType: !78, size: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "icv_fullbits", scope: !82, file: !58, line: 1472, baseType: !78, size: 16, offset: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "encr", scope: !71, file: !58, line: 1493, baseType: !87, size: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_algo_encr_info", file: !58, line: 1475, size: 128, elements: !88)
!88 = !{!89, !90, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "geniv", scope: !87, file: !58, line: 1476, baseType: !61, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "blockbits", scope: !87, file: !58, line: 1477, baseType: !78, size: 16, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "defkeybits", scope: !87, file: !58, line: 1478, baseType: !78, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !71, file: !58, line: 1494, baseType: !93, size: 16)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_algo_comp_info", file: !58, line: 1481, size: 16, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !93, file: !58, line: 1482, baseType: !78, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !57, file: !58, line: 1496, baseType: !97, size: 64, offset: 320)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sadb_alg", file: !98, line: 142, size: 64, elements: !99)
!98 = !DIFile(filename: "./include/uapi/linux/pfkeyv2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16d045bda18d5d7fc170e41b07dd8bb4")
!99 = !{!100, !101, !102, !103, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sadb_alg_id", scope: !97, file: !98, line: 143, baseType: !66, size: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sadb_alg_ivlen", scope: !97, file: !98, line: 144, baseType: !66, size: 8, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sadb_alg_minbits", scope: !97, file: !98, line: 145, baseType: !79, size: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sadb_alg_maxbits", scope: !97, file: !98, line: 146, baseType: !79, size: 16, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sadb_alg_reserved", scope: !97, file: !98, line: 147, baseType: !79, size: 16, offset: 48)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !53, file: !3, line: 648, baseType: !7, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !3, line: 649, baseType: !107, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !65, line: 21, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !67, line: 27, baseType: !109)
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !53, file: !3, line: 650, baseType: !107, size: 32, offset: 128)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "xfrm_calg_list", scope: !2, file: !3, line: 674, type: !52, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "xfrm_aead_list", scope: !2, file: !3, line: 653, type: !52, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 144, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 18)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 6)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !117, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !117, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 240, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 30)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "aead_list", scope: !2, file: !3, line: 26, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 3072, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 8)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 96, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 12)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 80, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 10)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 4)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 88, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 11)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 40, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 5)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 235, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 104, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 13)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 56, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 7)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !166, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !166, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !166, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 294, type: !171, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !146, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !146, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !146, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !151, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "aalg_list", scope: !2, file: !3, line: 174, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 3840, elements: !147)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 136, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 17)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !141, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 388, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 72, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 9)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !151, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 393, type: !202, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 409, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 112, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 14)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !3, line: 410, type: !202, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !156, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !122, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 451, type: !211, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 452, type: !202, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 472, type: !202, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 473, type: !151, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !166, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !3, line: 494, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !137)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 514, type: !211, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 515, type: !202, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 535, type: !166, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 536, type: !232, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 556, type: !117, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 576, type: !202, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !3, line: 577, type: !151, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "ealg_list", scope: !2, file: !3, line: 366, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 4224, elements: !157)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !3, line: 600, type: !232, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 610, type: !151, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 620, type: !161, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "calg_list", scope: !2, file: !3, line: 598, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1152, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 3)
!261 = !{i32 7, !"Dwarf Version", i32 5}
!262 = !{i32 2, !"Debug Info Version", i32 3}
!263 = !{i32 1, !"wchar_size", i32 2}
!264 = !{i32 8, !"cf-protection-branch", i32 1}
!265 = !{i32 4, !"function_return_thunk_extern", i32 1}
!266 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!267 = !{i32 1, !"Code Model", i32 2}
!268 = !{i32 1, !"override-stack-alignment", i32 8}
!269 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!270 = distinct !DISubprogram(name: "xfrm_aalg_get_byid", scope: !3, file: !3, line: 716, type: !271, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!56, !7}
!273 = !{!274}
!274 = !DILocalVariable(name: "alg_id", arg: 1, scope: !270, file: !3, line: 716, type: !7)
!275 = !DILocation(line: 716, column: 47, scope: !270)
!276 = !DILocation(line: 719, column: 33, scope: !270)
!277 = !DILocation(line: 719, column: 18, scope: !270)
!278 = !DILocation(line: 719, column: 10, scope: !270)
!279 = !DILocation(line: 718, column: 9, scope: !270)
!280 = !DILocation(line: 718, column: 2, scope: !270)
!281 = distinct !DISubprogram(name: "xfrm_find_algo", scope: !3, file: !3, line: 681, type: !282, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!282 = !DISubroutineType(types: !283)
!283 = !{!56, !284, !285, !290, !7}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!7, !288, !290}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!292 = !{!293, !294, !295, !296, !297, !298, !299}
!293 = !DILocalVariable(name: "algo_list", arg: 1, scope: !281, file: !3, line: 682, type: !284)
!294 = !DILocalVariable(name: "match", arg: 2, scope: !281, file: !3, line: 683, type: !285)
!295 = !DILocalVariable(name: "data", arg: 3, scope: !281, file: !3, line: 684, type: !290)
!296 = !DILocalVariable(name: "probe", arg: 4, scope: !281, file: !3, line: 684, type: !7)
!297 = !DILocalVariable(name: "list", scope: !281, file: !3, line: 686, type: !56)
!298 = !DILocalVariable(name: "i", scope: !281, file: !3, line: 687, type: !7)
!299 = !DILocalVariable(name: "status", scope: !281, file: !3, line: 687, type: !7)
!300 = !DILocation(line: 682, column: 31, scope: !281)
!301 = !DILocation(line: 683, column: 6, scope: !281)
!302 = !DILocation(line: 684, column: 14, scope: !281)
!303 = !DILocation(line: 684, column: 24, scope: !281)
!304 = !DILocation(line: 686, column: 2, scope: !281)
!305 = !DILocation(line: 686, column: 25, scope: !281)
!306 = !DILocation(line: 686, column: 32, scope: !281)
!307 = !DILocation(line: 686, column: 43, scope: !281)
!308 = !DILocation(line: 687, column: 2, scope: !281)
!309 = !DILocation(line: 687, column: 6, scope: !281)
!310 = !DILocation(line: 687, column: 9, scope: !281)
!311 = !DILocation(line: 689, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !281, file: !3, line: 689, column: 2)
!313 = !DILocation(line: 689, column: 7, scope: !312)
!314 = !DILocation(line: 689, column: 14, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 689, column: 2)
!316 = !DILocation(line: 689, column: 18, scope: !315)
!317 = !DILocation(line: 689, column: 29, scope: !315)
!318 = !DILocation(line: 689, column: 16, scope: !315)
!319 = !DILocation(line: 689, column: 2, scope: !312)
!320 = !DILocation(line: 690, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !3, line: 690, column: 7)
!322 = distinct !DILexicalBlock(scope: !315, file: !3, line: 689, column: 43)
!323 = !DILocation(line: 690, column: 14, scope: !321)
!324 = !DILocation(line: 690, column: 21, scope: !321)
!325 = !DILocation(line: 690, column: 19, scope: !321)
!326 = !DILocation(line: 690, column: 24, scope: !321)
!327 = !DILocation(line: 690, column: 7, scope: !322)
!328 = !DILocation(line: 691, column: 4, scope: !321)
!329 = !DILocation(line: 693, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !322, file: !3, line: 693, column: 7)
!331 = !DILocation(line: 693, column: 12, scope: !330)
!332 = !DILocation(line: 693, column: 15, scope: !330)
!333 = !DILocation(line: 693, column: 7, scope: !322)
!334 = !DILocation(line: 694, column: 12, scope: !330)
!335 = !DILocation(line: 694, column: 17, scope: !330)
!336 = !DILocation(line: 694, column: 4, scope: !330)
!337 = !DILocation(line: 696, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !322, file: !3, line: 696, column: 7)
!339 = !DILocation(line: 696, column: 7, scope: !322)
!340 = !DILocation(line: 697, column: 4, scope: !338)
!341 = !DILocation(line: 699, column: 27, scope: !322)
!342 = !DILocation(line: 699, column: 32, scope: !322)
!343 = !DILocation(line: 699, column: 35, scope: !322)
!344 = !DILocation(line: 699, column: 41, scope: !322)
!345 = !DILocation(line: 699, column: 52, scope: !322)
!346 = !DILocation(line: 700, column: 6, scope: !322)
!347 = !DILocation(line: 700, column: 17, scope: !322)
!348 = !DILocation(line: 699, column: 12, scope: !322)
!349 = !DILocation(line: 699, column: 10, scope: !322)
!350 = !DILocation(line: 701, column: 8, scope: !351)
!351 = distinct !DILexicalBlock(scope: !322, file: !3, line: 701, column: 7)
!352 = !DILocation(line: 701, column: 7, scope: !322)
!353 = !DILocation(line: 702, column: 4, scope: !351)
!354 = !DILocation(line: 704, column: 23, scope: !322)
!355 = !DILocation(line: 704, column: 3, scope: !322)
!356 = !DILocation(line: 704, column: 8, scope: !322)
!357 = !DILocation(line: 704, column: 11, scope: !322)
!358 = !DILocation(line: 704, column: 21, scope: !322)
!359 = !DILocation(line: 705, column: 11, scope: !322)
!360 = !DILocation(line: 705, column: 16, scope: !322)
!361 = !DILocation(line: 705, column: 3, scope: !322)
!362 = !DILocation(line: 689, column: 39, scope: !315)
!363 = !DILocation(line: 689, column: 2, scope: !315)
!364 = distinct !{!364, !319, !365, !366, !367}
!365 = !DILocation(line: 706, column: 2, scope: !312)
!366 = !{!"llvm.loop.mustprogress"}
!367 = !{!"llvm.loop.unroll.disable"}
!368 = !DILocation(line: 707, column: 2, scope: !281)
!369 = !DILocation(line: 708, column: 1, scope: !281)
!370 = distinct !DISubprogram(name: "xfrm_alg_id_match", scope: !3, file: !3, line: 710, type: !286, scopeLine: 712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!371 = !{!372, !373}
!372 = !DILocalVariable(name: "entry", arg: 1, scope: !370, file: !3, line: 710, type: !288)
!373 = !DILocalVariable(name: "data", arg: 2, scope: !370, file: !3, line: 711, type: !290)
!374 = !DILocation(line: 710, column: 59, scope: !370)
!375 = !DILocation(line: 711, column: 21, scope: !370)
!376 = !DILocation(line: 713, column: 9, scope: !370)
!377 = !DILocation(line: 713, column: 16, scope: !370)
!378 = !DILocation(line: 713, column: 21, scope: !370)
!379 = !DILocation(line: 713, column: 51, scope: !370)
!380 = !DILocation(line: 713, column: 36, scope: !370)
!381 = !DILocation(line: 713, column: 33, scope: !370)
!382 = !DILocation(line: 713, column: 2, scope: !370)
!383 = distinct !DISubprogram(name: "xfrm_ealg_get_byid", scope: !3, file: !3, line: 723, type: !271, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!384 = !{!385}
!385 = !DILocalVariable(name: "alg_id", arg: 1, scope: !383, file: !3, line: 723, type: !7)
!386 = !DILocation(line: 723, column: 47, scope: !383)
!387 = !DILocation(line: 726, column: 33, scope: !383)
!388 = !DILocation(line: 726, column: 18, scope: !383)
!389 = !DILocation(line: 726, column: 10, scope: !383)
!390 = !DILocation(line: 725, column: 9, scope: !383)
!391 = !DILocation(line: 725, column: 2, scope: !383)
!392 = distinct !DISubprogram(name: "xfrm_calg_get_byid", scope: !3, file: !3, line: 730, type: !271, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!393 = !{!394}
!394 = !DILocalVariable(name: "alg_id", arg: 1, scope: !392, file: !3, line: 730, type: !7)
!395 = !DILocation(line: 730, column: 47, scope: !392)
!396 = !DILocation(line: 733, column: 33, scope: !392)
!397 = !DILocation(line: 733, column: 18, scope: !392)
!398 = !DILocation(line: 733, column: 10, scope: !392)
!399 = !DILocation(line: 732, column: 9, scope: !392)
!400 = !DILocation(line: 732, column: 2, scope: !392)
!401 = distinct !DISubprogram(name: "xfrm_aalg_get_byname", scope: !3, file: !3, line: 746, type: !402, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!402 = !DISubroutineType(types: !403)
!403 = !{!56, !404, !7}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!405 = !{!406, !407}
!406 = !DILocalVariable(name: "name", arg: 1, scope: !401, file: !3, line: 746, type: !404)
!407 = !DILocalVariable(name: "probe", arg: 2, scope: !401, file: !3, line: 746, type: !7)
!408 = !DILocation(line: 746, column: 57, scope: !401)
!409 = !DILocation(line: 746, column: 67, scope: !401)
!410 = !DILocation(line: 748, column: 62, scope: !401)
!411 = !DILocation(line: 749, column: 10, scope: !401)
!412 = !DILocation(line: 748, column: 9, scope: !401)
!413 = !DILocation(line: 748, column: 2, scope: !401)
!414 = distinct !DISubprogram(name: "xfrm_alg_name_match", scope: !3, file: !3, line: 737, type: !286, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !415)
!415 = !{!416, !417, !418}
!416 = !DILocalVariable(name: "entry", arg: 1, scope: !414, file: !3, line: 737, type: !288)
!417 = !DILocalVariable(name: "data", arg: 2, scope: !414, file: !3, line: 738, type: !290)
!418 = !DILocalVariable(name: "name", scope: !414, file: !3, line: 740, type: !404)
!419 = !DILocation(line: 737, column: 61, scope: !414)
!420 = !DILocation(line: 738, column: 23, scope: !414)
!421 = !DILocation(line: 740, column: 2, scope: !414)
!422 = !DILocation(line: 740, column: 14, scope: !414)
!423 = !DILocation(line: 740, column: 21, scope: !414)
!424 = !DILocation(line: 742, column: 9, scope: !414)
!425 = !DILocation(line: 742, column: 14, scope: !414)
!426 = !DILocation(line: 742, column: 26, scope: !414)
!427 = !DILocation(line: 742, column: 32, scope: !414)
!428 = !DILocation(line: 742, column: 39, scope: !414)
!429 = !DILocation(line: 742, column: 19, scope: !414)
!430 = !DILocation(line: 742, column: 45, scope: !414)
!431 = !DILocation(line: 743, column: 5, scope: !414)
!432 = !DILocation(line: 743, column: 12, scope: !414)
!433 = !DILocation(line: 743, column: 19, scope: !414)
!434 = !DILocation(line: 743, column: 30, scope: !414)
!435 = !DILocation(line: 743, column: 36, scope: !414)
!436 = !DILocation(line: 743, column: 43, scope: !414)
!437 = !DILocation(line: 743, column: 23, scope: !414)
!438 = !DILocation(line: 743, column: 22, scope: !414)
!439 = !DILocation(line: 0, scope: !414)
!440 = !DILocation(line: 744, column: 1, scope: !414)
!441 = !DILocation(line: 742, column: 2, scope: !414)
!442 = distinct !DISubprogram(name: "xfrm_ealg_get_byname", scope: !3, file: !3, line: 753, type: !402, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!443 = !{!444, !445}
!444 = !DILocalVariable(name: "name", arg: 1, scope: !442, file: !3, line: 753, type: !404)
!445 = !DILocalVariable(name: "probe", arg: 2, scope: !442, file: !3, line: 753, type: !7)
!446 = !DILocation(line: 753, column: 57, scope: !442)
!447 = !DILocation(line: 753, column: 67, scope: !442)
!448 = !DILocation(line: 755, column: 62, scope: !442)
!449 = !DILocation(line: 756, column: 10, scope: !442)
!450 = !DILocation(line: 755, column: 9, scope: !442)
!451 = !DILocation(line: 755, column: 2, scope: !442)
!452 = distinct !DISubprogram(name: "xfrm_calg_get_byname", scope: !3, file: !3, line: 760, type: !402, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!453 = !{!454, !455}
!454 = !DILocalVariable(name: "name", arg: 1, scope: !452, file: !3, line: 760, type: !404)
!455 = !DILocalVariable(name: "probe", arg: 2, scope: !452, file: !3, line: 760, type: !7)
!456 = !DILocation(line: 760, column: 57, scope: !452)
!457 = !DILocation(line: 760, column: 67, scope: !452)
!458 = !DILocation(line: 762, column: 62, scope: !452)
!459 = !DILocation(line: 763, column: 10, scope: !452)
!460 = !DILocation(line: 762, column: 9, scope: !452)
!461 = !DILocation(line: 762, column: 2, scope: !452)
!462 = distinct !DISubprogram(name: "xfrm_aead_get_byname", scope: !3, file: !3, line: 782, type: !463, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!56, !404, !7, !7}
!465 = !{!466, !467, !468, !469}
!466 = !DILocalVariable(name: "name", arg: 1, scope: !462, file: !3, line: 782, type: !404)
!467 = !DILocalVariable(name: "icv_len", arg: 2, scope: !462, file: !3, line: 782, type: !7)
!468 = !DILocalVariable(name: "probe", arg: 3, scope: !462, file: !3, line: 782, type: !7)
!469 = !DILocalVariable(name: "data", scope: !462, file: !3, line: 784, type: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_aead_name", file: !3, line: 767, size: 128, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !470, file: !3, line: 768, baseType: !404, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "icvbits", scope: !470, file: !3, line: 769, baseType: !7, size: 32, offset: 64)
!474 = !DILocation(line: 782, column: 57, scope: !462)
!475 = !DILocation(line: 782, column: 67, scope: !462)
!476 = !DILocation(line: 782, column: 80, scope: !462)
!477 = !DILocation(line: 784, column: 2, scope: !462)
!478 = !DILocation(line: 784, column: 24, scope: !462)
!479 = !DILocation(line: 784, column: 31, scope: !462)
!480 = !DILocation(line: 785, column: 11, scope: !462)
!481 = !DILocation(line: 786, column: 14, scope: !462)
!482 = !DILocation(line: 790, column: 10, scope: !462)
!483 = !DILocation(line: 789, column: 9, scope: !462)
!484 = !DILocation(line: 791, column: 1, scope: !462)
!485 = !DILocation(line: 789, column: 2, scope: !462)
!486 = distinct !DISubprogram(name: "xfrm_aead_name_match", scope: !3, file: !3, line: 772, type: !286, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !487)
!487 = !{!488, !489, !490, !493}
!488 = !DILocalVariable(name: "entry", arg: 1, scope: !486, file: !3, line: 772, type: !288)
!489 = !DILocalVariable(name: "data", arg: 2, scope: !486, file: !3, line: 773, type: !290)
!490 = !DILocalVariable(name: "aead", scope: !486, file: !3, line: 775, type: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!493 = !DILocalVariable(name: "name", scope: !486, file: !3, line: 776, type: !404)
!494 = !DILocation(line: 772, column: 62, scope: !486)
!495 = !DILocation(line: 773, column: 17, scope: !486)
!496 = !DILocation(line: 775, column: 2, scope: !486)
!497 = !DILocation(line: 775, column: 31, scope: !486)
!498 = !DILocation(line: 775, column: 38, scope: !486)
!499 = !DILocation(line: 776, column: 2, scope: !486)
!500 = !DILocation(line: 776, column: 14, scope: !486)
!501 = !DILocation(line: 776, column: 21, scope: !486)
!502 = !DILocation(line: 776, column: 27, scope: !486)
!503 = !DILocation(line: 778, column: 9, scope: !486)
!504 = !DILocation(line: 778, column: 15, scope: !486)
!505 = !DILocation(line: 778, column: 26, scope: !486)
!506 = !DILocation(line: 778, column: 33, scope: !486)
!507 = !DILocation(line: 778, column: 44, scope: !486)
!508 = !DILocation(line: 778, column: 23, scope: !486)
!509 = !DILocation(line: 778, column: 58, scope: !486)
!510 = !DILocation(line: 778, column: 61, scope: !486)
!511 = !DILocation(line: 778, column: 66, scope: !486)
!512 = !DILocation(line: 779, column: 17, scope: !486)
!513 = !DILocation(line: 779, column: 23, scope: !486)
!514 = !DILocation(line: 779, column: 30, scope: !486)
!515 = !DILocation(line: 779, column: 10, scope: !486)
!516 = !DILocation(line: 779, column: 9, scope: !486)
!517 = !DILocation(line: 0, scope: !486)
!518 = !DILocation(line: 780, column: 1, scope: !486)
!519 = !DILocation(line: 778, column: 2, scope: !486)
!520 = distinct !DISubprogram(name: "xfrm_aalg_get_byidx", scope: !3, file: !3, line: 794, type: !521, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!56, !109}
!523 = !{!524}
!524 = !DILocalVariable(name: "idx", arg: 1, scope: !520, file: !3, line: 794, type: !109)
!525 = !DILocation(line: 794, column: 57, scope: !520)
!526 = !DILocation(line: 796, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !520, file: !3, line: 796, column: 6)
!528 = !DILocation(line: 796, column: 13, scope: !527)
!529 = !DILocation(line: 796, column: 10, scope: !527)
!530 = !DILocation(line: 796, column: 6, scope: !520)
!531 = !DILocation(line: 797, column: 3, scope: !527)
!532 = !DILocation(line: 799, column: 20, scope: !520)
!533 = !DILocation(line: 799, column: 10, scope: !520)
!534 = !DILocation(line: 799, column: 2, scope: !520)
!535 = !DILocation(line: 800, column: 1, scope: !520)
!536 = distinct !DISubprogram(name: "aalg_entries", scope: !3, file: !3, line: 631, type: !537, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!537 = !DISubroutineType(types: !538)
!538 = !{!7}
!539 = !DILocation(line: 633, column: 2, scope: !536)
!540 = distinct !DISubprogram(name: "xfrm_ealg_get_byidx", scope: !3, file: !3, line: 803, type: !521, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !541)
!541 = !{!542}
!542 = !DILocalVariable(name: "idx", arg: 1, scope: !540, file: !3, line: 803, type: !109)
!543 = !DILocation(line: 803, column: 57, scope: !540)
!544 = !DILocation(line: 805, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !540, file: !3, line: 805, column: 6)
!546 = !DILocation(line: 805, column: 13, scope: !545)
!547 = !DILocation(line: 805, column: 10, scope: !545)
!548 = !DILocation(line: 805, column: 6, scope: !540)
!549 = !DILocation(line: 806, column: 3, scope: !545)
!550 = !DILocation(line: 808, column: 20, scope: !540)
!551 = !DILocation(line: 808, column: 10, scope: !540)
!552 = !DILocation(line: 808, column: 2, scope: !540)
!553 = !DILocation(line: 809, column: 1, scope: !540)
!554 = distinct !DISubprogram(name: "ealg_entries", scope: !3, file: !3, line: 636, type: !537, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!555 = !DILocation(line: 638, column: 2, scope: !554)
!556 = distinct !DISubprogram(name: "xfrm_probe_algs", scope: !3, file: !3, line: 817, type: !557, scopeLine: 818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null}
!559 = !{!560, !561}
!560 = !DILocalVariable(name: "i", scope: !556, file: !3, line: 819, type: !7)
!561 = !DILocalVariable(name: "status", scope: !556, file: !3, line: 819, type: !7)
!562 = !DILocation(line: 819, column: 2, scope: !556)
!563 = !DILocation(line: 819, column: 6, scope: !556)
!564 = !DILocation(line: 819, column: 9, scope: !556)
!565 = !DILocation(line: 821, column: 2, scope: !556)
!566 = !DILocation(line: 821, column: 2, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 821, column: 2)
!568 = distinct !DILexicalBlock(scope: !556, file: !3, line: 821, column: 2)
!569 = !DILocation(line: 821, column: 2, scope: !568)
!570 = !DILocation(line: 821, column: 2, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !3, line: 821, column: 2)
!572 = !DILocation(line: 821, column: 2, scope: !573)
!573 = distinct !DILexicalBlock(scope: !571, file: !3, line: 821, column: 2)
!574 = !DILocation(line: 821, column: 2, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !3, line: 821, column: 2)
!576 = !{i64 2159242472, i64 2159242501, i64 2159242547, i64 2159242605, i64 2159242659, i64 2159242713, i64 2159242768, i64 2159242799}
!577 = !DILocation(line: 823, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !556, file: !3, line: 823, column: 2)
!579 = !DILocation(line: 823, column: 7, scope: !578)
!580 = !DILocation(line: 823, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !3, line: 823, column: 2)
!582 = !DILocation(line: 823, column: 18, scope: !581)
!583 = !DILocation(line: 823, column: 16, scope: !581)
!584 = !DILocation(line: 823, column: 2, scope: !578)
!585 = !DILocation(line: 824, column: 39, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !3, line: 823, column: 39)
!587 = !DILocation(line: 824, column: 29, scope: !586)
!588 = !DILocation(line: 824, column: 42, scope: !586)
!589 = !DILocation(line: 824, column: 12, scope: !586)
!590 = !DILocation(line: 824, column: 10, scope: !586)
!591 = !DILocation(line: 825, column: 17, scope: !592)
!592 = distinct !DILexicalBlock(scope: !586, file: !3, line: 825, column: 7)
!593 = !DILocation(line: 825, column: 7, scope: !592)
!594 = !DILocation(line: 825, column: 20, scope: !592)
!595 = !DILocation(line: 825, column: 33, scope: !592)
!596 = !DILocation(line: 825, column: 30, scope: !592)
!597 = !DILocation(line: 825, column: 7, scope: !586)
!598 = !DILocation(line: 826, column: 29, scope: !592)
!599 = !DILocation(line: 826, column: 14, scope: !592)
!600 = !DILocation(line: 826, column: 4, scope: !592)
!601 = !DILocation(line: 826, column: 17, scope: !592)
!602 = !DILocation(line: 826, column: 27, scope: !592)
!603 = !DILocation(line: 827, column: 2, scope: !586)
!604 = !DILocation(line: 823, column: 35, scope: !581)
!605 = !DILocation(line: 823, column: 2, scope: !581)
!606 = distinct !{!606, !584, !607, !366, !367}
!607 = !DILocation(line: 827, column: 2, scope: !578)
!608 = !DILocation(line: 829, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !556, file: !3, line: 829, column: 2)
!610 = !DILocation(line: 829, column: 7, scope: !609)
!611 = !DILocation(line: 829, column: 14, scope: !612)
!612 = distinct !DILexicalBlock(scope: !609, file: !3, line: 829, column: 2)
!613 = !DILocation(line: 829, column: 18, scope: !612)
!614 = !DILocation(line: 829, column: 16, scope: !612)
!615 = !DILocation(line: 829, column: 2, scope: !609)
!616 = !DILocation(line: 830, column: 42, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !3, line: 829, column: 39)
!618 = !DILocation(line: 830, column: 32, scope: !617)
!619 = !DILocation(line: 830, column: 45, scope: !617)
!620 = !DILocation(line: 830, column: 12, scope: !617)
!621 = !DILocation(line: 830, column: 10, scope: !617)
!622 = !DILocation(line: 831, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !617, file: !3, line: 831, column: 7)
!624 = !DILocation(line: 831, column: 7, scope: !623)
!625 = !DILocation(line: 831, column: 20, scope: !623)
!626 = !DILocation(line: 831, column: 33, scope: !623)
!627 = !DILocation(line: 831, column: 30, scope: !623)
!628 = !DILocation(line: 831, column: 7, scope: !617)
!629 = !DILocation(line: 832, column: 29, scope: !623)
!630 = !DILocation(line: 832, column: 14, scope: !623)
!631 = !DILocation(line: 832, column: 4, scope: !623)
!632 = !DILocation(line: 832, column: 17, scope: !623)
!633 = !DILocation(line: 832, column: 27, scope: !623)
!634 = !DILocation(line: 833, column: 2, scope: !617)
!635 = !DILocation(line: 829, column: 35, scope: !612)
!636 = !DILocation(line: 829, column: 2, scope: !612)
!637 = distinct !{!637, !615, !638, !366, !367}
!638 = !DILocation(line: 833, column: 2, scope: !609)
!639 = !DILocation(line: 835, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !556, file: !3, line: 835, column: 2)
!641 = !DILocation(line: 835, column: 7, scope: !640)
!642 = !DILocation(line: 835, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !3, line: 835, column: 2)
!644 = !DILocation(line: 835, column: 18, scope: !643)
!645 = !DILocation(line: 835, column: 16, scope: !643)
!646 = !DILocation(line: 835, column: 2, scope: !640)
!647 = !DILocation(line: 836, column: 38, scope: !648)
!648 = distinct !DILexicalBlock(scope: !643, file: !3, line: 835, column: 39)
!649 = !DILocation(line: 836, column: 28, scope: !648)
!650 = !DILocation(line: 836, column: 41, scope: !648)
!651 = !DILocation(line: 836, column: 12, scope: !648)
!652 = !DILocation(line: 836, column: 10, scope: !648)
!653 = !DILocation(line: 838, column: 17, scope: !654)
!654 = distinct !DILexicalBlock(scope: !648, file: !3, line: 838, column: 7)
!655 = !DILocation(line: 838, column: 7, scope: !654)
!656 = !DILocation(line: 838, column: 20, scope: !654)
!657 = !DILocation(line: 838, column: 33, scope: !654)
!658 = !DILocation(line: 838, column: 30, scope: !654)
!659 = !DILocation(line: 838, column: 7, scope: !648)
!660 = !DILocation(line: 839, column: 29, scope: !654)
!661 = !DILocation(line: 839, column: 14, scope: !654)
!662 = !DILocation(line: 839, column: 4, scope: !654)
!663 = !DILocation(line: 839, column: 17, scope: !654)
!664 = !DILocation(line: 839, column: 27, scope: !654)
!665 = !DILocation(line: 840, column: 2, scope: !648)
!666 = !DILocation(line: 835, column: 35, scope: !643)
!667 = !DILocation(line: 835, column: 2, scope: !643)
!668 = distinct !{!668, !646, !669, !366, !367}
!669 = !DILocation(line: 840, column: 2, scope: !640)
!670 = !DILocation(line: 841, column: 1, scope: !556)
!671 = distinct !DISubprogram(name: "preempt_count", scope: !672, file: !672, line: 25, type: !537, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !673)
!672 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!673 = !{!674}
!674 = !DILocalVariable(name: "pfo_val__", scope: !675, file: !672, line: 27, type: !107)
!675 = distinct !DILexicalBlock(scope: !671, file: !672, line: 27, column: 9)
!676 = !DILocation(line: 27, column: 9, scope: !675)
!677 = !{i64 2149525472}
!678 = !DILocation(line: 27, column: 9, scope: !671)
!679 = !DILocation(line: 27, column: 48, scope: !671)
!680 = !DILocation(line: 27, column: 2, scope: !671)
!681 = !DISubprogram(name: "crypto_has_ahash", scope: !682, file: !682, line: 333, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!683 = !DISubroutineType(types: !684)
!684 = !{!7, !404, !107, !107}
!685 = !DISubprogram(name: "crypto_has_skcipher", scope: !686, file: !686, line: 248, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DIFile(filename: "./include/crypto/skcipher.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e93186fb464044d79c042c8e9efb9dc")
!687 = distinct !DISubprogram(name: "calg_entries", scope: !3, file: !3, line: 641, type: !537, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!688 = !DILocation(line: 643, column: 2, scope: !687)
!689 = distinct !DISubprogram(name: "crypto_has_comp", scope: !690, file: !690, line: 521, type: !683, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !691)
!690 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!691 = !{!692, !693, !694}
!692 = !DILocalVariable(name: "alg_name", arg: 1, scope: !689, file: !690, line: 521, type: !404)
!693 = !DILocalVariable(name: "type", arg: 2, scope: !689, file: !690, line: 521, type: !107)
!694 = !DILocalVariable(name: "mask", arg: 3, scope: !689, file: !690, line: 521, type: !107)
!695 = !DILocation(line: 521, column: 47, scope: !689)
!696 = !DILocation(line: 521, column: 61, scope: !689)
!697 = !DILocation(line: 521, column: 71, scope: !689)
!698 = !DILocation(line: 523, column: 7, scope: !689)
!699 = !DILocation(line: 524, column: 7, scope: !689)
!700 = !DILocation(line: 525, column: 7, scope: !689)
!701 = !DILocation(line: 527, column: 24, scope: !689)
!702 = !DILocation(line: 527, column: 34, scope: !689)
!703 = !DILocation(line: 527, column: 40, scope: !689)
!704 = !DILocation(line: 527, column: 9, scope: !689)
!705 = !DILocation(line: 527, column: 2, scope: !689)
!706 = distinct !DISubprogram(name: "xfrm_count_pfkey_auth_supported", scope: !3, file: !3, line: 844, type: !537, scopeLine: 845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !707)
!707 = !{!708, !709}
!708 = !DILocalVariable(name: "i", scope: !706, file: !3, line: 846, type: !7)
!709 = !DILocalVariable(name: "n", scope: !706, file: !3, line: 846, type: !7)
!710 = !DILocation(line: 846, column: 2, scope: !706)
!711 = !DILocation(line: 846, column: 6, scope: !706)
!712 = !DILocation(line: 846, column: 9, scope: !706)
!713 = !DILocation(line: 848, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !706, file: !3, line: 848, column: 2)
!715 = !DILocation(line: 848, column: 16, scope: !714)
!716 = !DILocation(line: 848, column: 7, scope: !714)
!717 = !DILocation(line: 848, column: 21, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !3, line: 848, column: 2)
!719 = !DILocation(line: 848, column: 25, scope: !718)
!720 = !DILocation(line: 848, column: 23, scope: !718)
!721 = !DILocation(line: 848, column: 2, scope: !714)
!722 = !DILocation(line: 849, column: 17, scope: !723)
!723 = distinct !DILexicalBlock(scope: !718, file: !3, line: 849, column: 7)
!724 = !DILocation(line: 849, column: 7, scope: !723)
!725 = !DILocation(line: 849, column: 20, scope: !723)
!726 = !DILocation(line: 849, column: 30, scope: !723)
!727 = !DILocation(line: 849, column: 43, scope: !723)
!728 = !DILocation(line: 849, column: 33, scope: !723)
!729 = !DILocation(line: 849, column: 46, scope: !723)
!730 = !DILocation(line: 849, column: 7, scope: !718)
!731 = !DILocation(line: 850, column: 5, scope: !723)
!732 = !DILocation(line: 850, column: 4, scope: !723)
!733 = !DILocation(line: 848, column: 42, scope: !718)
!734 = !DILocation(line: 848, column: 2, scope: !718)
!735 = distinct !{!735, !721, !736, !366, !367}
!736 = !DILocation(line: 850, column: 5, scope: !714)
!737 = !DILocation(line: 851, column: 9, scope: !706)
!738 = !DILocation(line: 852, column: 1, scope: !706)
!739 = !DILocation(line: 851, column: 2, scope: !706)
!740 = distinct !DISubprogram(name: "xfrm_count_pfkey_enc_supported", scope: !3, file: !3, line: 855, type: !537, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!741 = !{!742, !743}
!742 = !DILocalVariable(name: "i", scope: !740, file: !3, line: 857, type: !7)
!743 = !DILocalVariable(name: "n", scope: !740, file: !3, line: 857, type: !7)
!744 = !DILocation(line: 857, column: 2, scope: !740)
!745 = !DILocation(line: 857, column: 6, scope: !740)
!746 = !DILocation(line: 857, column: 9, scope: !740)
!747 = !DILocation(line: 859, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !740, file: !3, line: 859, column: 2)
!749 = !DILocation(line: 859, column: 16, scope: !748)
!750 = !DILocation(line: 859, column: 7, scope: !748)
!751 = !DILocation(line: 859, column: 21, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !3, line: 859, column: 2)
!753 = !DILocation(line: 859, column: 25, scope: !752)
!754 = !DILocation(line: 859, column: 23, scope: !752)
!755 = !DILocation(line: 859, column: 2, scope: !748)
!756 = !DILocation(line: 860, column: 17, scope: !757)
!757 = distinct !DILexicalBlock(scope: !752, file: !3, line: 860, column: 7)
!758 = !DILocation(line: 860, column: 7, scope: !757)
!759 = !DILocation(line: 860, column: 20, scope: !757)
!760 = !DILocation(line: 860, column: 30, scope: !757)
!761 = !DILocation(line: 860, column: 43, scope: !757)
!762 = !DILocation(line: 860, column: 33, scope: !757)
!763 = !DILocation(line: 860, column: 46, scope: !757)
!764 = !DILocation(line: 860, column: 7, scope: !752)
!765 = !DILocation(line: 861, column: 5, scope: !757)
!766 = !DILocation(line: 861, column: 4, scope: !757)
!767 = !DILocation(line: 859, column: 42, scope: !752)
!768 = !DILocation(line: 859, column: 2, scope: !752)
!769 = distinct !{!769, !755, !770, !366, !367}
!770 = !DILocation(line: 861, column: 5, scope: !748)
!771 = !DILocation(line: 862, column: 9, scope: !740)
!772 = !DILocation(line: 863, column: 1, scope: !740)
!773 = !DILocation(line: 862, column: 2, scope: !740)
!774 = !DISubprogram(name: "crypto_has_alg", scope: !690, file: !690, line: 414, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DISubprogram(name: "strcmp", scope: !776, file: !776, line: 88, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!777 = !DISubroutineType(types: !778)
!778 = !{!7, !404, !404}
