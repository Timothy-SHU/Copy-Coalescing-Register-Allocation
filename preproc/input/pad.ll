; ModuleID = 'pad.c'
source_filename = "pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.padname = type { ptr, ptr, %union.anon.0, i32, i32, i32, i32, i8, i8 }
%union.anon.0 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.av = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.padnamelist = type { i64, ptr, i64, i64, i32 }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.cv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.2, ptr, %union.anon.3, %union.anon.4, %union.anon.5, ptr, %union.anon.6, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%struct.opslab = type { ptr, ptr, ptr, i64, %struct.opslot }
%struct.opslot = type { ptr, ptr, %struct.op }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.padname_with_str = type { ptr, ptr, %union.anon.12, i32, i32, i32, i32, i8, i8, [1 x i8] }
%union.anon.12 = type { ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, %union._xnvu }
%union.anon.14 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hv = type { ptr, i32, i32, %union.anon.10 }
%union.anon.10 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.11, %union._xivu, %union._xnvu }
%union.anon.11 = type { i64 }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }

@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_comppad_name = external global ptr, align 8
@PL_padix = external global i32, align 4
@PL_constpadix = external global i32, align 4
@PL_comppad_name_fill = external global i32, align 4
@PL_min_intro_pending = external global i32, align 4
@PL_max_intro_pending = external global i32, align 4
@PL_cv_has_eval = external global i8, align 1
@PL_pad_reset_pending = external global i8, align 1
@PL_padlist_generation = external local_unnamed_addr global i32, align 4
@PL_padname_undef = external global %struct.padname, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Can't undef active subroutine\00", align 1
@PL_parser = external local_unnamed_addr global ptr, align 8
@PL_phase = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"panic: pad_add_name_pvn illegal flag bits 0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"panic: pad_alloc, %p!=%p\00", align 1
@PL_padname_const = external global %struct.padname, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"panic: pad_findmy_pvn illegal flag bits 0x%lx\00", align 1
@PL_compcv = external global ptr, align 8
@PL_cop_seqmax = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"$_\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_comppad_name_floor = external global i32, align 4
@PL_padix_floor = external global i32, align 4
@PL_compiling = external local_unnamed_addr global %struct.cop, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"%d%lu%4p never introduced\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"panic: pad_swipe curpad, %p!=%p\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"panic: pad_swipe po=%ld, fill=%ld\00", align 1
@PL_perldb = external local_unnamed_addr global i32, align 4
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"panic: pad_free curpad, %p!=%p\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"panic: pad_free po\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"PADNAME = 0x%lx(0x%lx) PAD = 0x%lx(0x%lx)\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"%2d. 0x%lx<%lu> FAKE \22%s\22 flags=0x%lx index=%lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%2d. 0x%lx<%lu> (%lu,%lu) \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%2d. 0x%lx<%lu>\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"panic: no pad in cv_clone\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"\22%s\22 %s %d%lu%4p masks earlier declaration in same %s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\22our\22 variable %d%lu%4p redeclared\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"\09(Did you mean \22local\22 instead of \22our\22?)\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"panic: pad_findlex illegal flag bits 0x%lx\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"%se \22%d%lu%4p\22 will not stay shared\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Subroutin\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Variabl\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"%se \22%d%lu%4p\22 is not available\00", align 1
@.str.33 = private unnamed_addr constant [79 x i8] c"Constants from lexical variables potentially modified elsewhere are deprecated\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pad_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %5, 0
  br label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  tail call void @Perl_save_pushptr(ptr noundef %8, i32 noundef 7) #14
  %9 = and i32 %0, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_comppad_name) #14
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_padix) #14
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_constpadix) #14
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_fill) #14
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_min_intro_pending) #14
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_max_intro_pending) #14
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_cv_has_eval) #14
  %12 = and i32 %0, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_pad_reset_pending) #14
  br label %15

15:                                               ; preds = %4, %7, %14, %11
  %16 = phi i1 [ %6, %4 ], [ false, %7 ], [ true, %14 ], [ true, %11 ]
  %17 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 24) #14
  %18 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  br i1 %16, label %30, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %21 = tail call ptr @Perl_av_store(ptr noundef %18, i64 noundef 0, ptr noundef %20) #14
  %22 = getelementptr inbounds %struct.av, ptr %20, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !9
  %24 = and i32 %23, 1073741823
  %25 = or disjoint i32 %24, -2147483648
  store i32 %25, ptr %22, align 4, !tbaa !9
  %26 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.padnamelist, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !12
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !12
  br label %37

30:                                               ; preds = %15
  %31 = load i32, ptr @PL_padlist_generation, align 4, !tbaa !15
  %32 = add i32 %31, 1
  store i32 %32, ptr @PL_padlist_generation, align 4, !tbaa !15
  %33 = getelementptr inbounds %struct.padlist, ptr %17, i64 0, i32 2
  store i32 %31, ptr %33, align 8, !tbaa !16
  %34 = tail call ptr @Perl_av_store(ptr noundef %18, i64 noundef 0, ptr noundef null) #14
  %35 = tail call ptr @Perl_newPADNAMELIST(i64 noundef 0) #15
  %36 = tail call ptr @Perl_padnamelist_store(ptr noundef %35, i64 noundef 0, ptr noundef nonnull @PL_padname_undef) #15
  br label %37

37:                                               ; preds = %30, %19
  %38 = phi ptr [ %26, %19 ], [ %35, %30 ]
  %39 = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #14
  store i64 1, ptr %17, align 8, !tbaa !18
  %40 = getelementptr inbounds %struct.padlist, ptr %17, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !19
  store ptr %38, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds ptr, ptr %39, i64 1
  store ptr %18, ptr %41, align 8, !tbaa !5
  store ptr %18, ptr @PL_comppad, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.av, ptr %18, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !20
  store ptr %43, ptr @PL_curpad, align 8, !tbaa !5
  br i1 %16, label %44, label %45

44:                                               ; preds = %37
  store ptr %38, ptr @PL_comppad_name, align 8, !tbaa !5
  store i32 0, ptr @PL_comppad_name_fill, align 4, !tbaa !15
  store i32 0, ptr @PL_min_intro_pending, align 4, !tbaa !15
  store i32 0, ptr @PL_padix, align 4, !tbaa !15
  store i32 0, ptr @PL_constpadix, align 4, !tbaa !15
  store i8 0, ptr @PL_cv_has_eval, align 1, !tbaa !21
  br label %45

45:                                               ; preds = %44, %37
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_I32(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_bool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_newPADNAMELIST(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @Perl_safesysmalloc(i64 noundef 40) #14
  %3 = add i64 %0, 1
  %4 = tail call ptr @Perl_safesyscalloc(i64 noundef %3, i64 noundef 8) #14
  %5 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !23
  store i64 -1, ptr %2, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 4
  store i32 1, ptr %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 3
  store i64 0, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 2
  store i64 %0, ptr %8, align 8, !tbaa !26
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_padnamelist_store(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !26
  %6 = icmp slt i64 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %8) #14
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i64, ptr %0, align 8, !tbaa !24
  %11 = icmp slt i64 %10, %1
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds ptr, ptr %14, i64 %10
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = sub nsw i64 %1, %10
  %18 = shl i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %18, i1 false)
  store i64 %1, ptr %0, align 8, !tbaa !24
  br label %19

19:                                               ; preds = %12, %9
  %20 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = getelementptr inbounds ptr, ptr %21, i64 %1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @Perl_padname_free(ptr noundef nonnull %23) #15
  br label %26

26:                                               ; preds = %25, %19
  store ptr %2, ptr %22, align 8, !tbaa !5
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_cv_undef(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @Perl_cv_undef_flags(ptr noundef %0, i32 noundef 0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_cv_undef_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !27
  store ptr %4, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  store ptr null, ptr %5, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 12
  %10 = load i32, ptr %9, align 4, !tbaa !31
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @Perl_safesysfree(ptr noundef nonnull %6) #14
  br label %14

14:                                               ; preds = %8, %13, %2
  %15 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !31
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 6
  br i1 %18, label %20, label %61

20:                                               ; preds = %14
  %21 = load ptr, ptr %19, align 8, !tbaa !20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str) #14
  br label %28

28:                                               ; preds = %27, %23
  tail call void @Perl_push_scope() #14
  %29 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  tail call void @Perl_save_pushptr(ptr noundef %29, i32 noundef 7) #14
  store ptr null, ptr @PL_comppad, align 8, !tbaa !5
  store ptr null, ptr @PL_curpad, align 8, !tbaa !5
  %30 = load i32, ptr %15, align 4, !tbaa !31
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %19, align 8, !tbaa !20
  %35 = getelementptr inbounds i8, ptr %34, i64 -8
  %36 = load ptr, ptr %35, align 8, !tbaa !33
  %37 = getelementptr inbounds %struct.opslab, ptr %36, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !36
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  tail call void @Perl_opslab_free(ptr noundef nonnull %36) #14
  br label %43

41:                                               ; preds = %33
  %42 = add i64 %38, -1
  store i64 %42, ptr %37, align 8, !tbaa !36
  br label %43

43:                                               ; preds = %40, %41, %28
  %44 = load ptr, ptr %19, align 8, !tbaa !20
  tail call void @Perl_op_free(ptr noundef %44) #14
  %45 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  tail call void @Perl_pop_scope() #14
  br label %62

46:                                               ; preds = %20
  %47 = and i32 %16, 2048
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  tail call void @Perl_push_scope() #14
  %54 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  tail call void @Perl_save_pushptr(ptr noundef %54, i32 noundef 7) #14
  store ptr null, ptr @PL_comppad, align 8, !tbaa !5
  store ptr null, ptr @PL_curpad, align 8, !tbaa !5
  %55 = load ptr, ptr @PL_parser, align 8, !tbaa !5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %50, align 8, !tbaa !20
  tail call void @Perl_parser_free_nexttoke_ops(ptr noundef nonnull %55, ptr noundef %58) #14
  br label %59

59:                                               ; preds = %57, %53
  %60 = load ptr, ptr %50, align 8, !tbaa !20
  tail call void @Perl_opslab_force_free(ptr noundef %60) #14
  store ptr null, ptr %50, align 8, !tbaa !20
  tail call void @Perl_pop_scope() #14
  br label %62

61:                                               ; preds = %14
  store ptr null, ptr %19, align 8, !tbaa !20
  br label %62

62:                                               ; preds = %43, %49, %59, %46, %61
  %63 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !38
  %65 = and i32 %64, -17409
  store i32 %65, ptr %63, align 4, !tbaa !38
  %66 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %0, i32 noundef 93) #14
  %67 = and i32 %1, 1
  %68 = icmp eq i32 %67, 0
  %69 = load i32, ptr %15, align 4, !tbaa !31
  br i1 %68, label %70, label %86

70:                                               ; preds = %62
  %71 = and i32 %69, 32768
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %70
  %74 = call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %3) #15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !20
  tail call void @Perl_unshare_hek(ptr noundef %78) #14
  %79 = load i32, ptr %15, align 4, !tbaa !31
  br label %80

80:                                               ; preds = %73, %76
  %81 = phi i32 [ %69, %73 ], [ %79, %76 ]
  %82 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 7
  store ptr null, ptr %82, align 8, !tbaa !20
  %83 = and i32 %81, -32769
  store i32 %83, ptr %15, align 4, !tbaa !31
  br label %86

84:                                               ; preds = %70
  tail call void @Perl_cvgv_set(ptr noundef nonnull %0, ptr noundef null) #14
  %85 = load i32, ptr %15, align 4, !tbaa !31
  br label %86

86:                                               ; preds = %80, %84, %62
  %87 = phi i32 [ %83, %80 ], [ %85, %84 ], [ %69, %62 ]
  %88 = and i32 %87, 8
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 9
  br i1 %89, label %91, label %203

91:                                               ; preds = %86
  %92 = load ptr, ptr %90, align 8, !tbaa !20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %204, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr @PL_phase, align 4, !tbaa !15
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %166, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 10
  %99 = load ptr, ptr %98, align 8, !tbaa !40
  %100 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 11
  %101 = load i32, ptr %100, align 8, !tbaa !41
  %102 = getelementptr inbounds %struct.padlist, ptr %92, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !19
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.padnamelist, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !23
  %107 = getelementptr inbounds ptr, ptr %103, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds %struct.av, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !20
  %111 = load i64, ptr %104, align 8, !tbaa !24
  %112 = trunc i64 %111 to i32
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %166

114:                                              ; preds = %97
  %115 = getelementptr inbounds %struct.av, ptr %108, i64 0, i32 1
  %116 = icmp eq ptr %99, null
  %117 = getelementptr inbounds %struct.cv, ptr %99, i64 0, i32 1
  %118 = and i64 %111, 4294967295
  br label %119

119:                                              ; preds = %114, %163
  %120 = phi i64 [ %118, %114 ], [ %164, %163 ]
  %121 = getelementptr inbounds ptr, ptr %106, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %163, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %122, align 8, !tbaa !42
  %126 = icmp eq ptr %125, null
  br i1 %126, label %163, label %127

127:                                              ; preds = %124
  %128 = load i8, ptr %125, align 1, !tbaa !20
  %129 = icmp eq i8 %128, 38
  br i1 %129, label %130, label %163

130:                                              ; preds = %127
  %131 = getelementptr inbounds ptr, ptr %110, i64 %120
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.cv, ptr %132, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !44
  %135 = load i32, ptr %115, align 8, !tbaa !45
  %136 = icmp ult i32 %135, 2
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  store ptr null, ptr %131, align 8, !tbaa !5
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %132) #15
  %138 = add i32 %134, -1
  br label %139

139:                                              ; preds = %137, %130
  %140 = phi i32 [ %138, %137 ], [ %134, %130 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %163, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.cv, ptr %132, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !46
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, 13
  br i1 %146, label %147, label %163

147:                                              ; preds = %142
  %148 = load ptr, ptr %132, align 8, !tbaa !27
  %149 = getelementptr inbounds %struct.xpvcv, ptr %148, i64 0, i32 10
  %150 = load ptr, ptr %149, align 8, !tbaa !40
  %151 = icmp eq ptr %150, %0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  br i1 %116, label %162, label %153

153:                                              ; preds = %152
  %154 = load i32, ptr %117, align 8, !tbaa !15
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.xpvcv, ptr %148, i64 0, i32 12
  %158 = load i32, ptr %157, align 4, !tbaa !31
  %159 = and i32 %158, -17
  store i32 %159, ptr %157, align 4, !tbaa !31
  store ptr %99, ptr %149, align 8, !tbaa !40
  %160 = getelementptr inbounds %struct.xpvcv, ptr %148, i64 0, i32 11
  store i32 %101, ptr %160, align 8, !tbaa !41
  %161 = add i32 %154, 1
  store i32 %161, ptr %117, align 8, !tbaa !47
  br label %163

162:                                              ; preds = %153, %152
  store ptr null, ptr %149, align 8, !tbaa !40
  br label %163

163:                                              ; preds = %139, %142, %147, %162, %156, %127, %124, %119
  %164 = add nsw i64 %120, -1
  %165 = icmp sgt i64 %120, 1
  br i1 %165, label %119, label %166, !llvm.loop !48

166:                                              ; preds = %163, %97, %94
  %167 = load i64, ptr %92, align 8, !tbaa !18
  %168 = trunc i64 %167 to i32
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.padlist, ptr %92, i64 0, i32 1
  %172 = and i64 %167, 4294967295
  br label %173

173:                                              ; preds = %170, %185
  %174 = phi i64 [ %172, %170 ], [ %176, %185 ]
  %175 = load ptr, ptr %171, align 8, !tbaa !19
  %176 = add nsw i64 %174, -1
  %177 = getelementptr inbounds ptr, ptr %175, i64 %174
  %178 = load ptr, ptr %177, align 8, !tbaa !5
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %173
  %181 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %182 = icmp eq ptr %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store ptr null, ptr @PL_comppad, align 8, !tbaa !5
  store ptr null, ptr @PL_curpad, align 8, !tbaa !5
  br label %184

184:                                              ; preds = %183, %180
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %178) #15
  br label %185

185:                                              ; preds = %184, %173
  %186 = icmp ugt i64 %174, 1
  br i1 %186, label %173, label %187, !llvm.loop !50

187:                                              ; preds = %185, %166
  %188 = getelementptr inbounds %struct.padlist, ptr %92, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !19
  %190 = load ptr, ptr %189, align 8, !tbaa !5
  %191 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %192 = icmp eq ptr %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.padnamelist, ptr %190, i64 0, i32 4
  %195 = load i32, ptr %194, align 8, !tbaa !12
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  store ptr null, ptr @PL_comppad_name, align 8, !tbaa !5
  br label %198

198:                                              ; preds = %197, %193, %187
  tail call void @Perl_padnamelist_free(ptr noundef %190) #15
  %199 = load ptr, ptr %188, align 8, !tbaa !19
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  tail call void @Perl_safesysfree(ptr noundef nonnull %199) #14
  br label %202

202:                                              ; preds = %201, %198
  tail call void @Perl_safesysfree(ptr noundef nonnull %92) #14
  br label %203

203:                                              ; preds = %86, %202
  store ptr null, ptr %90, align 8, !tbaa !20
  br label %204

204:                                              ; preds = %203, %91
  %205 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !44
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 10
  %210 = load ptr, ptr %209, align 8, !tbaa !40
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  store ptr null, ptr %209, align 8, !tbaa !40
  %213 = load i32, ptr %15, align 4, !tbaa !31
  %214 = and i32 %213, 16
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %210) #15
  br label %217

217:                                              ; preds = %208, %216, %212, %204
  %218 = load i32, ptr %15, align 4, !tbaa !31
  %219 = and i32 %218, 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 5
  %223 = load ptr, ptr %222, align 8, !tbaa !20
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %223) #15
  %224 = load i32, ptr %15, align 4, !tbaa !31
  br label %225

225:                                              ; preds = %221, %217
  %226 = phi i32 [ %224, %221 ], [ %218, %217 ]
  %227 = and i32 %226, 99472
  store i32 %227, ptr %15, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_opslab_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_op_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_parser_free_nexttoke_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_opslab_force_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CvNAME_HEK(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !27
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !31
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_cvgv_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !47
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #14
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_padnamelist_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !12
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 8, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8, !tbaa !24
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i64 [ %7, %9 ], [ %21, %20 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !23
  %14 = add nsw i64 %12, -1
  store i64 %14, ptr %0, align 8, !tbaa !24
  %15 = getelementptr inbounds ptr, ptr %13, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @Perl_padname_free(ptr noundef nonnull %16) #15
  %19 = load i64, ptr %0, align 8, !tbaa !24
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i64 [ %19, %18 ], [ %14, %11 ]
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %11, label %23, !llvm.loop !51

23:                                               ; preds = %20, %6
  %24 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  tail call void @Perl_safesysfree(ptr noundef %25) #14
  tail call void @Perl_safesysfree(ptr noundef nonnull %0) #14
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !47
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #14
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_cv_forget_slab(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !31
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  %10 = and i32 %6, -2049
  store i32 %10, ptr %5, align 4, !tbaa !31
  %11 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds i8, ptr %12, i64 -8
  %15 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 5
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.opslab, ptr %17, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !36
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @Perl_opslab_free_nopad(ptr noundef nonnull %17) #14
  br label %26

24:                                               ; preds = %19
  %25 = add i64 %21, -1
  store i64 %25, ptr %20, align 8, !tbaa !36
  br label %26

26:                                               ; preds = %9, %24, %23, %3, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_opslab_free_nopad(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_pad_add_name_pvn(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp ult i32 %2, 8
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i64 noundef %8) #14
  br label %9

9:                                                ; preds = %7, %5
  %10 = tail call ptr @Perl_newPADNAMEpvn(ptr noundef %0, i64 noundef %1) #15
  %11 = and i32 %2, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_pushptr(ptr noundef %10, i32 noundef 22) #14
  %14 = and i32 %2, 1
  tail call fastcc void @S_pad_check_dup(ptr noundef %10, i32 noundef %14, ptr noundef %4) #15
  %15 = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !52
  tail call void @Perl_pop_scope() #14
  br label %18

18:                                               ; preds = %13, %9
  %19 = tail call fastcc i64 @S_pad_alloc_name(ptr noundef %10, i32 noundef %2, ptr noundef %3, ptr noundef %4) #15, !range !53
  %20 = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 3
  store i32 -1, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 4
  store i32 0, ptr %21, align 4, !tbaa !55
  %22 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !15
  %23 = icmp eq i32 %22, 0
  %24 = trunc i64 %19 to i32
  br i1 %23, label %25, label %26

25:                                               ; preds = %18
  store i32 %24, ptr @PL_min_intro_pending, align 4, !tbaa !15
  br label %26

26:                                               ; preds = %18, %25
  store i32 %24, ptr @PL_max_intro_pending, align 4, !tbaa !15
  %27 = icmp eq i64 %1, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = load i8, ptr %0, align 1, !tbaa !20
  switch i8 %29, label %37 [
    i8 64, label %32
    i8 37, label %30
    i8 38, label %31
  ]

30:                                               ; preds = %28
  br label %32

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %28, %31, %30
  %33 = phi i32 [ 12, %30 ], [ 13, %31 ], [ 11, %28 ]
  %34 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %35 = getelementptr inbounds ptr, ptr %34, i64 %19
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  tail call void @Perl_sv_upgrade(ptr noundef %36, i32 noundef %33) #14
  br label %37

37:                                               ; preds = %32, %28, %26
  ret i64 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_newPADNAMEpvn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 43
  %4 = tail call ptr @Perl_safesyscalloc(i64 noundef %3, i64 noundef 1) #14
  %5 = getelementptr inbounds %struct.padname, ptr %4, i64 0, i32 5
  store i32 1, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.padname_with_str, ptr %4, i64 0, i32 9
  store ptr %6, ptr %4, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %0, i64 %1, i1 false)
  %7 = getelementptr inbounds i8, ptr %6, i64 %1
  store i8 0, ptr %7, align 1, !tbaa !20
  %8 = trunc i64 %1 to i8
  %9 = getelementptr inbounds %struct.padname, ptr %4, i64 0, i32 7
  store i8 %8, ptr %9, align 8, !tbaa !56
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_pad_check_dup(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = and i32 %1, 1
  %5 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %6 = load i64, ptr %5, align 8, !tbaa !24
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %123, label %8

8:                                                ; preds = %3
  %9 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #14
  br i1 %9, label %10, label %123

10:                                               ; preds = %8
  %11 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = load i64, ptr %11, align 8, !tbaa !24
  %15 = load i32, ptr @PL_comppad_name_floor, align 4, !tbaa !15
  %16 = trunc i64 %14 to i32
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 7
  br label %20

20:                                               ; preds = %18, %71
  %21 = phi i64 [ %14, %18 ], [ %72, %71 ]
  %22 = getelementptr inbounds ptr, ptr %13, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %71, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 7
  %27 = load i8, ptr %26, align 8, !tbaa !56
  %28 = load i8, ptr %19, align 8, !tbaa !56
  %29 = icmp eq i8 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 8
  %32 = load i8, ptr %31, align 1, !tbaa !57
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !54
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !55
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %71

43:                                               ; preds = %39, %35
  %44 = load ptr, ptr %23, align 8, !tbaa !42
  %45 = load ptr, ptr %0, align 8, !tbaa !42
  %46 = zext i8 %27 to i64
  %47 = tail call i32 @bcmp(ptr %44, ptr %45, i64 %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = icmp eq i32 %4, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %75

55:                                               ; preds = %49
  %56 = load ptr, ptr @PL_parser, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.yy_parser, ptr %56, i64 0, i32 42
  %58 = load i16, ptr %57, align 4, !tbaa !59
  %59 = icmp eq i16 %58, 133
  %60 = select i1 %59, ptr @.str.19, ptr @.str.20
  br label %61

61:                                               ; preds = %51, %55
  %62 = phi ptr [ %60, %55 ], [ @.str.18, %51 ]
  %63 = load i8, ptr %44, align 1, !tbaa !20
  %64 = icmp eq i8 %63, 38
  %65 = select i1 %64, ptr @.str.21, ptr @.str.22
  %66 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !55
  %68 = icmp eq i32 %67, -1
  %69 = select i1 %68, ptr @.str.23, ptr @.str.24
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.17, ptr noundef nonnull %62, ptr noundef nonnull %65, i32 noundef 1, i64 noundef %46, ptr noundef nonnull %44, ptr noundef nonnull %69) #14
  %70 = add i64 %21, -1
  br label %75

71:                                               ; preds = %43, %39, %30, %25, %20
  %72 = add i64 %21, -1
  %73 = trunc i64 %72 to i32
  %74 = icmp slt i32 %15, %73
  br i1 %74, label %20, label %75, !llvm.loop !63

75:                                               ; preds = %71, %10, %61, %51
  %76 = phi i64 [ %70, %61 ], [ %21, %51 ], [ %14, %10 ], [ %72, %71 ]
  %77 = icmp ne i32 %4, 0
  %78 = icmp ne i64 %76, 0
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %123

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 7
  br label %82

82:                                               ; preds = %80, %120
  %83 = phi i64 [ %121, %120 ], [ %76, %80 ]
  %84 = getelementptr inbounds ptr, ptr %13, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !5
  %86 = icmp eq ptr %85, null
  br i1 %86, label %120, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.padname, ptr %85, i64 0, i32 7
  %89 = load i8, ptr %88, align 8, !tbaa !56
  %90 = load i8, ptr %81, align 8, !tbaa !56
  %91 = icmp eq i8 %89, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.padname, ptr %85, i64 0, i32 8
  %94 = load i8, ptr %93, align 1, !tbaa !57
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.padname, ptr %85, i64 0, i32 3
  %99 = load i32, ptr %98, align 8, !tbaa !54
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.padname, ptr %85, i64 0, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !55
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %120

105:                                              ; preds = %101, %97
  %106 = getelementptr inbounds %struct.padname, ptr %85, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !58
  %108 = icmp eq ptr %107, %2
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load ptr, ptr %85, align 8, !tbaa !42
  %111 = load ptr, ptr %0, align 8, !tbaa !42
  %112 = zext i8 %89 to i64
  %113 = tail call i32 @bcmp(ptr %110, ptr %111, i64 %112)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 1, i64 noundef %112, ptr noundef %110) #14
  %116 = trunc i64 %83 to i32
  %117 = load i32, ptr @PL_comppad_name_floor, align 4, !tbaa !15
  %118 = icmp slt i32 %117, %116
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.26) #14
  br label %123

120:                                              ; preds = %82, %87, %92, %101, %105, %109
  %121 = add i64 %83, -1
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %82

123:                                              ; preds = %120, %115, %119, %75, %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_pad_alloc_name(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call i64 @Perl_pad_alloc(i32 poison, i32 noundef 0) #15, !range !53
  %6 = icmp eq ptr %2, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 8
  %9 = load i8, ptr %8, align 1, !tbaa !57
  %10 = or i8 %9, 8
  store i8 %10, ptr %8, align 1, !tbaa !57
  %11 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 2
  store ptr %2, ptr %14, align 8, !tbaa !20
  br label %15

15:                                               ; preds = %7, %4
  %16 = icmp eq ptr %3, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 8
  %19 = load i8, ptr %18, align 1, !tbaa !57
  %20 = or i8 %19, 16
  store i8 %20, ptr %18, align 1, !tbaa !57
  %21 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 1
  store ptr %3, ptr %21, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !47
  br label %32

25:                                               ; preds = %15
  %26 = and i32 %1, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 8
  %30 = load i8, ptr %29, align 1, !tbaa !57
  %31 = or i8 %30, 2
  store i8 %31, ptr %29, align 1, !tbaa !57
  br label %32

32:                                               ; preds = %25, %28, %17
  %33 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %34 = tail call ptr @Perl_padnamelist_store(ptr noundef %33, i64 noundef %5, ptr noundef %0) #15
  %35 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 7
  %36 = load i8, ptr %35, align 8, !tbaa !56
  %37 = icmp ugt i8 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.padnamelist, ptr %39, i64 0, i32 3
  store i64 %5, ptr %40, align 8, !tbaa !25
  br label %41

41:                                               ; preds = %38, %32
  ret i64 %5
}

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_pad_add_name_pv(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %6 = tail call i64 @Perl_pad_add_name_pvn(ptr noundef %0, i64 noundef %5, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15, !range !53
  ret i64 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_pad_add_name_sv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = and i32 %7, 538969088
  %9 = icmp eq i32 %8, 536871936
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !65
  store i64 %13, ptr %5, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  br label %19

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pvutf8(ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  %18 = load i64, ptr %5, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i64 [ %13, %10 ], [ %18, %16 ]
  %21 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %22 = call i64 @Perl_pad_add_name_pvn(ptr noundef %21, i64 noundef %20, i32 noundef %1, ptr noundef %2, ptr noundef %3) #15, !range !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i64 %22
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pvutf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_pad_alloc(i32 %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.av, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %5, ptr noundef %6) #14
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i8, ptr @PL_pad_reset_pending, align 1, !tbaa !21, !range !68, !noundef !69
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @S_pad_reset() #15
  br label %13

13:                                               ; preds = %12, %9
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.xpvav, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !71
  %20 = add nsw i64 %19, 1
  %21 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %16, i64 noundef %20, i32 noundef 1) #14
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.xpvav, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !71
  br label %74

27:                                               ; preds = %13
  %28 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.padnamelist, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !23
  %31 = load i64, ptr %28, align 8, !tbaa !24
  %32 = and i32 %1, 134217728
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr @PL_constpadix, align 4
  %35 = load i32, ptr @PL_padix, align 4
  %36 = select i1 %33, i32 %35, i32 %34
  %37 = sext i32 %36 to i64
  br label %38

38:                                               ; preds = %59, %27
  %39 = phi i64 [ %41, %59 ], [ %37, %27 ]
  %40 = phi ptr [ %60, %59 ], [ undef, %27 ]
  %41 = add nsw i64 %39, 1
  %42 = icmp sgt i64 %31, %39
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = getelementptr inbounds ptr, ptr %30, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !42
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47, %43, %38
  %51 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %52 = tail call ptr @Perl_av_fetch(ptr noundef %51, i64 noundef %41, i32 noundef 1) #14
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !38
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 2
  %58 = xor i32 %57, 2
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi ptr [ %40, %47 ], [ %53, %50 ]
  %61 = phi i32 [ 3, %47 ], [ %58, %50 ]
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %38

63:                                               ; preds = %59
  %64 = trunc i64 %41 to i32
  br i1 %33, label %70, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %67 = tail call ptr @Perl_padnamelist_store(ptr noundef %66, i64 noundef %41, ptr noundef nonnull @PL_padname_const) #15
  %68 = and i32 %1, -134348801
  %69 = or disjoint i32 %68, 131072
  br label %70

70:                                               ; preds = %65, %63
  %71 = phi ptr [ @PL_constpadix, %65 ], [ @PL_padix, %63 ]
  %72 = phi i32 [ %69, %65 ], [ %1, %63 ]
  store i32 %64, ptr %71, align 4, !tbaa !15
  %73 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  br label %74

74:                                               ; preds = %70, %15
  %75 = phi ptr [ %23, %15 ], [ %73, %70 ]
  %76 = phi i64 [ %26, %15 ], [ %41, %70 ]
  %77 = phi ptr [ %22, %15 ], [ %60, %70 ]
  %78 = phi i32 [ 0, %15 ], [ %72, %70 ]
  %79 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !38
  %81 = or i32 %80, %78
  store i32 %81, ptr %79, align 4, !tbaa !38
  %82 = getelementptr inbounds %struct.av, ptr %75, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !20
  store ptr %83, ptr @PL_curpad, align 8, !tbaa !5
  %84 = shl i64 %76, 32
  %85 = ashr exact i64 %84, 32
  ret i64 %85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @S_pad_reset() unnamed_addr #5 {
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @Perl_pad_add_anon(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @Perl_newPADNAMEpvn(ptr noundef nonnull @.str.3, i64 noundef 1) #15
  %4 = tail call i64 @Perl_pad_alloc(i32 poison, i32 noundef 0) #15, !range !53
  %5 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %6 = tail call ptr @Perl_padnamelist_store(ptr noundef %5, i64 noundef %4, ptr noundef %3) #15
  %7 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %8 = tail call ptr @Perl_av_store(ptr noundef %7, i64 noundef %4, ptr noundef %0) #14
  %9 = load ptr, ptr %0, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.xpvcv, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.xpvcv, ptr %9, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !31
  %16 = or i32 %15, 16
  store i32 %16, ptr %14, align 4, !tbaa !31
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %11) #15
  br label %17

17:                                               ; preds = %13, %2
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pad_add_weakref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @Perl_pad_alloc(i32 poison, i32 noundef 0) #15, !range !53
  %3 = tail call ptr @Perl_newPADNAMEpvn(ptr noundef nonnull @.str.3, i64 noundef 1) #15
  %4 = tail call ptr @Perl_newRV(ptr noundef %0) #14
  %5 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %6 = tail call ptr @Perl_padnamelist_store(ptr noundef %5, i64 noundef %2, ptr noundef %3) #15
  %7 = tail call ptr @Perl_sv_rvweaken(ptr noundef %4) #14
  %8 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %9 = tail call ptr @Perl_av_store(ptr noundef %8, i64 noundef %2, ptr noundef %4) #14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_pad_findmy_pvn(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i64 noundef %8) #14
  br label %9

9:                                                ; preds = %7, %3
  %10 = load ptr, ptr @PL_compcv, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !15
  %14 = call fastcc i64 @S_pad_findlex(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %10, i32 noundef %13, i32 noundef 1, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %15 = shl i64 %14, 32
  %16 = icmp eq i64 %15, -4294967296
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = ashr exact i64 %15, 32
  br label %70

19:                                               ; preds = %12
  %20 = load i8, ptr %0, align 1, !tbaa !20
  %21 = icmp eq i8 %20, 38
  br i1 %21, label %70, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @PL_compcv, align 8, !tbaa !5
  %24 = load ptr, ptr %23, align 8, !tbaa !27
  %25 = getelementptr inbounds %struct.xpvcv, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.padlist, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.padnamelist, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = getelementptr inbounds %struct.padnamelist, ptr %29, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !25
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %22
  %37 = and i64 %33, 4294967295
  br label %38

38:                                               ; preds = %36, %67
  %39 = phi i64 [ %37, %36 ], [ %68, %67 ]
  %40 = getelementptr inbounds ptr, ptr %31, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.padname, ptr %41, i64 0, i32 7
  %45 = load i8, ptr %44, align 8, !tbaa !56
  %46 = zext i8 %45 to i64
  %47 = icmp eq i64 %46, %1
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.padname, ptr %41, i64 0, i32 8
  %50 = load i8, ptr %49, align 1, !tbaa !57
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.padname, ptr %41, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !58
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %41, align 8, !tbaa !42
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = call i32 @bcmp(ptr %58, ptr nonnull %0, i64 %1)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60, %57
  %64 = getelementptr inbounds %struct.padname, ptr %41, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !54
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %70, label %67

67:                                               ; preds = %38, %43, %48, %53, %60, %63
  %68 = add nsw i64 %39, -1
  %69 = icmp sgt i64 %39, 1
  br i1 %69, label %38, label %70, !llvm.loop !73

70:                                               ; preds = %67, %63, %22, %19, %9, %17
  %71 = phi i64 [ %18, %17 ], [ -1, %9 ], [ -1, %19 ], [ -1, %22 ], [ -1, %67 ], [ %39, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i64 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_pad_findlex(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %11 = load ptr, ptr %3, align 8, !tbaa !27
  %12 = getelementptr inbounds %struct.xpvcv, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = and i32 %2, 8
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %2, -9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = zext i32 %16 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, i64 noundef %19) #14
  br label %20

20:                                               ; preds = %18, %9
  store i32 0, ptr %8, align 4, !tbaa !15
  %21 = icmp ne ptr %13, null
  br i1 %21, label %22, label %198

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.padlist, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.padnamelist, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  %28 = getelementptr inbounds %struct.padnamelist, ptr %25, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !25
  %30 = trunc i64 %29 to i32
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %198

32:                                               ; preds = %22
  %33 = and i64 %29, 4294967295
  br label %34

34:                                               ; preds = %32, %59
  %35 = phi i64 [ %33, %32 ], [ %61, %59 ]
  %36 = phi i32 [ 0, %32 ], [ %60, %59 ]
  %37 = getelementptr inbounds ptr, ptr %27, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 7
  %42 = load i8, ptr %41, align 8, !tbaa !56
  %43 = zext i8 %42 to i64
  %44 = icmp eq i64 %43, %1
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load ptr, ptr %38, align 8, !tbaa !42
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @bcmp(ptr %46, ptr %0, i64 %1)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48, %45
  %52 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 8
  %53 = load i8, ptr %52, align 1, !tbaa !57
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  %56 = trunc i64 %35 to i32
  br i1 %55, label %57, label %59

57:                                               ; preds = %51
  %58 = tail call fastcc zeroext i1 @PadnameIN_SCOPE(ptr noundef nonnull %38, i32 noundef %4) #15
  br i1 %58, label %65, label %59

59:                                               ; preds = %34, %40, %48, %57, %51
  %60 = phi i32 [ %56, %51 ], [ %36, %57 ], [ %36, %48 ], [ %36, %40 ], [ %36, %34 ]
  %61 = add nsw i64 %35, -1
  %62 = icmp sgt i64 %35, 1
  br i1 %62, label %34, label %63, !llvm.loop !74

63:                                               ; preds = %59
  %64 = icmp slt i32 %60, 1
  br i1 %64, label %198, label %83

65:                                               ; preds = %57
  %66 = and i64 %35, 4294967295
  %67 = getelementptr inbounds ptr, ptr %27, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  store ptr %68, ptr %7, align 8, !tbaa !5
  %69 = load ptr, ptr %3, align 8, !tbaa !27
  %70 = getelementptr inbounds %struct.xpvcv, ptr %69, i64 0, i32 12
  %71 = load i32, ptr %70, align 4, !tbaa !31
  %72 = and i32 %71, 128
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %65
  %75 = and i32 %71, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.xpvcv, ptr %69, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !20
  %80 = freeze ptr %79
  %81 = icmp eq ptr %80, null
  %82 = select i1 %81, i32 2, i32 0
  br label %89

83:                                               ; preds = %63
  %84 = zext nneg i32 %60 to i64
  %85 = getelementptr inbounds ptr, ptr %27, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  store ptr %86, ptr %7, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.padname, ptr %86, i64 0, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !55
  br label %89

89:                                               ; preds = %77, %74, %65, %83
  %90 = phi ptr [ %86, %83 ], [ %68, %65 ], [ %68, %74 ], [ %68, %77 ]
  %91 = phi i1 [ false, %83 ], [ true, %65 ], [ true, %74 ], [ true, %77 ]
  %92 = phi i32 [ %88, %83 ], [ 1, %65 ], [ 0, %74 ], [ %82, %77 ]
  %93 = phi i32 [ %60, %83 ], [ %56, %65 ], [ %56, %74 ], [ %56, %77 ]
  store i32 %92, ptr %8, align 4, !tbaa !15
  %94 = icmp eq ptr %6, null
  br i1 %94, label %188, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.padname, ptr %90, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !58
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  store ptr null, ptr %6, align 8, !tbaa !5
  %100 = zext nneg i32 %93 to i64
  br label %288

101:                                              ; preds = %95
  %102 = load ptr, ptr %3, align 8, !tbaa !27
  %103 = getelementptr inbounds %struct.xpvcv, ptr %102, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !20
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.xpvcv, ptr %102, i64 0, i32 12
  %108 = load i32, ptr %107, align 4, !tbaa !31
  %109 = and i32 %108, 224
  %110 = icmp eq i32 %109, 160
  br i1 %110, label %114, label %132

111:                                              ; preds = %101
  %112 = and i32 %92, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %106, %111
  %115 = icmp eq i32 %5, 0
  br i1 %115, label %171, label %169

116:                                              ; preds = %111
  %117 = and i32 %92, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.padname, ptr %90, i64 0, i32 8
  %121 = load i8, ptr %120, align 1, !tbaa !57
  %122 = and i8 %121, 2
  %123 = icmp eq i8 %122, 0
  %124 = icmp ne i32 %5, 0
  %125 = and i1 %124, %123
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 1) #14
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = load i8, ptr %0, align 1, !tbaa !20
  %130 = icmp eq i8 %129, 38
  %131 = select i1 %130, ptr @.str.29, ptr @.str.30
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull %131, i32 noundef 1, i64 noundef %1, ptr noundef nonnull %0) #14
  br label %132

132:                                              ; preds = %106, %128, %126, %119, %116
  %133 = phi i32 [ 0, %128 ], [ 1, %126 ], [ %5, %119 ], [ %5, %116 ], [ %5, %106 ]
  br i1 %91, label %140, label %134

134:                                              ; preds = %132
  %135 = load ptr, ptr %3, align 8, !tbaa !27
  %136 = getelementptr inbounds %struct.xpvcv, ptr %135, i64 0, i32 12
  %137 = load i32, ptr %136, align 4, !tbaa !31
  %138 = and i32 %137, 224
  %139 = icmp eq i32 %138, 160
  br i1 %139, label %190, label %140

140:                                              ; preds = %134, %132
  %141 = load ptr, ptr %23, align 8, !tbaa !19
  %142 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %3) #15
  %143 = load i32, ptr %142, align 4, !tbaa !15
  %144 = tail call i32 @llvm.umax.i32(i32 %143, i32 1)
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %141, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !5
  %148 = getelementptr inbounds %struct.av, ptr %147, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !20
  %150 = zext nneg i32 %93 to i64
  %151 = getelementptr inbounds ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  store ptr %152, ptr %6, align 8, !tbaa !5
  %153 = getelementptr inbounds %struct.sv, ptr %152, i64 0, i32 2
  %154 = load i32, ptr %153, align 4, !tbaa !38
  %155 = and i32 %154, 262144
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %188, label %157

157:                                              ; preds = %140
  %158 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %3) #15
  %159 = load i32, ptr %158, align 4, !tbaa !15
  %160 = icmp eq i32 %159, 0
  %161 = or i1 %15, %160
  br i1 %161, label %162, label %188

162:                                              ; preds = %157
  %163 = getelementptr inbounds ptr, ptr %27, i64 %150
  %164 = load ptr, ptr %163, align 8, !tbaa !5
  %165 = getelementptr inbounds %struct.padname, ptr %164, i64 0, i32 8
  %166 = load i8, ptr %165, align 1, !tbaa !57
  %167 = and i8 %166, 2
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %162, %114
  %170 = phi ptr [ %90, %114 ], [ %164, %162 ]
  tail call fastcc void @S_unavailable(ptr noundef nonnull %170) #15
  br label %171

171:                                              ; preds = %169, %114
  store ptr null, ptr %6, align 8, !tbaa !5
  %172 = icmp eq i64 %1, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %171
  %174 = load i8, ptr %0, align 1, !tbaa !20
  switch i8 %174, label %184 [
    i8 64, label %175
    i8 37, label %178
    i8 38, label %181
  ]

175:                                              ; preds = %173
  %176 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %177 = tail call ptr @Perl_sv_2mortal(ptr noundef %176) #14
  br label %186

178:                                              ; preds = %173
  %179 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  %180 = tail call ptr @Perl_sv_2mortal(ptr noundef %179) #14
  br label %186

181:                                              ; preds = %173
  %182 = tail call ptr @Perl_newSV_type(i32 noundef 13) #14
  %183 = tail call ptr @Perl_sv_2mortal(ptr noundef %182) #14
  br label %186

184:                                              ; preds = %173, %171
  %185 = tail call ptr @Perl_sv_newmortal() #14
  br label %186

186:                                              ; preds = %175, %181, %184, %178
  %187 = phi ptr [ %180, %178 ], [ %185, %184 ], [ %183, %181 ], [ %177, %175 ]
  store ptr %187, ptr %6, align 8, !tbaa !5
  br label %188

188:                                              ; preds = %186, %162, %157, %140, %89
  %189 = zext nneg i32 %93 to i64
  br label %288

190:                                              ; preds = %134
  %191 = load ptr, ptr %7, align 8, !tbaa !5
  %192 = getelementptr inbounds %struct.xpvcv, ptr %135, i64 0, i32 10
  %193 = load ptr, ptr %192, align 8, !tbaa !40
  %194 = getelementptr inbounds %struct.xpvcv, ptr %135, i64 0, i32 11
  %195 = load i32, ptr %194, align 8, !tbaa !41
  %196 = tail call fastcc i64 @S_pad_findlex(ptr noundef %0, i64 noundef %1, i32 noundef %16, ptr noundef %193, i32 noundef %195, i32 noundef %133, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  store ptr %191, ptr %7, align 8, !tbaa !5
  %197 = zext nneg i32 %93 to i64
  br label %288

198:                                              ; preds = %22, %63, %20
  %199 = load ptr, ptr %3, align 8, !tbaa !27
  %200 = getelementptr inbounds %struct.xpvcv, ptr %199, i64 0, i32 10
  %201 = load ptr, ptr %200, align 8, !tbaa !40
  %202 = icmp eq ptr %201, null
  br i1 %202, label %288, label %203

203:                                              ; preds = %198
  %204 = icmp eq ptr %6, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.xpvcv, ptr %199, i64 0, i32 12
  %207 = load i32, ptr %206, align 4, !tbaa !31
  %208 = and i32 %207, 160
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.cv, ptr %3, i64 0, i32 2
  %212 = load i32, ptr %211, align 4, !tbaa !46
  %213 = and i32 %212, 255
  %214 = icmp eq i32 %213, 14
  %215 = select i1 %214, ptr null, ptr %10
  br label %216

216:                                              ; preds = %203, %210, %205
  %217 = phi ptr [ null, %205 ], [ %215, %210 ], [ %6, %203 ]
  %218 = icmp eq ptr %217, %10
  %219 = select i1 %218, i32 8, i32 0
  %220 = or disjoint i32 %219, %16
  %221 = getelementptr inbounds %struct.xpvcv, ptr %199, i64 0, i32 11
  %222 = load i32, ptr %221, align 8, !tbaa !41
  %223 = call fastcc i64 @S_pad_findlex(ptr noundef %0, i64 noundef %1, i32 noundef %220, ptr noundef nonnull %201, i32 noundef %222, i32 noundef 1, ptr noundef %217, ptr noundef %7, ptr noundef nonnull %8) #15
  %224 = trunc i64 %223 to i32
  %225 = and i64 %223, 4294967295
  %226 = icmp eq i64 %225, 4294967295
  br i1 %226, label %288, label %227

227:                                              ; preds = %216
  %228 = load ptr, ptr %3, align 8, !tbaa !27
  %229 = getelementptr inbounds %struct.xpvcv, ptr %228, i64 0, i32 6
  %230 = load ptr, ptr %229, align 8, !tbaa !20
  %231 = icmp eq ptr %230, null
  %232 = and i1 %21, %231
  br i1 %232, label %233, label %288

233:                                              ; preds = %227
  %234 = load ptr, ptr %7, align 8, !tbaa !5
  %235 = call ptr @Perl_newPADNAMEouter(ptr noundef %234) #15
  %236 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %237 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %238 = getelementptr inbounds %struct.padlist, ptr %13, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !19
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  store ptr %240, ptr @PL_comppad_name, align 8, !tbaa !5
  %241 = getelementptr inbounds ptr, ptr %239, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !5
  store ptr %242, ptr @PL_comppad, align 8, !tbaa !5
  %243 = getelementptr inbounds %struct.av, ptr %242, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !20
  store ptr %244, ptr @PL_curpad, align 8, !tbaa !5
  %245 = load ptr, ptr %7, align 8, !tbaa !5
  %246 = getelementptr inbounds %struct.padname, ptr %245, i64 0, i32 8
  %247 = load i8, ptr %246, align 1, !tbaa !57
  %248 = and i8 %247, 2
  %249 = zext nneg i8 %248 to i32
  %250 = getelementptr inbounds %struct.padname, ptr %245, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !20
  %252 = getelementptr inbounds %struct.padname, ptr %245, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !58
  %254 = call fastcc i64 @S_pad_alloc_name(ptr noundef %235, i32 noundef %249, ptr noundef %251, ptr noundef %253) #15, !range !53
  %255 = load i32, ptr %8, align 4, !tbaa !15
  %256 = getelementptr inbounds %struct.padname, ptr %235, i64 0, i32 4
  store i32 %255, ptr %256, align 4, !tbaa !55
  %257 = getelementptr inbounds %struct.padname, ptr %235, i64 0, i32 3
  store i32 0, ptr %257, align 8, !tbaa !54
  %258 = getelementptr inbounds %struct.padname, ptr %235, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !58
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %280

261:                                              ; preds = %233
  %262 = load ptr, ptr %3, align 8, !tbaa !27
  %263 = getelementptr inbounds %struct.xpvcv, ptr %262, i64 0, i32 12
  %264 = load i32, ptr %263, align 4, !tbaa !31
  %265 = and i32 %264, 160
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.cv, ptr %3, i64 0, i32 2
  %269 = load i32, ptr %268, align 4, !tbaa !46
  %270 = and i32 %269, 255
  %271 = icmp eq i32 %270, 14
  br i1 %271, label %272, label %274

272:                                              ; preds = %261, %267
  store i32 %224, ptr %257, align 8, !tbaa !54
  %273 = or i32 %264, 32
  store i32 %273, ptr %263, align 4, !tbaa !31
  br label %280

274:                                              ; preds = %267
  %275 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %276 = load ptr, ptr %217, align 8, !tbaa !5
  %277 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %276) #15
  %278 = call ptr @Perl_av_store(ptr noundef %275, i64 noundef %254, ptr noundef %276) #14
  store i32 %224, ptr %257, align 8, !tbaa !54
  %279 = load i32, ptr %256, align 4, !tbaa !55
  br label %280

280:                                              ; preds = %272, %274, %233
  %281 = phi i32 [ %255, %272 ], [ %279, %274 ], [ %255, %233 ]
  store ptr %235, ptr %7, align 8, !tbaa !5
  store i32 %281, ptr %8, align 4, !tbaa !15
  store ptr %236, ptr @PL_comppad_name, align 8, !tbaa !5
  store ptr %237, ptr @PL_comppad, align 8, !tbaa !5
  %282 = icmp eq ptr %237, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.av, ptr %237, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !20
  br label %286

286:                                              ; preds = %280, %283
  %287 = phi ptr [ %285, %283 ], [ null, %280 ]
  store ptr %287, ptr @PL_curpad, align 8, !tbaa !5
  br label %288

288:                                              ; preds = %188, %190, %99, %227, %216, %198, %286
  %289 = phi i64 [ %254, %286 ], [ %197, %190 ], [ -1, %198 ], [ -1, %216 ], [ 0, %227 ], [ %100, %99 ], [ %189, %188 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  ret i64 %289
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_pad_findmy_pv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %4 = tail call i64 @Perl_pad_findmy_pvn(ptr noundef %0, i64 noundef %3, i32 noundef %1) #15
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_pad_findmy_sv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = and i32 %5, 538969088
  %7 = icmp eq i32 %6, 536871936
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !65
  store i64 %11, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  br label %17

14:                                               ; preds = %2
  %15 = call ptr @Perl_sv_2pvutf8(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  %16 = load i64, ptr %3, align 8, !tbaa !67
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %11, %8 ], [ %16, %14 ]
  %19 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %20 = call i64 @Perl_pad_findmy_pvn(ptr noundef %19, i64 noundef %18, i32 noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i64 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_find_rundefsvoffset() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %3 = tail call ptr @Perl_find_runcv(ptr noundef null) #14
  %4 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %3, i32 noundef %6, i32 noundef 1, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret i64 %7
}

; Function Attrs: optsize
declare ptr @Perl_find_runcv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_find_rundefsv() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %3 = tail call ptr @Perl_find_runcv(ptr noundef null) #14
  %4 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %3, i32 noundef %6, i32 noundef 1, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9, %0
  %15 = load ptr, ptr @PL_defgv, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %15, i32 noundef 0) #14
  %22 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  br label %27

24:                                               ; preds = %9
  %25 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %26 = getelementptr inbounds ptr, ptr %25, i64 %7
  br label %27

27:                                               ; preds = %20, %14, %24
  %28 = phi ptr [ %26, %24 ], [ %23, %20 ], [ %17, %14 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_find_rundefsv2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.padname, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7, %2
  %13 = load ptr, ptr @PL_defgv, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %13, i32 noundef 0) #14
  %20 = getelementptr inbounds %struct.gv, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  br label %36

22:                                               ; preds = %7
  %23 = load ptr, ptr %0, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.padlist, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %0) #15
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.av, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !20
  %35 = getelementptr inbounds ptr, ptr %34, i64 %5
  br label %36

36:                                               ; preds = %18, %12, %22
  %37 = phi ptr [ %35, %22 ], [ %21, %18 ], [ %15, %12 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !27
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pad_block_start(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_floor) #14
  %2 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %3 = load i64, ptr %2, align 8, !tbaa !24
  %4 = trunc i64 %3 to i32
  store i32 %4, ptr @PL_comppad_name_floor, align 4, !tbaa !15
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 %4, ptr @PL_comppad_name_fill, align 4, !tbaa !15
  br label %7

7:                                                ; preds = %6, %1
  %8 = icmp slt i32 %4, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  store i32 0, ptr @PL_comppad_name_floor, align 4, !tbaa !15
  br label %10

10:                                               ; preds = %9, %7
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_min_intro_pending) #14
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_max_intro_pending) #14
  store i32 0, ptr @PL_min_intro_pending, align 4, !tbaa !15
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_fill) #14
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_padix_floor) #14
  %11 = load i32, ptr @PL_padix, align 4, !tbaa !15
  store i32 %11, ptr @PL_padix_floor, align 4, !tbaa !15
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_intro_my() local_unnamed_addr #7 {
  %1 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 11), align 4, !tbaa !75
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i32 0, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 11), align 4, !tbaa !75
  br label %6

4:                                                ; preds = %0
  %5 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !15
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ %1, %3 ], [ %5, %4 ]
  %8 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = load i32, ptr @PL_max_intro_pending, align 4, !tbaa !15
  %15 = icmp sgt i32 %8, %14
  %16 = load i32, ptr @PL_cop_seqmax, align 4
  br i1 %15, label %44, label %17

17:                                               ; preds = %10
  %18 = sext i32 %8 to i64
  %19 = add i32 %14, 1
  br label %20

20:                                               ; preds = %17, %40
  %21 = phi i64 [ %18, %17 ], [ %41, %40 ]
  %22 = getelementptr inbounds ptr, ptr %13, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 7
  %27 = load i8, ptr %26, align 8, !tbaa !56
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 8
  %31 = load i8, ptr %30, align 1, !tbaa !57
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !54
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 4
  store i32 -1, ptr %39, align 4, !tbaa !55
  store i32 %16, ptr %35, align 8, !tbaa !54
  br label %40

40:                                               ; preds = %38, %34, %29, %25, %20
  %41 = add nsw i64 %21, 1
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %19, %42
  br i1 %43, label %44, label %20, !llvm.loop !79

44:                                               ; preds = %40, %10
  %45 = add i32 %16, 1
  %46 = icmp eq i32 %45, -1
  %47 = select i1 %46, i32 0, i32 %45
  store i32 %47, ptr @PL_cop_seqmax, align 4, !tbaa !15
  store i32 0, ptr @PL_min_intro_pending, align 4, !tbaa !15
  store i32 %14, ptr @PL_comppad_name_fill, align 4, !tbaa !15
  br label %48

48:                                               ; preds = %6, %44
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pad_leavemy() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.padnamelist, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !21
  %4 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !15
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @PL_comppad_name_fill, align 4
  %7 = icmp slt i32 %6, %4
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %41

9:                                                ; preds = %0
  %10 = load i32, ptr @PL_max_intro_pending, align 4, !tbaa !15
  %11 = icmp slt i32 %10, %4
  br i1 %11, label %41, label %12

12:                                               ; preds = %9
  %13 = sext i32 %10 to i64
  br label %14

14:                                               ; preds = %12, %33
  %15 = phi i32 [ %4, %12 ], [ %34, %33 ]
  %16 = phi i64 [ %13, %12 ], [ %35, %33 ]
  %17 = getelementptr inbounds ptr, ptr %3, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.padname, ptr %18, i64 0, i32 7
  %22 = load i8, ptr %21, align 8, !tbaa !56
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.padname, ptr %18, i64 0, i32 8
  %26 = load i8, ptr %25, align 1, !tbaa !57
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = zext i8 %22 to i64
  %31 = load ptr, ptr %18, align 8, !tbaa !42
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.6, i32 noundef 1, i64 noundef %30, ptr noundef %31) #14
  %32 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !15
  br label %33

33:                                               ; preds = %29, %24, %20, %14
  %34 = phi i32 [ %32, %29 ], [ %15, %24 ], [ %15, %20 ], [ %15, %14 ]
  %35 = add nsw i64 %16, -1
  %36 = sext i32 %34 to i64
  %37 = icmp sgt i64 %16, %36
  br i1 %37, label %14, label %38, !llvm.loop !80

38:                                               ; preds = %33
  %39 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %40 = load i32, ptr @PL_comppad_name_fill, align 4, !tbaa !15
  br label %41

41:                                               ; preds = %38, %9, %0
  %42 = phi i32 [ %40, %38 ], [ %6, %9 ], [ %6, %0 ]
  %43 = phi ptr [ %39, %38 ], [ %1, %9 ], [ %1, %0 ]
  %44 = load i64, ptr %43, align 8, !tbaa !24
  %45 = trunc i64 %44 to i32
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %41
  %48 = shl i64 %44, 32
  %49 = ashr exact i64 %48, 32
  br label %50

50:                                               ; preds = %47, %89
  %51 = phi i32 [ %42, %47 ], [ %90, %89 ]
  %52 = phi i64 [ %49, %47 ], [ %92, %89 ]
  %53 = phi ptr [ null, %47 ], [ %91, %89 ]
  %54 = getelementptr inbounds ptr, ptr %3, i64 %52
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %89, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.padname, ptr %55, i64 0, i32 7
  %59 = load i8, ptr %58, align 8, !tbaa !56
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.padname, ptr %55, i64 0, i32 8
  %63 = load i8, ptr %62, align 1, !tbaa !57
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.padname, ptr %55, i64 0, i32 4
  %68 = load i32, ptr %67, align 4, !tbaa !55
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !15
  store i32 %71, ptr %67, align 4, !tbaa !55
  %72 = and i8 %63, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.padname, ptr %55, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !58
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load ptr, ptr %55, align 8, !tbaa !42
  %80 = load i8, ptr %79, align 1, !tbaa !20
  %81 = icmp eq i8 %80, 38
  %82 = icmp ne i8 %59, 1
  %83 = and i1 %82, %81
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = tail call ptr @Perl_newOP(i32 noundef 388, i32 noundef 0) #14
  %86 = getelementptr inbounds %struct.op, ptr %85, i64 0, i32 3
  store i64 %52, ptr %86, align 8, !tbaa !81
  %87 = tail call ptr @Perl_op_prepend_elem(i32 noundef 192, ptr noundef %85, ptr noundef %53) #14
  %88 = load i32, ptr @PL_comppad_name_fill, align 4, !tbaa !15
  br label %89

89:                                               ; preds = %70, %74, %78, %84, %66, %61, %57, %50
  %90 = phi i32 [ %51, %61 ], [ %51, %70 ], [ %51, %74 ], [ %88, %84 ], [ %51, %78 ], [ %51, %66 ], [ %51, %57 ], [ %51, %50 ]
  %91 = phi ptr [ %53, %61 ], [ %53, %70 ], [ %53, %74 ], [ %87, %84 ], [ %53, %78 ], [ %53, %66 ], [ %53, %57 ], [ %53, %50 ]
  %92 = add nsw i64 %52, -1
  %93 = sext i32 %90 to i64
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %50, label %95, !llvm.loop !82

95:                                               ; preds = %89, %41
  %96 = phi ptr [ null, %41 ], [ %91, %89 ]
  %97 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !15
  %98 = add i32 %97, 1
  %99 = icmp eq i32 %98, -1
  %100 = select i1 %99, i32 0, i32 %98
  store i32 %100, ptr @PL_cop_seqmax, align 4, !tbaa !15
  ret ptr %96
}

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newOP(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_op_prepend_elem(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pad_swipe(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.av, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7, ptr noundef %8, ptr noundef nonnull %3) #14
  %11 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %6, %5 ]
  %14 = icmp eq i64 %0, 0
  %15 = load ptr, ptr %13, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !71
  %18 = icmp slt i64 %17, %0
  %19 = select i1 %14, i1 true, i1 %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, i64 noundef %0, i64 noundef %17) #14
  br label %21

21:                                               ; preds = %12, %20
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  br i1 %1, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr inbounds ptr, ptr %22, i64 %0
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %25) #15
  %26 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi ptr [ %26, %23 ], [ %22, %21 ]
  %29 = getelementptr inbounds ptr, ptr %28, i64 %0
  store ptr null, ptr %29, align 8, !tbaa !5
  %30 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %31 = load i64, ptr %30, align 8, !tbaa !24
  %32 = icmp eq i64 %31, -1
  %33 = icmp ult i64 %31, %0
  %34 = or i1 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.padnamelist, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  %38 = getelementptr inbounds ptr, ptr %37, i64 %0
  store ptr @PL_padname_undef, ptr %38, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %35, %27
  %40 = trunc i64 %0 to i32
  %41 = load i32, ptr @PL_constpadix, align 4, !tbaa !15
  %42 = icmp sgt i32 %41, %40
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = add i32 %40, -1
  store i32 %44, ptr @PL_constpadix, align 4, !tbaa !15
  br label %45

45:                                               ; preds = %2, %43, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pad_tidy(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @PL_cv_has_eval, align 1, !tbaa !21, !range !68, !noundef !69
  %3 = icmp ne i8 %2, 0
  %4 = load i32, ptr @PL_perldb, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load ptr, ptr @PL_compcv, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %7, %18
  %11 = phi ptr [ %26, %18 ], [ %8, %7 ]
  %12 = icmp eq ptr %11, %8
  %13 = load ptr, ptr %11, align 8, !tbaa !27
  br i1 %12, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 12
  %20 = load i32, ptr %19, align 4, !tbaa !31
  %21 = lshr i32 %20, 2
  %22 = and i32 %21, 32
  %23 = or i32 %20, %22
  %24 = or i32 %23, 16384
  store i32 %24, ptr %19, align 4, !tbaa !31
  %25 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !83

28:                                               ; preds = %14, %18, %7, %1
  %29 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %30 = load i64, ptr %29, align 8, !tbaa !24
  %31 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = getelementptr inbounds %struct.xpvav, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !71
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = tail call ptr @Perl_padnamelist_store(ptr noundef nonnull %29, i64 noundef %34, ptr noundef null) #15
  br label %38

38:                                               ; preds = %36, %28
  switch i32 %0, label %97 [
    i32 1, label %39
    i32 0, label %89
  ]

39:                                               ; preds = %38
  %40 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.padnamelist, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !23
  %43 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = getelementptr inbounds %struct.xpvav, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !71
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %149, label %48

48:                                               ; preds = %39, %86
  %49 = phi i64 [ %87, %86 ], [ %46, %39 ]
  %50 = getelementptr inbounds ptr, ptr %42, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store ptr @PL_padname_undef, ptr %50, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi ptr [ @PL_padname_undef, %53 ], [ %51, %48 ]
  %56 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %57 = getelementptr inbounds ptr, ptr %56, i64 %49
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %86, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !38
  %63 = and i32 %62, 134283264
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = icmp eq ptr %58, @PL_sv_undef
  %67 = icmp eq ptr %58, @PL_sv_yes
  %68 = or i1 %66, %67
  %69 = icmp eq ptr %58, @PL_sv_no
  %70 = or i1 %69, %68
  %71 = icmp eq ptr %58, @PL_sv_placeholder
  %72 = or i1 %71, %70
  br i1 %72, label %86, label %73

73:                                               ; preds = %65, %60
  %74 = load ptr, ptr %55, align 8, !tbaa !42
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.padname, ptr %55, i64 0, i32 7
  %78 = load i8, ptr %77, align 8, !tbaa !56
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = load i8, ptr %74, align 1, !tbaa !20
  %82 = icmp eq i8 %81, 38
  br i1 %82, label %86, label %83

83:                                               ; preds = %80, %73
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %58) #15
  %84 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %85 = getelementptr inbounds ptr, ptr %84, i64 %49
  store ptr null, ptr %85, align 8, !tbaa !5
  br label %86

86:                                               ; preds = %76, %80, %83, %54, %65
  %87 = add i64 %49, -1
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %97, label %48, !llvm.loop !84

89:                                               ; preds = %38
  %90 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %91 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %92 = tail call ptr @Perl_av_store(ptr noundef %91, i64 noundef 0, ptr noundef %90) #14
  %93 = getelementptr inbounds %struct.av, ptr %90, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !9
  %95 = and i32 %94, 1073741823
  %96 = or disjoint i32 %95, -2147483648
  store i32 %96, ptr %93, align 4, !tbaa !9
  br label %100

97:                                               ; preds = %86, %38
  %98 = and i32 %0, -3
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %149

100:                                              ; preds = %89, %97
  %101 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.padnamelist, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !23
  %104 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  %106 = getelementptr inbounds %struct.xpvav, ptr %105, i64 0, i32 2
  %107 = load i64, ptr %106, align 8, !tbaa !71
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %149, label %109

109:                                              ; preds = %100, %146
  %110 = phi i64 [ %147, %146 ], [ %107, %100 ]
  %111 = getelementptr inbounds ptr, ptr %103, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store ptr @PL_padname_undef, ptr %111, align 8, !tbaa !5
  br label %115

115:                                              ; preds = %114, %109
  %116 = phi ptr [ @PL_padname_undef, %114 ], [ %112, %109 ]
  %117 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %118 = getelementptr inbounds ptr, ptr %117, i64 %110
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = icmp eq ptr %119, null
  br i1 %120, label %146, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.sv, ptr %119, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !38
  %124 = and i32 %123, 134283264
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %121
  %127 = icmp eq ptr %119, @PL_sv_undef
  %128 = icmp eq ptr %119, @PL_sv_yes
  %129 = or i1 %127, %128
  %130 = icmp eq ptr %119, @PL_sv_no
  %131 = or i1 %130, %129
  %132 = icmp eq ptr %119, @PL_sv_placeholder
  %133 = or i1 %132, %131
  %134 = and i32 %123, 131072
  %135 = icmp ne i32 %134, 0
  %136 = or i1 %133, %135
  br i1 %136, label %146, label %140

137:                                              ; preds = %121
  %138 = and i32 %123, 131072
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %126, %137
  %141 = getelementptr inbounds %struct.padname, ptr %116, i64 0, i32 8
  %142 = load i8, ptr %141, align 1, !tbaa !57
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  tail call fastcc void @S_SvPADSTALE_on(ptr noundef nonnull %119) #15
  br label %146

146:                                              ; preds = %137, %140, %145, %115, %126
  %147 = add i64 %110, -1
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %109, !llvm.loop !85

149:                                              ; preds = %146, %39, %100, %97
  %150 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %151 = getelementptr inbounds %struct.av, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !20
  store ptr %152, ptr @PL_curpad, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvPADSTALE_on(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !38
  %4 = or i32 %3, 262144
  store i32 %4, ptr %2, align 4, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pad_free(i64 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.av, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef %7, ptr noundef nonnull %2) #14
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp eq i64 %0, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #14
  br label %13

13:                                               ; preds = %12, %10
  %14 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %15 = getelementptr inbounds ptr, ptr %14, i64 %0
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp ne ptr %16, null
  %18 = icmp ne ptr %16, @PL_sv_undef
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !38
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = and i32 %22, -131073
  store i32 %26, ptr %21, align 4, !tbaa !38
  br label %27

27:                                               ; preds = %25, %20, %13
  %28 = trunc i64 %0 to i32
  %29 = load i32, ptr @PL_padix, align 4, !tbaa !15
  %30 = icmp sgt i32 %29, %28
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = add i32 %28, -1
  store i32 %32, ptr @PL_padix, align 4, !tbaa !15
  br label %33

33:                                               ; preds = %27, %31, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_dump_pad(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %90, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.padlist, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds ptr, ptr %8, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.padnamelist, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.av, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = ptrtoint ptr %9 to i64
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %11 to i64
  %19 = ptrtoint ptr %15 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.11, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19) #14
  %20 = load i64, ptr %9, align 8, !tbaa !24
  %21 = icmp slt i64 %20, 1
  br i1 %21, label %90, label %22

22:                                               ; preds = %6
  %23 = add nsw i32 %0, 1
  %24 = icmp eq i32 %3, 0
  br label %25

25:                                               ; preds = %22, %86
  %26 = phi i64 [ 1, %22 ], [ %87, %86 ]
  %27 = getelementptr inbounds ptr, ptr %13, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %73, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.padname, ptr %28, i64 0, i32 7
  %32 = load i8, ptr %31, align 8, !tbaa !56
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.padname, ptr %28, i64 0, i32 8
  %36 = load i8, ptr %35, align 1, !tbaa !57
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds ptr, ptr %15, i64 %26
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = ptrtoint ptr %40 to i64
  %42 = icmp eq ptr %40, null
  br i1 %38, label %58, label %43

43:                                               ; preds = %34
  br i1 %42, label %47, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !47
  br label %47

47:                                               ; preds = %43, %44
  %48 = phi i32 [ %46, %44 ], [ 0, %43 ]
  %49 = zext i32 %48 to i64
  %50 = load ptr, ptr %28, align 8, !tbaa !42
  %51 = getelementptr inbounds %struct.padname, ptr %28, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !55
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.padname, ptr %28, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !54
  %56 = zext i32 %55 to i64
  %57 = trunc i64 %26 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %23, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %57, i64 noundef %41, i64 noundef %49, ptr noundef %50, i64 noundef %53, i64 noundef %56) #14
  br label %86

58:                                               ; preds = %34
  br i1 %42, label %62, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !47
  br label %62

62:                                               ; preds = %58, %59
  %63 = phi i32 [ %61, %59 ], [ 0, %58 ]
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.padname, ptr %28, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !54
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.padname, ptr %28, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !55
  %70 = zext i32 %69 to i64
  %71 = load ptr, ptr %28, align 8, !tbaa !42
  %72 = trunc i64 %26 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %23, ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %72, i64 noundef %41, i64 noundef %64, i64 noundef %67, i64 noundef %70, ptr noundef %71) #14
  br label %86

73:                                               ; preds = %30, %25
  br i1 %24, label %86, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds ptr, ptr %15, i64 %26
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = ptrtoint ptr %76 to i64
  %78 = icmp eq ptr %76, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !47
  br label %82

82:                                               ; preds = %74, %79
  %83 = phi i32 [ %81, %79 ], [ 0, %74 ]
  %84 = zext i32 %83 to i64
  %85 = trunc i64 %26 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %23, ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %85, i64 noundef %77, i64 noundef %84) #14
  br label %86

86:                                               ; preds = %73, %82, %47, %62
  %87 = add nuw i64 %26, 1
  %88 = load i64, ptr %9, align 8, !tbaa !24
  %89 = icmp slt i64 %88, %87
  br i1 %89, label %90, label %25, !llvm.loop !86

90:                                               ; preds = %86, %6, %4
  ret void
}

; Function Attrs: optsize
declare void @Perl_dump_indent(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_cv_clone(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !27
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15) #14
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call fastcc ptr @S_cv_clone(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null) #15
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_cv_clone(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = and i32 %8, 255
  %10 = tail call ptr @Perl_newSV_type(i32 noundef %9) #14
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %1, %4 ], [ %10, %6 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !31
  %16 = and i32 %15, -3185
  %17 = load ptr, ptr %12, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 12
  %19 = or disjoint i32 %16, 64
  store i32 %19, ptr %18, align 4, !tbaa !31
  %20 = load i32, ptr %14, align 4, !tbaa !31
  %21 = and i32 %20, 4096
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  br i1 %22, label %31, label %25

25:                                               ; preds = %11
  %26 = tail call ptr @Perl_savepv(ptr noundef %24) #14
  %27 = load ptr, ptr %12, align 8, !tbaa !27
  %28 = load ptr, ptr %0, align 8, !tbaa !27
  %29 = getelementptr inbounds %struct.xpvcv, ptr %28, i64 0, i32 12
  %30 = load i32, ptr %29, align 4, !tbaa !31
  br label %31

31:                                               ; preds = %11, %25
  %32 = phi i32 [ %30, %25 ], [ %20, %11 ]
  %33 = phi ptr [ %27, %25 ], [ %17, %11 ]
  %34 = phi ptr [ %26, %25 ], [ %24, %11 ]
  %35 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 8
  store ptr %34, ptr %35, align 8, !tbaa !29
  %36 = and i32 %32, 32768
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %12) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !20
  tail call void @Perl_unshare_hek(ptr noundef %43) #14
  br label %44

44:                                               ; preds = %38, %41
  %45 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #15
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load i64, ptr %46, align 8, !tbaa !20
  %48 = add i64 %47, 1
  store i64 %48, ptr %46, align 8, !tbaa !20
  %49 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #15
  %50 = load ptr, ptr %12, align 8, !tbaa !27
  %51 = getelementptr inbounds %struct.xpvcv, ptr %50, i64 0, i32 7
  store ptr %49, ptr %51, align 8, !tbaa !20
  %52 = load ptr, ptr %12, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !31
  %55 = or i32 %54, 32768
  store i32 %55, ptr %53, align 4, !tbaa !31
  br label %58

56:                                               ; preds = %31
  %57 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %0) #15
  tail call void @Perl_cvgv_set(ptr noundef nonnull %12, ptr noundef %57) #14
  br label %58

58:                                               ; preds = %56, %44
  %59 = load ptr, ptr %0, align 8, !tbaa !27
  %60 = getelementptr inbounds %struct.xpvcv, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !87
  tail call void @Perl_cvstash_set(ptr noundef nonnull %12, ptr noundef %61) #14
  %62 = load ptr, ptr %0, align 8, !tbaa !27
  %63 = getelementptr inbounds %struct.xpvcv, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !20
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.op, ptr %64, i64 0, i32 3
  %68 = load i64, ptr %67, align 8, !tbaa !81
  %69 = add i64 %68, 1
  store i64 %69, ptr %67, align 8, !tbaa !81
  %70 = load ptr, ptr %63, align 8, !tbaa !20
  br label %71

71:                                               ; preds = %58, %66
  %72 = phi ptr [ %70, %66 ], [ null, %58 ]
  %73 = load ptr, ptr %12, align 8, !tbaa !27
  %74 = getelementptr inbounds %struct.xpvcv, ptr %73, i64 0, i32 6
  store ptr %72, ptr %74, align 8, !tbaa !20
  %75 = load ptr, ptr %0, align 8, !tbaa !27
  %76 = getelementptr inbounds %struct.xpvcv, ptr %75, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !20
  %78 = load ptr, ptr %12, align 8, !tbaa !27
  %79 = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 5
  store ptr %77, ptr %79, align 8, !tbaa !20
  %80 = load ptr, ptr %0, align 8, !tbaa !27
  %81 = getelementptr inbounds %struct.xpvcv, ptr %80, i64 0, i32 11
  %82 = load i32, ptr %81, align 8, !tbaa !41
  %83 = load ptr, ptr %12, align 8, !tbaa !27
  %84 = getelementptr inbounds %struct.xpvcv, ptr %83, i64 0, i32 11
  store i32 %82, ptr %84, align 8, !tbaa !41
  %85 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !46
  %87 = and i32 %86, 1024
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !20
  %92 = getelementptr inbounds %struct.xpv, ptr %80, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !65
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %12, ptr noundef %91, i64 noundef %93) #14
  %94 = load i32, ptr %85, align 4, !tbaa !46
  %95 = and i32 %94, 536870912
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !38
  %100 = or i32 %99, 536870912
  store i32 %100, ptr %98, align 4, !tbaa !38
  br label %101

101:                                              ; preds = %89, %97, %71
  %102 = load ptr, ptr %0, align 8, !tbaa !27
  %103 = getelementptr inbounds %struct.xpvmg, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !20
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef null, i32 noundef 0) #14
  %108 = load ptr, ptr %0, align 8, !tbaa !27
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi ptr [ %108, %106 ], [ %102, %101 ]
  %111 = getelementptr inbounds %struct.xpvcv, ptr %110, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !20
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = tail call fastcc ptr @S_cv_clone_pad(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %5) #15
  br label %116

116:                                              ; preds = %114, %109
  %117 = phi ptr [ %115, %114 ], [ %12, %109 ]
  ret ptr %117
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_cv_clone_into(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @Perl_cv_undef(ptr noundef %1) #15
  %3 = tail call fastcc ptr @S_cv_clone(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_cv_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = and i32 %5, 49152
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = trunc i32 %5 to i8
  switch i8 %9, label %13 [
    i8 13, label %16
    i8 10, label %16
    i8 9, label %16
  ]

10:                                               ; preds = %3
  %11 = and i32 %5, 255
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %10
  %14 = icmp eq ptr %1, null
  br i1 %14, label %94, label %15

15:                                               ; preds = %13
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 1538) #14
  br label %94

16:                                               ; preds = %8, %8, %8, %10
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = tail call ptr @Perl_sv_newmortal() #14
  %20 = load i32, ptr %4, align 4, !tbaa !46
  br label %21

21:                                               ; preds = %16, %18
  %22 = phi i32 [ %20, %18 ], [ %5, %16 ]
  %23 = phi ptr [ %19, %18 ], [ %1, %16 ]
  %24 = and i32 %22, 255
  %25 = icmp eq i32 %24, 13
  br i1 %25, label %26, label %86

26:                                               ; preds = %21
  %27 = load ptr, ptr %0, align 8, !tbaa !27
  %28 = getelementptr inbounds %struct.xpvcv, ptr %27, i64 0, i32 12
  %29 = load i32, ptr %28, align 4, !tbaa !31
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %29, 65536
  %33 = and i32 %2, 1
  %34 = or disjoint i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %31, label %75, label %36

36:                                               ; preds = %26
  br i1 %35, label %39, label %37

37:                                               ; preds = %36
  %38 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #15
  tail call void @Perl_sv_sethek(ptr noundef %23, ptr noundef %38) #14
  br label %94

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.xpvcv, ptr %27, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !88
  %44 = and i32 %43, 33554432
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.hv, ptr %41, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  %49 = load ptr, ptr %41, align 8, !tbaa !90
  %50 = getelementptr inbounds %struct.xpvhv, ptr %49, i64 0, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !91
  %52 = getelementptr ptr, ptr %48, i64 %51
  %53 = getelementptr ptr, ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = getelementptr i8, ptr %52, i64 36
  %58 = load i32, ptr %57, align 4, !tbaa !93
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %54, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %56, %39, %46, %60
  %63 = phi ptr [ %61, %60 ], [ null, %46 ], [ null, %39 ], [ %54, %56 ]
  tail call void @Perl_sv_sethek(ptr noundef %23, ptr noundef %63) #14
  tail call void @Perl_sv_catpvn_flags(ptr noundef %23, ptr noundef nonnull @.str.16, i64 noundef 2, i32 noundef 2) #14
  %64 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #15
  %65 = getelementptr inbounds %struct.hek, ptr %64, i64 0, i32 2
  %66 = getelementptr inbounds %struct.hek, ptr %64, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !95
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %65, i64 %68
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, i32 16384, i32 32768
  tail call void @Perl_sv_catpvn_flags(ptr noundef %23, ptr noundef nonnull %65, i64 noundef %68, i32 noundef %74) #14
  br label %94

75:                                               ; preds = %26
  %76 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %0) #15
  br i1 %35, label %85, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.gv, ptr %76, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !20
  %80 = getelementptr inbounds %struct.gp, ptr %79, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !97
  %82 = load ptr, ptr %81, align 8, !tbaa !98
  %83 = getelementptr inbounds %struct.xpvgv, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !20
  tail call void @Perl_sv_sethek(ptr noundef %23, ptr noundef %84) #14
  br label %94

85:                                               ; preds = %75
  tail call void @Perl_gv_efullname4(ptr noundef %23, ptr noundef %76, ptr noundef null, i1 noundef zeroext true) #14
  br label %94

86:                                               ; preds = %21
  %87 = and i32 %2, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %0, align 8, !tbaa !27
  %91 = getelementptr inbounds %struct.xpvgv, ptr %90, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !20
  tail call void @Perl_sv_sethek(ptr noundef %23, ptr noundef %92) #14
  br label %94

93:                                               ; preds = %86
  tail call void @Perl_gv_efullname4(ptr noundef %23, ptr noundef nonnull %0, ptr noundef null, i1 noundef zeroext true) #14
  br label %94

94:                                               ; preds = %77, %85, %37, %62, %93, %89, %13, %15
  %95 = phi ptr [ %1, %15 ], [ %0, %13 ], [ %23, %89 ], [ %23, %93 ], [ %23, %62 ], [ %23, %37 ], [ %23, %85 ], [ %23, %77 ]
  ret ptr %95
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !27
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !31
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #14
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pad_fixup_inner_anons(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds ptr, ptr %5, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.padnamelist, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.av, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = load i64, ptr %6, align 8, !tbaa !24
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %117

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.cv, ptr %2, i64 0, i32 1
  %18 = and i64 %13, 4294967295
  br label %19

19:                                               ; preds = %16, %114
  %20 = phi i64 [ %18, %16 ], [ %115, %114 ]
  %21 = getelementptr inbounds ptr, ptr %10, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp ne ptr %22, null
  %24 = icmp ne ptr %22, @PL_padname_undef
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.padname, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %114

30:                                               ; preds = %26
  %31 = load ptr, ptr %22, align 8, !tbaa !42
  %32 = load i8, ptr %31, align 1, !tbaa !20
  %33 = icmp eq i8 %32, 38
  br i1 %33, label %34, label %114

34:                                               ; preds = %30
  %35 = getelementptr inbounds ptr, ptr %12, i64 %20
  %36 = getelementptr inbounds %struct.padname, ptr %22, i64 0, i32 8
  %37 = load i8, ptr %36, align 1, !tbaa !57
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %2, align 8, !tbaa !27
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %47, %42 ], [ %41, %40 ]
  %44 = phi ptr [ %59, %42 ], [ %22, %40 ]
  %45 = getelementptr inbounds %struct.xpvcv, ptr %43, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !40
  %47 = load ptr, ptr %46, align 8, !tbaa !27
  %48 = getelementptr inbounds %struct.xpvcv, ptr %47, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !20
  %50 = getelementptr inbounds %struct.padlist, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !19
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.padnamelist, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !23
  %55 = getelementptr inbounds %struct.padname, ptr %44, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !54
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.padname, ptr %59, i64 0, i32 8
  %61 = load i8, ptr %60, align 1, !tbaa !57
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %42, !llvm.loop !100

64:                                               ; preds = %42
  %65 = getelementptr inbounds ptr, ptr %51, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.av, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !20
  %69 = getelementptr inbounds ptr, ptr %68, i64 %57
  br label %70

70:                                               ; preds = %34, %64
  %71 = phi ptr [ %69, %64 ], [ %35, %34 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.cv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !46
  %75 = and i32 %74, 255
  %76 = icmp eq i32 %75, 13
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load ptr, ptr %72, align 8, !tbaa !27
  %79 = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !40
  %81 = icmp eq ptr %80, %1
  br i1 %81, label %82, label %114

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 12
  %84 = load i32, ptr %83, align 4, !tbaa !31
  %85 = and i32 %84, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %111

87:                                               ; preds = %70
  %88 = load ptr, ptr %35, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !38
  %91 = and i32 %90, 65280
  %92 = icmp ne i32 %91, 0
  %93 = and i32 %90, 255
  %94 = icmp eq i32 %93, 8
  %95 = or i1 %92, %94
  %96 = and i32 %90, 16777471
  %97 = icmp eq i32 %96, 16777226
  %98 = or i1 %97, %95
  br i1 %98, label %99, label %114

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !20
  %102 = load ptr, ptr %101, align 8, !tbaa !27
  %103 = getelementptr inbounds %struct.xpvcv, ptr %102, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !40
  br label %105

105:                                              ; preds = %82, %99
  %106 = phi ptr [ %104, %99 ], [ %1, %82 ]
  %107 = phi ptr [ %101, %99 ], [ %72, %82 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %106) #15
  %108 = load i32, ptr %17, align 8, !tbaa !15
  %109 = add i32 %108, 1
  store i32 %109, ptr %17, align 8, !tbaa !15
  %110 = load ptr, ptr %107, align 8, !tbaa !27
  br label %111

111:                                              ; preds = %105, %82
  %112 = phi ptr [ %78, %82 ], [ %110, %105 ]
  %113 = getelementptr inbounds %struct.xpvcv, ptr %112, i64 0, i32 10
  store ptr %2, ptr %113, align 8, !tbaa !40
  br label %114

114:                                              ; preds = %111, %77, %87, %19, %26, %30
  %115 = add nsw i64 %20, -1
  %116 = icmp sgt i64 %20, 1
  br i1 %116, label %19, label %117, !llvm.loop !101

117:                                              ; preds = %114, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pad_push(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = load i64, ptr %0, align 8, !tbaa !18
  %5 = icmp slt i64 %4, %3
  %6 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %5, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %7, i64 %3
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %96

12:                                               ; preds = %2, %8
  %13 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %14 = getelementptr ptr, ptr %7, i64 %3
  %15 = getelementptr ptr, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.av, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = getelementptr inbounds ptr, ptr %7, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.xpvav, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !71
  %24 = trunc i64 %23 to i32
  %25 = load ptr, ptr %7, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.padnamelist, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  %28 = icmp sgt i32 %24, 0
  br i1 %28, label %29, label %88

29:                                               ; preds = %12
  %30 = load i64, ptr %25, align 8, !tbaa !24
  %31 = and i64 %23, 4294967295
  %32 = shl i64 %30, 32
  %33 = ashr exact i64 %32, 32
  br label %34

34:                                               ; preds = %29, %85
  %35 = phi i64 [ %31, %29 ], [ %86, %85 ]
  %36 = icmp sgt i64 %35, %33
  %37 = getelementptr inbounds ptr, ptr %27, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  br i1 %36, label %71, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 7
  %41 = load i8, ptr %40, align 8, !tbaa !56
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 8
  %45 = load i8, ptr %44, align 1, !tbaa !57
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load ptr, ptr %38, align 8, !tbaa !42
  %51 = load i8, ptr %50, align 1, !tbaa !20
  %52 = and i32 %46, 2
  %53 = icmp ne i32 %52, 0
  %54 = icmp eq i8 %51, 38
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49, %43
  %57 = getelementptr inbounds ptr, ptr %18, i64 %35
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %58) #15
  %60 = tail call ptr @Perl_av_store(ptr noundef %13, i64 noundef %35, ptr noundef %58) #14
  br label %85

61:                                               ; preds = %49
  switch i8 %51, label %66 [
    i8 64, label %62
    i8 37, label %64
  ]

62:                                               ; preds = %61
  %63 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  br label %68

64:                                               ; preds = %61
  %65 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  br label %68

66:                                               ; preds = %61
  %67 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  br label %68

68:                                               ; preds = %64, %66, %62
  %69 = phi ptr [ %63, %62 ], [ %65, %64 ], [ %67, %66 ]
  %70 = tail call ptr @Perl_av_store(ptr noundef %13, i64 noundef %35, ptr noundef %69) #14
  br label %85

71:                                               ; preds = %34, %39
  %72 = load ptr, ptr %38, align 8, !tbaa !42
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds ptr, ptr %18, i64 %35
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = tail call fastcc ptr @S_SvREFCNT_inc_NN(ptr noundef %76) #15
  %78 = tail call ptr @Perl_av_store(ptr noundef %13, i64 noundef %35, ptr noundef %76) #14
  br label %85

79:                                               ; preds = %71
  %80 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %81 = tail call ptr @Perl_av_store(ptr noundef %13, i64 noundef %35, ptr noundef %80) #14
  %82 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !38
  %84 = or i32 %83, 131072
  store i32 %84, ptr %82, align 4, !tbaa !38
  br label %85

85:                                               ; preds = %56, %68, %79, %74
  %86 = add nsw i64 %35, -1
  %87 = icmp sgt i64 %35, 1
  br i1 %87, label %34, label %88, !llvm.loop !102

88:                                               ; preds = %85, %12
  %89 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %90 = tail call ptr @Perl_av_store(ptr noundef %13, i64 noundef 0, ptr noundef %89) #14
  %91 = getelementptr inbounds %struct.av, ptr %89, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !9
  %93 = and i32 %92, 1073741823
  %94 = or disjoint i32 %93, -2147483648
  store i32 %94, ptr %91, align 4, !tbaa !9
  %95 = tail call ptr @Perl_padlist_store(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %13) #15
  br label %96

96:                                               ; preds = %88, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !47
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc_NN(ptr noundef returned %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !47
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_padlist_store(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8, !tbaa !18
  %5 = sext i32 %1 to i64
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %8) #14
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds ptr, ptr %9, i64 %4
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load i64, ptr %0, align 8, !tbaa !18
  %13 = sub nsw i64 %12, %4
  %14 = shl i64 %13, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 0, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds ptr, ptr %17, i64 %5
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %19) #15
  store ptr %2, ptr %18, align 8, !tbaa !5
  ret ptr %18
}

; Function Attrs: optsize
declare void @Perl_av_extend_guts(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_padname_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, @PL_padname_undef
  %8 = icmp eq ptr %0, @PL_padname_const
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 2147483647, ptr %2, align 8, !tbaa !52
  br label %24

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 8
  %17 = load i8, ptr %16, align 1, !tbaa !57
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr %0, align 8, !tbaa !42
  %22 = getelementptr inbounds i8, ptr %21, i64 -42
  tail call void @Perl_padname_free(ptr noundef nonnull %22) #15
  br label %23

23:                                               ; preds = %20, %11
  tail call void @Perl_safesysfree(ptr noundef %0) #14
  br label %24

24:                                               ; preds = %10, %23, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_padnamelist_fetch(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = load i64, ptr %0, align 8, !tbaa !24
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds ptr, ptr %7, i64 %1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_newPADNAMEouter(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #14
  %3 = getelementptr inbounds %struct.padname, ptr %2, i64 0, i32 5
  store i32 1, ptr %3, align 8, !tbaa !52
  %4 = load ptr, ptr %0, align 8, !tbaa !42
  store ptr %4, ptr %2, align 8, !tbaa !42
  %5 = getelementptr inbounds i8, ptr %4, i64 -10
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.padname, ptr %2, i64 0, i32 8
  store i8 1, ptr %8, align 1, !tbaa !57
  %9 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.padname, ptr %2, i64 0, i32 7
  store i8 %10, ptr %11, align 8, !tbaa !56
  ret ptr %2
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @PadnameIN_SCOPE(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !55
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = icmp ult i32 %4, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = sub i32 %1, %4
  %14 = icmp ult i32 %13, 2147483647
  br i1 %14, label %27, label %26

15:                                               ; preds = %10
  %16 = sub i32 %4, %1
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %27, label %26

18:                                               ; preds = %6
  %19 = icmp ugt i32 %4, %8
  %20 = icmp uge i32 %4, %1
  %21 = icmp ult i32 %8, %1
  br i1 %19, label %22, label %24

22:                                               ; preds = %18
  %23 = and i1 %20, %21
  br i1 %23, label %26, label %27

24:                                               ; preds = %18
  %25 = or i1 %20, %21
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %24, %12, %15
  br label %27

27:                                               ; preds = %22, %24, %12, %15, %2, %26
  %28 = phi i1 [ false, %26 ], [ false, %2 ], [ true, %15 ], [ true, %12 ], [ true, %24 ], [ true, %22 ]
  ret i1 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_unavailable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = load i8, ptr %2, align 1, !tbaa !20
  %4 = icmp eq i8 %3, 38
  %5 = select i1 %4, ptr @.str.29, ptr @.str.30
  %6 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 8, !tbaa !56
  %8 = zext i8 %7 to i64
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %5, i32 noundef 1, i64 noundef %8, ptr noundef nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_savepv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_cvstash_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_cv_clone_pad(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %1, ptr %6, align 8, !tbaa !5
  %8 = load ptr, ptr %0, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.padlist, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds ptr, ptr %12, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.padnamelist, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.av, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = load i64, ptr %13, align 8, !tbaa !24
  %21 = load ptr, ptr %15, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.xpvav, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !71
  %24 = trunc i64 %23 to i32
  %25 = icmp eq ptr %2, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 12
  %28 = load i32, ptr %27, align 4, !tbaa !31
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @Perl_find_runcv(ptr noundef null) #14
  br label %56

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = load ptr, ptr %35, align 8, !tbaa !27
  %37 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !31
  %39 = and i32 %38, 96
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.padlist, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !16
  %48 = getelementptr inbounds %struct.padlist, ptr %10, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !103
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %33, %45, %41
  %52 = getelementptr inbounds %struct.padlist, ptr %10, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !103
  %54 = zext i32 %53 to i64
  %55 = tail call ptr @Perl_find_runcv_where(i8 noundef zeroext 1, i64 noundef %54, ptr noundef null) #14
  br label %56

56:                                               ; preds = %31, %51
  %57 = phi ptr [ %32, %31 ], [ %55, %51 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %45, %5, %56
  %60 = phi ptr [ %57, %56 ], [ %35, %45 ], [ %2, %5 ]
  %61 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %60) #15
  %62 = load i32, ptr %61, align 4, !tbaa !15
  br label %63

63:                                               ; preds = %56, %59
  %64 = phi i1 [ false, %59 ], [ true, %56 ]
  %65 = phi ptr [ %60, %59 ], [ null, %56 ]
  %66 = phi i32 [ %62, %59 ], [ 0, %56 ]
  %67 = tail call i32 @llvm.umax.i32(i32 %66, i32 1)
  %68 = sext i32 %67 to i64
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_compcv) #14
  store ptr %1, ptr @PL_compcv, align 8, !tbaa !5
  br i1 %4, label %69, label %70

69:                                               ; preds = %63
  tail call void @Perl_save_pushptr(ptr noundef %1, i32 noundef 11) #14
  br label %70

70:                                               ; preds = %69, %63
  %71 = load ptr, ptr %1, align 8, !tbaa !27
  %72 = getelementptr inbounds %struct.xpvcv, ptr %71, i64 0, i32 12
  %73 = load i32, ptr %72, align 4, !tbaa !31
  %74 = and i32 %73, 16384
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %65) #15
  %78 = load ptr, ptr %1, align 8, !tbaa !27
  %79 = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 10
  store ptr %65, ptr %79, align 8, !tbaa !40
  br label %80

80:                                               ; preds = %76, %70
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_comppad_name) #14
  store ptr %13, ptr @PL_comppad_name, align 8, !tbaa !5
  %81 = tail call ptr @Perl_pad_new(i32 noundef 3) #15
  %82 = load ptr, ptr %1, align 8, !tbaa !27
  %83 = getelementptr inbounds %struct.xpvcv, ptr %82, i64 0, i32 9
  store ptr %81, ptr %83, align 8, !tbaa !20
  %84 = getelementptr inbounds %struct.padlist, ptr %10, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !16
  %86 = load ptr, ptr %1, align 8, !tbaa !27
  %87 = getelementptr inbounds %struct.xpvcv, ptr %86, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !20
  %89 = getelementptr inbounds %struct.padlist, ptr %88, i64 0, i32 2
  store i32 %85, ptr %89, align 8, !tbaa !16
  %90 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %91 = shl i64 %23, 32
  %92 = ashr exact i64 %91, 32
  tail call void @Perl_av_fill(ptr noundef %90, i64 noundef %92) #14
  %93 = load ptr, ptr @PL_comppad, align 8, !tbaa !5
  %94 = getelementptr inbounds %struct.av, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !20
  store ptr %95, ptr @PL_curpad, align 8, !tbaa !5
  br i1 %64, label %116, label %96

96:                                               ; preds = %80
  %97 = load ptr, ptr %65, align 8, !tbaa !27
  %98 = getelementptr inbounds %struct.xpvcv, ptr %97, i64 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !20
  %100 = icmp eq ptr %99, null
  br i1 %100, label %116, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.padlist, ptr %99, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !19
  %104 = getelementptr inbounds ptr, ptr %103, i64 %68
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.av, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !20
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.padlist, ptr %99, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !16
  %112 = load ptr, ptr %1, align 8, !tbaa !27
  %113 = getelementptr inbounds %struct.xpvcv, ptr %112, i64 0, i32 9
  %114 = load ptr, ptr %113, align 8, !tbaa !20
  %115 = getelementptr inbounds %struct.padlist, ptr %114, i64 0, i32 3
  store i32 %111, ptr %115, align 4, !tbaa !103
  br label %116

116:                                              ; preds = %80, %96, %109, %101
  %117 = phi i1 [ false, %109 ], [ true, %101 ], [ true, %96 ], [ true, %80 ]
  %118 = phi ptr [ %107, %109 ], [ null, %101 ], [ null, %96 ], [ null, %80 ]
  %119 = icmp sgt i32 %24, 0
  br i1 %119, label %120, label %438

120:                                              ; preds = %116
  %121 = and i64 %23, 4294967295
  %122 = shl i64 %20, 32
  %123 = ashr exact i64 %122, 32
  br label %124

124:                                              ; preds = %120, %259
  %125 = phi i64 [ %121, %120 ], [ %265, %259 ]
  %126 = phi i32 [ 0, %120 ], [ %262, %259 ]
  %127 = phi i8 [ 0, %120 ], [ %261, %259 ]
  %128 = icmp sgt i64 %125, %123
  br i1 %128, label %254, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds ptr, ptr %17, i64 %125
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  %132 = icmp eq ptr %131, null
  br i1 %132, label %254, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.padname, ptr %131, i64 0, i32 7
  %135 = load i8, ptr %134, align 8, !tbaa !56
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %247, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.padname, ptr %131, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !58
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %259

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.padname, ptr %131, i64 0, i32 8
  %143 = load i8, ptr %142, align 1, !tbaa !57
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %173, label %147

147:                                              ; preds = %141
  br i1 %117, label %168, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.padname, ptr %131, i64 0, i32 3
  %150 = load i32, ptr %149, align 8, !tbaa !54
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %118, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = icmp eq ptr %153, null
  br i1 %154, label %168, label %155

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !38
  %158 = and i32 %157, 262144
  %159 = icmp ne i32 %158, 0
  %160 = and i32 %144, 2
  %161 = icmp eq i32 %160, 0
  %162 = and i1 %161, %159
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  br i1 %64, label %168, label %164

164:                                              ; preds = %163
  %165 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %65) #15
  %166 = load i32, ptr %165, align 4, !tbaa !15
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %163, %148, %147
  tail call fastcc void @S_unavailable(ptr noundef nonnull %131) #15
  br label %173

169:                                              ; preds = %155, %164
  %170 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !47
  %172 = add i32 %171, 1
  store i32 %172, ptr %170, align 8, !tbaa !47
  br label %259

173:                                              ; preds = %168, %141
  %174 = load ptr, ptr %131, align 8, !tbaa !42
  %175 = load i8, ptr %174, align 1, !tbaa !20
  switch i8 %175, label %239 [
    i8 38, label %176
    i8 64, label %235
    i8 37, label %237
  ]

176:                                              ; preds = %173
  %177 = load i8, ptr %142, align 1, !tbaa !57
  %178 = and i8 %177, 2
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %199, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds ptr, ptr %19, i64 %125
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  %183 = load ptr, ptr %182, align 8, !tbaa !64
  %184 = getelementptr inbounds %struct.xpvcv, ptr %183, i64 0, i32 12
  %185 = load i32, ptr %184, align 4, !tbaa !31
  %186 = and i32 %185, 64
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %180
  %189 = add i32 %126, 1
  %190 = getelementptr inbounds %struct.xpvcv, ptr %183, i64 0, i32 10
  %191 = load ptr, ptr %190, align 8, !tbaa !40
  %192 = icmp eq ptr %191, %0
  %193 = select i1 %192, i8 %127, i8 1
  %194 = tail call ptr @Perl_newSV_type(i32 noundef 13) #14
  %195 = load ptr, ptr %194, align 8, !tbaa !64
  %196 = getelementptr inbounds %struct.xpvcv, ptr %195, i64 0, i32 12
  %197 = load i32, ptr %196, align 4, !tbaa !31
  %198 = or i32 %197, 65536
  store i32 %198, ptr %196, align 4, !tbaa !31
  br label %259

199:                                              ; preds = %180, %176
  %200 = load i8, ptr %134, align 8, !tbaa !56
  %201 = zext i8 %200 to i64
  %202 = icmp ugt i8 %200, 1
  br i1 %202, label %203, label %231

203:                                              ; preds = %199
  %204 = load ptr, ptr %138, align 8, !tbaa !58
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %231

206:                                              ; preds = %203
  %207 = getelementptr inbounds i8, ptr %174, i64 1
  %208 = add nuw nsw i64 %201, 4294967295
  %209 = and i64 %208, 4294967295
  %210 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef nonnull %207, i64 noundef %209) #15
  %211 = tail call ptr @Perl_newSV_type(i32 noundef 13) #14
  %212 = tail call fastcc ptr @CvNAME_HEK(ptr noundef %211) #15
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %206
  %215 = load ptr, ptr %211, align 8, !tbaa !27
  %216 = getelementptr inbounds %struct.xpvcv, ptr %215, i64 0, i32 7
  %217 = load ptr, ptr %216, align 8, !tbaa !20
  tail call void @Perl_unshare_hek(ptr noundef %217) #14
  br label %218

218:                                              ; preds = %206, %214
  %219 = load ptr, ptr %131, align 8, !tbaa !42
  %220 = getelementptr inbounds i8, ptr %219, i64 1
  %221 = load i8, ptr %134, align 8, !tbaa !56
  %222 = zext i8 %221 to i32
  %223 = sub nsw i32 1, %222
  %224 = tail call ptr @Perl_share_hek(ptr noundef nonnull %220, i32 noundef %223, i32 noundef %210) #14
  %225 = load ptr, ptr %211, align 8, !tbaa !64
  %226 = getelementptr inbounds %struct.xpvcv, ptr %225, i64 0, i32 7
  store ptr %224, ptr %226, align 8, !tbaa !20
  %227 = load ptr, ptr %211, align 8, !tbaa !64
  %228 = getelementptr inbounds %struct.xpvcv, ptr %227, i64 0, i32 12
  %229 = load i32, ptr %228, align 4, !tbaa !31
  %230 = or i32 %229, 98304
  store i32 %230, ptr %228, align 4, !tbaa !31
  br label %259

231:                                              ; preds = %203, %199
  %232 = getelementptr inbounds ptr, ptr %19, i64 %125
  %233 = load ptr, ptr %232, align 8, !tbaa !5
  %234 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %233) #15
  br label %259

235:                                              ; preds = %173
  %236 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  br label %241

237:                                              ; preds = %173
  %238 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  br label %241

239:                                              ; preds = %173
  %240 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  br label %241

241:                                              ; preds = %239, %237, %235
  %242 = phi ptr [ %240, %239 ], [ %238, %237 ], [ %236, %235 ]
  %243 = load i8, ptr %142, align 1, !tbaa !57
  %244 = and i8 %243, 2
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %241
  tail call fastcc void @S_SvPADSTALE_on(ptr noundef %242) #15
  br label %259

247:                                              ; preds = %133
  %248 = load ptr, ptr %131, align 8, !tbaa !42
  %249 = icmp eq ptr %248, null
  br i1 %249, label %254, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds ptr, ptr %19, i64 %125
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = tail call fastcc ptr @S_SvREFCNT_inc_NN(ptr noundef %252) #15
  br label %259

254:                                              ; preds = %124, %129, %247
  %255 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %256 = getelementptr inbounds %struct.sv, ptr %255, i64 0, i32 2
  %257 = load i32, ptr %256, align 4, !tbaa !38
  %258 = or i32 %257, 131072
  store i32 %258, ptr %256, align 4, !tbaa !38
  br label %259

259:                                              ; preds = %218, %231, %188, %169, %241, %246, %250, %254, %137
  %260 = phi ptr [ null, %137 ], [ %153, %169 ], [ %252, %250 ], [ %255, %254 ], [ %242, %246 ], [ %242, %241 ], [ %194, %188 ], [ %211, %218 ], [ %233, %231 ]
  %261 = phi i8 [ %127, %137 ], [ %127, %169 ], [ %127, %250 ], [ %127, %254 ], [ %127, %246 ], [ %127, %241 ], [ %193, %188 ], [ %127, %218 ], [ %127, %231 ]
  %262 = phi i32 [ %126, %137 ], [ %126, %169 ], [ %126, %250 ], [ %126, %254 ], [ %126, %246 ], [ %126, %241 ], [ %189, %188 ], [ %126, %218 ], [ %126, %231 ]
  %263 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %264 = getelementptr inbounds ptr, ptr %263, i64 %125
  store ptr %260, ptr %264, align 8, !tbaa !5
  %265 = add nsw i64 %125, -1
  %266 = icmp sgt i64 %125, 1
  br i1 %266, label %124, label %267, !llvm.loop !104

267:                                              ; preds = %259
  %268 = icmp eq i32 %262, 0
  br i1 %268, label %438, label %269

269:                                              ; preds = %267
  %270 = and i8 %261, 1
  %271 = icmp ne i8 %270, 0
  %272 = icmp ne ptr %3, null
  %273 = or i1 %272, %271
  br i1 %273, label %279, label %274

274:                                              ; preds = %269
  br i1 %119, label %275, label %438

275:                                              ; preds = %274
  %276 = and i64 %23, 4294967295
  %277 = shl i64 %20, 32
  %278 = ashr exact i64 %277, 32
  br label %406

279:                                              ; preds = %269
  br i1 %272, label %283, label %280

280:                                              ; preds = %279
  %281 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  %282 = tail call ptr @Perl_sv_2mortal(ptr noundef %281) #14
  br label %283

283:                                              ; preds = %280, %279
  %284 = phi ptr [ %3, %279 ], [ %282, %280 ]
  %285 = and i64 %23, 4294967295
  %286 = shl i64 %20, 32
  %287 = ashr exact i64 %286, 32
  br label %288

288:                                              ; preds = %359, %283
  %289 = phi i32 [ %262, %283 ], [ %356, %359 ]
  br i1 %119, label %290, label %438

290:                                              ; preds = %288, %354
  %291 = phi i64 [ %357, %354 ], [ %285, %288 ]
  %292 = phi i32 [ %356, %354 ], [ %289, %288 ]
  %293 = phi i8 [ %355, %354 ], [ 0, %288 ]
  %294 = icmp sgt i64 %291, %287
  br i1 %294, label %354, label %295

295:                                              ; preds = %290
  %296 = getelementptr inbounds ptr, ptr %17, i64 %291
  %297 = load ptr, ptr %296, align 8, !tbaa !5
  %298 = icmp ne ptr %297, null
  %299 = icmp ne ptr %297, @PL_padname_undef
  %300 = and i1 %298, %299
  br i1 %300, label %301, label %354

301:                                              ; preds = %295
  %302 = getelementptr inbounds %struct.padname, ptr %297, i64 0, i32 8
  %303 = load i8, ptr %302, align 1, !tbaa !57
  %304 = zext i8 %303 to i32
  %305 = and i32 %304, 1
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %354

307:                                              ; preds = %301
  %308 = load ptr, ptr %297, align 8, !tbaa !42
  %309 = load i8, ptr %308, align 1, !tbaa !20
  %310 = icmp ne i8 %309, 38
  %311 = and i32 %304, 2
  %312 = icmp eq i32 %311, 0
  %313 = or i1 %312, %310
  br i1 %313, label %354, label %314

314:                                              ; preds = %307
  %315 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %316 = getelementptr inbounds ptr, ptr %315, i64 %291
  %317 = load ptr, ptr %316, align 8, !tbaa !5
  %318 = load ptr, ptr %317, align 8, !tbaa !64
  %319 = getelementptr inbounds %struct.xpvcv, ptr %318, i64 0, i32 12
  %320 = load i32, ptr %319, align 4, !tbaa !31
  %321 = and i32 %320, 64
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %354

323:                                              ; preds = %314
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %324 = getelementptr inbounds ptr, ptr %19, i64 %291
  %325 = load ptr, ptr %324, align 8, !tbaa !5
  %326 = load ptr, ptr %325, align 8, !tbaa !64
  %327 = getelementptr inbounds %struct.xpvcv, ptr %326, i64 0, i32 10
  %328 = load ptr, ptr %327, align 8, !tbaa !40
  store ptr %328, ptr %7, align 8, !tbaa !5
  %329 = icmp eq ptr %328, %0
  br i1 %329, label %333, label %330

330:                                              ; preds = %323
  %331 = call ptr @Perl_hv_common_key_len(ptr noundef %284, ptr noundef nonnull %7, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %332 = icmp eq ptr %331, null
  br i1 %332, label %351, label %333

333:                                              ; preds = %323, %330
  %334 = phi ptr [ %331, %330 ], [ %6, %323 ]
  %335 = load ptr, ptr %334, align 8, !tbaa !5
  %336 = icmp eq ptr %335, null
  br i1 %336, label %351, label %337

337:                                              ; preds = %333
  %338 = load ptr, ptr %324, align 8, !tbaa !5
  %339 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %340 = getelementptr inbounds ptr, ptr %339, i64 %291
  %341 = load ptr, ptr %340, align 8, !tbaa !5
  %342 = call fastcc ptr @S_cv_clone(ptr noundef %338, ptr noundef %341, ptr noundef nonnull %335, ptr noundef %284) #15
  %343 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %344 = getelementptr inbounds ptr, ptr %343, i64 %291
  %345 = load ptr, ptr %344, align 8, !tbaa !5
  %346 = getelementptr inbounds %struct.sv, ptr %345, i64 0, i32 1
  %347 = load i32, ptr %346, align 8, !tbaa !47
  %348 = add i32 %347, 1
  store i32 %348, ptr %346, align 8, !tbaa !47
  %349 = call ptr @Perl_hv_common_key_len(ptr noundef %284, ptr noundef nonnull %324, i32 noundef 8, i32 noundef 36, ptr noundef %345, i32 noundef 0) #14
  %350 = add i32 %292, -1
  br label %351

351:                                              ; preds = %337, %333, %330
  %352 = phi i8 [ 1, %337 ], [ %293, %333 ], [ %293, %330 ]
  %353 = phi i32 [ %350, %337 ], [ %292, %333 ], [ %292, %330 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %354

354:                                              ; preds = %290, %351, %314, %307, %301, %295
  %355 = phi i8 [ %293, %301 ], [ %293, %314 ], [ %352, %351 ], [ %293, %307 ], [ %293, %295 ], [ %293, %290 ]
  %356 = phi i32 [ %292, %301 ], [ %292, %314 ], [ %353, %351 ], [ %292, %307 ], [ %292, %295 ], [ %292, %290 ]
  %357 = add nsw i64 %291, -1
  %358 = icmp sgt i64 %291, 1
  br i1 %358, label %290, label %359, !llvm.loop !105

359:                                              ; preds = %354
  %360 = and i8 %355, 1
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %362, label %288, !llvm.loop !106

362:                                              ; preds = %359
  %363 = icmp ne i32 %356, 0
  %364 = and i1 %363, %119
  br i1 %364, label %365, label %438

365:                                              ; preds = %362, %403
  %366 = phi i64 [ %404, %403 ], [ %285, %362 ]
  %367 = icmp sgt i64 %366, %287
  br i1 %367, label %403, label %368

368:                                              ; preds = %365
  %369 = getelementptr inbounds ptr, ptr %17, i64 %366
  %370 = load ptr, ptr %369, align 8, !tbaa !5
  %371 = icmp ne ptr %370, null
  %372 = icmp ne ptr %370, @PL_padname_undef
  %373 = and i1 %371, %372
  br i1 %373, label %374, label %403

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.padname, ptr %370, i64 0, i32 8
  %376 = load i8, ptr %375, align 1, !tbaa !57
  %377 = zext i8 %376 to i32
  %378 = and i32 %377, 1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %403

380:                                              ; preds = %374
  %381 = load ptr, ptr %370, align 8, !tbaa !42
  %382 = load i8, ptr %381, align 1, !tbaa !20
  %383 = icmp ne i8 %382, 38
  %384 = and i32 %377, 2
  %385 = icmp eq i32 %384, 0
  %386 = or i1 %385, %383
  br i1 %386, label %403, label %387

387:                                              ; preds = %380
  %388 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %389 = getelementptr inbounds ptr, ptr %388, i64 %366
  %390 = load ptr, ptr %389, align 8, !tbaa !5
  %391 = load ptr, ptr %390, align 8, !tbaa !64
  %392 = getelementptr inbounds %struct.xpvcv, ptr %391, i64 0, i32 12
  %393 = load i32, ptr %392, align 4, !tbaa !31
  %394 = and i32 %393, 64
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %387
  %397 = getelementptr inbounds ptr, ptr %19, i64 %366
  %398 = load ptr, ptr %397, align 8, !tbaa !5
  %399 = load ptr, ptr %398, align 8, !tbaa !64
  %400 = getelementptr inbounds %struct.xpvcv, ptr %399, i64 0, i32 10
  %401 = load ptr, ptr %400, align 8, !tbaa !40
  %402 = call fastcc ptr @S_cv_clone(ptr noundef nonnull %398, ptr noundef nonnull %390, ptr noundef %401, ptr noundef %284) #15
  br label %403

403:                                              ; preds = %365, %396, %387, %380, %374, %368
  %404 = add nsw i64 %366, -1
  %405 = icmp sgt i64 %366, 1
  br i1 %405, label %365, label %438, !llvm.loop !107

406:                                              ; preds = %275, %435
  %407 = phi i64 [ %276, %275 ], [ %436, %435 ]
  %408 = icmp sgt i64 %407, %278
  br i1 %408, label %435, label %409

409:                                              ; preds = %406
  %410 = getelementptr inbounds ptr, ptr %17, i64 %407
  %411 = load ptr, ptr %410, align 8, !tbaa !5
  %412 = icmp ne ptr %411, null
  %413 = icmp ne ptr %411, @PL_padname_undef
  %414 = and i1 %412, %413
  br i1 %414, label %415, label %435

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.padname, ptr %411, i64 0, i32 8
  %417 = load i8, ptr %416, align 1, !tbaa !57
  %418 = zext i8 %417 to i32
  %419 = and i32 %418, 1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %435

421:                                              ; preds = %415
  %422 = load ptr, ptr %411, align 8, !tbaa !42
  %423 = load i8, ptr %422, align 1, !tbaa !20
  %424 = icmp ne i8 %423, 38
  %425 = and i32 %418, 2
  %426 = icmp eq i32 %425, 0
  %427 = or i1 %426, %424
  br i1 %427, label %435, label %428

428:                                              ; preds = %421
  %429 = getelementptr inbounds ptr, ptr %19, i64 %407
  %430 = load ptr, ptr %429, align 8, !tbaa !5
  %431 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %432 = getelementptr inbounds ptr, ptr %431, i64 %407
  %433 = load ptr, ptr %432, align 8, !tbaa !5
  %434 = tail call fastcc ptr @S_cv_clone(ptr noundef %430, ptr noundef %433, ptr noundef nonnull %1, ptr noundef null) #15
  br label %435

435:                                              ; preds = %406, %428, %421, %415, %409
  %436 = add nsw i64 %407, -1
  %437 = icmp sgt i64 %407, 1
  br i1 %437, label %406, label %438, !llvm.loop !108

438:                                              ; preds = %435, %288, %403, %116, %274, %362, %267
  %439 = load ptr, ptr %6, align 8, !tbaa !5
  br i1 %4, label %440, label %444

440:                                              ; preds = %438
  %441 = getelementptr inbounds %struct.sv, ptr %439, i64 0, i32 1
  %442 = load i32, ptr %441, align 8, !tbaa !47
  %443 = add i32 %442, 1
  store i32 %443, ptr %441, align 8, !tbaa !47
  br label %444

444:                                              ; preds = %440, %438
  call void @Perl_pop_scope() #14
  %445 = load ptr, ptr %439, align 8, !tbaa !27
  %446 = getelementptr inbounds %struct.xpvcv, ptr %445, i64 0, i32 12
  %447 = load i32, ptr %446, align 4, !tbaa !31
  %448 = and i32 %447, 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %540, label %450

450:                                              ; preds = %444
  %451 = getelementptr inbounds %struct.xpvcv, ptr %445, i64 0, i32 5
  br label %452

452:                                              ; preds = %456, %450
  %453 = phi ptr [ %451, %450 ], [ %454, %456 ]
  %454 = load ptr, ptr %453, align 8, !tbaa !20
  %455 = icmp eq ptr %454, null
  br i1 %455, label %461, label %456

456:                                              ; preds = %452
  %457 = getelementptr inbounds %struct.op, ptr %454, i64 0, i32 4
  %458 = load i16, ptr %457, align 8
  %459 = and i16 %458, 511
  %460 = icmp eq i16 %459, 9
  br i1 %460, label %461, label %452, !llvm.loop !109

461:                                              ; preds = %456, %452
  %462 = getelementptr inbounds %struct.xpvcv, ptr %445, i64 0, i32 9
  %463 = load ptr, ptr %462, align 8, !tbaa !20
  %464 = getelementptr inbounds %struct.padlist, ptr %463, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !19
  %466 = getelementptr inbounds ptr, ptr %465, i64 1
  %467 = load ptr, ptr %466, align 8, !tbaa !5
  %468 = icmp eq ptr %467, null
  br i1 %468, label %538, label %469

469:                                              ; preds = %461
  %470 = getelementptr inbounds %struct.av, ptr %467, i64 0, i32 3
  %471 = load ptr, ptr %470, align 8, !tbaa !20
  %472 = getelementptr inbounds %struct.op, ptr %454, i64 0, i32 3
  %473 = load i64, ptr %472, align 8, !tbaa !81
  %474 = getelementptr inbounds ptr, ptr %471, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !5
  %476 = icmp eq ptr %475, null
  br i1 %476, label %538, label %477

477:                                              ; preds = %469
  %478 = getelementptr inbounds %struct.sv, ptr %475, i64 0, i32 1
  %479 = load i32, ptr %478, align 8, !tbaa !47
  %480 = icmp eq i32 %479, 2
  br i1 %480, label %481, label %538

481:                                              ; preds = %477
  %482 = and i32 %447, 1
  %483 = icmp eq i32 %482, 0
  br i1 %64, label %523, label %484

484:                                              ; preds = %481
  %485 = load ptr, ptr %65, align 8, !tbaa !27
  %486 = getelementptr inbounds %struct.xpvcv, ptr %485, i64 0, i32 9
  %487 = load ptr, ptr %486, align 8, !tbaa !20
  %488 = getelementptr inbounds %struct.padlist, ptr %487, i64 0, i32 1
  %489 = load ptr, ptr %488, align 8, !tbaa !19
  %490 = load ptr, ptr %489, align 8, !tbaa !5
  %491 = getelementptr inbounds %struct.padnamelist, ptr %490, i64 0, i32 1
  %492 = load ptr, ptr %491, align 8, !tbaa !23
  %493 = load ptr, ptr %465, align 8, !tbaa !5
  %494 = getelementptr inbounds %struct.padnamelist, ptr %493, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !23
  %496 = getelementptr inbounds ptr, ptr %495, i64 %473
  %497 = load ptr, ptr %496, align 8, !tbaa !5
  %498 = getelementptr inbounds %struct.padname, ptr %497, i64 0, i32 3
  %499 = load i32, ptr %498, align 8, !tbaa !54
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds ptr, ptr %492, i64 %500
  %502 = load ptr, ptr %501, align 8, !tbaa !5
  %503 = getelementptr inbounds %struct.padname, ptr %502, i64 0, i32 8
  %504 = load i8, ptr %503, align 1, !tbaa !57
  %505 = and i8 %504, 4
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %523, label %507

507:                                              ; preds = %484
  %508 = getelementptr inbounds %struct.xpvcv, ptr %445, i64 0, i32 6
  %509 = load ptr, ptr %508, align 8, !tbaa !20
  %510 = getelementptr inbounds %struct.unop, ptr %509, i64 0, i32 7
  %511 = load ptr, ptr %510, align 8, !tbaa !110
  %512 = getelementptr inbounds %struct.unop, ptr %511, i64 0, i32 7
  %513 = load ptr, ptr %512, align 8, !tbaa !110
  %514 = getelementptr inbounds %struct.op, ptr %513, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !112
  %516 = icmp eq ptr %515, %454
  br i1 %516, label %517, label %538

517:                                              ; preds = %507
  %518 = getelementptr inbounds %struct.op, ptr %454, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !112
  %520 = icmp eq ptr %519, null
  br i1 %520, label %521, label %538

521:                                              ; preds = %517
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.33) #14
  %522 = call ptr @Perl_newSVsv(ptr noundef nonnull %475) #14
  br label %524

523:                                              ; preds = %481, %484
  store i32 3, ptr %478, align 8, !tbaa !47
  br label %524

524:                                              ; preds = %521, %523
  %525 = phi ptr [ %475, %523 ], [ %522, %521 ]
  %526 = getelementptr inbounds %struct.sv, ptr %525, i64 0, i32 2
  %527 = load i32, ptr %526, align 4, !tbaa !38
  %528 = or i32 %527, 134414336
  store i32 %528, ptr %526, align 4, !tbaa !38
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %439) #15
  %529 = load ptr, ptr %0, align 8, !tbaa !27
  %530 = getelementptr inbounds %struct.xpvcv, ptr %529, i64 0, i32 4
  %531 = load ptr, ptr %530, align 8, !tbaa !87
  %532 = call ptr @Perl_newCONSTSUB(ptr noundef %531, ptr noundef null, ptr noundef %525) #14
  br i1 %483, label %540, label %533

533:                                              ; preds = %524
  %534 = load ptr, ptr %532, align 8, !tbaa !27
  %535 = getelementptr inbounds %struct.xpvcv, ptr %534, i64 0, i32 12
  %536 = load i32, ptr %535, align 4, !tbaa !31
  %537 = or i32 %536, 1
  store i32 %537, ptr %535, align 4, !tbaa !31
  br label %540

538:                                              ; preds = %461, %507, %517, %469, %477
  %539 = and i32 %447, -5
  store i32 %539, ptr %446, align 4, !tbaa !31
  br label %540

540:                                              ; preds = %524, %533, %538, %444
  %541 = phi ptr [ %532, %524 ], [ %532, %533 ], [ %439, %538 ], [ %439, %444 ]
  ret ptr %541
}

; Function Attrs: optsize
declare ptr @Perl_find_runcv_where(i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_fill(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = trunc i64 %1 to i32
  %5 = add nuw nsw i32 %4, 544173908
  %6 = icmp sgt i64 %1, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %16, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %13, %7 ], [ %0, %2 ]
  %10 = mul i32 %8, 1025
  %11 = lshr i32 %10, 6
  %12 = xor i32 %11, %10
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %9, align 1, !tbaa !20
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = icmp ult ptr %13, %3
  br i1 %17, label %7, label %18, !llvm.loop !113

18:                                               ; preds = %7, %2
  %19 = phi i32 [ %5, %2 ], [ %16, %7 ]
  %20 = mul i32 %19, 1025
  %21 = lshr i32 %20, 6
  %22 = xor i32 %21, %20
  %23 = mul i32 %22, 1025
  %24 = add i32 %23, 73800
  %25 = lshr i32 %24, 6
  %26 = xor i32 %25, %24
  %27 = mul i32 %26, 1025
  %28 = add i32 %27, 113775
  %29 = lshr i32 %28, 6
  %30 = xor i32 %29, %28
  %31 = mul i32 %30, 1025
  %32 = add i32 %31, 118900
  %33 = lshr i32 %32, 6
  %34 = xor i32 %33, %32
  %35 = mul i32 %34, 1025
  %36 = add i32 %35, 32800
  %37 = lshr i32 %36, 6
  %38 = xor i32 %37, %36
  %39 = mul i32 %38, 9
  %40 = lshr i32 %39, 11
  %41 = xor i32 %40, %39
  %42 = mul i32 %41, 32769
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @Perl_share_hek(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 12}
!10 = !{!"av", !6, i64 0, !11, i64 8, !11, i64 12, !7, i64 16}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !11, i64 32}
!13 = !{!"padnamelist", !14, i64 0, !6, i64 8, !14, i64 16, !14, i64 24, !11, i64 32}
!14 = !{!"long", !7, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!17, !11, i64 16}
!17 = !{!"padlist", !14, i64 0, !6, i64 8, !11, i64 16, !11, i64 20}
!18 = !{!17, !14, i64 0}
!19 = !{!17, !6, i64 8}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"_Bool", !7, i64 0}
!23 = !{!13, !6, i64 8}
!24 = !{!13, !14, i64 0}
!25 = !{!13, !14, i64 24}
!26 = !{!13, !14, i64 16}
!27 = !{!28, !6, i64 0}
!28 = !{!"cv", !6, i64 0, !11, i64 8, !11, i64 12, !7, i64 16}
!29 = !{!30, !6, i64 64}
!30 = !{!"xpvcv", !6, i64 0, !7, i64 8, !14, i64 16, !7, i64 24, !6, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !6, i64 64, !7, i64 72, !6, i64 80, !11, i64 88, !11, i64 92, !11, i64 96}
!31 = !{!30, !11, i64 92}
!32 = !{!30, !11, i64 96}
!33 = !{!34, !6, i64 8}
!34 = !{!"opslot", !6, i64 0, !6, i64 8, !35, i64 16}
!35 = !{!"op", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !7, i64 34, !7, i64 35}
!36 = !{!37, !14, i64 24}
!37 = !{!"opslab", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !34, i64 32}
!38 = !{!39, !11, i64 12}
!39 = !{!"sv", !6, i64 0, !11, i64 8, !11, i64 12, !7, i64 16}
!40 = !{!30, !6, i64 80}
!41 = !{!30, !11, i64 88}
!42 = !{!43, !6, i64 0}
!43 = !{!"padname", !6, i64 0, !6, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 41}
!44 = !{!28, !11, i64 8}
!45 = !{!10, !11, i64 8}
!46 = !{!28, !11, i64 12}
!47 = !{!39, !11, i64 8}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = !{!43, !11, i64 32}
!53 = !{i64 -2147483648, i64 2147483648}
!54 = !{!43, !11, i64 24}
!55 = !{!43, !11, i64 28}
!56 = !{!43, !7, i64 40}
!57 = !{!43, !7, i64 41}
!58 = !{!43, !6, i64 8}
!59 = !{!60, !61, i64 236}
!60 = !{!"yy_parser", !6, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32, !6, i64 40, !11, i64 48, !11, i64 52, !6, i64 56, !6, i64 64, !7, i64 72, !7, i64 73, !7, i64 74, !7, i64 75, !11, i64 76, !6, i64 80, !6, i64 88, !6, i64 96, !61, i64 104, !61, i64 106, !11, i64 108, !6, i64 112, !11, i64 120, !11, i64 124, !7, i64 128, !7, i64 129, !22, i64 130, !22, i64 131, !11, i64 132, !62, i64 136, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !11, i64 232, !61, i64 236, !7, i64 238, !7, i64 239, !6, i64 240, !6, i64 248, !6, i64 256, !7, i64 264, !7, i64 272, !7, i64 312, !11, i64 332, !6, i64 336, !7, i64 344, !11, i64 600, !11, i64 604, !7, i64 608, !7, i64 609, !11, i64 610, !11, i64 610, !11, i64 610, !11, i64 610}
!61 = !{!"short", !7, i64 0}
!62 = !{!"_sublex_info", !7, i64 0, !61, i64 2, !6, i64 8, !6, i64 16}
!63 = distinct !{!63, !49}
!64 = !{!39, !6, i64 0}
!65 = !{!66, !14, i64 16}
!66 = !{!"xpv", !6, i64 0, !7, i64 8, !14, i64 16, !7, i64 24}
!67 = !{!14, !14, i64 0}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!10, !6, i64 0}
!71 = !{!72, !14, i64 16}
!72 = !{!"xpvav", !6, i64 0, !7, i64 8, !14, i64 16, !14, i64 24, !6, i64 32}
!73 = distinct !{!73, !49}
!74 = distinct !{!74, !49}
!75 = !{!76, !11, i64 60}
!76 = !{!"cop", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !7, i64 34, !7, i64 35, !11, i64 36, !6, i64 40, !6, i64 48, !11, i64 56, !11, i64 60, !6, i64 64, !6, i64 72}
!77 = !{!78, !6, i64 0}
!78 = !{!"gp", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !11, i64 64, !11, i64 67, !6, i64 72}
!79 = distinct !{!79, !49}
!80 = distinct !{!80, !49}
!81 = !{!35, !14, i64 24}
!82 = distinct !{!82, !49}
!83 = distinct !{!83, !49}
!84 = distinct !{!84, !49}
!85 = distinct !{!85, !49}
!86 = distinct !{!86, !49}
!87 = !{!30, !6, i64 32}
!88 = !{!89, !11, i64 12}
!89 = !{!"hv", !6, i64 0, !11, i64 8, !11, i64 12, !7, i64 16}
!90 = !{!89, !6, i64 0}
!91 = !{!92, !14, i64 24}
!92 = !{!"xpvhv", !6, i64 0, !7, i64 8, !14, i64 16, !14, i64 24}
!93 = !{!94, !11, i64 28}
!94 = !{!"xpvhv_aux", !7, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52}
!95 = !{!96, !11, i64 4}
!96 = !{!"hek", !11, i64 0, !11, i64 4, !7, i64 8}
!97 = !{!78, !6, i64 56}
!98 = !{!99, !6, i64 0}
!99 = !{!"gv", !6, i64 0, !11, i64 8, !11, i64 12, !7, i64 16}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49}
!102 = distinct !{!102, !49}
!103 = !{!17, !11, i64 20}
!104 = distinct !{!104, !49}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !49}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !49}
!110 = !{!111, !6, i64 40}
!111 = !{!"unop", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !7, i64 34, !7, i64 35, !6, i64 40}
!112 = !{!35, !6, i64 8}
!113 = distinct !{!113, !49}
