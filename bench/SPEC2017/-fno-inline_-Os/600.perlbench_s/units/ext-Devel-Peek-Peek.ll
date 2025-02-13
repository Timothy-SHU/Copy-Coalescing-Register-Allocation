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
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.binop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Devel__Peek(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Devel__Peek_mstat) #5
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_Devel__Peek_fill_mstats) #5
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Devel__Peek_mstats_fillhash, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #5
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Devel__Peek_mstats2hash, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #5
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Devel__Peek_Dump) #5
  %8 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Devel__Peek_DumpArray) #5
  %9 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Devel__Peek_DumpProg) #5
  %10 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Devel__Peek_SvREFCNT, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #5
  %11 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Devel__Peek_DeadCode) #5
  %12 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Devel__Peek_CvGV) #5
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Devel__Peek_runops_debug) #5
  %14 = tail call ptr @Perl_get_cvn_flags(ptr noundef nonnull @.str.8, i64 noundef 17, i32 noundef 0) #5
  tail call void @Perl_cv_set_call_checker(ptr noundef %14, ptr noundef nonnull @S_ck_dump, ptr noundef %14) #5
  tail call void @Perl_custom_op_register(ptr noundef nonnull @S_pp_dump, ptr noundef nonnull @my_xop) #5
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #5
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_mstat(ptr noundef %0) #0 !prof !35 !PGOFuncName !36 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.16) #5
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = sext i32 %7 to i64
  br label %35

21:                                               ; preds = %17
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !43
  %28 = and i32 %27, 2098176
  %29 = icmp eq i32 %28, 1024
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  br label %35

33:                                               ; preds = %21
  %34 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %25, ptr noundef null, i32 noundef 2) #5
  br label %35

35:                                               ; preds = %19, %30, %33
  %36 = phi i64 [ %20, %19 ], [ %23, %30 ], [ %23, %33 ]
  %37 = phi ptr [ @.str.17, %19 ], [ %32, %30 ], [ %34, %33 ]
  %38 = tail call ptr @Perl_PerlIO_stderr() #5
  %39 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %38, ptr noundef nonnull @.str.18, ptr noundef %37) #5
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %41 = getelementptr inbounds ptr, ptr %40, i64 %36
  %42 = getelementptr inbounds ptr, ptr %41, i64 -1
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_fill_mstats(ptr noundef %0) #0 !prof !35 !PGOFuncName !46 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -3
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.19) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi ptr [ %6, %1 ], [ %17, %16 ]
  %20 = icmp slt i32 %13, 2
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr ptr, ptr %19, i64 %7
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !43
  %27 = and i32 %26, 2097408
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %24, i32 noundef 2) #5
  br label %31

31:                                               ; preds = %29, %21, %18
  tail call fastcc void @fill_mstats() #6
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %33 = sext i32 %5 to i64
  %34 = getelementptr ptr, ptr %32, i64 %33
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_mstats_fillhash(ptr noundef %0) #0 !prof !35 !PGOFuncName !47 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -3
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.19) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi ptr [ %6, %1 ], [ %17, %16 ]
  %20 = icmp slt i32 %13, 2
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr ptr, ptr %19, i64 %7
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !43
  %27 = and i32 %26, 2097408
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %24, i32 noundef 2) #5
  br label %31

31:                                               ; preds = %29, %21, %18
  tail call fastcc void @mstats_fillhash() #6
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %33 = sext i32 %5 to i64
  %34 = getelementptr ptr, ptr %32, i64 %33
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_mstats2hash(ptr noundef %0) #0 !prof !35 !PGOFuncName !48 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi ptr [ %6, %1 ], [ %17, %16 ]
  %20 = icmp slt i32 %13, 3
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr ptr, ptr %19, i64 %7
  %23 = getelementptr ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !43
  %27 = and i32 %26, 2097408
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %24, i32 noundef 2) #5
  br label %31

31:                                               ; preds = %29, %21, %18
  tail call fastcc void @mstats2hash() #6
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %33 = sext i32 %5 to i64
  %34 = getelementptr ptr, ptr %32, i64 %33
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_Dump(ptr noundef %0) #0 !prof !35 !PGOFuncName !49 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, -3
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.22) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi ptr [ %6, %1 ], [ %17, %16 ]
  %20 = getelementptr ptr, ptr %19, i64 %7
  %21 = getelementptr ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = icmp slt i32 %13, 2
  br i1 %23, label %40, label %24

24:                                               ; preds = %18
  %25 = getelementptr ptr, ptr %20, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !43
  %29 = and i32 %28, 2097408
  %30 = icmp eq i32 %29, 256
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load ptr, ptr %26, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.xpviv, ptr %32, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !45
  br label %37

35:                                               ; preds = %24
  %36 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %26, i32 noundef 2) #5
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i64 [ %34, %31 ], [ %36, %35 ]
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %18, %37
  %41 = phi i32 [ %39, %37 ], [ 4, %18 ]
  %42 = shl i64 %11, 29
  %43 = ashr i64 %42, 32
  %44 = sub nsw i64 0, %43
  %45 = getelementptr inbounds ptr, ptr %2, i64 %44
  tail call fastcc void @S_do_dump(ptr noundef %22, i32 noundef %41) #6
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_DumpArray(ptr noundef %0) #0 !prof !35 !PGOFuncName !51 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.25) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = shl i64 %12, 29
  %21 = ashr i64 %20, 32
  %22 = sext i32 %7 to i64
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !43
  %27 = and i32 %26, 2097408
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load ptr, ptr %24, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.xpviv, ptr %30, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !45
  br label %35

33:                                               ; preds = %18
  %34 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %24, i32 noundef 2) #5
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i64 [ %32, %29 ], [ %34, %33 ]
  %37 = trunc i64 %36 to i32
  %38 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 0) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !43
  %43 = and i32 %42, 2097408
  %44 = icmp eq i32 %43, 256
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load ptr, ptr %38, align 8, !tbaa !50
  %47 = getelementptr inbounds %struct.xpviv, ptr %46, i64 0, i32 4
  %48 = load i64, ptr %47, align 8, !tbaa !45
  br label %51

49:                                               ; preds = %40
  %50 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %38, i32 noundef 2) #5
  br label %51

51:                                               ; preds = %35, %45, %49
  %52 = phi i64 [ %48, %45 ], [ %50, %49 ], [ 0, %35 ]
  %53 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.24, i32 noundef 0) #5
  %54 = load i16, ptr @PL_dumpindent, align 2, !tbaa !52
  store i16 2, ptr @PL_dumpindent, align 2, !tbaa !52
  %55 = icmp sgt i64 %21, 1
  br i1 %55, label %56, label %132

56:                                               ; preds = %51
  %57 = icmp eq ptr %53, null
  %58 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  br label %59

59:                                               ; preds = %56, %128
  %60 = phi i64 [ 1, %56 ], [ %130, %128 ]
  %61 = tail call ptr @Perl_PerlIO_stderr() #5
  %62 = add nsw i64 %60, -1
  %63 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %64 = add nsw i64 %60, %22
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !37
  %67 = ptrtoint ptr %66 to i64
  %68 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %61, ptr noundef nonnull @.str.26, i64 noundef %62, i64 noundef %67) #5
  %69 = tail call ptr @Perl_PerlIO_stderr() #5
  %70 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %71 = getelementptr inbounds ptr, ptr %70, i64 %64
  %72 = load ptr, ptr %71, align 8, !tbaa !37
  br i1 %57, label %128, label %73

73:                                               ; preds = %59
  %74 = load i32, ptr %58, align 4, !tbaa !43
  %75 = and i32 %74, 2097152
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %53, i32 noundef 2) #5
  br label %128

79:                                               ; preds = %73
  %80 = and i32 %74, 65280
  %81 = icmp ne i32 %80, 0
  %82 = and i32 %74, 255
  %83 = icmp eq i32 %82, 8
  %84 = or i1 %81, %83
  %85 = and i32 %74, 16777471
  %86 = icmp eq i32 %85, 16777226
  %87 = or i1 %86, %84
  br i1 %87, label %88, label %128

88:                                               ; preds = %79
  %89 = and i32 %74, 1024
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %53, align 8, !tbaa !50
  %93 = icmp eq ptr %92, null
  br i1 %93, label %128, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.xpv, ptr %92, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !54
  %97 = icmp ugt i64 %96, 1
  br i1 %97, label %128, label %98

98:                                               ; preds = %94
  %99 = icmp eq i64 %96, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = load i8, ptr %102, align 1, !tbaa !45
  %104 = icmp ne i8 %103, 48
  br label %128

105:                                              ; preds = %88
  %106 = and i32 %74, 768
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %105
  %109 = and i32 %74, 256
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %53, align 8, !tbaa !50
  %113 = getelementptr inbounds %struct.xpviv, ptr %112, i64 0, i32 4
  %114 = load i64, ptr %113, align 8, !tbaa !45
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111, %108
  %117 = and i32 %74, 512
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %53, align 8, !tbaa !50
  %121 = getelementptr inbounds %struct.xpvnv, ptr %120, i64 0, i32 5
  %122 = load double, ptr %121, align 8, !tbaa !45
  %123 = fcmp uno double %122, 0.000000e+00
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = fcmp une double %122, 0.000000e+00
  br label %128

126:                                              ; preds = %105
  %127 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %53, i32 noundef 0) #5
  br label %128

128:                                              ; preds = %77, %126, %79, %94, %100, %98, %91, %116, %124, %119, %111, %59
  %129 = phi i1 [ false, %59 ], [ %78, %77 ], [ %127, %126 ], [ false, %79 ], [ false, %91 ], [ true, %94 ], [ false, %98 ], [ %104, %100 ], [ true, %111 ], [ false, %116 ], [ true, %119 ], [ %125, %124 ]
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %69, ptr noundef %72, i32 noundef 0, i32 noundef %37, i1 noundef zeroext %129, i64 noundef %52) #5
  %130 = add nuw nsw i64 %60, 1
  %131 = icmp eq i64 %130, %21
  br i1 %131, label %132, label %59, !llvm.loop !57

132:                                              ; preds = %128, %51
  %133 = sub nsw i64 0, %21
  %134 = getelementptr inbounds ptr, ptr %2, i64 %133
  store i16 %54, ptr @PL_dumpindent, align 2, !tbaa !52
  store ptr %134, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_DumpProg(ptr noundef %0) #0 !prof !35 !PGOFuncName !59 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.27) #5
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i16, ptr @PL_dumpindent, align 2, !tbaa !52
  %17 = zext i16 %16 to i32
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.28, i32 noundef %17) #5
  %18 = load ptr, ptr @PL_main_root, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @Perl_op_dump(ptr noundef nonnull %18) #5
  br label %21

21:                                               ; preds = %20, %15
  %22 = shl i64 %11, 29
  %23 = ashr i64 %22, 32
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds ptr, ptr %2, i64 %24
  store ptr %25, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_SvREFCNT(ptr noundef %0) #0 !prof !35 !PGOFuncName !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.29) #5
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !61
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !37
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #5
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !43
  %39 = and i32 %38, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #5
  %43 = load i32, ptr %37, align 4, !tbaa !43
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i32 [ %38, %35 ], [ %43, %41 ]
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.30) #5
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !64
  %54 = add i32 %53, -1
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %56 = zext i32 %54 to i64
  tail call void @Perl_sv_setuv(ptr noundef %36, i64 noundef %56) #5
  %57 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !43
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %49
  %62 = tail call i32 @Perl_mg_set(ptr noundef nonnull %36) #5
  br label %63

63:                                               ; preds = %49, %61
  %64 = getelementptr inbounds ptr, ptr %55, i64 %19
  store ptr %36, ptr %64, align 8, !tbaa !37
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %66 = getelementptr inbounds ptr, ptr %65, i64 %19
  store ptr %66, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_DeadCode(ptr noundef %0) #0 !prof !35 !PGOFuncName !65 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.27) #5
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = tail call fastcc ptr @DeadCode() #6
  %18 = tail call ptr @Perl_sv_2mortal(ptr noundef %17) #5
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %18, ptr %21, align 8, !tbaa !37
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  store ptr %23, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_CvGV(ptr noundef %0) #0 !prof !35 !PGOFuncName !66 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #5
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !43
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !43
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 13
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %28) #6
  %35 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %34) #6
  br label %36

36:                                               ; preds = %17, %26, %33
  %37 = phi ptr [ %34, %33 ], [ @PL_sv_undef, %26 ], [ @PL_sv_undef, %17 ]
  %38 = tail call ptr @Perl_sv_2mortal(ptr noundef %37) #5
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %40 = getelementptr inbounds ptr, ptr %39, i64 %19
  store ptr %38, ptr %40, align 8, !tbaa !37
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %42 = getelementptr inbounds ptr, ptr %41, i64 %19
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Devel__Peek_runops_debug(ptr noundef %0) #0 !prof !35 !PGOFuncName !67 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.39) #5
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = sext i32 %7 to i64
  br label %39

21:                                               ; preds = %17
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !43
  %28 = and i32 %27, 2097408
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load ptr, ptr %25, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.xpviv, ptr %31, i64 0, i32 4
  %33 = load i64, ptr %32, align 8, !tbaa !45
  br label %36

34:                                               ; preds = %21
  %35 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %25, i32 noundef 2) #5
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %19, %36
  %40 = phi i64 [ %20, %19 ], [ %23, %36 ]
  %41 = phi i32 [ -1, %19 ], [ %38, %36 ]
  %42 = tail call fastcc zeroext i1 @_runops_debug(i32 noundef %41) #6
  %43 = select i1 %42, ptr @PL_sv_yes, ptr @PL_sv_no
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %45 = getelementptr inbounds ptr, ptr %44, i64 %40
  store ptr %43, ptr %45, align 8, !tbaa !37
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %47 = getelementptr inbounds ptr, ptr %46, i64 %40
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_get_cvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_cv_set_call_checker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @S_ck_dump(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !prof !35 !PGOFuncName !68 {
  %4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.40, i64 noundef 3, i32 noundef 524288) #5
  %5 = tail call ptr @Perl_ck_entersub_args_proto(ptr noundef %0, ptr noundef %1, ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.op, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.unop, ptr %7, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  br label %16

16:                                               ; preds = %3, %11
  %17 = phi ptr [ %9, %3 ], [ %15, %11 ]
  %18 = phi ptr [ %7, %3 ], [ %13, %11 ]
  %19 = phi ptr [ %0, %3 ], [ %7, %11 ]
  %20 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 511
  switch i16 %29, label %34 [
    i16 135, label %30
    i16 10, label %30
    i16 149, label %30
    i16 11, label %30
  ]

30:                                               ; preds = %23, %23, %23, %23
  %31 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 5
  %32 = load i8, ptr %31, align 2, !tbaa !72
  %33 = or i8 %32, 16
  store i8 %33, ptr %31, align 2, !tbaa !72
  br label %38

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 5
  %36 = load i8, ptr %35, align 2, !tbaa !72
  %37 = and i8 %36, -33
  store i8 %37, ptr %35, align 2, !tbaa !72
  br label %38

38:                                               ; preds = %34, %30
  %39 = select i1 %26, i32 1, i32 2
  %40 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %19, ptr noundef nonnull %18, i32 noundef %39, ptr noundef null) #5
  tail call void @Perl_op_free(ptr noundef nonnull %0) #5
  %41 = tail call ptr @Perl_Slab_Alloc(i64 noundef 56) #5
  %42 = getelementptr inbounds %struct.binop, ptr %41, i64 0, i32 4
  %43 = load i16, ptr %42, align 8
  %44 = and i16 %43, -512
  %45 = or disjoint i16 %44, 380
  store i16 %45, ptr %42, align 8
  %46 = getelementptr inbounds %struct.binop, ptr %41, i64 0, i32 2
  store ptr @S_pp_dump, ptr %46, align 8, !tbaa !73
  %47 = trunc i32 %39 to i8
  %48 = getelementptr inbounds %struct.binop, ptr %41, i64 0, i32 6
  store i8 %47, ptr %48, align 1, !tbaa !75
  %49 = getelementptr inbounds %struct.binop, ptr %41, i64 0, i32 5
  store i8 6, ptr %49, align 2, !tbaa !76
  %50 = tail call ptr @Perl_op_sibling_splice(ptr noundef %41, ptr noundef null, i32 noundef 0, ptr noundef nonnull %17) #5
  br label %51

51:                                               ; preds = %16, %38
  %52 = phi ptr [ %41, %38 ], [ %0, %16 ]
  ret ptr %52
}

; Function Attrs: optsize
declare void @Perl_custom_op_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @S_pp_dump() #0 !prof !35 !PGOFuncName !77 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !37
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !61
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = getelementptr inbounds ptr, ptr %1, i64 -1
  %8 = load ptr, ptr %1, align 8, !tbaa !37
  store ptr %8, ptr @PL_Sv, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = and i32 %10, 2097408
  %12 = icmp eq i32 %11, 256
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load ptr, ptr %8, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.xpviv, ptr %14, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !45
  br label %19

17:                                               ; preds = %6
  %18 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %8, i32 noundef 2) #5
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i64 [ %16, %13 ], [ %18, %17 ]
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %0, %19
  %23 = phi ptr [ %7, %19 ], [ %1, %0 ]
  %24 = phi i32 [ %21, %19 ], [ 4, %0 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !37
  tail call fastcc void @S_do_dump(ptr noundef %25, i32 noundef %24) #6
  store ptr @PL_sv_undef, ptr %23, align 8, !tbaa !37
  store ptr %23, ptr @PL_stack_sp, align 8, !tbaa !37
  %26 = load ptr, ptr @PL_op, align 8, !tbaa !37
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  ret ptr %27
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_mstats() unnamed_addr #0 !prof !35 !PGOFuncName !79 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20) #5
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mstats_fillhash() unnamed_addr #0 !prof !35 !PGOFuncName !80 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mstats2hash() unnamed_addr #0 !prof !35 !PGOFuncName !81 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_do_dump(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !82 {
  %3 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = and i32 %7, 2097408
  %9 = icmp eq i32 %8, 256
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.xpviv, ptr %11, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !45
  br label %16

14:                                               ; preds = %5
  %15 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %3, i32 noundef 2) #5
  br label %16

16:                                               ; preds = %2, %10, %14
  %17 = phi i64 [ %13, %10 ], [ %15, %14 ], [ 0, %2 ]
  %18 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.24, i32 noundef 0) #5
  %19 = load i16, ptr @PL_dumpindent, align 2, !tbaa !52
  store i16 2, ptr @PL_dumpindent, align 2, !tbaa !52
  %20 = tail call ptr @Perl_PerlIO_stderr() #5
  %21 = icmp eq ptr %18, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !43
  %25 = and i32 %24, 2097152
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %18, i32 noundef 2) #5
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
  %42 = load ptr, ptr %18, align 8, !tbaa !50
  %43 = icmp eq ptr %42, null
  br i1 %43, label %78, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !54
  %47 = icmp ugt i64 %46, 1
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = icmp eq i64 %46, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  %53 = load i8, ptr %52, align 1, !tbaa !45
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
  %62 = load ptr, ptr %18, align 8, !tbaa !50
  %63 = getelementptr inbounds %struct.xpviv, ptr %62, i64 0, i32 4
  %64 = load i64, ptr %63, align 8, !tbaa !45
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61, %58
  %67 = and i32 %24, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %18, align 8, !tbaa !50
  %71 = getelementptr inbounds %struct.xpvnv, ptr %70, i64 0, i32 5
  %72 = load double, ptr %71, align 8, !tbaa !45
  %73 = fcmp uno double %72, 0.000000e+00
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = fcmp une double %72, 0.000000e+00
  br label %78

76:                                               ; preds = %55
  %77 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %18, i32 noundef 0) #5
  br label %78

78:                                               ; preds = %27, %76, %29, %44, %50, %48, %41, %66, %74, %69, %61, %16
  %79 = phi i1 [ false, %16 ], [ %28, %27 ], [ %77, %76 ], [ false, %29 ], [ false, %41 ], [ true, %44 ], [ false, %48 ], [ %54, %50 ], [ true, %61 ], [ false, %66 ], [ true, %69 ], [ %75, %74 ]
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %20, ptr noundef %0, i32 noundef 0, i32 noundef %1, i1 noundef zeroext %79, i64 noundef %17) #5
  store i16 %19, ptr @PL_dumpindent, align 2, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_do_sv_dump(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_op_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DeadCode() unnamed_addr #0 !prof !35 !PGOFuncName !83 {
  %1 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %2 = tail call ptr @Perl_newRV_noinc(ptr noundef %1) #5
  %3 = load ptr, ptr @PL_sv_arenaroot, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %268, label %13

5:                                                ; preds = %260, %13
  %6 = phi i32 [ %19, %13 ], [ %261, %260 ]
  %7 = phi i32 [ %18, %13 ], [ %262, %260 ]
  %8 = phi i32 [ %17, %13 ], [ %263, %260 ]
  %9 = phi i32 [ %16, %13 ], [ %264, %260 ]
  %10 = phi i32 [ %15, %13 ], [ %265, %260 ]
  %11 = load ptr, ptr %14, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %268, label %13, !llvm.loop !84

13:                                               ; preds = %0, %5
  %14 = phi ptr [ %11, %5 ], [ %3, %0 ]
  %15 = phi i32 [ %10, %5 ], [ 0, %0 ]
  %16 = phi i32 [ %9, %5 ], [ 0, %0 ]
  %17 = phi i32 [ %8, %5 ], [ 0, %0 ]
  %18 = phi i32 [ %7, %5 ], [ 0, %0 ]
  %19 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %20 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !64
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sv, ptr %14, i64 %22
  %24 = icmp ugt i32 %21, 1
  br i1 %24, label %25, label %5

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.sv, ptr %14, i64 1
  br label %27

27:                                               ; preds = %25, %260
  %28 = phi ptr [ %266, %260 ], [ %26, %25 ]
  %29 = phi ptr [ %28, %260 ], [ %14, %25 ]
  %30 = phi i32 [ %265, %260 ], [ %15, %25 ]
  %31 = phi i32 [ %264, %260 ], [ %16, %25 ]
  %32 = phi i32 [ %263, %260 ], [ %17, %25 ]
  %33 = phi i32 [ %262, %260 ], [ %18, %25 ]
  %34 = phi i32 [ %261, %260 ], [ %19, %25 ]
  %35 = getelementptr inbounds %struct.sv, ptr %29, i64 1, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !43
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %260

39:                                               ; preds = %27
  %40 = load ptr, ptr %28, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.xpvcv, ptr %40, i64 0, i32 12
  %42 = load i32, ptr %41, align 4, !tbaa !85
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %260

45:                                               ; preds = %39
  %46 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %28) #6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %260, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %28, align 8, !tbaa !87
  %50 = getelementptr inbounds %struct.xpvcv, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %260, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_PerlIO_stderr() #5
  %55 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %28) #6
  tail call void @Perl_do_gvgv_dump(i32 noundef 0, ptr noundef %54, ptr noundef nonnull @.str.31, ptr noundef %55) #5
  %56 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %28) #6
  %57 = load i32, ptr %56, align 4, !tbaa !41
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = tail call ptr @Perl_PerlIO_stderr() #5
  %61 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %60, ptr noundef nonnull @.str.32) #5
  br label %260

62:                                               ; preds = %53
  %63 = load ptr, ptr %28, align 8, !tbaa !87
  %64 = getelementptr inbounds %struct.xpvcv, ptr %63, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = getelementptr inbounds %struct.padlist, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !89
  %68 = load i64, ptr %65, align 8, !tbaa !91
  %69 = icmp slt i64 %68, 1
  br i1 %69, label %249, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds ptr, ptr %67, i64 1
  br label %72

72:                                               ; preds = %70, %234
  %73 = phi i64 [ 1, %70 ], [ %241, %234 ]
  %74 = phi i32 [ 0, %70 ], [ %240, %234 ]
  %75 = phi i32 [ 0, %70 ], [ %239, %234 ]
  %76 = phi i32 [ 0, %70 ], [ %238, %234 ]
  %77 = phi i32 [ 0, %70 ], [ %237, %234 ]
  %78 = phi i32 [ 0, %70 ], [ %236, %234 ]
  %79 = phi i32 [ 0, %70 ], [ %235, %234 ]
  %80 = getelementptr inbounds ptr, ptr %67, i64 %73
  %81 = load ptr, ptr %80, align 8, !tbaa !37
  %82 = icmp eq ptr %81, null
  br i1 %82, label %234, label %83, !llvm.loop !92

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.av, ptr %81, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !45
  %86 = load ptr, ptr %85, align 8, !tbaa !37
  %87 = icmp eq ptr %86, null
  %88 = icmp eq ptr %86, @PL_sv_undef
  %89 = or i1 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = tail call ptr @Perl_PerlIO_stderr() #5
  %92 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %91, ptr noundef nonnull @.str.33) #5
  br label %234, !llvm.loop !92

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.av, ptr %86, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !45
  %96 = load ptr, ptr %86, align 8, !tbaa !93
  %97 = getelementptr inbounds %struct.xpvav, ptr %96, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !95
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 3
  %101 = add i32 %100, 8
  %102 = getelementptr inbounds %struct.av, ptr %86, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !41
  %104 = and i32 %103, 1073741824
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %154, label %106

106:                                              ; preds = %93, %149
  %107 = phi i32 [ %153, %149 ], [ %103, %93 ]
  %108 = phi i64 [ %152, %149 ], [ 0, %93 ]
  %109 = phi i32 [ %150, %149 ], [ 0, %93 ]
  %110 = phi i32 [ %151, %149 ], [ 0, %93 ]
  %111 = and i32 %107, 8388608
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = tail call i32 @Perl_mg_size(ptr noundef nonnull %86) #5
  %115 = sext i32 %114 to i64
  br label %120

116:                                              ; preds = %106
  %117 = load ptr, ptr %86, align 8, !tbaa !93
  %118 = getelementptr inbounds %struct.xpvav, ptr %117, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !97
  br label %120

120:                                              ; preds = %116, %113
  %121 = phi i64 [ %115, %113 ], [ %119, %116 ]
  %122 = icmp sgt i64 %121, %108
  br i1 %122, label %123, label %154

123:                                              ; preds = %120
  %124 = getelementptr inbounds ptr, ptr %95, i64 %108
  %125 = load ptr, ptr %124, align 8, !tbaa !37
  %126 = getelementptr inbounds %struct.sv, ptr %125, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !43
  %128 = and i32 %127, 2048
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = tail call ptr @Perl_PerlIO_stderr() #5
  %132 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %131, ptr noundef nonnull @.str.34) #5
  %133 = add nsw i32 %109, 1
  br label %149

134:                                              ; preds = %123
  %135 = and i32 %127, 255
  %136 = icmp ugt i32 %135, 2
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load ptr, ptr %125, align 8, !tbaa !50
  %139 = getelementptr inbounds %struct.xpv, ptr %138, i64 0, i32 3
  %140 = load i64, ptr %139, align 8, !tbaa !45
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.sv, ptr %125, i64 0, i32 1
  %144 = load i32, ptr %143, align 8, !tbaa !64
  %145 = zext i32 %144 to i64
  %146 = udiv i64 %140, %145
  %147 = trunc i64 %146 to i32
  %148 = add i32 %110, %147
  br label %149

149:                                              ; preds = %130, %142, %137, %134
  %150 = phi i32 [ %133, %130 ], [ %109, %142 ], [ %109, %137 ], [ %109, %134 ]
  %151 = phi i32 [ %110, %130 ], [ %148, %142 ], [ %110, %137 ], [ %110, %134 ]
  %152 = add nuw nsw i64 %108, 1
  %153 = load i32, ptr %102, align 4, !tbaa !43
  br label %106, !llvm.loop !98

154:                                              ; preds = %120, %93
  %155 = phi i32 [ 0, %93 ], [ %109, %120 ]
  %156 = phi i32 [ 0, %93 ], [ %110, %120 ]
  br label %157

157:                                              ; preds = %216, %154
  %158 = phi i64 [ %221, %216 ], [ 1, %154 ]
  %159 = phi i32 [ %217, %216 ], [ 0, %154 ]
  %160 = phi i32 [ %218, %216 ], [ %155, %154 ]
  %161 = phi i32 [ %219, %216 ], [ 0, %154 ]
  %162 = phi i32 [ %220, %216 ], [ %74, %154 ]
  %163 = load ptr, ptr %71, align 8, !tbaa !37
  %164 = getelementptr inbounds %struct.sv, ptr %163, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !43
  %166 = and i32 %165, 8388608
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %157
  %169 = tail call i32 @Perl_mg_size(ptr noundef nonnull %163) #5
  %170 = sext i32 %169 to i64
  br label %175

171:                                              ; preds = %157
  %172 = load ptr, ptr %163, align 8, !tbaa !93
  %173 = getelementptr inbounds %struct.xpvav, ptr %172, i64 0, i32 2
  %174 = load i64, ptr %173, align 8, !tbaa !97
  br label %175

175:                                              ; preds = %171, %168
  %176 = phi i64 [ %170, %168 ], [ %174, %171 ]
  %177 = icmp sgt i64 %176, %158
  br i1 %177, label %178, label %222

178:                                              ; preds = %175
  %179 = getelementptr inbounds ptr, ptr %85, i64 %158
  %180 = load ptr, ptr %179, align 8, !tbaa !37
  %181 = icmp eq ptr %180, null
  br i1 %181, label %216, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.sv, ptr %180, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !43
  %185 = and i32 %184, 2048
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = add nsw i32 %160, 1
  %189 = tail call ptr @Perl_PerlIO_stderr() #5
  %190 = load ptr, ptr %179, align 8, !tbaa !37
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %189, ptr noundef %190, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i64 noundef 0) #5
  br label %216

191:                                              ; preds = %182
  %192 = and i32 %184, 255
  %193 = icmp ugt i32 %192, 10
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = and i32 %184, 131072
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %216, label %197

197:                                              ; preds = %194
  %198 = add nsw i32 %160, 1
  %199 = tail call ptr @Perl_PerlIO_stderr() #5
  %200 = load ptr, ptr %179, align 8, !tbaa !37
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %199, ptr noundef %200, i32 noundef 0, i32 noundef 4, i1 noundef zeroext false, i64 noundef 0) #5
  br label %216

201:                                              ; preds = %191
  %202 = icmp ugt i32 %192, 2
  br i1 %202, label %203, label %216

203:                                              ; preds = %201
  %204 = load ptr, ptr %180, align 8, !tbaa !50
  %205 = getelementptr inbounds %struct.xpv, ptr %204, i64 0, i32 3
  %206 = load i64, ptr %205, align 8, !tbaa !45
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %203
  %209 = add nsw i32 %161, 1
  %210 = getelementptr inbounds %struct.sv, ptr %180, i64 0, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !64
  %212 = zext i32 %211 to i64
  %213 = udiv i64 %206, %212
  %214 = trunc i64 %213 to i32
  %215 = add i32 %159, %214
  br label %216

216:                                              ; preds = %187, %201, %203, %208, %194, %197, %178
  %217 = phi i32 [ %159, %187 ], [ %159, %197 ], [ %159, %194 ], [ %215, %208 ], [ %159, %203 ], [ %159, %201 ], [ %159, %178 ]
  %218 = phi i32 [ %188, %187 ], [ %198, %197 ], [ %160, %194 ], [ %160, %208 ], [ %160, %203 ], [ %160, %201 ], [ %160, %178 ]
  %219 = phi i32 [ %161, %187 ], [ %161, %197 ], [ %161, %194 ], [ %209, %208 ], [ %161, %203 ], [ %161, %201 ], [ %161, %178 ]
  %220 = phi i32 [ 1, %187 ], [ 1, %197 ], [ %162, %194 ], [ %162, %208 ], [ %162, %203 ], [ %162, %201 ], [ %162, %178 ]
  %221 = add nuw nsw i64 %158, 1
  br label %157, !llvm.loop !99

222:                                              ; preds = %175
  %223 = tail call ptr @Perl_PerlIO_stderr() #5
  %224 = trunc i64 %73 to i32
  %225 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %223, ptr noundef nonnull @.str.35, i32 noundef %224, i32 noundef %160, i32 noundef %159, i32 noundef %161, i32 noundef %101, i32 noundef %156) #5
  %226 = add nsw i32 %159, %79
  %227 = add nsw i32 %101, %76
  %228 = add nsw i32 %156, %75
  %229 = add nsw i32 %161, %77
  %230 = add nsw i32 %160, %78
  %231 = icmp eq i32 %162, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %222
  %233 = tail call ptr @Perl_PerlIO_stderr() #5
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %233, ptr noundef nonnull %28, i32 noundef 0, i32 noundef 2, i1 noundef zeroext false, i64 noundef 0) #5
  br label %234

234:                                              ; preds = %222, %232, %72, %90
  %235 = phi i32 [ %79, %90 ], [ %79, %72 ], [ %226, %232 ], [ %226, %222 ]
  %236 = phi i32 [ %78, %90 ], [ %78, %72 ], [ %230, %232 ], [ %230, %222 ]
  %237 = phi i32 [ %77, %90 ], [ %77, %72 ], [ %229, %232 ], [ %229, %222 ]
  %238 = phi i32 [ %76, %90 ], [ %76, %72 ], [ %227, %232 ], [ %227, %222 ]
  %239 = phi i32 [ %75, %90 ], [ %75, %72 ], [ %228, %232 ], [ %228, %222 ]
  %240 = phi i32 [ %74, %90 ], [ %74, %72 ], [ %162, %232 ], [ 0, %222 ]
  %241 = add nuw i64 %73, 1
  %242 = load i64, ptr %65, align 8, !tbaa !91
  %243 = icmp slt i64 %242, %241
  br i1 %243, label %244, label %72

244:                                              ; preds = %234
  %245 = icmp sgt i64 %242, 1
  br i1 %245, label %246, label %249

246:                                              ; preds = %244
  %247 = tail call ptr @Perl_PerlIO_stderr() #5
  %248 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %247, ptr noundef nonnull @.str.36, i32 noundef %236, i32 noundef %235, i32 noundef %237, i32 noundef %238, i32 noundef %239) #5
  br label %249

249:                                              ; preds = %62, %246, %244
  %250 = phi i32 [ %239, %246 ], [ %239, %244 ], [ 0, %62 ]
  %251 = phi i32 [ %238, %246 ], [ %238, %244 ], [ 0, %62 ]
  %252 = phi i32 [ %237, %246 ], [ %237, %244 ], [ 0, %62 ]
  %253 = phi i32 [ %236, %246 ], [ %236, %244 ], [ 0, %62 ]
  %254 = phi i32 [ %235, %246 ], [ %235, %244 ], [ 0, %62 ]
  %255 = add nsw i32 %253, %31
  %256 = add nsw i32 %254, %30
  %257 = add nsw i32 %252, %32
  %258 = add nsw i32 %251, %33
  %259 = add nsw i32 %250, %34
  br label %260

260:                                              ; preds = %59, %249, %39, %45, %48, %27
  %261 = phi i32 [ %34, %27 ], [ %34, %59 ], [ %259, %249 ], [ %34, %39 ], [ %34, %45 ], [ %34, %48 ]
  %262 = phi i32 [ %33, %27 ], [ %33, %59 ], [ %258, %249 ], [ %33, %39 ], [ %33, %45 ], [ %33, %48 ]
  %263 = phi i32 [ %32, %27 ], [ %32, %59 ], [ %257, %249 ], [ %32, %39 ], [ %32, %45 ], [ %32, %48 ]
  %264 = phi i32 [ %31, %27 ], [ %31, %59 ], [ %255, %249 ], [ %31, %39 ], [ %31, %45 ], [ %31, %48 ]
  %265 = phi i32 [ %30, %27 ], [ %30, %59 ], [ %256, %249 ], [ %30, %39 ], [ %30, %45 ], [ %30, %48 ]
  %266 = getelementptr inbounds %struct.sv, ptr %28, i64 1
  %267 = icmp ult ptr %266, %23
  br i1 %267, label %27, label %5, !llvm.loop !100

268:                                              ; preds = %5, %0
  %269 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %270 = phi i32 [ 0, %0 ], [ %7, %5 ]
  %271 = phi i32 [ 0, %0 ], [ %8, %5 ]
  %272 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %273 = phi i32 [ 0, %0 ], [ %10, %5 ]
  %274 = tail call ptr @Perl_PerlIO_stderr() #5
  %275 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %274, ptr noundef nonnull @.str.37, i32 noundef %272, i32 noundef %273, i32 noundef %271, i32 noundef %270, i32 noundef %269) #5
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #5
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @Perl_do_gvgv_dump(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !35 !PGOFuncName !102 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #3 !prof !35 !PGOFuncName !103 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !64
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @_runops_debug(i32 noundef %0) unnamed_addr #4 !prof !35 !PGOFuncName !104 {
  %2 = load ptr, ptr @PL_runops, align 8, !tbaa !37
  %3 = icmp sgt i32 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 0
  %6 = select i1 %5, ptr @Perl_runops_standard, ptr @Perl_runops_debug
  store ptr %6, ptr @PL_runops, align 8, !tbaa !37
  br label %7

7:                                                ; preds = %4, %1
  %8 = icmp eq ptr %2, @Perl_runops_debug
  ret i1 %8
}

; Function Attrs: optsize
declare i32 @Perl_runops_debug() #1

; Function Attrs: optsize
declare i32 @Perl_runops_standard() #1

; Function Attrs: optsize
declare ptr @Perl_ck_entersub_args_proto(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_op_sibling_splice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_op_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_Slab_Alloc(i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!"Peek.c:XS_Devel__Peek_mstat"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = !{!44, !42, i64 12}
!44 = !{!"sv", !38, i64 0, !42, i64 8, !42, i64 12, !39, i64 16}
!45 = !{!39, !39, i64 0}
!46 = !{!"Peek.c:XS_Devel__Peek_fill_mstats"}
!47 = !{!"Peek.c:XS_Devel__Peek_mstats_fillhash"}
!48 = !{!"Peek.c:XS_Devel__Peek_mstats2hash"}
!49 = !{!"Peek.c:XS_Devel__Peek_Dump"}
!50 = !{!44, !38, i64 0}
!51 = !{!"Peek.c:XS_Devel__Peek_DumpArray"}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !39, i64 0}
!54 = !{!55, !56, i64 16}
!55 = !{!"xpv", !38, i64 0, !39, i64 8, !56, i64 16, !39, i64 24}
!56 = !{!"long", !39, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"Peek.c:XS_Devel__Peek_DumpProg"}
!60 = !{!"Peek.c:XS_Devel__Peek_SvREFCNT"}
!61 = !{!62, !39, i64 35}
!62 = !{!"op", !38, i64 0, !38, i64 8, !38, i64 16, !56, i64 24, !42, i64 32, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !39, i64 34, !39, i64 35}
!63 = !{!62, !56, i64 24}
!64 = !{!44, !42, i64 8}
!65 = !{!"Peek.c:XS_Devel__Peek_DeadCode"}
!66 = !{!"Peek.c:XS_Devel__Peek_CvGV"}
!67 = !{!"Peek.c:XS_Devel__Peek_runops_debug"}
!68 = !{!"Peek.c:S_ck_dump"}
!69 = !{!70, !38, i64 40}
!70 = !{!"unop", !38, i64 0, !38, i64 8, !38, i64 16, !56, i64 24, !42, i64 32, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !39, i64 34, !39, i64 35, !38, i64 40}
!71 = !{!62, !38, i64 8}
!72 = !{!62, !39, i64 34}
!73 = !{!74, !38, i64 16}
!74 = !{!"binop", !38, i64 0, !38, i64 8, !38, i64 16, !56, i64 24, !42, i64 32, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !39, i64 34, !39, i64 35, !38, i64 40, !38, i64 48}
!75 = !{!74, !39, i64 35}
!76 = !{!74, !39, i64 34}
!77 = !{!"Peek.c:S_pp_dump"}
!78 = !{!62, !38, i64 0}
!79 = !{!"Peek.c:fill_mstats"}
!80 = !{!"Peek.c:mstats_fillhash"}
!81 = !{!"Peek.c:mstats2hash"}
!82 = !{!"Peek.c:S_do_dump"}
!83 = !{!"Peek.c:DeadCode"}
!84 = distinct !{!84, !58}
!85 = !{!86, !42, i64 92}
!86 = !{!"xpvcv", !38, i64 0, !39, i64 8, !56, i64 16, !39, i64 24, !38, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !38, i64 64, !39, i64 72, !38, i64 80, !42, i64 88, !42, i64 92, !42, i64 96}
!87 = !{!88, !38, i64 0}
!88 = !{!"cv", !38, i64 0, !42, i64 8, !42, i64 12, !39, i64 16}
!89 = !{!90, !38, i64 8}
!90 = !{!"padlist", !56, i64 0, !38, i64 8, !42, i64 16, !42, i64 20}
!91 = !{!90, !56, i64 0}
!92 = distinct !{!92, !58}
!93 = !{!94, !38, i64 0}
!94 = !{!"av", !38, i64 0, !42, i64 8, !42, i64 12, !39, i64 16}
!95 = !{!96, !56, i64 24}
!96 = !{!"xpvav", !38, i64 0, !39, i64 8, !56, i64 16, !56, i64 24, !38, i64 32}
!97 = !{!96, !56, i64 16}
!98 = distinct !{!98, !58}
!99 = distinct !{!99, !58}
!100 = distinct !{!100, !58}
!101 = !{!"Peek.c:S_CvGV"}
!102 = !{!"Peek.c:S_CvDEPTHp"}
!103 = !{!"Peek.c:S_SvREFCNT_inc"}
!104 = !{!"Peek.c:_runops_debug"}
