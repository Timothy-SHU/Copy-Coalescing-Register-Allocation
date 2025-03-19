; ModuleID = 'net/9p/error.c'
source_filename = "net/9p/error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_p9_error_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad p9_error_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_p9_errstr2errno: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad p9_errstr2errno ; .previous"

%struct.hlist_head = type { ptr }
%struct.errormap = type { ptr, i32, i32, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.__una_u32 = type { i32 }

@hash_errmap = internal global [32 x %struct.hlist_head] zeroinitializer, align 16, !dbg !0
@errmap = internal global [126 x %struct.errormap] [%struct.errormap { ptr @.str.1, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.2, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.3, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.4, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.5, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.6, i32 4, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.7, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.8, i32 6, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.9, i32 7, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.10, i32 9, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.11, i32 11, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.12, i32 12, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.13, i32 13, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.14, i32 14, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.15, i32 15, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.16, i32 16, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.17, i32 17, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.18, i32 18, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.19, i32 19, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.20, i32 20, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.21, i32 21, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.22, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.23, i32 23, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.24, i32 24, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.25, i32 26, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.26, i32 27, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.27, i32 28, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.28, i32 29, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.29, i32 30, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.30, i32 31, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.31, i32 32, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.32, i32 33, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.33, i32 34, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.34, i32 35, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.35, i32 36, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.36, i32 37, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.37, i32 38, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.38, i32 39, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.39, i32 40, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.40, i32 42, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.41, i32 43, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.42, i32 61, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.43, i32 64, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.44, i32 65, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.45, i32 66, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.46, i32 67, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.47, i32 70, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.48, i32 71, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.49, i32 74, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.50, i32 77, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.51, i32 86, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.52, i32 87, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.53, i32 88, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.54, i32 90, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.55, i32 92, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.56, i32 93, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.57, i32 94, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.58, i32 95, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.59, i32 96, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.60, i32 100, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.61, i32 101, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.62, i32 102, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.63, i32 103, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.64, i32 104, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.65, i32 105, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.66, i32 106, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.67, i32 107, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.68, i32 108, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.69, i32 110, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.70, i32 111, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.71, i32 112, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.72, i32 113, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.73, i32 114, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.74, i32 115, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.75, i32 120, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.76, i32 121, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.77, i32 122, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.78, i32 9, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.79, i32 13, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.80, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.81, i32 111, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.82, i32 29, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.83, i32 9, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.84, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.85, i32 39, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.86, i32 17, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.87, i32 17, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.88, i32 17, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.89, i32 9, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.90, i32 26, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.91, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.92, i32 26, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.93, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.94, i32 36, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.95, i32 20, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.96, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.97, i32 13, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.98, i32 13, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.99, i32 30, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.100, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.101, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.102, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.103, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.104, i32 71, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.105, i32 11, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.106, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.107, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.108, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.109, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.110, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.111, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.112, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.113, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.114, i32 71, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.115, i32 28, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.116, i32 11, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.117, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.118, i32 30, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.119, i32 43, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.120, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.121, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.122, i32 27, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.123, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.124, i32 0, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.125, i32 0, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr null, i32 -1, i32 0, %struct.hlist_node zeroinitializer }], align 16, !dbg !398
@__UNIQUE_ID___addressable_p9_error_init195 = internal global ptr @p9_error_init, section ".discard.addressable", align 8, !dbg !39
@.str = private unnamed_addr constant [47 x i8] c"\0139pnet: %s: server reported unknown error %s\0A\00", align 1, !dbg !41
@__func__.p9_errstr2errno = private unnamed_addr constant [16 x i8] c"p9_errstr2errno\00", align 1, !dbg !46
@__UNIQUE_ID___addressable_p9_errstr2errno196 = internal global ptr @p9_errstr2errno, section ".discard.addressable", align 8, !dbg !52
@.str.1 = private unnamed_addr constant [24 x i8] c"Operation not permitted\00", align 1, !dbg !54
@.str.2 = private unnamed_addr constant [17 x i8] c"wstat prohibited\00", align 1, !dbg !59
@.str.3 = private unnamed_addr constant [26 x i8] c"No such file or directory\00", align 1, !dbg !64
@.str.4 = private unnamed_addr constant [26 x i8] c"directory entry not found\00", align 1, !dbg !69
@.str.5 = private unnamed_addr constant [15 x i8] c"file not found\00", align 1, !dbg !71
@.str.6 = private unnamed_addr constant [24 x i8] c"Interrupted system call\00", align 1, !dbg !76
@.str.7 = private unnamed_addr constant [19 x i8] c"Input/output error\00", align 1, !dbg !78
@.str.8 = private unnamed_addr constant [26 x i8] c"No such device or address\00", align 1, !dbg !83
@.str.9 = private unnamed_addr constant [23 x i8] c"Argument list too long\00", align 1, !dbg !85
@.str.10 = private unnamed_addr constant [20 x i8] c"Bad file descriptor\00", align 1, !dbg !90
@.str.11 = private unnamed_addr constant [33 x i8] c"Resource temporarily unavailable\00", align 1, !dbg !95
@.str.12 = private unnamed_addr constant [23 x i8] c"Cannot allocate memory\00", align 1, !dbg !100
@.str.13 = private unnamed_addr constant [18 x i8] c"Permission denied\00", align 1, !dbg !102
@.str.14 = private unnamed_addr constant [12 x i8] c"Bad address\00", align 1, !dbg !107
@.str.15 = private unnamed_addr constant [22 x i8] c"Block device required\00", align 1, !dbg !112
@.str.16 = private unnamed_addr constant [24 x i8] c"Device or resource busy\00", align 1, !dbg !117
@.str.17 = private unnamed_addr constant [12 x i8] c"File exists\00", align 1, !dbg !119
@.str.18 = private unnamed_addr constant [26 x i8] c"Invalid cross-device link\00", align 1, !dbg !121
@.str.19 = private unnamed_addr constant [15 x i8] c"No such device\00", align 1, !dbg !123
@.str.20 = private unnamed_addr constant [16 x i8] c"Not a directory\00", align 1, !dbg !125
@.str.21 = private unnamed_addr constant [15 x i8] c"Is a directory\00", align 1, !dbg !128
@.str.22 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1, !dbg !130
@.str.23 = private unnamed_addr constant [30 x i8] c"Too many open files in system\00", align 1, !dbg !132
@.str.24 = private unnamed_addr constant [20 x i8] c"Too many open files\00", align 1, !dbg !137
@.str.25 = private unnamed_addr constant [15 x i8] c"Text file busy\00", align 1, !dbg !139
@.str.26 = private unnamed_addr constant [15 x i8] c"File too large\00", align 1, !dbg !141
@.str.27 = private unnamed_addr constant [24 x i8] c"No space left on device\00", align 1, !dbg !143
@.str.28 = private unnamed_addr constant [13 x i8] c"Illegal seek\00", align 1, !dbg !145
@.str.29 = private unnamed_addr constant [22 x i8] c"Read-only file system\00", align 1, !dbg !150
@.str.30 = private unnamed_addr constant [15 x i8] c"Too many links\00", align 1, !dbg !152
@.str.31 = private unnamed_addr constant [12 x i8] c"Broken pipe\00", align 1, !dbg !154
@.str.32 = private unnamed_addr constant [33 x i8] c"Numerical argument out of domain\00", align 1, !dbg !156
@.str.33 = private unnamed_addr constant [30 x i8] c"Numerical result out of range\00", align 1, !dbg !158
@.str.34 = private unnamed_addr constant [26 x i8] c"Resource deadlock avoided\00", align 1, !dbg !160
@.str.35 = private unnamed_addr constant [19 x i8] c"File name too long\00", align 1, !dbg !162
@.str.36 = private unnamed_addr constant [19 x i8] c"No locks available\00", align 1, !dbg !164
@.str.37 = private unnamed_addr constant [25 x i8] c"Function not implemented\00", align 1, !dbg !166
@.str.38 = private unnamed_addr constant [20 x i8] c"Directory not empty\00", align 1, !dbg !171
@.str.39 = private unnamed_addr constant [34 x i8] c"Too many levels of symbolic links\00", align 1, !dbg !173
@.str.40 = private unnamed_addr constant [27 x i8] c"No message of desired type\00", align 1, !dbg !178
@.str.41 = private unnamed_addr constant [19 x i8] c"Identifier removed\00", align 1, !dbg !183
@.str.42 = private unnamed_addr constant [18 x i8] c"No data available\00", align 1, !dbg !185
@.str.43 = private unnamed_addr constant [30 x i8] c"Machine is not on the network\00", align 1, !dbg !187
@.str.44 = private unnamed_addr constant [22 x i8] c"Package not installed\00", align 1, !dbg !189
@.str.45 = private unnamed_addr constant [17 x i8] c"Object is remote\00", align 1, !dbg !191
@.str.46 = private unnamed_addr constant [22 x i8] c"Link has been severed\00", align 1, !dbg !193
@.str.47 = private unnamed_addr constant [28 x i8] c"Communication error on send\00", align 1, !dbg !195
@.str.48 = private unnamed_addr constant [15 x i8] c"Protocol error\00", align 1, !dbg !200
@.str.49 = private unnamed_addr constant [12 x i8] c"Bad message\00", align 1, !dbg !202
@.str.50 = private unnamed_addr constant [29 x i8] c"File descriptor in bad state\00", align 1, !dbg !204
@.str.51 = private unnamed_addr constant [19 x i8] c"Streams pipe error\00", align 1, !dbg !209
@.str.52 = private unnamed_addr constant [15 x i8] c"Too many users\00", align 1, !dbg !211
@.str.53 = private unnamed_addr constant [31 x i8] c"Socket operation on non-socket\00", align 1, !dbg !213
@.str.54 = private unnamed_addr constant [17 x i8] c"Message too long\00", align 1, !dbg !218
@.str.55 = private unnamed_addr constant [23 x i8] c"Protocol not available\00", align 1, !dbg !220
@.str.56 = private unnamed_addr constant [23 x i8] c"Protocol not supported\00", align 1, !dbg !222
@.str.57 = private unnamed_addr constant [26 x i8] c"Socket type not supported\00", align 1, !dbg !224
@.str.58 = private unnamed_addr constant [24 x i8] c"Operation not supported\00", align 1, !dbg !226
@.str.59 = private unnamed_addr constant [30 x i8] c"Protocol family not supported\00", align 1, !dbg !228
@.str.60 = private unnamed_addr constant [16 x i8] c"Network is down\00", align 1, !dbg !230
@.str.61 = private unnamed_addr constant [23 x i8] c"Network is unreachable\00", align 1, !dbg !232
@.str.62 = private unnamed_addr constant [36 x i8] c"Network dropped connection on reset\00", align 1, !dbg !234
@.str.63 = private unnamed_addr constant [33 x i8] c"Software caused connection abort\00", align 1, !dbg !239
@.str.64 = private unnamed_addr constant [25 x i8] c"Connection reset by peer\00", align 1, !dbg !241
@.str.65 = private unnamed_addr constant [26 x i8] c"No buffer space available\00", align 1, !dbg !243
@.str.66 = private unnamed_addr constant [40 x i8] c"Transport endpoint is already connected\00", align 1, !dbg !245
@.str.67 = private unnamed_addr constant [36 x i8] c"Transport endpoint is not connected\00", align 1, !dbg !250
@.str.68 = private unnamed_addr constant [46 x i8] c"Cannot send after transport endpoint shutdown\00", align 1, !dbg !252
@.str.69 = private unnamed_addr constant [21 x i8] c"Connection timed out\00", align 1, !dbg !257
@.str.70 = private unnamed_addr constant [19 x i8] c"Connection refused\00", align 1, !dbg !262
@.str.71 = private unnamed_addr constant [13 x i8] c"Host is down\00", align 1, !dbg !264
@.str.72 = private unnamed_addr constant [17 x i8] c"No route to host\00", align 1, !dbg !266
@.str.73 = private unnamed_addr constant [30 x i8] c"Operation already in progress\00", align 1, !dbg !268
@.str.74 = private unnamed_addr constant [26 x i8] c"Operation now in progress\00", align 1, !dbg !270
@.str.75 = private unnamed_addr constant [21 x i8] c"Is a named type file\00", align 1, !dbg !272
@.str.76 = private unnamed_addr constant [17 x i8] c"Remote I/O error\00", align 1, !dbg !274
@.str.77 = private unnamed_addr constant [20 x i8] c"Disk quota exceeded\00", align 1, !dbg !276
@.str.78 = private unnamed_addr constant [28 x i8] c"fid unknown or out of range\00", align 1, !dbg !278
@.str.79 = private unnamed_addr constant [18 x i8] c"permission denied\00", align 1, !dbg !280
@.str.80 = private unnamed_addr constant [20 x i8] c"file does not exist\00", align 1, !dbg !282
@.str.81 = private unnamed_addr constant [22 x i8] c"authentication failed\00", align 1, !dbg !284
@.str.82 = private unnamed_addr constant [29 x i8] c"bad offset in directory read\00", align 1, !dbg !286
@.str.83 = private unnamed_addr constant [15 x i8] c"bad use of fid\00", align 1, !dbg !288
@.str.84 = private unnamed_addr constant [50 x i8] c"wstat can't convert between files and directories\00", align 1, !dbg !290
@.str.85 = private unnamed_addr constant [23 x i8] c"directory is not empty\00", align 1, !dbg !295
@.str.86 = private unnamed_addr constant [12 x i8] c"file exists\00", align 1, !dbg !297
@.str.87 = private unnamed_addr constant [20 x i8] c"file already exists\00", align 1, !dbg !299
@.str.88 = private unnamed_addr constant [33 x i8] c"file or directory already exists\00", align 1, !dbg !301
@.str.89 = private unnamed_addr constant [19 x i8] c"fid already in use\00", align 1, !dbg !303
@.str.90 = private unnamed_addr constant [12 x i8] c"file in use\00", align 1, !dbg !305
@.str.91 = private unnamed_addr constant [10 x i8] c"i/o error\00", align 1, !dbg !307
@.str.92 = private unnamed_addr constant [26 x i8] c"file already open for I/O\00", align 1, !dbg !312
@.str.93 = private unnamed_addr constant [13 x i8] c"illegal mode\00", align 1, !dbg !314
@.str.94 = private unnamed_addr constant [13 x i8] c"illegal name\00", align 1, !dbg !316
@.str.95 = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1, !dbg !318
@.str.96 = private unnamed_addr constant [31 x i8] c"not a member of proposed group\00", align 1, !dbg !320
@.str.97 = private unnamed_addr constant [10 x i8] c"not owner\00", align 1, !dbg !322
@.str.98 = private unnamed_addr constant [37 x i8] c"only owner can change group in wstat\00", align 1, !dbg !324
@.str.99 = private unnamed_addr constant [22 x i8] c"read only file system\00", align 1, !dbg !329
@.str.100 = private unnamed_addr constant [26 x i8] c"no access to special file\00", align 1, !dbg !331
@.str.101 = private unnamed_addr constant [20 x i8] c"i/o count too large\00", align 1, !dbg !333
@.str.102 = private unnamed_addr constant [14 x i8] c"unknown group\00", align 1, !dbg !335
@.str.103 = private unnamed_addr constant [13 x i8] c"unknown user\00", align 1, !dbg !340
@.str.104 = private unnamed_addr constant [19 x i8] c"bogus wstat buffer\00", align 1, !dbg !342
@.str.105 = private unnamed_addr constant [32 x i8] c"exclusive use file already open\00", align 1, !dbg !344
@.str.106 = private unnamed_addr constant [26 x i8] c"corrupted directory entry\00", align 1, !dbg !349
@.str.107 = private unnamed_addr constant [21 x i8] c"corrupted file entry\00", align 1, !dbg !351
@.str.108 = private unnamed_addr constant [22 x i8] c"corrupted block label\00", align 1, !dbg !353
@.str.109 = private unnamed_addr constant [20 x i8] c"corrupted meta data\00", align 1, !dbg !355
@.str.110 = private unnamed_addr constant [15 x i8] c"illegal offset\00", align 1, !dbg !357
@.str.111 = private unnamed_addr constant [21 x i8] c"illegal path element\00", align 1, !dbg !359
@.str.112 = private unnamed_addr constant [33 x i8] c"root of file system is corrupted\00", align 1, !dbg !361
@.str.113 = private unnamed_addr constant [22 x i8] c"corrupted super block\00", align 1, !dbg !363
@.str.114 = private unnamed_addr constant [15 x i8] c"protocol botch\00", align 1, !dbg !365
@.str.115 = private unnamed_addr constant [20 x i8] c"file system is full\00", align 1, !dbg !367
@.str.116 = private unnamed_addr constant [15 x i8] c"file is in use\00", align 1, !dbg !369
@.str.117 = private unnamed_addr constant [33 x i8] c"directory entry is not allocated\00", align 1, !dbg !371
@.str.118 = private unnamed_addr constant [18 x i8] c"file is read only\00", align 1, !dbg !373
@.str.119 = private unnamed_addr constant [22 x i8] c"file has been removed\00", align 1, !dbg !375
@.str.120 = private unnamed_addr constant [39 x i8] c"only support truncation to zero length\00", align 1, !dbg !377
@.str.121 = private unnamed_addr constant [19 x i8] c"cannot remove root\00", align 1, !dbg !382
@.str.122 = private unnamed_addr constant [13 x i8] c"file too big\00", align 1, !dbg !384
@.str.123 = private unnamed_addr constant [16 x i8] c"venti i/o error\00", align 1, !dbg !386
@.str.124 = private unnamed_addr constant [44 x i8] c"u9fs rhostsauth: no authentication required\00", align 1, !dbg !388
@.str.125 = private unnamed_addr constant [42 x i8] c"u9fs authnone: no authentication required\00", align 1, !dbg !393
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_p9_error_init195, ptr @__UNIQUE_ID___addressable_p9_errstr2errno196], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @p9_error_init() #0 align 16 !dbg !416 {
entry:
  %c = alloca ptr, align 8
  %bucket = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %c, metadata !420, metadata !DIExpression()), !dbg !423
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucket) #6, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %bucket, metadata !421, metadata !DIExpression()), !dbg !425
  store i32 0, ptr %bucket, align 4, !dbg !426
  br label %for.cond, !dbg !428

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %bucket, align 4, !dbg !429
  %cmp = icmp slt i32 %0, 32, !dbg !431
  br i1 %cmp, label %for.body, label %for.end, !dbg !432

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %bucket, align 4, !dbg !433
  %idxprom = sext i32 %1 to i64, !dbg !433
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @hash_errmap, i64 0, i64 %idxprom, !dbg !433
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !433
  store ptr null, ptr %first, align 8, !dbg !433
  br label %for.inc, !dbg !433

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %bucket, align 4, !dbg !434
  %inc = add i32 %2, 1, !dbg !434
  store i32 %inc, ptr %bucket, align 4, !dbg !434
  br label %for.cond, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %for.cond
  store ptr @errmap, ptr %c, align 8, !dbg !440
  br label %for.cond1, !dbg !442

for.cond1:                                        ; preds = %for.inc10, %for.end
  %3 = load ptr, ptr %c, align 8, !dbg !443
  %name = getelementptr inbounds %struct.errormap, ptr %3, i32 0, i32 0, !dbg !445
  %4 = load ptr, ptr %name, align 8, !dbg !445
  %tobool = icmp ne ptr %4, null, !dbg !446
  br i1 %tobool, label %for.body2, label %for.end11, !dbg !446

for.body2:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %c, align 8, !dbg !447
  %name3 = getelementptr inbounds %struct.errormap, ptr %5, i32 0, i32 0, !dbg !449
  %6 = load ptr, ptr %name3, align 8, !dbg !449
  %call = call i64 @strlen(ptr noundef %6) #7, !dbg !450
  %conv = trunc i64 %call to i32, !dbg !450
  %7 = load ptr, ptr %c, align 8, !dbg !451
  %namelen = getelementptr inbounds %struct.errormap, ptr %7, i32 0, i32 2, !dbg !452
  store i32 %conv, ptr %namelen, align 4, !dbg !453
  %8 = load ptr, ptr %c, align 8, !dbg !454
  %name4 = getelementptr inbounds %struct.errormap, ptr %8, i32 0, i32 0, !dbg !455
  %9 = load ptr, ptr %name4, align 8, !dbg !455
  %10 = load ptr, ptr %c, align 8, !dbg !456
  %namelen5 = getelementptr inbounds %struct.errormap, ptr %10, i32 0, i32 2, !dbg !457
  %11 = load i32, ptr %namelen5, align 4, !dbg !457
  %call6 = call i32 @jhash(ptr noundef %9, i32 noundef %11, i32 noundef 0) #7, !dbg !458
  %rem = urem i32 %call6, 32, !dbg !459
  store i32 %rem, ptr %bucket, align 4, !dbg !460
  %12 = load ptr, ptr %c, align 8, !dbg !461
  %list = getelementptr inbounds %struct.errormap, ptr %12, i32 0, i32 3, !dbg !462
  call void @INIT_HLIST_NODE(ptr noundef %list) #7, !dbg !463
  %13 = load ptr, ptr %c, align 8, !dbg !464
  %list7 = getelementptr inbounds %struct.errormap, ptr %13, i32 0, i32 3, !dbg !465
  %14 = load i32, ptr %bucket, align 4, !dbg !466
  %idxprom8 = sext i32 %14 to i64, !dbg !467
  %arrayidx9 = getelementptr [32 x %struct.hlist_head], ptr @hash_errmap, i64 0, i64 %idxprom8, !dbg !467
  call void @hlist_add_head(ptr noundef %list7, ptr noundef %arrayidx9) #7, !dbg !468
  br label %for.inc10, !dbg !469

for.inc10:                                        ; preds = %for.body2
  %15 = load ptr, ptr %c, align 8, !dbg !470
  %incdec.ptr = getelementptr %struct.errormap, ptr %15, i32 1, !dbg !470
  store ptr %incdec.ptr, ptr %c, align 8, !dbg !470
  br label %for.cond1, !dbg !471, !llvm.loop !472

for.end11:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucket) #6, !dbg !474
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6, !dbg !474
  ret i32 1, !dbg !475
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !476 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jhash(ptr noundef %key, i32 noundef %length, i32 noundef %initval) #4 align 16 !dbg !482 {
entry:
  %key.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %initval.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !489, metadata !DIExpression()), !dbg !501
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !490, metadata !DIExpression()), !dbg !502
  store i32 %initval, ptr %initval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initval.addr, metadata !491, metadata !DIExpression()), !dbg !503
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #6, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %a, metadata !492, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #6, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %b, metadata !493, metadata !DIExpression()), !dbg !506
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #6, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %c, metadata !494, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %k, metadata !495, metadata !DIExpression()), !dbg !509
  %0 = load ptr, ptr %key.addr, align 8, !dbg !510
  store ptr %0, ptr %k, align 8, !dbg !509
  %1 = load i32, ptr %length.addr, align 4, !dbg !511
  %add = add i32 -559038737, %1, !dbg !512
  %2 = load i32, ptr %initval.addr, align 4, !dbg !513
  %add1 = add i32 %add, %2, !dbg !514
  store i32 %add1, ptr %c, align 4, !dbg !515
  store i32 %add1, ptr %b, align 4, !dbg !516
  store i32 %add1, ptr %a, align 4, !dbg !517
  br label %while.cond, !dbg !518

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %length.addr, align 4, !dbg !519
  %cmp = icmp ugt i32 %3, 12, !dbg !520
  br i1 %cmp, label %while.body, label %while.end, !dbg !518

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %k, align 8, !dbg !521
  %call = call i32 @__get_unaligned_cpu32(ptr noundef %4) #7, !dbg !523
  %5 = load i32, ptr %a, align 4, !dbg !524
  %add2 = add i32 %5, %call, !dbg !524
  store i32 %add2, ptr %a, align 4, !dbg !524
  %6 = load ptr, ptr %k, align 8, !dbg !525
  %add.ptr = getelementptr i8, ptr %6, i64 4, !dbg !526
  %call3 = call i32 @__get_unaligned_cpu32(ptr noundef %add.ptr) #7, !dbg !527
  %7 = load i32, ptr %b, align 4, !dbg !528
  %add4 = add i32 %7, %call3, !dbg !528
  store i32 %add4, ptr %b, align 4, !dbg !528
  %8 = load ptr, ptr %k, align 8, !dbg !529
  %add.ptr5 = getelementptr i8, ptr %8, i64 8, !dbg !530
  %call6 = call i32 @__get_unaligned_cpu32(ptr noundef %add.ptr5) #7, !dbg !531
  %9 = load i32, ptr %c, align 4, !dbg !532
  %add7 = add i32 %9, %call6, !dbg !532
  store i32 %add7, ptr %c, align 4, !dbg !532
  %10 = load i32, ptr %c, align 4, !dbg !533
  %11 = load i32, ptr %a, align 4, !dbg !533
  %sub = sub i32 %11, %10, !dbg !533
  store i32 %sub, ptr %a, align 4, !dbg !533
  %12 = load i32, ptr %c, align 4, !dbg !533
  %call8 = call i32 @rol32(i32 noundef %12, i32 noundef 4) #7, !dbg !533
  %13 = load i32, ptr %a, align 4, !dbg !533
  %xor = xor i32 %13, %call8, !dbg !533
  store i32 %xor, ptr %a, align 4, !dbg !533
  %14 = load i32, ptr %b, align 4, !dbg !533
  %15 = load i32, ptr %c, align 4, !dbg !533
  %add9 = add i32 %15, %14, !dbg !533
  store i32 %add9, ptr %c, align 4, !dbg !533
  %16 = load i32, ptr %a, align 4, !dbg !533
  %17 = load i32, ptr %b, align 4, !dbg !533
  %sub10 = sub i32 %17, %16, !dbg !533
  store i32 %sub10, ptr %b, align 4, !dbg !533
  %18 = load i32, ptr %a, align 4, !dbg !533
  %call11 = call i32 @rol32(i32 noundef %18, i32 noundef 6) #7, !dbg !533
  %19 = load i32, ptr %b, align 4, !dbg !533
  %xor12 = xor i32 %19, %call11, !dbg !533
  store i32 %xor12, ptr %b, align 4, !dbg !533
  %20 = load i32, ptr %c, align 4, !dbg !533
  %21 = load i32, ptr %a, align 4, !dbg !533
  %add13 = add i32 %21, %20, !dbg !533
  store i32 %add13, ptr %a, align 4, !dbg !533
  %22 = load i32, ptr %b, align 4, !dbg !533
  %23 = load i32, ptr %c, align 4, !dbg !533
  %sub14 = sub i32 %23, %22, !dbg !533
  store i32 %sub14, ptr %c, align 4, !dbg !533
  %24 = load i32, ptr %b, align 4, !dbg !533
  %call15 = call i32 @rol32(i32 noundef %24, i32 noundef 8) #7, !dbg !533
  %25 = load i32, ptr %c, align 4, !dbg !533
  %xor16 = xor i32 %25, %call15, !dbg !533
  store i32 %xor16, ptr %c, align 4, !dbg !533
  %26 = load i32, ptr %a, align 4, !dbg !533
  %27 = load i32, ptr %b, align 4, !dbg !533
  %add17 = add i32 %27, %26, !dbg !533
  store i32 %add17, ptr %b, align 4, !dbg !533
  %28 = load i32, ptr %c, align 4, !dbg !533
  %29 = load i32, ptr %a, align 4, !dbg !533
  %sub18 = sub i32 %29, %28, !dbg !533
  store i32 %sub18, ptr %a, align 4, !dbg !533
  %30 = load i32, ptr %c, align 4, !dbg !533
  %call19 = call i32 @rol32(i32 noundef %30, i32 noundef 16) #7, !dbg !533
  %31 = load i32, ptr %a, align 4, !dbg !533
  %xor20 = xor i32 %31, %call19, !dbg !533
  store i32 %xor20, ptr %a, align 4, !dbg !533
  %32 = load i32, ptr %b, align 4, !dbg !533
  %33 = load i32, ptr %c, align 4, !dbg !533
  %add21 = add i32 %33, %32, !dbg !533
  store i32 %add21, ptr %c, align 4, !dbg !533
  %34 = load i32, ptr %a, align 4, !dbg !533
  %35 = load i32, ptr %b, align 4, !dbg !533
  %sub22 = sub i32 %35, %34, !dbg !533
  store i32 %sub22, ptr %b, align 4, !dbg !533
  %36 = load i32, ptr %a, align 4, !dbg !533
  %call23 = call i32 @rol32(i32 noundef %36, i32 noundef 19) #7, !dbg !533
  %37 = load i32, ptr %b, align 4, !dbg !533
  %xor24 = xor i32 %37, %call23, !dbg !533
  store i32 %xor24, ptr %b, align 4, !dbg !533
  %38 = load i32, ptr %c, align 4, !dbg !533
  %39 = load i32, ptr %a, align 4, !dbg !533
  %add25 = add i32 %39, %38, !dbg !533
  store i32 %add25, ptr %a, align 4, !dbg !533
  %40 = load i32, ptr %b, align 4, !dbg !533
  %41 = load i32, ptr %c, align 4, !dbg !533
  %sub26 = sub i32 %41, %40, !dbg !533
  store i32 %sub26, ptr %c, align 4, !dbg !533
  %42 = load i32, ptr %b, align 4, !dbg !533
  %call27 = call i32 @rol32(i32 noundef %42, i32 noundef 4) #7, !dbg !533
  %43 = load i32, ptr %c, align 4, !dbg !533
  %xor28 = xor i32 %43, %call27, !dbg !533
  store i32 %xor28, ptr %c, align 4, !dbg !533
  %44 = load i32, ptr %a, align 4, !dbg !533
  %45 = load i32, ptr %b, align 4, !dbg !533
  %add29 = add i32 %45, %44, !dbg !533
  store i32 %add29, ptr %b, align 4, !dbg !533
  %46 = load i32, ptr %length.addr, align 4, !dbg !535
  %sub30 = sub i32 %46, 12, !dbg !535
  store i32 %sub30, ptr %length.addr, align 4, !dbg !535
  %47 = load ptr, ptr %k, align 8, !dbg !536
  %add.ptr31 = getelementptr i8, ptr %47, i64 12, !dbg !536
  store ptr %add.ptr31, ptr %k, align 8, !dbg !536
  br label %while.cond, !dbg !518, !llvm.loop !537

while.end:                                        ; preds = %while.cond
  %48 = load i32, ptr %length.addr, align 4, !dbg !539
  switch i32 %48, label %sw.epilog [
    i32 12, label %sw.bb
    i32 11, label %sw.bb33
    i32 10, label %sw.bb38
    i32 9, label %sw.bb43
    i32 8, label %sw.bb47
    i32 7, label %sw.bb52
    i32 6, label %sw.bb57
    i32 5, label %sw.bb62
    i32 4, label %sw.bb66
    i32 3, label %sw.bb71
    i32 2, label %sw.bb76
    i32 1, label %sw.bb81
    i32 0, label %sw.epilog
  ], !dbg !540

sw.bb:                                            ; preds = %while.end
  %49 = load ptr, ptr %k, align 8, !dbg !541
  %arrayidx = getelementptr i8, ptr %49, i64 11, !dbg !541
  %50 = load i8, ptr %arrayidx, align 1, !dbg !541
  %conv = zext i8 %50 to i32, !dbg !543
  %shl = shl i32 %conv, 24, !dbg !544
  %51 = load i32, ptr %c, align 4, !dbg !545
  %add32 = add i32 %51, %shl, !dbg !545
  store i32 %add32, ptr %c, align 4, !dbg !545
  br label %sw.bb33, !dbg !546

sw.bb33:                                          ; preds = %while.end, %sw.bb
  %52 = load ptr, ptr %k, align 8, !dbg !547
  %arrayidx34 = getelementptr i8, ptr %52, i64 10, !dbg !547
  %53 = load i8, ptr %arrayidx34, align 1, !dbg !547
  %conv35 = zext i8 %53 to i32, !dbg !548
  %shl36 = shl i32 %conv35, 16, !dbg !549
  %54 = load i32, ptr %c, align 4, !dbg !550
  %add37 = add i32 %54, %shl36, !dbg !550
  store i32 %add37, ptr %c, align 4, !dbg !550
  br label %sw.bb38, !dbg !551

sw.bb38:                                          ; preds = %while.end, %sw.bb33
  %55 = load ptr, ptr %k, align 8, !dbg !552
  %arrayidx39 = getelementptr i8, ptr %55, i64 9, !dbg !552
  %56 = load i8, ptr %arrayidx39, align 1, !dbg !552
  %conv40 = zext i8 %56 to i32, !dbg !553
  %shl41 = shl i32 %conv40, 8, !dbg !554
  %57 = load i32, ptr %c, align 4, !dbg !555
  %add42 = add i32 %57, %shl41, !dbg !555
  store i32 %add42, ptr %c, align 4, !dbg !555
  br label %sw.bb43, !dbg !556

sw.bb43:                                          ; preds = %while.end, %sw.bb38
  %58 = load ptr, ptr %k, align 8, !dbg !557
  %arrayidx44 = getelementptr i8, ptr %58, i64 8, !dbg !557
  %59 = load i8, ptr %arrayidx44, align 1, !dbg !557
  %conv45 = zext i8 %59 to i32, !dbg !557
  %60 = load i32, ptr %c, align 4, !dbg !558
  %add46 = add i32 %60, %conv45, !dbg !558
  store i32 %add46, ptr %c, align 4, !dbg !558
  br label %sw.bb47, !dbg !559

sw.bb47:                                          ; preds = %while.end, %sw.bb43
  %61 = load ptr, ptr %k, align 8, !dbg !560
  %arrayidx48 = getelementptr i8, ptr %61, i64 7, !dbg !560
  %62 = load i8, ptr %arrayidx48, align 1, !dbg !560
  %conv49 = zext i8 %62 to i32, !dbg !561
  %shl50 = shl i32 %conv49, 24, !dbg !562
  %63 = load i32, ptr %b, align 4, !dbg !563
  %add51 = add i32 %63, %shl50, !dbg !563
  store i32 %add51, ptr %b, align 4, !dbg !563
  br label %sw.bb52, !dbg !564

sw.bb52:                                          ; preds = %while.end, %sw.bb47
  %64 = load ptr, ptr %k, align 8, !dbg !565
  %arrayidx53 = getelementptr i8, ptr %64, i64 6, !dbg !565
  %65 = load i8, ptr %arrayidx53, align 1, !dbg !565
  %conv54 = zext i8 %65 to i32, !dbg !566
  %shl55 = shl i32 %conv54, 16, !dbg !567
  %66 = load i32, ptr %b, align 4, !dbg !568
  %add56 = add i32 %66, %shl55, !dbg !568
  store i32 %add56, ptr %b, align 4, !dbg !568
  br label %sw.bb57, !dbg !569

sw.bb57:                                          ; preds = %while.end, %sw.bb52
  %67 = load ptr, ptr %k, align 8, !dbg !570
  %arrayidx58 = getelementptr i8, ptr %67, i64 5, !dbg !570
  %68 = load i8, ptr %arrayidx58, align 1, !dbg !570
  %conv59 = zext i8 %68 to i32, !dbg !571
  %shl60 = shl i32 %conv59, 8, !dbg !572
  %69 = load i32, ptr %b, align 4, !dbg !573
  %add61 = add i32 %69, %shl60, !dbg !573
  store i32 %add61, ptr %b, align 4, !dbg !573
  br label %sw.bb62, !dbg !574

sw.bb62:                                          ; preds = %while.end, %sw.bb57
  %70 = load ptr, ptr %k, align 8, !dbg !575
  %arrayidx63 = getelementptr i8, ptr %70, i64 4, !dbg !575
  %71 = load i8, ptr %arrayidx63, align 1, !dbg !575
  %conv64 = zext i8 %71 to i32, !dbg !575
  %72 = load i32, ptr %b, align 4, !dbg !576
  %add65 = add i32 %72, %conv64, !dbg !576
  store i32 %add65, ptr %b, align 4, !dbg !576
  br label %sw.bb66, !dbg !577

sw.bb66:                                          ; preds = %while.end, %sw.bb62
  %73 = load ptr, ptr %k, align 8, !dbg !578
  %arrayidx67 = getelementptr i8, ptr %73, i64 3, !dbg !578
  %74 = load i8, ptr %arrayidx67, align 1, !dbg !578
  %conv68 = zext i8 %74 to i32, !dbg !579
  %shl69 = shl i32 %conv68, 24, !dbg !580
  %75 = load i32, ptr %a, align 4, !dbg !581
  %add70 = add i32 %75, %shl69, !dbg !581
  store i32 %add70, ptr %a, align 4, !dbg !581
  br label %sw.bb71, !dbg !582

sw.bb71:                                          ; preds = %while.end, %sw.bb66
  %76 = load ptr, ptr %k, align 8, !dbg !583
  %arrayidx72 = getelementptr i8, ptr %76, i64 2, !dbg !583
  %77 = load i8, ptr %arrayidx72, align 1, !dbg !583
  %conv73 = zext i8 %77 to i32, !dbg !584
  %shl74 = shl i32 %conv73, 16, !dbg !585
  %78 = load i32, ptr %a, align 4, !dbg !586
  %add75 = add i32 %78, %shl74, !dbg !586
  store i32 %add75, ptr %a, align 4, !dbg !586
  br label %sw.bb76, !dbg !587

sw.bb76:                                          ; preds = %while.end, %sw.bb71
  %79 = load ptr, ptr %k, align 8, !dbg !588
  %arrayidx77 = getelementptr i8, ptr %79, i64 1, !dbg !588
  %80 = load i8, ptr %arrayidx77, align 1, !dbg !588
  %conv78 = zext i8 %80 to i32, !dbg !589
  %shl79 = shl i32 %conv78, 8, !dbg !590
  %81 = load i32, ptr %a, align 4, !dbg !591
  %add80 = add i32 %81, %shl79, !dbg !591
  store i32 %add80, ptr %a, align 4, !dbg !591
  br label %sw.bb81, !dbg !592

sw.bb81:                                          ; preds = %while.end, %sw.bb76
  %82 = load ptr, ptr %k, align 8, !dbg !593
  %arrayidx82 = getelementptr i8, ptr %82, i64 0, !dbg !593
  %83 = load i8, ptr %arrayidx82, align 1, !dbg !593
  %conv83 = zext i8 %83 to i32, !dbg !593
  %84 = load i32, ptr %a, align 4, !dbg !594
  %add84 = add i32 %84, %conv83, !dbg !594
  store i32 %add84, ptr %a, align 4, !dbg !594
  %85 = load i32, ptr %b, align 4, !dbg !595
  %86 = load i32, ptr %c, align 4, !dbg !595
  %xor85 = xor i32 %86, %85, !dbg !595
  store i32 %xor85, ptr %c, align 4, !dbg !595
  %87 = load i32, ptr %b, align 4, !dbg !595
  %call86 = call i32 @rol32(i32 noundef %87, i32 noundef 14) #7, !dbg !595
  %88 = load i32, ptr %c, align 4, !dbg !595
  %sub87 = sub i32 %88, %call86, !dbg !595
  store i32 %sub87, ptr %c, align 4, !dbg !595
  %89 = load i32, ptr %c, align 4, !dbg !595
  %90 = load i32, ptr %a, align 4, !dbg !595
  %xor88 = xor i32 %90, %89, !dbg !595
  store i32 %xor88, ptr %a, align 4, !dbg !595
  %91 = load i32, ptr %c, align 4, !dbg !595
  %call89 = call i32 @rol32(i32 noundef %91, i32 noundef 11) #7, !dbg !595
  %92 = load i32, ptr %a, align 4, !dbg !595
  %sub90 = sub i32 %92, %call89, !dbg !595
  store i32 %sub90, ptr %a, align 4, !dbg !595
  %93 = load i32, ptr %a, align 4, !dbg !595
  %94 = load i32, ptr %b, align 4, !dbg !595
  %xor91 = xor i32 %94, %93, !dbg !595
  store i32 %xor91, ptr %b, align 4, !dbg !595
  %95 = load i32, ptr %a, align 4, !dbg !595
  %call92 = call i32 @rol32(i32 noundef %95, i32 noundef 25) #7, !dbg !595
  %96 = load i32, ptr %b, align 4, !dbg !595
  %sub93 = sub i32 %96, %call92, !dbg !595
  store i32 %sub93, ptr %b, align 4, !dbg !595
  %97 = load i32, ptr %b, align 4, !dbg !595
  %98 = load i32, ptr %c, align 4, !dbg !595
  %xor94 = xor i32 %98, %97, !dbg !595
  store i32 %xor94, ptr %c, align 4, !dbg !595
  %99 = load i32, ptr %b, align 4, !dbg !595
  %call95 = call i32 @rol32(i32 noundef %99, i32 noundef 16) #7, !dbg !595
  %100 = load i32, ptr %c, align 4, !dbg !595
  %sub96 = sub i32 %100, %call95, !dbg !595
  store i32 %sub96, ptr %c, align 4, !dbg !595
  %101 = load i32, ptr %c, align 4, !dbg !595
  %102 = load i32, ptr %a, align 4, !dbg !595
  %xor97 = xor i32 %102, %101, !dbg !595
  store i32 %xor97, ptr %a, align 4, !dbg !595
  %103 = load i32, ptr %c, align 4, !dbg !595
  %call98 = call i32 @rol32(i32 noundef %103, i32 noundef 4) #7, !dbg !595
  %104 = load i32, ptr %a, align 4, !dbg !595
  %sub99 = sub i32 %104, %call98, !dbg !595
  store i32 %sub99, ptr %a, align 4, !dbg !595
  %105 = load i32, ptr %a, align 4, !dbg !595
  %106 = load i32, ptr %b, align 4, !dbg !595
  %xor100 = xor i32 %106, %105, !dbg !595
  store i32 %xor100, ptr %b, align 4, !dbg !595
  %107 = load i32, ptr %a, align 4, !dbg !595
  %call101 = call i32 @rol32(i32 noundef %107, i32 noundef 14) #7, !dbg !595
  %108 = load i32, ptr %b, align 4, !dbg !595
  %sub102 = sub i32 %108, %call101, !dbg !595
  store i32 %sub102, ptr %b, align 4, !dbg !595
  %109 = load i32, ptr %b, align 4, !dbg !595
  %110 = load i32, ptr %c, align 4, !dbg !595
  %xor103 = xor i32 %110, %109, !dbg !595
  store i32 %xor103, ptr %c, align 4, !dbg !595
  %111 = load i32, ptr %b, align 4, !dbg !595
  %call104 = call i32 @rol32(i32 noundef %111, i32 noundef 24) #7, !dbg !595
  %112 = load i32, ptr %c, align 4, !dbg !595
  %sub105 = sub i32 %112, %call104, !dbg !595
  store i32 %sub105, ptr %c, align 4, !dbg !595
  br label %sw.epilog, !dbg !597

sw.epilog:                                        ; preds = %while.end, %while.end, %sw.bb81
  %113 = load i32, ptr %c, align 4, !dbg !598
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6, !dbg !599
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #6, !dbg !599
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #6, !dbg !599
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #6, !dbg !599
  ret i32 %113, !dbg !600
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_HLIST_NODE(ptr noundef %h) #4 align 16 !dbg !601 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !606, metadata !DIExpression()), !dbg !607
  %0 = load ptr, ptr %h.addr, align 8, !dbg !608
  %next = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !609
  store ptr null, ptr %next, align 8, !dbg !610
  %1 = load ptr, ptr %h.addr, align 8, !dbg !611
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1, !dbg !612
  store ptr null, ptr %pprev, align 8, !dbg !613
  ret void, !dbg !614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head(ptr noundef %n, ptr noundef %h) #4 align 16 !dbg !615 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !620, metadata !DIExpression()), !dbg !623
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !621, metadata !DIExpression()), !dbg !624
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #6, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %first, metadata !622, metadata !DIExpression()), !dbg !626
  %0 = load ptr, ptr %h.addr, align 8, !dbg !627
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !628
  %1 = load ptr, ptr %first1, align 8, !dbg !628
  store ptr %1, ptr %first, align 8, !dbg !626
  br label %do.body, !dbg !629

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !630

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !632

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !632

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !630

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %first, align 8, !dbg !634
  %3 = load ptr, ptr %n.addr, align 8, !dbg !634
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !634
  store volatile ptr %2, ptr %next, align 8, !dbg !634
  br label %do.cond4, !dbg !634

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !634

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !630

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !630

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %first, align 8, !dbg !636
  %tobool = icmp ne ptr %4, null, !dbg !636
  br i1 %tobool, label %if.then, label %if.end, !dbg !638

if.then:                                          ; preds = %do.end7
  br label %do.body8, !dbg !639

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !640

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !642

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !642

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !640

do.body12:                                        ; preds = %do.end11
  %5 = load ptr, ptr %n.addr, align 8, !dbg !644
  %next13 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 0, !dbg !644
  %6 = load ptr, ptr %first, align 8, !dbg !644
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1, !dbg !644
  store volatile ptr %next13, ptr %pprev, align 8, !dbg !644
  br label %do.cond14, !dbg !644

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !644

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !640

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !640

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !640

if.end:                                           ; preds = %do.end17, %do.end7
  br label %do.body18, !dbg !646

do.body18:                                        ; preds = %if.end
  br label %do.body19, !dbg !647

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !649

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !649

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !647

do.body22:                                        ; preds = %do.end21
  %7 = load ptr, ptr %n.addr, align 8, !dbg !651
  %8 = load ptr, ptr %h.addr, align 8, !dbg !651
  %first23 = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !651
  store volatile ptr %7, ptr %first23, align 8, !dbg !651
  br label %do.cond24, !dbg !651

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !651

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !647

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !647

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !653

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !654

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !656

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !656

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !654

do.body32:                                        ; preds = %do.end31
  %9 = load ptr, ptr %h.addr, align 8, !dbg !658
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %9, i32 0, i32 0, !dbg !658
  %10 = load ptr, ptr %n.addr, align 8, !dbg !658
  %pprev34 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1, !dbg !658
  store volatile ptr %first33, ptr %pprev34, align 8, !dbg !658
  br label %do.cond35, !dbg !658

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !658

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !654

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !654

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #6, !dbg !660
  ret void, !dbg !660
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @p9_errstr2errno(ptr noundef %errstr, i32 noundef %len) #0 align 16 !dbg !661 {
entry:
  %errstr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %errno = alloca i32, align 4
  %c = alloca ptr, align 8
  %bucket = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %____ptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp20 = alloca i32, align 4
  store ptr %errstr, ptr %errstr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %errstr.addr, metadata !665, metadata !DIExpression()), !dbg !680
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !666, metadata !DIExpression()), !dbg !681
  call void @llvm.lifetime.start.p0(i64 4, ptr %errno) #6, !dbg !682
  call void @llvm.dbg.declare(metadata ptr %errno, metadata !667, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6, !dbg !684
  call void @llvm.dbg.declare(metadata ptr %c, metadata !668, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucket) #6, !dbg !686
  call void @llvm.dbg.declare(metadata ptr %bucket, metadata !669, metadata !DIExpression()), !dbg !687
  store i32 0, ptr %errno, align 4, !dbg !688
  store ptr null, ptr %c, align 8, !dbg !689
  %0 = load ptr, ptr %errstr.addr, align 8, !dbg !690
  %1 = load i32, ptr %len.addr, align 4, !dbg !691
  %call = call i32 @jhash(ptr noundef %0, i32 noundef %1, i32 noundef 0) #7, !dbg !692
  %rem = urem i32 %call, 32, !dbg !693
  store i32 %rem, ptr %bucket, align 4, !dbg !694
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #6, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !670, metadata !DIExpression()), !dbg !695
  %2 = load i32, ptr %bucket, align 4, !dbg !695
  %idxprom = sext i32 %2 to i64, !dbg !695
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @hash_errmap, i64 0, i64 %idxprom, !dbg !695
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !695
  %3 = load ptr, ptr %first, align 8, !dbg !695
  store ptr %3, ptr %____ptr, align 8, !dbg !695
  %4 = load ptr, ptr %____ptr, align 8, !dbg !695
  %tobool = icmp ne ptr %4, null, !dbg !695
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !695

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #6, !dbg !696
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !673, metadata !DIExpression()), !dbg !696
  %5 = load ptr, ptr %____ptr, align 8, !dbg !696
  store ptr %5, ptr %__mptr, align 8, !dbg !696
  %6 = load ptr, ptr %__mptr, align 8, !dbg !696
  %add.ptr = getelementptr i8, ptr %6, i64 -16, !dbg !696
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #6, !dbg !695
  %7 = load ptr, ptr %tmp1, align 8, !dbg !696
  br label %cond.end, !dbg !695

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !695

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ null, %cond.false ], !dbg !695
  store ptr %cond, ptr %tmp, align 8, !dbg !695
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #6, !dbg !697
  %8 = load ptr, ptr %tmp, align 8, !dbg !695
  store ptr %8, ptr %c, align 8, !dbg !697
  br label %for.cond, !dbg !697

for.cond:                                         ; preds = %cond.end13, %cond.end
  %9 = load ptr, ptr %c, align 8, !dbg !698
  %tobool2 = icmp ne ptr %9, null, !dbg !697
  br i1 %tobool2, label %for.body, label %for.end, !dbg !697

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %c, align 8, !dbg !699
  %namelen = getelementptr inbounds %struct.errormap, ptr %10, i32 0, i32 2, !dbg !702
  %11 = load i32, ptr %namelen, align 4, !dbg !702
  %12 = load i32, ptr %len.addr, align 4, !dbg !703
  %cmp = icmp eq i32 %11, %12, !dbg !704
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !705

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %c, align 8, !dbg !706
  %name = getelementptr inbounds %struct.errormap, ptr %13, i32 0, i32 0, !dbg !707
  %14 = load ptr, ptr %name, align 8, !dbg !707
  %15 = load ptr, ptr %errstr.addr, align 8, !dbg !708
  %16 = load i32, ptr %len.addr, align 4, !dbg !709
  %conv = sext i32 %16 to i64, !dbg !709
  %call3 = call i32 @memcmp(ptr noundef %14, ptr noundef %15, i64 noundef %conv) #7, !dbg !710
  %tobool4 = icmp ne i32 %call3, 0, !dbg !710
  br i1 %tobool4, label %if.end, label %if.then, !dbg !711

if.then:                                          ; preds = %land.lhs.true
  %17 = load ptr, ptr %c, align 8, !dbg !712
  %val = getelementptr inbounds %struct.errormap, ptr %17, i32 0, i32 1, !dbg !714
  %18 = load i32, ptr %val, align 8, !dbg !714
  store i32 %18, ptr %errno, align 4, !dbg !715
  br label %for.end, !dbg !716

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !717

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr5) #6, !dbg !718
  call void @llvm.dbg.declare(metadata ptr %____ptr5, metadata !675, metadata !DIExpression()), !dbg !718
  %19 = load ptr, ptr %c, align 8, !dbg !718
  %list = getelementptr inbounds %struct.errormap, ptr %19, i32 0, i32 3, !dbg !718
  %next = getelementptr inbounds %struct.hlist_node, ptr %list, i32 0, i32 0, !dbg !718
  %20 = load ptr, ptr %next, align 8, !dbg !718
  store ptr %20, ptr %____ptr5, align 8, !dbg !718
  %21 = load ptr, ptr %____ptr5, align 8, !dbg !718
  %tobool7 = icmp ne ptr %21, null, !dbg !718
  br i1 %tobool7, label %cond.true8, label %cond.false12, !dbg !718

cond.true8:                                       ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #6, !dbg !719
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !678, metadata !DIExpression()), !dbg !719
  %22 = load ptr, ptr %____ptr5, align 8, !dbg !719
  store ptr %22, ptr %__mptr9, align 8, !dbg !719
  %23 = load ptr, ptr %__mptr9, align 8, !dbg !719
  %add.ptr11 = getelementptr i8, ptr %23, i64 -16, !dbg !719
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !719
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #6, !dbg !718
  %24 = load ptr, ptr %tmp10, align 8, !dbg !719
  br label %cond.end13, !dbg !718

cond.false12:                                     ; preds = %for.inc
  br label %cond.end13, !dbg !718

cond.end13:                                       ; preds = %cond.false12, %cond.true8
  %cond14 = phi ptr [ %24, %cond.true8 ], [ null, %cond.false12 ], !dbg !718
  store ptr %cond14, ptr %tmp6, align 8, !dbg !718
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr5) #6, !dbg !698
  %25 = load ptr, ptr %tmp6, align 8, !dbg !718
  store ptr %25, ptr %c, align 8, !dbg !698
  br label %for.cond, !dbg !698, !llvm.loop !720

for.end:                                          ; preds = %if.then, %for.cond
  %26 = load i32, ptr %errno, align 4, !dbg !722
  %cmp15 = icmp eq i32 %26, 0, !dbg !724
  br i1 %cmp15, label %if.then17, label %if.end22, !dbg !725

if.then17:                                        ; preds = %for.end
  %27 = load ptr, ptr %errstr.addr, align 8, !dbg !726
  %28 = load i32, ptr %len.addr, align 4, !dbg !728
  %idxprom18 = sext i32 %28 to i64, !dbg !726
  %arrayidx19 = getelementptr i8, ptr %27, i64 %idxprom18, !dbg !726
  store i8 0, ptr %arrayidx19, align 1, !dbg !729
  br label %do.body, !dbg !730

do.body:                                          ; preds = %if.then17
  br label %do.cond, !dbg !732

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !732

do.end:                                           ; preds = %do.cond
  %29 = load ptr, ptr %errstr.addr, align 8, !dbg !730
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @__func__.p9_errstr2errno, ptr noundef %29) #8, !dbg !730
  store i32 %call21, ptr %tmp20, align 4, !dbg !732
  %30 = load i32, ptr %tmp20, align 4, !dbg !730
  store i32 526, ptr %errno, align 4, !dbg !734
  br label %if.end22, !dbg !735

if.end22:                                         ; preds = %do.end, %for.end
  %31 = load i32, ptr %errno, align 4, !dbg !736
  %sub = sub i32 0, %31, !dbg !737
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucket) #6, !dbg !738
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6, !dbg !738
  call void @llvm.lifetime.end.p0(i64 4, ptr %errno) #6, !dbg !738
  ret i32 %sub, !dbg !739
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !740 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !746 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_unaligned_cpu32(ptr noundef %p) #4 align 16 !dbg !750 {
entry:
  %p.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !754, metadata !DIExpression()), !dbg !756
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #6, !dbg !757
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !755, metadata !DIExpression()), !dbg !758
  %0 = load ptr, ptr %p.addr, align 8, !dbg !759
  store ptr %0, ptr %ptr, align 8, !dbg !758
  %1 = load ptr, ptr %ptr, align 8, !dbg !760
  %x = getelementptr inbounds %struct.__una_u32, ptr %1, i32 0, i32 0, !dbg !761
  %2 = load i32, ptr %x, align 1, !dbg !761
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #6, !dbg !762
  ret i32 %2, !dbg !763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 align 16 !dbg !764 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !769, metadata !DIExpression()), !dbg !771
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !770, metadata !DIExpression()), !dbg !772
  %0 = load i32, ptr %word.addr, align 4, !dbg !773
  %1 = load i32, ptr %shift.addr, align 4, !dbg !774
  %and = and i32 %1, 31, !dbg !775
  %shl = shl i32 %0, %and, !dbg !776
  %2 = load i32, ptr %word.addr, align 4, !dbg !777
  %3 = load i32, ptr %shift.addr, align 4, !dbg !778
  %sub = sub i32 0, %3, !dbg !779
  %and1 = and i32 %sub, 31, !dbg !780
  %shr = lshr i32 %2, %and1, !dbg !781
  %or = or i32 %shl, %shr, !dbg !782
  ret i32 %or, !dbg !783
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!407, !408, !409, !410, !411, !412, !413, !414}
!llvm.ident = !{!415}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hash_errmap", scope: !2, file: !3, line: 37, type: !403, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/9p/.error.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/9p/9pnet\22 -D KBUILD_BASENAME=\22error\22 -D KBUILD_MODNAME=\229pnet\22 -D __KBUILD_MODNAME=kmod_9pnet -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/9p/error.ll net/9p/error.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/9p/error.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b3583b16bab9093eef997313ebb77ab")
!4 = !{!5, !6, !23, !28, !34, !36}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "errormap", file: !3, line: 28, size: 256, elements: !8)
!8 = !{!9, !12, !14, !15}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !3, line: 29, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !7, file: !3, line: 30, baseType: !13, size: 32, offset: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !7, file: !3, line: 32, baseType: !13, size: 32, offset: 96)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !7, file: !3, line: 33, baseType: !16, size: 128, offset: 128)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !17, line: 198, size: 128, elements: !18)
!17 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !16, file: !17, line: 199, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !16, file: !17, line: 199, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !24, line: 21, baseType: !25)
!24 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !26, line: 27, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__una_u32", file: !31, line: 7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/unaligned/packed_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b314e2aed1a5593b28899e171e87b0c0")
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !30, file: !31, line: 7, baseType: !23, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!38 = !{!39, !41, !46, !52, !0, !54, !59, !64, !69, !71, !76, !78, !83, !85, !90, !95, !100, !102, !107, !112, !117, !119, !121, !123, !125, !128, !130, !132, !137, !139, !141, !143, !145, !150, !152, !154, !156, !158, !160, !162, !164, !166, !171, !173, !178, !183, !185, !187, !189, !191, !193, !195, !200, !202, !204, !209, !211, !213, !218, !220, !222, !224, !226, !228, !230, !232, !234, !239, !241, !243, !245, !250, !252, !257, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !295, !297, !299, !301, !303, !305, !307, !312, !314, !316, !318, !320, !322, !324, !329, !331, !333, !335, !340, !342, !344, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !382, !384, !386, !388, !393, !398}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_p9_error_init195", scope: !2, file: !3, line: 195, type: !5, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 376, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 47)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, elements: !50)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!50 = !{!51}
!51 = !DISubrange(count: 16)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_p9_errstr2errno196", scope: !2, file: !3, line: 230, type: !5, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 24)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 136, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 17)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 208, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 26)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !66, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 120, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 15)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !56, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 152, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 19)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !66, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 184, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 23)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 20)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 264, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 33)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !87, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 144, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 18)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 96, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 12)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 176, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 22)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !56, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !109, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !66, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !73, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !50)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !73, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !61, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 240, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 30)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !92, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !73, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !73, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !56, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 104, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 13)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !114, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !73, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !109, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !97, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !134, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 74, type: !66, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !80, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !80, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 200, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 25)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !92, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 272, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 34)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 216, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 27)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !80, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !104, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !134, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !114, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !61, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !114, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 224, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 28)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !73, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !109, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 232, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 29)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !80, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !73, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 248, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 31)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !61, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !87, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !87, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !66, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !56, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !134, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !127, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !87, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 288, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 36)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !97, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !168, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !66, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 40)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !236, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 368, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 46)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 168, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 21)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !80, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !147, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !61, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !134, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !66, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !259, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !61, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !92, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !197, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !104, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !92, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !114, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !206, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !73, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 400, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 50)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !87, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !109, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !92, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !97, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !80, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !109, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 80, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 10)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !66, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !147, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !147, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !127, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !215, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !309, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 296, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 37)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !114, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !66, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !92, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 112, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 14)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !147, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !80, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 32)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !66, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !259, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !114, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !92, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 151, type: !73, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !259, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !97, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !3, line: 154, type: !114, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !73, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !92, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !73, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !97, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 159, type: !104, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 160, type: !114, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 312, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 39)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !80, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !147, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !127, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 352, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 44)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 336, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 42)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "errmap", scope: !2, file: !3, line: 40, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32256, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 126)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 2048, elements: !347)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !17, line: 194, size: 64, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !404, file: !17, line: 195, baseType: !20, size: 64)
!407 = !{i32 7, !"Dwarf Version", i32 5}
!408 = !{i32 2, !"Debug Info Version", i32 3}
!409 = !{i32 1, !"wchar_size", i32 2}
!410 = !{i32 8, !"cf-protection-branch", i32 1}
!411 = !{i32 4, !"function_return_thunk_extern", i32 1}
!412 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!413 = !{i32 1, !"Code Model", i32 2}
!414 = !{i32 1, !"override-stack-alignment", i32 8}
!415 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!416 = distinct !DISubprogram(name: "p9_error_init", scope: !3, file: !3, line: 176, type: !417, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!13}
!419 = !{!420, !421}
!420 = !DILocalVariable(name: "c", scope: !416, file: !3, line: 178, type: !6)
!421 = !DILocalVariable(name: "bucket", scope: !416, file: !3, line: 179, type: !13)
!422 = !DILocation(line: 178, column: 2, scope: !416)
!423 = !DILocation(line: 178, column: 19, scope: !416)
!424 = !DILocation(line: 179, column: 2, scope: !416)
!425 = !DILocation(line: 179, column: 6, scope: !416)
!426 = !DILocation(line: 182, column: 14, scope: !427)
!427 = distinct !DILexicalBlock(scope: !416, file: !3, line: 182, column: 2)
!428 = !DILocation(line: 182, column: 7, scope: !427)
!429 = !DILocation(line: 182, column: 19, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !3, line: 182, column: 2)
!431 = !DILocation(line: 182, column: 26, scope: !430)
!432 = !DILocation(line: 182, column: 2, scope: !427)
!433 = !DILocation(line: 183, column: 3, scope: !430)
!434 = !DILocation(line: 182, column: 45, scope: !430)
!435 = !DILocation(line: 182, column: 2, scope: !430)
!436 = distinct !{!436, !432, !437, !438, !439}
!437 = !DILocation(line: 183, column: 3, scope: !427)
!438 = !{!"llvm.loop.mustprogress"}
!439 = !{!"llvm.loop.unroll.disable"}
!440 = !DILocation(line: 186, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !416, file: !3, line: 186, column: 2)
!442 = !DILocation(line: 186, column: 7, scope: !441)
!443 = !DILocation(line: 186, column: 19, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !3, line: 186, column: 2)
!445 = !DILocation(line: 186, column: 22, scope: !444)
!446 = !DILocation(line: 186, column: 2, scope: !441)
!447 = !DILocation(line: 187, column: 23, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !3, line: 186, column: 33)
!449 = !DILocation(line: 187, column: 26, scope: !448)
!450 = !DILocation(line: 187, column: 16, scope: !448)
!451 = !DILocation(line: 187, column: 3, scope: !448)
!452 = !DILocation(line: 187, column: 6, scope: !448)
!453 = !DILocation(line: 187, column: 14, scope: !448)
!454 = !DILocation(line: 188, column: 18, scope: !448)
!455 = !DILocation(line: 188, column: 21, scope: !448)
!456 = !DILocation(line: 188, column: 27, scope: !448)
!457 = !DILocation(line: 188, column: 30, scope: !448)
!458 = !DILocation(line: 188, column: 12, scope: !448)
!459 = !DILocation(line: 188, column: 42, scope: !448)
!460 = !DILocation(line: 188, column: 10, scope: !448)
!461 = !DILocation(line: 189, column: 20, scope: !448)
!462 = !DILocation(line: 189, column: 23, scope: !448)
!463 = !DILocation(line: 189, column: 3, scope: !448)
!464 = !DILocation(line: 190, column: 19, scope: !448)
!465 = !DILocation(line: 190, column: 22, scope: !448)
!466 = !DILocation(line: 190, column: 41, scope: !448)
!467 = !DILocation(line: 190, column: 29, scope: !448)
!468 = !DILocation(line: 190, column: 3, scope: !448)
!469 = !DILocation(line: 191, column: 2, scope: !448)
!470 = !DILocation(line: 186, column: 29, scope: !444)
!471 = !DILocation(line: 186, column: 2, scope: !444)
!472 = distinct !{!472, !446, !473, !438, !439}
!473 = !DILocation(line: 191, column: 2, scope: !441)
!474 = !DILocation(line: 194, column: 1, scope: !416)
!475 = !DILocation(line: 193, column: 2, scope: !416)
!476 = !DISubprogram(name: "strlen", scope: !477, file: !477, line: 128, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !481}
!480 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!482 = distinct !DISubprogram(name: "jhash", scope: !483, file: !483, line: 70, type: !484, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!483 = !DIFile(filename: "./include/linux/jhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca86fa12155f71794da0bd26a93ce792")
!484 = !DISubroutineType(types: !485)
!485 = !{!23, !486, !23, !23}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!488 = !{!489, !490, !491, !492, !493, !494, !495}
!489 = !DILocalVariable(name: "key", arg: 1, scope: !482, file: !483, line: 70, type: !486)
!490 = !DILocalVariable(name: "length", arg: 2, scope: !482, file: !483, line: 70, type: !23)
!491 = !DILocalVariable(name: "initval", arg: 3, scope: !482, file: !483, line: 70, type: !23)
!492 = !DILocalVariable(name: "a", scope: !482, file: !483, line: 72, type: !23)
!493 = !DILocalVariable(name: "b", scope: !482, file: !483, line: 72, type: !23)
!494 = !DILocalVariable(name: "c", scope: !482, file: !483, line: 72, type: !23)
!495 = !DILocalVariable(name: "k", scope: !482, file: !483, line: 73, type: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !24, line: 17, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !26, line: 21, baseType: !500)
!500 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!501 = !DILocation(line: 70, column: 37, scope: !482)
!502 = !DILocation(line: 70, column: 46, scope: !482)
!503 = !DILocation(line: 70, column: 58, scope: !482)
!504 = !DILocation(line: 72, column: 2, scope: !482)
!505 = !DILocation(line: 72, column: 6, scope: !482)
!506 = !DILocation(line: 72, column: 9, scope: !482)
!507 = !DILocation(line: 72, column: 12, scope: !482)
!508 = !DILocation(line: 73, column: 2, scope: !482)
!509 = !DILocation(line: 73, column: 12, scope: !482)
!510 = !DILocation(line: 73, column: 16, scope: !482)
!511 = !DILocation(line: 76, column: 30, scope: !482)
!512 = !DILocation(line: 76, column: 28, scope: !482)
!513 = !DILocation(line: 76, column: 39, scope: !482)
!514 = !DILocation(line: 76, column: 37, scope: !482)
!515 = !DILocation(line: 76, column: 12, scope: !482)
!516 = !DILocation(line: 76, column: 8, scope: !482)
!517 = !DILocation(line: 76, column: 4, scope: !482)
!518 = !DILocation(line: 79, column: 2, scope: !482)
!519 = !DILocation(line: 79, column: 9, scope: !482)
!520 = !DILocation(line: 79, column: 16, scope: !482)
!521 = !DILocation(line: 80, column: 30, scope: !522)
!522 = distinct !DILexicalBlock(scope: !482, file: !483, line: 79, column: 22)
!523 = !DILocation(line: 80, column: 8, scope: !522)
!524 = !DILocation(line: 80, column: 5, scope: !522)
!525 = !DILocation(line: 81, column: 30, scope: !522)
!526 = !DILocation(line: 81, column: 32, scope: !522)
!527 = !DILocation(line: 81, column: 8, scope: !522)
!528 = !DILocation(line: 81, column: 5, scope: !522)
!529 = !DILocation(line: 82, column: 30, scope: !522)
!530 = !DILocation(line: 82, column: 32, scope: !522)
!531 = !DILocation(line: 82, column: 8, scope: !522)
!532 = !DILocation(line: 82, column: 5, scope: !522)
!533 = !DILocation(line: 83, column: 3, scope: !534)
!534 = distinct !DILexicalBlock(scope: !522, file: !483, line: 83, column: 3)
!535 = !DILocation(line: 84, column: 10, scope: !522)
!536 = !DILocation(line: 85, column: 5, scope: !522)
!537 = distinct !{!537, !518, !538, !438, !439}
!538 = !DILocation(line: 86, column: 2, scope: !482)
!539 = !DILocation(line: 88, column: 10, scope: !482)
!540 = !DILocation(line: 88, column: 2, scope: !482)
!541 = !DILocation(line: 89, column: 21, scope: !542)
!542 = distinct !DILexicalBlock(scope: !482, file: !483, line: 88, column: 18)
!543 = !DILocation(line: 89, column: 16, scope: !542)
!544 = !DILocation(line: 89, column: 26, scope: !542)
!545 = !DILocation(line: 89, column: 13, scope: !542)
!546 = !DILocation(line: 89, column: 11, scope: !542)
!547 = !DILocation(line: 90, column: 21, scope: !542)
!548 = !DILocation(line: 90, column: 16, scope: !542)
!549 = !DILocation(line: 90, column: 26, scope: !542)
!550 = !DILocation(line: 90, column: 13, scope: !542)
!551 = !DILocation(line: 90, column: 11, scope: !542)
!552 = !DILocation(line: 91, column: 21, scope: !542)
!553 = !DILocation(line: 91, column: 16, scope: !542)
!554 = !DILocation(line: 91, column: 25, scope: !542)
!555 = !DILocation(line: 91, column: 13, scope: !542)
!556 = !DILocation(line: 91, column: 11, scope: !542)
!557 = !DILocation(line: 92, column: 16, scope: !542)
!558 = !DILocation(line: 92, column: 13, scope: !542)
!559 = !DILocation(line: 92, column: 11, scope: !542)
!560 = !DILocation(line: 93, column: 21, scope: !542)
!561 = !DILocation(line: 93, column: 16, scope: !542)
!562 = !DILocation(line: 93, column: 25, scope: !542)
!563 = !DILocation(line: 93, column: 13, scope: !542)
!564 = !DILocation(line: 93, column: 11, scope: !542)
!565 = !DILocation(line: 94, column: 21, scope: !542)
!566 = !DILocation(line: 94, column: 16, scope: !542)
!567 = !DILocation(line: 94, column: 25, scope: !542)
!568 = !DILocation(line: 94, column: 13, scope: !542)
!569 = !DILocation(line: 94, column: 11, scope: !542)
!570 = !DILocation(line: 95, column: 21, scope: !542)
!571 = !DILocation(line: 95, column: 16, scope: !542)
!572 = !DILocation(line: 95, column: 25, scope: !542)
!573 = !DILocation(line: 95, column: 13, scope: !542)
!574 = !DILocation(line: 95, column: 11, scope: !542)
!575 = !DILocation(line: 96, column: 16, scope: !542)
!576 = !DILocation(line: 96, column: 13, scope: !542)
!577 = !DILocation(line: 96, column: 11, scope: !542)
!578 = !DILocation(line: 97, column: 21, scope: !542)
!579 = !DILocation(line: 97, column: 16, scope: !542)
!580 = !DILocation(line: 97, column: 25, scope: !542)
!581 = !DILocation(line: 97, column: 13, scope: !542)
!582 = !DILocation(line: 97, column: 11, scope: !542)
!583 = !DILocation(line: 98, column: 21, scope: !542)
!584 = !DILocation(line: 98, column: 16, scope: !542)
!585 = !DILocation(line: 98, column: 25, scope: !542)
!586 = !DILocation(line: 98, column: 13, scope: !542)
!587 = !DILocation(line: 98, column: 11, scope: !542)
!588 = !DILocation(line: 99, column: 21, scope: !542)
!589 = !DILocation(line: 99, column: 16, scope: !542)
!590 = !DILocation(line: 99, column: 25, scope: !542)
!591 = !DILocation(line: 99, column: 13, scope: !542)
!592 = !DILocation(line: 99, column: 11, scope: !542)
!593 = !DILocation(line: 100, column: 16, scope: !542)
!594 = !DILocation(line: 100, column: 13, scope: !542)
!595 = !DILocation(line: 101, column: 4, scope: !596)
!596 = distinct !DILexicalBlock(scope: !542, file: !483, line: 101, column: 4)
!597 = !DILocation(line: 102, column: 4, scope: !542)
!598 = !DILocation(line: 107, column: 9, scope: !482)
!599 = !DILocation(line: 108, column: 1, scope: !482)
!600 = !DILocation(line: 107, column: 2, scope: !482)
!601 = distinct !DISubprogram(name: "INIT_HLIST_NODE", scope: !602, file: !602, line: 934, type: !603, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !605)
!602 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!603 = !DISubroutineType(types: !604)
!604 = !{null, !20}
!605 = !{!606}
!606 = !DILocalVariable(name: "h", arg: 1, scope: !601, file: !602, line: 934, type: !20)
!607 = !DILocation(line: 934, column: 55, scope: !601)
!608 = !DILocation(line: 936, column: 2, scope: !601)
!609 = !DILocation(line: 936, column: 5, scope: !601)
!610 = !DILocation(line: 936, column: 10, scope: !601)
!611 = !DILocation(line: 937, column: 2, scope: !601)
!612 = !DILocation(line: 937, column: 5, scope: !601)
!613 = !DILocation(line: 937, column: 11, scope: !601)
!614 = !DILocation(line: 938, column: 1, scope: !601)
!615 = distinct !DISubprogram(name: "hlist_add_head", scope: !602, file: !602, line: 1021, type: !616, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !20, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!619 = !{!620, !621, !622}
!620 = !DILocalVariable(name: "n", arg: 1, scope: !615, file: !602, line: 1021, type: !20)
!621 = !DILocalVariable(name: "h", arg: 2, scope: !615, file: !602, line: 1021, type: !618)
!622 = !DILocalVariable(name: "first", scope: !615, file: !602, line: 1023, type: !20)
!623 = !DILocation(line: 1021, column: 54, scope: !615)
!624 = !DILocation(line: 1021, column: 76, scope: !615)
!625 = !DILocation(line: 1023, column: 2, scope: !615)
!626 = !DILocation(line: 1023, column: 21, scope: !615)
!627 = !DILocation(line: 1023, column: 29, scope: !615)
!628 = !DILocation(line: 1023, column: 32, scope: !615)
!629 = !DILocation(line: 1024, column: 2, scope: !615)
!630 = !DILocation(line: 1024, column: 2, scope: !631)
!631 = distinct !DILexicalBlock(scope: !615, file: !602, line: 1024, column: 2)
!632 = !DILocation(line: 1024, column: 2, scope: !633)
!633 = distinct !DILexicalBlock(scope: !631, file: !602, line: 1024, column: 2)
!634 = !DILocation(line: 1024, column: 2, scope: !635)
!635 = distinct !DILexicalBlock(scope: !631, file: !602, line: 1024, column: 2)
!636 = !DILocation(line: 1025, column: 6, scope: !637)
!637 = distinct !DILexicalBlock(scope: !615, file: !602, line: 1025, column: 6)
!638 = !DILocation(line: 1025, column: 6, scope: !615)
!639 = !DILocation(line: 1026, column: 3, scope: !637)
!640 = !DILocation(line: 1026, column: 3, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !602, line: 1026, column: 3)
!642 = !DILocation(line: 1026, column: 3, scope: !643)
!643 = distinct !DILexicalBlock(scope: !641, file: !602, line: 1026, column: 3)
!644 = !DILocation(line: 1026, column: 3, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !602, line: 1026, column: 3)
!646 = !DILocation(line: 1027, column: 2, scope: !615)
!647 = !DILocation(line: 1027, column: 2, scope: !648)
!648 = distinct !DILexicalBlock(scope: !615, file: !602, line: 1027, column: 2)
!649 = !DILocation(line: 1027, column: 2, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !602, line: 1027, column: 2)
!651 = !DILocation(line: 1027, column: 2, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !602, line: 1027, column: 2)
!653 = !DILocation(line: 1028, column: 2, scope: !615)
!654 = !DILocation(line: 1028, column: 2, scope: !655)
!655 = distinct !DILexicalBlock(scope: !615, file: !602, line: 1028, column: 2)
!656 = !DILocation(line: 1028, column: 2, scope: !657)
!657 = distinct !DILexicalBlock(scope: !655, file: !602, line: 1028, column: 2)
!658 = !DILocation(line: 1028, column: 2, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !602, line: 1028, column: 2)
!660 = !DILocation(line: 1029, column: 1, scope: !615)
!661 = distinct !DISubprogram(name: "p9_errstr2errno", scope: !3, file: !3, line: 204, type: !662, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{!13, !10, !13}
!664 = !{!665, !666, !667, !668, !669, !670, !673, !675, !678}
!665 = !DILocalVariable(name: "errstr", arg: 1, scope: !661, file: !3, line: 204, type: !10)
!666 = !DILocalVariable(name: "len", arg: 2, scope: !661, file: !3, line: 204, type: !13)
!667 = !DILocalVariable(name: "errno", scope: !661, file: !3, line: 206, type: !13)
!668 = !DILocalVariable(name: "c", scope: !661, file: !3, line: 207, type: !6)
!669 = !DILocalVariable(name: "bucket", scope: !661, file: !3, line: 208, type: !13)
!670 = !DILocalVariable(name: "____ptr", scope: !671, file: !3, line: 213, type: !20)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 213, column: 2)
!672 = distinct !DILexicalBlock(scope: !661, file: !3, line: 213, column: 2)
!673 = !DILocalVariable(name: "__mptr", scope: !674, file: !3, line: 213, type: !5)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 213, column: 2)
!675 = !DILocalVariable(name: "____ptr", scope: !676, file: !3, line: 213, type: !20)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 213, column: 2)
!677 = distinct !DILexicalBlock(scope: !672, file: !3, line: 213, column: 2)
!678 = !DILocalVariable(name: "__mptr", scope: !679, file: !3, line: 213, type: !5)
!679 = distinct !DILexicalBlock(scope: !676, file: !3, line: 213, column: 2)
!680 = !DILocation(line: 204, column: 27, scope: !661)
!681 = !DILocation(line: 204, column: 39, scope: !661)
!682 = !DILocation(line: 206, column: 2, scope: !661)
!683 = !DILocation(line: 206, column: 6, scope: !661)
!684 = !DILocation(line: 207, column: 2, scope: !661)
!685 = !DILocation(line: 207, column: 19, scope: !661)
!686 = !DILocation(line: 208, column: 2, scope: !661)
!687 = !DILocation(line: 208, column: 6, scope: !661)
!688 = !DILocation(line: 210, column: 8, scope: !661)
!689 = !DILocation(line: 211, column: 4, scope: !661)
!690 = !DILocation(line: 212, column: 17, scope: !661)
!691 = !DILocation(line: 212, column: 25, scope: !661)
!692 = !DILocation(line: 212, column: 11, scope: !661)
!693 = !DILocation(line: 212, column: 33, scope: !661)
!694 = !DILocation(line: 212, column: 9, scope: !661)
!695 = !DILocation(line: 213, column: 2, scope: !671)
!696 = !DILocation(line: 213, column: 2, scope: !674)
!697 = !DILocation(line: 213, column: 2, scope: !672)
!698 = !DILocation(line: 213, column: 2, scope: !677)
!699 = !DILocation(line: 214, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 214, column: 7)
!701 = distinct !DILexicalBlock(scope: !677, file: !3, line: 213, column: 54)
!702 = !DILocation(line: 214, column: 10, scope: !700)
!703 = !DILocation(line: 214, column: 21, scope: !700)
!704 = !DILocation(line: 214, column: 18, scope: !700)
!705 = !DILocation(line: 214, column: 25, scope: !700)
!706 = !DILocation(line: 214, column: 36, scope: !700)
!707 = !DILocation(line: 214, column: 39, scope: !700)
!708 = !DILocation(line: 214, column: 45, scope: !700)
!709 = !DILocation(line: 214, column: 53, scope: !700)
!710 = !DILocation(line: 214, column: 29, scope: !700)
!711 = !DILocation(line: 214, column: 7, scope: !701)
!712 = !DILocation(line: 215, column: 12, scope: !713)
!713 = distinct !DILexicalBlock(scope: !700, file: !3, line: 214, column: 59)
!714 = !DILocation(line: 215, column: 15, scope: !713)
!715 = !DILocation(line: 215, column: 10, scope: !713)
!716 = !DILocation(line: 216, column: 4, scope: !713)
!717 = !DILocation(line: 218, column: 2, scope: !701)
!718 = !DILocation(line: 213, column: 2, scope: !676)
!719 = !DILocation(line: 213, column: 2, scope: !679)
!720 = distinct !{!720, !697, !721, !438, !439}
!721 = !DILocation(line: 218, column: 2, scope: !672)
!722 = !DILocation(line: 220, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !661, file: !3, line: 220, column: 6)
!724 = !DILocation(line: 220, column: 12, scope: !723)
!725 = !DILocation(line: 220, column: 6, scope: !661)
!726 = !DILocation(line: 222, column: 3, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !3, line: 220, column: 18)
!728 = !DILocation(line: 222, column: 10, scope: !727)
!729 = !DILocation(line: 222, column: 15, scope: !727)
!730 = !DILocation(line: 223, column: 3, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 223, column: 3)
!732 = !DILocation(line: 223, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !731, file: !3, line: 223, column: 3)
!734 = !DILocation(line: 225, column: 9, scope: !727)
!735 = !DILocation(line: 226, column: 2, scope: !727)
!736 = !DILocation(line: 228, column: 10, scope: !661)
!737 = !DILocation(line: 228, column: 9, scope: !661)
!738 = !DILocation(line: 229, column: 1, scope: !661)
!739 = !DILocation(line: 228, column: 2, scope: !661)
!740 = !DISubprogram(name: "memcmp", scope: !477, file: !477, line: 196, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!741 = !DISubroutineType(types: !742)
!742 = !{!13, !486, !486, !743}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !744, line: 72, baseType: !745)
!744 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !744, line: 16, baseType: !480)
!746 = !DISubprogram(name: "_printk", scope: !747, file: !747, line: 153, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!748 = !DISubroutineType(types: !749)
!749 = !{!13, !481, null}
!750 = distinct !DISubprogram(name: "__get_unaligned_cpu32", scope: !31, file: !31, line: 16, type: !751, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!23, !486}
!753 = !{!754, !755}
!754 = !DILocalVariable(name: "p", arg: 1, scope: !750, file: !31, line: 16, type: !486)
!755 = !DILocalVariable(name: "ptr", scope: !750, file: !31, line: 18, type: !28)
!756 = !DILocation(line: 16, column: 53, scope: !750)
!757 = !DILocation(line: 18, column: 2, scope: !750)
!758 = !DILocation(line: 18, column: 26, scope: !750)
!759 = !DILocation(line: 18, column: 58, scope: !750)
!760 = !DILocation(line: 19, column: 9, scope: !750)
!761 = !DILocation(line: 19, column: 14, scope: !750)
!762 = !DILocation(line: 20, column: 1, scope: !750)
!763 = !DILocation(line: 19, column: 2, scope: !750)
!764 = distinct !DISubprogram(name: "rol32", scope: !765, file: !765, line: 125, type: !766, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !768)
!765 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!766 = !DISubroutineType(types: !767)
!767 = !{!25, !25, !27}
!768 = !{!769, !770}
!769 = !DILocalVariable(name: "word", arg: 1, scope: !764, file: !765, line: 125, type: !25)
!770 = !DILocalVariable(name: "shift", arg: 2, scope: !764, file: !765, line: 125, type: !27)
!771 = !DILocation(line: 125, column: 33, scope: !764)
!772 = !DILocation(line: 125, column: 52, scope: !764)
!773 = !DILocation(line: 127, column: 10, scope: !764)
!774 = !DILocation(line: 127, column: 19, scope: !764)
!775 = !DILocation(line: 127, column: 25, scope: !764)
!776 = !DILocation(line: 127, column: 15, scope: !764)
!777 = !DILocation(line: 127, column: 35, scope: !764)
!778 = !DILocation(line: 127, column: 46, scope: !764)
!779 = !DILocation(line: 127, column: 45, scope: !764)
!780 = !DILocation(line: 127, column: 53, scope: !764)
!781 = !DILocation(line: 127, column: 40, scope: !764)
!782 = !DILocation(line: 127, column: 32, scope: !764)
!783 = !DILocation(line: 127, column: 2, scope: !764)
