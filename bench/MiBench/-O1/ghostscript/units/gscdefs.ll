; ModuleID = 'gscdefs.c'
source_filename = "gscdefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gs_buildtime = dso_local local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"Copyright (C) 1997 Aladdin Enterprises, Menlo Park, CA.  All rights reserved.\00", align 1
@gs_copyright = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Aladdin Ghostscript\00", align 1
@gs_product = dso_local local_unnamed_addr global ptr @.str.1, align 8
@gs_revision = dso_local local_unnamed_addr global i64 500, align 8
@gs_revisiondate = dso_local local_unnamed_addr global i64 19970606, align 8
@gs_serialnumber = dso_local local_unnamed_addr global i64 42, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"../share/ghostscript/5.0/doc\00", align 1
@gs_doc_directory = dso_local local_unnamed_addr global ptr @.str.2, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"../share/ghostscript/5.0:../share/ghostscript/fonts\00", align 1
@gs_lib_default_path = dso_local local_unnamed_addr global ptr @.str.3, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"gs_init.ps\00", align 1
@gs_init_file = dso_local local_unnamed_addr global ptr @.str.4, align 8

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
