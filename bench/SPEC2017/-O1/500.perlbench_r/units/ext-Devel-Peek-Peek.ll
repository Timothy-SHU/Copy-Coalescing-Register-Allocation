; ModuleID = 'ext/Devel-Peek/Peek.c'
source_filename = "ext/Devel-Peek/Peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.custom_op = type { i32, ptr, ptr, i32, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.0, %union._xivu }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%union._xivu = type { i64 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }
%union._xnvu = type { double }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.3, ptr, %union.anon.4, %union.anon.5, %union.anon.6, ptr, %union.anon.7, ptr, i32, i32, i32 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.av = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.binop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }

@.str = private unnamed_addr constant [22 x i8] c"ext/Devel-Peek/Peek.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Devel::Peek::mstat\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Devel::Peek::fill_mstats\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Devel::Peek::mstats_fillhash\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\\%;$\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Devel::Peek::mstats2hash\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"$\\%;$\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Devel::Peek::Dump\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Devel::Peek::DumpArray\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Devel::Peek::DumpProg\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Devel::Peek::SvREFCNT\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\\[$@%&*]\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Devel::Peek::DeadCode\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Devel::Peek::CvGV\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Devel::Peek::runops_debug\00", align 1
@my_xop = internal constant %struct.custom_op { i32 7, ptr @.str.41, ptr @.str.42, i32 512, ptr null }, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [27 x i8] c"str=\22Devel::Peek::mstat: \22\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Devel::Peek::mstat: \00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"%s: perl not compiled with MYMALLOC\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"sv, level= 0\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Cannot report mstats without Perl malloc\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"sv, rv, level= 0\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sv, lim=4\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Devel::Peek::pv_limit\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Devel::Peek::dump_ops\00", align 1
@PL_dumpindent = external local_unnamed_addr global i16, align 2
@.str.25 = private unnamed_addr constant [9 x i8] c"lim, ...\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Elt No. %ld  0x%lx\0A\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"dumpindent is %d\00", align 1
@PL_main_root = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@PL_sv_arenaroot = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"GVGV::GV\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"  busy\0A\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.33 = private unnamed_addr constant [22 x i8] c"    closure-template\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"     ref in args!\0A\00", align 1
@.str.35 = private unnamed_addr constant [75 x i8] c"    level %i: refs: %i, strings: %i in %i,\09argsarray: %i, argsstrings: %i\0A\00", align 1
@.str.36 = private unnamed_addr constant [71 x i8] c"  total: refs: %i, strings: %i in %i,\09argsarrays: %i, argsstrings: %i\0A\00", align 1
@.str.37 = private unnamed_addr constant [67 x i8] c"total: refs: %i, strings: %i in %i\09argsarray: %i, argsstrings: %i\0A\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"cv\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"flag= -1\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_runops = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@PL_Sv = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [16 x i8] c"Devel_Peek_Dump\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Dump\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Devel__Peek(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #2
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Devel__Peek_mstat) #2
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_Devel__Peek_fill_mstats) #2
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Devel__Peek_mstats_fillhash, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Devel__Peek_mstats2hash, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #2
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Devel__Peek_Dump) #2
  %8 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Devel__Peek_DumpArray) #2
  %9 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Devel__Peek_DumpProg) #2
  %10 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Devel__Peek_SvREFCNT, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %11 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Devel__Peek_DeadCode) #2
  %12 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Devel__Peek_CvGV) #2
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Devel__Peek_runops_debug) #2
  %14 = tail call ptr @Perl_get_cvn_flags(ptr noundef nonnull @.str.8, i64 noundef 17, i32 noundef 0) #2
  tail call void @Perl_cv_set_call_checker(ptr noundef %14, ptr noundef nonnull @S_ck_dump, ptr noundef %14) #2
  tail call void @Perl_custom_op_register(ptr noundef nonnull @S_pp_dump, ptr noundef nonnull @my_xop) #2
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #2
  ret void
}

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_mstat(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.16) #2
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %33, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  br label %33

31:                                               ; preds = %19
  %32 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %23, ptr noundef null, i32 noundef 2) #2
  br label %33

33:                                               ; preds = %28, %31, %17
  %34 = phi ptr [ @.str.17, %17 ], [ %30, %28 ], [ %32, %31 ]
  %35 = tail call ptr @Perl_PerlIO_stderr() #2
  %36 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %35, ptr noundef nonnull @.str.18, ptr noundef %34) #2
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %38 = sext i32 %7 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = getelementptr inbounds ptr, ptr %39, i64 -1
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_fill_mstats(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -3
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.19) #2
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %13, 2
  br i1 %18, label %30, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %7
  %22 = getelementptr ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 2097408
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %23, i32 noundef 2) #2
  br label %30

30:                                               ; preds = %19, %28, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20) #2
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %32 = getelementptr ptr, ptr %31, i64 %7
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_mstats_fillhash(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -3
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.19) #2
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %13, 2
  br i1 %18, label %30, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %7
  %22 = getelementptr ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 2097408
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %23, i32 noundef 2) #2
  br label %30

30:                                               ; preds = %19, %28, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20) #2
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %32 = getelementptr ptr, ptr %31, i64 %7
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_mstats2hash(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #2
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %13, 3
  br i1 %18, label %30, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %7
  %22 = getelementptr ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 2097408
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %23, i32 noundef 2) #2
  br label %30

30:                                               ; preds = %19, %28, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20) #2
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %32 = getelementptr ptr, ptr %31, i64 %7
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_Dump(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -3
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.22) #2
  br label %17

17:                                               ; preds = %1, %16
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %19 = getelementptr ptr, ptr %18, i64 %7
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp slt i32 %13, 2
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = getelementptr ptr, ptr %19, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = and i32 %27, 2097408
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load ptr, ptr %25, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.xpviv, ptr %31, i64 0, i32 4
  %33 = load i64, ptr %32, align 8, !tbaa !43
  br label %36

34:                                               ; preds = %23
  %35 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %25, i32 noundef 2) #2
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %17, %36
  %40 = phi i32 [ %38, %36 ], [ 4, %17 ]
  %41 = shl i64 %11, 29
  %42 = ashr i64 %41, 32
  %43 = sub nsw i64 0, %42
  %44 = getelementptr inbounds ptr, ptr %2, i64 %43
  tail call fastcc void @S_do_dump(ptr noundef %21, i32 noundef %40)
  store ptr %44, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_DumpArray(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.25) #2
  br label %17

17:                                               ; preds = %16, %1
  %18 = shl i64 %12, 29
  %19 = ashr i64 %18, 32
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 2097408
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load ptr, ptr %23, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.xpviv, ptr %29, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !43
  br label %34

32:                                               ; preds = %17
  %33 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %23, i32 noundef 2) #2
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i64 [ %31, %28 ], [ %33, %32 ]
  %36 = trunc i64 %35 to i32
  %37 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 0) #2
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !41
  %42 = and i32 %41, 2097408
  %43 = icmp eq i32 %42, 256
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load ptr, ptr %37, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.xpviv, ptr %45, i64 0, i32 4
  %47 = load i64, ptr %46, align 8, !tbaa !43
  br label %50

48:                                               ; preds = %39
  %49 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %37, i32 noundef 2) #2
  br label %50

50:                                               ; preds = %34, %44, %48
  %51 = phi i64 [ %47, %44 ], [ %49, %48 ], [ 0, %34 ]
  %52 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.24, i32 noundef 0) #2
  %53 = load i16, ptr @PL_dumpindent, align 2, !tbaa !45
  store i16 2, ptr @PL_dumpindent, align 2, !tbaa !45
  %54 = icmp sgt i64 %19, 1
  br i1 %54, label %55, label %131

55:                                               ; preds = %50
  %56 = icmp eq ptr %52, null
  %57 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  br label %58

58:                                               ; preds = %55, %127
  %59 = phi i64 [ 1, %55 ], [ %129, %127 ]
  %60 = tail call ptr @Perl_PerlIO_stderr() #2
  %61 = add nsw i64 %59, -1
  %62 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %63 = add nsw i64 %59, %21
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = ptrtoint ptr %65 to i64
  %67 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %60, ptr noundef nonnull @.str.26, i64 noundef %61, i64 noundef %66) #2
  %68 = tail call ptr @Perl_PerlIO_stderr() #2
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %70 = getelementptr inbounds ptr, ptr %69, i64 %63
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  br i1 %56, label %127, label %72

72:                                               ; preds = %58
  %73 = load i32, ptr %57, align 4, !tbaa !41
  %74 = and i32 %73, 2097152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %52, i32 noundef 2) #2
  br label %127

78:                                               ; preds = %72
  %79 = and i32 %73, 65280
  %80 = icmp ne i32 %79, 0
  %81 = and i32 %73, 255
  %82 = icmp eq i32 %81, 8
  %83 = or i1 %80, %82
  %84 = and i32 %73, 16777471
  %85 = icmp eq i32 %84, 16777226
  %86 = or i1 %85, %83
  br i1 %86, label %87, label %127

87:                                               ; preds = %78
  %88 = and i32 %73, 1024
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %52, align 8, !tbaa !44
  %92 = icmp eq ptr %91, null
  br i1 %92, label %127, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !47
  %96 = icmp ugt i64 %95, 1
  br i1 %96, label %127, label %97

97:                                               ; preds = %93
  %98 = icmp eq i64 %95, 0
  br i1 %98, label %127, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !43
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = icmp ne i8 %102, 48
  br label %127

104:                                              ; preds = %87
  %105 = and i32 %73, 768
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %104
  %108 = and i32 %73, 256
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %52, align 8, !tbaa !44
  %112 = getelementptr inbounds %struct.xpviv, ptr %111, i64 0, i32 4
  %113 = load i64, ptr %112, align 8, !tbaa !43
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110, %107
  %116 = and i32 %73, 512
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %52, align 8, !tbaa !44
  %120 = getelementptr inbounds %struct.xpvnv, ptr %119, i64 0, i32 5
  %121 = load double, ptr %120, align 8, !tbaa !43
  %122 = fcmp uno double %121, 0.000000e+00
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = fcmp une double %121, 0.000000e+00
  br label %127

125:                                              ; preds = %104
  %126 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %52, i32 noundef 0) #2
  br label %127

127:                                              ; preds = %118, %76, %125, %78, %93, %99, %97, %90, %115, %123, %110, %58
  %128 = phi i1 [ false, %58 ], [ %77, %76 ], [ %126, %125 ], [ false, %78 ], [ false, %90 ], [ true, %93 ], [ false, %97 ], [ %103, %99 ], [ true, %110 ], [ false, %115 ], [ %124, %123 ], [ true, %118 ]
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %68, ptr noundef %71, i32 noundef 0, i32 noundef %36, i1 noundef zeroext %128, i64 noundef %51) #2
  %129 = add nuw nsw i64 %59, 1
  %130 = icmp eq i64 %129, %19
  br i1 %130, label %131, label %58, !llvm.loop !50

131:                                              ; preds = %127, %50
  %132 = sub nsw i64 0, %19
  %133 = getelementptr inbounds ptr, ptr %2, i64 %132
  store i16 %53, ptr @PL_dumpindent, align 2, !tbaa !45
  store ptr %133, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_DumpProg(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.27) #2
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i16, ptr @PL_dumpindent, align 2, !tbaa !45
  %17 = zext i16 %16 to i32
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.28, i32 noundef %17) #2
  %18 = load ptr, ptr @PL_main_root, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @Perl_op_dump(ptr noundef nonnull %18) #2
  br label %21

21:                                               ; preds = %20, %15
  %22 = shl i64 %11, 29
  %23 = ashr i64 %22, 32
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds ptr, ptr %2, i64 %24
  store ptr %25, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_SvREFCNT(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.29) #2
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !53
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr @PL_curpad, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !55
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  br label %34

32:                                               ; preds = %16
  %33 = tail call ptr @Perl_sv_newmortal() #2
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !41
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 @Perl_mg_get(ptr noundef %20) #2
  br label %42

42:                                               ; preds = %34, %40
  %43 = load i32, ptr %36, align 4, !tbaa !41
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.30) #2
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !56
  %52 = add i32 %51, -1
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %54 = zext i32 %52 to i64
  tail call void @Perl_sv_setuv(ptr noundef %35, i64 noundef %54) #2
  %55 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !41
  %57 = and i32 %56, 4194304
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = tail call i32 @Perl_mg_set(ptr noundef %35) #2
  br label %61

61:                                               ; preds = %47, %59
  %62 = getelementptr inbounds ptr, ptr %53, i64 %18
  store ptr %35, ptr %62, align 8, !tbaa !35
  %63 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %64 = getelementptr inbounds ptr, ptr %63, i64 %18
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_DeadCode(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.27) #2
  br label %15

15:                                               ; preds = %14, %1
  %16 = tail call ptr @Perl_newSV_type(i32 noundef 11) #2
  %17 = tail call ptr @Perl_newRV_noinc(ptr noundef %16) #2
  %18 = load ptr, ptr @PL_sv_arenaroot, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %302, label %28

20:                                               ; preds = %294, %28
  %21 = phi i32 [ %34, %28 ], [ %295, %294 ]
  %22 = phi i32 [ %33, %28 ], [ %296, %294 ]
  %23 = phi i32 [ %32, %28 ], [ %297, %294 ]
  %24 = phi i32 [ %31, %28 ], [ %298, %294 ]
  %25 = phi i32 [ %30, %28 ], [ %299, %294 ]
  %26 = load ptr, ptr %29, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %302, label %28, !llvm.loop !57

28:                                               ; preds = %15, %20
  %29 = phi ptr [ %26, %20 ], [ %18, %15 ]
  %30 = phi i32 [ %25, %20 ], [ 0, %15 ]
  %31 = phi i32 [ %24, %20 ], [ 0, %15 ]
  %32 = phi i32 [ %23, %20 ], [ 0, %15 ]
  %33 = phi i32 [ %22, %20 ], [ 0, %15 ]
  %34 = phi i32 [ %21, %20 ], [ 0, %15 ]
  %35 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !56
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sv, ptr %29, i64 %37
  %39 = icmp ugt i32 %36, 1
  br i1 %39, label %40, label %20

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.sv, ptr %29, i64 1
  br label %42

42:                                               ; preds = %40, %294
  %43 = phi ptr [ %300, %294 ], [ %41, %40 ]
  %44 = phi ptr [ %43, %294 ], [ %29, %40 ]
  %45 = phi i32 [ %299, %294 ], [ %30, %40 ]
  %46 = phi i32 [ %298, %294 ], [ %31, %40 ]
  %47 = phi i32 [ %297, %294 ], [ %32, %40 ]
  %48 = phi i32 [ %296, %294 ], [ %33, %40 ]
  %49 = phi i32 [ %295, %294 ], [ %34, %40 ]
  %50 = getelementptr inbounds %struct.sv, ptr %44, i64 1, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !41
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %54, label %294

54:                                               ; preds = %42
  %55 = load ptr, ptr %43, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.xpvcv, ptr %55, i64 0, i32 12
  %57 = load i32, ptr %56, align 4, !tbaa !58
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %294

60:                                               ; preds = %54
  %61 = and i32 %57, 32768
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %43) #2
  br label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.xpvcv, ptr %55, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !43
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi ptr [ %64, %63 ], [ %67, %65 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %294, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %43, align 8, !tbaa !60
  %73 = getelementptr inbounds %struct.xpvcv, ptr %72, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !43
  %75 = icmp eq ptr %74, null
  br i1 %75, label %294, label %76

76:                                               ; preds = %71
  %77 = tail call ptr @Perl_PerlIO_stderr() #2
  %78 = load ptr, ptr %43, align 8, !tbaa !60
  %79 = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 12
  %80 = load i32, ptr %79, align 4, !tbaa !58
  %81 = and i32 %80, 32768
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  %84 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %43) #2
  br label %88

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi ptr [ %84, %83 ], [ %87, %85 ]
  tail call void @Perl_do_gvgv_dump(i32 noundef 0, ptr noundef %77, ptr noundef nonnull @.str.31, ptr noundef %89) #2
  %90 = load ptr, ptr %43, align 8, !tbaa !60
  %91 = getelementptr inbounds %struct.xpvcv, ptr %90, i64 0, i32 13
  %92 = load i32, ptr %91, align 4, !tbaa !39
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = tail call ptr @Perl_PerlIO_stderr() #2
  %96 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %95, ptr noundef nonnull @.str.32) #2
  br label %294

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.xpvcv, ptr %90, i64 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !43
  %100 = getelementptr inbounds %struct.padlist, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !62
  %102 = load i64, ptr %99, align 8, !tbaa !64
  %103 = icmp slt i64 %102, 1
  br i1 %103, label %277, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds ptr, ptr %101, i64 1
  br label %106

106:                                              ; preds = %104, %267
  %107 = phi i64 [ 1, %104 ], [ %274, %267 ]
  %108 = phi i32 [ 0, %104 ], [ %273, %267 ]
  %109 = phi i32 [ 0, %104 ], [ %272, %267 ]
  %110 = phi i32 [ 0, %104 ], [ %271, %267 ]
  %111 = phi i32 [ 0, %104 ], [ %270, %267 ]
  %112 = phi i32 [ 0, %104 ], [ %269, %267 ]
  %113 = phi i32 [ 0, %104 ], [ %268, %267 ]
  %114 = getelementptr inbounds ptr, ptr %101, i64 %107
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = icmp eq ptr %115, null
  br i1 %116, label %267, label %117, !llvm.loop !65

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.av, ptr %115, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  %120 = load ptr, ptr %119, align 8, !tbaa !35
  %121 = icmp eq ptr %120, null
  %122 = icmp eq ptr %120, @PL_sv_undef
  %123 = or i1 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = tail call ptr @Perl_PerlIO_stderr() #2
  %126 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %125, ptr noundef nonnull @.str.33) #2
  br label %267, !llvm.loop !65

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.av, ptr %120, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !43
  %130 = load ptr, ptr %120, align 8, !tbaa !66
  %131 = getelementptr inbounds %struct.xpvav, ptr %130, i64 0, i32 3
  %132 = load i64, ptr %131, align 8, !tbaa !68
  %133 = trunc i64 %132 to i32
  %134 = shl i32 %133, 3
  %135 = add i32 %134, 8
  %136 = getelementptr inbounds %struct.av, ptr %120, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !70
  %138 = and i32 %137, 1073741824
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %187, label %140

140:                                              ; preds = %127, %183
  %141 = phi i64 [ %186, %183 ], [ 0, %127 ]
  %142 = phi i32 [ %184, %183 ], [ 0, %127 ]
  %143 = phi i32 [ %185, %183 ], [ 0, %127 ]
  %144 = load i32, ptr %136, align 4, !tbaa !41
  %145 = and i32 %144, 8388608
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %140
  %148 = tail call i32 @Perl_mg_size(ptr noundef nonnull %120) #2
  %149 = sext i32 %148 to i64
  br label %154

150:                                              ; preds = %140
  %151 = load ptr, ptr %120, align 8, !tbaa !66
  %152 = getelementptr inbounds %struct.xpvav, ptr %151, i64 0, i32 2
  %153 = load i64, ptr %152, align 8, !tbaa !71
  br label %154

154:                                              ; preds = %150, %147
  %155 = phi i64 [ %149, %147 ], [ %153, %150 ]
  %156 = icmp sgt i64 %155, %141
  br i1 %156, label %157, label %187

157:                                              ; preds = %154
  %158 = getelementptr inbounds ptr, ptr %129, i64 %141
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !41
  %162 = and i32 %161, 2048
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %157
  %165 = tail call ptr @Perl_PerlIO_stderr() #2
  %166 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %165, ptr noundef nonnull @.str.34) #2
  %167 = add nsw i32 %142, 1
  br label %183

168:                                              ; preds = %157
  %169 = and i32 %161, 255
  %170 = icmp ugt i32 %169, 2
  br i1 %170, label %171, label %183

171:                                              ; preds = %168
  %172 = load ptr, ptr %159, align 8, !tbaa !44
  %173 = getelementptr inbounds %struct.xpv, ptr %172, i64 0, i32 3
  %174 = load i64, ptr %173, align 8, !tbaa !43
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 1
  %178 = load i32, ptr %177, align 8, !tbaa !56
  %179 = zext i32 %178 to i64
  %180 = udiv i64 %174, %179
  %181 = trunc i64 %180 to i32
  %182 = add i32 %143, %181
  br label %183

183:                                              ; preds = %176, %171, %168, %164
  %184 = phi i32 [ %167, %164 ], [ %142, %176 ], [ %142, %171 ], [ %142, %168 ]
  %185 = phi i32 [ %143, %164 ], [ %182, %176 ], [ %143, %171 ], [ %143, %168 ]
  %186 = add nuw i64 %141, 1
  br label %140, !llvm.loop !72

187:                                              ; preds = %154, %127
  %188 = phi i32 [ 0, %127 ], [ %142, %154 ]
  %189 = phi i32 [ 0, %127 ], [ %143, %154 ]
  br label %190

190:                                              ; preds = %249, %187
  %191 = phi i64 [ %254, %249 ], [ 1, %187 ]
  %192 = phi i32 [ %250, %249 ], [ 0, %187 ]
  %193 = phi i32 [ %251, %249 ], [ %188, %187 ]
  %194 = phi i32 [ %252, %249 ], [ 0, %187 ]
  %195 = phi i32 [ %253, %249 ], [ %108, %187 ]
  %196 = load ptr, ptr %105, align 8, !tbaa !35
  %197 = getelementptr inbounds %struct.sv, ptr %196, i64 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !41
  %199 = and i32 %198, 8388608
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %190
  %202 = tail call i32 @Perl_mg_size(ptr noundef %196) #2
  %203 = sext i32 %202 to i64
  br label %208

204:                                              ; preds = %190
  %205 = load ptr, ptr %196, align 8, !tbaa !66
  %206 = getelementptr inbounds %struct.xpvav, ptr %205, i64 0, i32 2
  %207 = load i64, ptr %206, align 8, !tbaa !71
  br label %208

208:                                              ; preds = %204, %201
  %209 = phi i64 [ %203, %201 ], [ %207, %204 ]
  %210 = icmp sgt i64 %209, %191
  br i1 %210, label %211, label %255

211:                                              ; preds = %208
  %212 = getelementptr inbounds ptr, ptr %119, i64 %191
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  %214 = icmp eq ptr %213, null
  br i1 %214, label %249, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.sv, ptr %213, i64 0, i32 2
  %217 = load i32, ptr %216, align 4, !tbaa !41
  %218 = and i32 %217, 2048
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %215
  %221 = add nsw i32 %193, 1
  %222 = tail call ptr @Perl_PerlIO_stderr() #2
  %223 = load ptr, ptr %212, align 8, !tbaa !35
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %222, ptr noundef %223, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i64 noundef 0) #2
  br label %249

224:                                              ; preds = %215
  %225 = and i32 %217, 255
  %226 = icmp ugt i32 %225, 10
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = and i32 %217, 131072
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %249, label %230

230:                                              ; preds = %227
  %231 = add nsw i32 %193, 1
  %232 = tail call ptr @Perl_PerlIO_stderr() #2
  %233 = load ptr, ptr %212, align 8, !tbaa !35
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %232, ptr noundef %233, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i64 noundef 0) #2
  br label %249

234:                                              ; preds = %224
  %235 = icmp ugt i32 %225, 2
  br i1 %235, label %236, label %249

236:                                              ; preds = %234
  %237 = load ptr, ptr %213, align 8, !tbaa !44
  %238 = getelementptr inbounds %struct.xpv, ptr %237, i64 0, i32 3
  %239 = load i64, ptr %238, align 8, !tbaa !43
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %236
  %242 = add nsw i32 %194, 1
  %243 = getelementptr inbounds %struct.sv, ptr %213, i64 0, i32 1
  %244 = load i32, ptr %243, align 8, !tbaa !56
  %245 = zext i32 %244 to i64
  %246 = udiv i64 %239, %245
  %247 = trunc i64 %246 to i32
  %248 = add i32 %192, %247
  br label %249

249:                                              ; preds = %241, %236, %234, %230, %227, %220, %211
  %250 = phi i32 [ %192, %220 ], [ %192, %230 ], [ %192, %227 ], [ %248, %241 ], [ %192, %236 ], [ %192, %234 ], [ %192, %211 ]
  %251 = phi i32 [ %221, %220 ], [ %231, %230 ], [ %193, %227 ], [ %193, %241 ], [ %193, %236 ], [ %193, %234 ], [ %193, %211 ]
  %252 = phi i32 [ %194, %220 ], [ %194, %230 ], [ %194, %227 ], [ %242, %241 ], [ %194, %236 ], [ %194, %234 ], [ %194, %211 ]
  %253 = phi i32 [ 1, %220 ], [ 1, %230 ], [ %195, %227 ], [ %195, %241 ], [ %195, %236 ], [ %195, %234 ], [ %195, %211 ]
  %254 = add nuw i64 %191, 1
  br label %190, !llvm.loop !73

255:                                              ; preds = %208
  %256 = tail call ptr @Perl_PerlIO_stderr() #2
  %257 = trunc i64 %107 to i32
  %258 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %256, ptr noundef nonnull @.str.35, i32 noundef %257, i32 noundef %193, i32 noundef %192, i32 noundef %194, i32 noundef %135, i32 noundef %189) #2
  %259 = add nsw i32 %192, %113
  %260 = add nsw i32 %135, %110
  %261 = add nsw i32 %189, %109
  %262 = add nsw i32 %194, %111
  %263 = add nsw i32 %193, %112
  %264 = icmp eq i32 %195, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %255
  %266 = tail call ptr @Perl_PerlIO_stderr() #2
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %266, ptr noundef nonnull %43, i32 noundef 0, i32 noundef 2, i1 noundef zeroext false, i64 noundef 0) #2
  br label %267

267:                                              ; preds = %265, %255, %124, %106
  %268 = phi i32 [ %113, %124 ], [ %113, %106 ], [ %259, %265 ], [ %259, %255 ]
  %269 = phi i32 [ %112, %124 ], [ %112, %106 ], [ %263, %265 ], [ %263, %255 ]
  %270 = phi i32 [ %111, %124 ], [ %111, %106 ], [ %262, %265 ], [ %262, %255 ]
  %271 = phi i32 [ %110, %124 ], [ %110, %106 ], [ %260, %265 ], [ %260, %255 ]
  %272 = phi i32 [ %109, %124 ], [ %109, %106 ], [ %261, %265 ], [ %261, %255 ]
  %273 = phi i32 [ %108, %124 ], [ %108, %106 ], [ %195, %265 ], [ %195, %255 ]
  %274 = add nuw i64 %107, 1
  %275 = load i64, ptr %99, align 8, !tbaa !64
  %276 = icmp slt i64 %275, %274
  br i1 %276, label %277, label %106

277:                                              ; preds = %267, %97
  %278 = phi i32 [ 0, %97 ], [ %268, %267 ]
  %279 = phi i32 [ 0, %97 ], [ %269, %267 ]
  %280 = phi i32 [ 0, %97 ], [ %270, %267 ]
  %281 = phi i32 [ 0, %97 ], [ %271, %267 ]
  %282 = phi i32 [ 0, %97 ], [ %272, %267 ]
  %283 = phi i64 [ %102, %97 ], [ %275, %267 ]
  %284 = icmp sgt i64 %283, 1
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = tail call ptr @Perl_PerlIO_stderr() #2
  %287 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %286, ptr noundef nonnull @.str.36, i32 noundef %279, i32 noundef %278, i32 noundef %280, i32 noundef %281, i32 noundef %282) #2
  br label %288

288:                                              ; preds = %285, %277
  %289 = add nsw i32 %279, %46
  %290 = add nsw i32 %278, %45
  %291 = add nsw i32 %280, %47
  %292 = add nsw i32 %281, %48
  %293 = add nsw i32 %282, %49
  br label %294

294:                                              ; preds = %288, %94, %71, %68, %54, %42
  %295 = phi i32 [ %49, %42 ], [ %49, %94 ], [ %293, %288 ], [ %49, %54 ], [ %49, %68 ], [ %49, %71 ]
  %296 = phi i32 [ %48, %42 ], [ %48, %94 ], [ %292, %288 ], [ %48, %54 ], [ %48, %68 ], [ %48, %71 ]
  %297 = phi i32 [ %47, %42 ], [ %47, %94 ], [ %291, %288 ], [ %47, %54 ], [ %47, %68 ], [ %47, %71 ]
  %298 = phi i32 [ %46, %42 ], [ %46, %94 ], [ %289, %288 ], [ %46, %54 ], [ %46, %68 ], [ %46, %71 ]
  %299 = phi i32 [ %45, %42 ], [ %45, %94 ], [ %290, %288 ], [ %45, %54 ], [ %45, %68 ], [ %45, %71 ]
  %300 = getelementptr inbounds %struct.sv, ptr %43, i64 1
  %301 = icmp ult ptr %300, %38
  br i1 %301, label %42, label %20, !llvm.loop !74

302:                                              ; preds = %20, %15
  %303 = phi i32 [ 0, %15 ], [ %21, %20 ]
  %304 = phi i32 [ 0, %15 ], [ %22, %20 ]
  %305 = phi i32 [ 0, %15 ], [ %23, %20 ]
  %306 = phi i32 [ 0, %15 ], [ %24, %20 ]
  %307 = phi i32 [ 0, %15 ], [ %25, %20 ]
  %308 = add nsw i32 %5, 1
  %309 = tail call ptr @Perl_PerlIO_stderr() #2
  %310 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %309, ptr noundef nonnull @.str.37, i32 noundef %306, i32 noundef %307, i32 noundef %305, i32 noundef %304, i32 noundef %303) #2
  %311 = tail call ptr @Perl_sv_2mortal(ptr noundef %17) #2
  %312 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %313 = sext i32 %308 to i64
  %314 = getelementptr inbounds ptr, ptr %312, i64 %313
  store ptr %311, ptr %314, align 8, !tbaa !35
  %315 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %316 = getelementptr inbounds ptr, ptr %315, i64 %313
  store ptr %316, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_CvGV(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #2
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !41
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !41
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 13
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load ptr, ptr %27, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 12
  %35 = load i32, ptr %34, align 4, !tbaa !58
  %36 = and i32 %35, 32768
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %27) #2
  br label %43

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  br label %43

43:                                               ; preds = %38, %40
  %44 = phi ptr [ %39, %38 ], [ %42, %40 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !56
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !56
  br label %50

50:                                               ; preds = %46, %43, %16, %25
  %51 = phi ptr [ @PL_sv_undef, %25 ], [ @PL_sv_undef, %16 ], [ %44, %43 ], [ %44, %46 ]
  %52 = tail call ptr @Perl_sv_2mortal(ptr noundef %51) #2
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 %18
  store ptr %52, ptr %54, align 8, !tbaa !35
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 %18
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Devel__Peek_runops_debug(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.39) #2
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %37, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = and i32 %25, 2097408
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load ptr, ptr %23, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.xpviv, ptr %29, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !43
  br label %34

32:                                               ; preds = %19
  %33 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %23, i32 noundef 2) #2
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i64 [ %31, %28 ], [ %33, %32 ]
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %17, %34
  %38 = phi i32 [ %36, %34 ], [ -1, %17 ]
  %39 = load ptr, ptr @PL_runops, align 8, !tbaa !35
  %40 = icmp sgt i32 %38, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, 0
  %43 = select i1 %42, ptr @Perl_runops_standard, ptr @Perl_runops_debug
  store ptr %43, ptr @PL_runops, align 8, !tbaa !35
  br label %44

44:                                               ; preds = %37, %41
  %45 = icmp eq ptr %39, @Perl_runops_debug
  %46 = select i1 %45, ptr @PL_sv_yes, ptr @PL_sv_no
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %48 = sext i32 %7 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  store ptr %46, ptr %49, align 8, !tbaa !35
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 %48
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare ptr @Perl_get_cvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_cv_set_call_checker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @S_ck_dump(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !34 {
  %4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.40, i64 noundef 3, i32 noundef 524288) #2
  %5 = tail call ptr @Perl_ck_entersub_args_proto(ptr noundef %0, ptr noundef %1, ptr noundef %4) #2
  %6 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.op, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.unop, ptr %7, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %7, %3 ], [ %13, %11 ]
  %16 = phi ptr [ %0, %3 ], [ %7, %11 ]
  %17 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 4
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 511
  switch i16 %28, label %33 [
    i16 135, label %29
    i16 10, label %29
    i16 149, label %29
    i16 11, label %29
  ]

29:                                               ; preds = %22, %22, %22, %22
  %30 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 5
  %31 = load i8, ptr %30, align 2, !tbaa !78
  %32 = or i8 %31, 16
  store i8 %32, ptr %30, align 2, !tbaa !78
  br label %37

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 5
  %35 = load i8, ptr %34, align 2, !tbaa !78
  %36 = and i8 %35, -33
  store i8 %36, ptr %34, align 2, !tbaa !78
  br label %37

37:                                               ; preds = %33, %29
  %38 = select i1 %25, i32 1, i32 2
  %39 = tail call ptr @Perl_op_sibling_splice(ptr noundef %16, ptr noundef %15, i32 noundef %38, ptr noundef null) #2
  tail call void @Perl_op_free(ptr noundef %0) #2
  %40 = tail call ptr @Perl_Slab_Alloc(i64 noundef 56) #2
  %41 = getelementptr inbounds %struct.binop, ptr %40, i64 0, i32 4
  %42 = load i16, ptr %41, align 8
  %43 = and i16 %42, -512
  %44 = or disjoint i16 %43, 380
  store i16 %44, ptr %41, align 8
  %45 = getelementptr inbounds %struct.binop, ptr %40, i64 0, i32 2
  store ptr @S_pp_dump, ptr %45, align 8, !tbaa !79
  %46 = trunc i32 %38 to i8
  %47 = getelementptr inbounds %struct.binop, ptr %40, i64 0, i32 6
  store i8 %46, ptr %47, align 1, !tbaa !81
  %48 = getelementptr inbounds %struct.binop, ptr %40, i64 0, i32 5
  store i8 6, ptr %48, align 2, !tbaa !82
  %49 = tail call ptr @Perl_op_sibling_splice(ptr noundef %40, ptr noundef null, i32 noundef 0, ptr noundef %18) #2
  br label %50

50:                                               ; preds = %14, %37
  %51 = phi ptr [ %40, %37 ], [ %0, %14 ]
  ret ptr %51
}

declare void @Perl_custom_op_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal ptr @S_pp_dump() #0 !prof !34 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !53
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = getelementptr inbounds ptr, ptr %1, i64 -1
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %8, ptr @PL_Sv, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = and i32 %10, 2097408
  %12 = icmp eq i32 %11, 256
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load ptr, ptr %8, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.xpviv, ptr %14, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !43
  br label %19

17:                                               ; preds = %6
  %18 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %8, i32 noundef 2) #2
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i64 [ %16, %13 ], [ %18, %17 ]
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %0, %19
  %23 = phi ptr [ %7, %19 ], [ %1, %0 ]
  %24 = phi i32 [ %21, %19 ], [ 4, %0 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !35
  tail call fastcc void @S_do_dump(ptr noundef %25, i32 noundef %24)
  store ptr @PL_sv_undef, ptr %23, align 8, !tbaa !35
  store ptr %23, ptr @PL_stack_sp, align 8, !tbaa !35
  %26 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %27 = load ptr, ptr %26, align 8, !tbaa !83
  ret ptr %27
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #1

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_do_dump(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 {
  %3 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 0) #2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = and i32 %7, 2097408
  %9 = icmp eq i32 %8, 256
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.xpviv, ptr %11, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !43
  br label %16

14:                                               ; preds = %5
  %15 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %3, i32 noundef 2) #2
  br label %16

16:                                               ; preds = %2, %10, %14
  %17 = phi i64 [ %13, %10 ], [ %15, %14 ], [ 0, %2 ]
  %18 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.24, i32 noundef 0) #2
  %19 = load i16, ptr @PL_dumpindent, align 2, !tbaa !45
  store i16 2, ptr @PL_dumpindent, align 2, !tbaa !45
  %20 = tail call ptr @Perl_PerlIO_stderr() #2
  %21 = icmp eq ptr %18, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = and i32 %24, 2097152
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %18, i32 noundef 2) #2
  br label %78

29:                                               ; preds = %22
  %30 = and i32 %24, 65280
  %31 = icmp ne i32 %30, 0
  %32 = and i32 %24, 255
  %33 = icmp eq i32 %32, 8
  %34 = or i1 %31, %33
  %35 = and i32 %24, 16777471
  %36 = icmp eq i32 %35, 16777226
  %37 = or i1 %36, %34
  br i1 %37, label %38, label %78

38:                                               ; preds = %29
  %39 = and i32 %24, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %18, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %78, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !47
  %47 = icmp ugt i64 %46, 1
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = icmp eq i64 %46, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = load i8, ptr %52, align 1, !tbaa !43
  %54 = icmp ne i8 %53, 48
  br label %78

55:                                               ; preds = %38
  %56 = and i32 %24, 768
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  %59 = and i32 %24, 256
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %18, align 8, !tbaa !44
  %63 = getelementptr inbounds %struct.xpviv, ptr %62, i64 0, i32 4
  %64 = load i64, ptr %63, align 8, !tbaa !43
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61, %58
  %67 = and i32 %24, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %18, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct.xpvnv, ptr %70, i64 0, i32 5
  %72 = load double, ptr %71, align 8, !tbaa !43
  %73 = fcmp uno double %72, 0.000000e+00
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = fcmp une double %72, 0.000000e+00
  br label %78

76:                                               ; preds = %55
  %77 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %18, i32 noundef 0) #2
  br label %78

78:                                               ; preds = %27, %76, %29, %44, %50, %48, %41, %66, %74, %61, %69, %16
  %79 = phi i1 [ false, %16 ], [ %28, %27 ], [ %77, %76 ], [ false, %29 ], [ false, %41 ], [ true, %44 ], [ false, %48 ], [ %54, %50 ], [ true, %61 ], [ false, %66 ], [ %75, %74 ], [ true, %69 ]
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %20, ptr noundef %0, i32 noundef 0, i32 noundef %1, i1 noundef zeroext %79, i64 noundef %17) #2
  store i16 %19, ptr @PL_dumpindent, align 2, !tbaa !45
  ret void
}

declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_do_sv_dump(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #1

declare void @Perl_op_dump(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_newmortal() local_unnamed_addr #1

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

declare void @Perl_do_gvgv_dump(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_runops_debug() #1

declare i32 @Perl_runops_standard() #1

declare ptr @Perl_ck_entersub_args_proto(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_op_sibling_splice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @Perl_op_free(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_Slab_Alloc(i64 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !40, i64 12}
!42 = !{!"sv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!43 = !{!37, !37, i64 0}
!44 = !{!42, !36, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !37, i64 0}
!47 = !{!48, !49, i64 16}
!48 = !{!"xpv", !36, i64 0, !37, i64 8, !49, i64 16, !37, i64 24}
!49 = !{!"long", !37, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!54, !37, i64 35}
!54 = !{!"op", !36, i64 0, !36, i64 8, !36, i64 16, !49, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !37, i64 34, !37, i64 35}
!55 = !{!54, !49, i64 24}
!56 = !{!42, !40, i64 8}
!57 = distinct !{!57, !51, !52}
!58 = !{!59, !40, i64 92}
!59 = !{!"xpvcv", !36, i64 0, !37, i64 8, !49, i64 16, !37, i64 24, !36, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !36, i64 64, !37, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96}
!60 = !{!61, !36, i64 0}
!61 = !{!"cv", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!62 = !{!63, !36, i64 8}
!63 = !{!"padlist", !49, i64 0, !36, i64 8, !40, i64 16, !40, i64 20}
!64 = !{!63, !49, i64 0}
!65 = distinct !{!65, !51, !52}
!66 = !{!67, !36, i64 0}
!67 = !{!"av", !36, i64 0, !40, i64 8, !40, i64 12, !37, i64 16}
!68 = !{!69, !49, i64 24}
!69 = !{!"xpvav", !36, i64 0, !37, i64 8, !49, i64 16, !49, i64 24, !36, i64 32}
!70 = !{!67, !40, i64 12}
!71 = !{!69, !49, i64 16}
!72 = distinct !{!72, !51, !52}
!73 = distinct !{!73, !51, !52}
!74 = distinct !{!74, !51, !52}
!75 = !{!76, !36, i64 40}
!76 = !{!"unop", !36, i64 0, !36, i64 8, !36, i64 16, !49, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !37, i64 34, !37, i64 35, !36, i64 40}
!77 = !{!54, !36, i64 8}
!78 = !{!54, !37, i64 34}
!79 = !{!80, !36, i64 16}
!80 = !{!"binop", !36, i64 0, !36, i64 8, !36, i64 16, !49, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !37, i64 34, !37, i64 35, !36, i64 40, !36, i64 48}
!81 = !{!80, !37, i64 35}
!82 = !{!80, !37, i64 34}
!83 = !{!54, !36, i64 0}
