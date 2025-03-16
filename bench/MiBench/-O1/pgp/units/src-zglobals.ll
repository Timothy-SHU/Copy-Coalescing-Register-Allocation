; ModuleID = 'src/zglobals.c'
source_filename = "src/zglobals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unexpected end of zip file\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Zip file structure invalid\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Internal logic error\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Entry too big to split\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Invalid comment format\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Interrupted\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Temporary file failure\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Input file read failure\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Nothing to do!\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Missing or empty zip file\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Output file write failure\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Could not create output file\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Invalid command arguments\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"File not found or no read permission\00", align 1
@errors = dso_local local_unnamed_addr global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str, ptr @.str.15], align 16
@method = dso_local local_unnamed_addr global i32 -1, align 4
@level = dso_local local_unnamed_addr global i32 5, align 4
@special = dso_local local_unnamed_addr global ptr null, align 8

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
