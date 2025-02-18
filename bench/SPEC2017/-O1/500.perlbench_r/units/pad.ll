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
%struct.cv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.padname_with_str = type { ptr, ptr, %union.anon.12, i32, i32, i32, i32, i8, i8, [1 x i8] }
%union.anon.12 = type { ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, %union._xnvu }
%union.anon.14 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.10 }
%union.anon.10 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.11, %union._xivu, %union._xnvu }
%union.anon.11 = type { i64 }

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

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pad_new(i32 noundef %0) local_unnamed_addr #0 !prof !114 {
  %2 = and i32 %0, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4, !prof !115

4:                                                ; preds = %1
  %5 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  tail call void @Perl_save_pushptr(ptr noundef %5, i32 noundef 7) #12
  %6 = and i32 %0, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !120

8:                                                ; preds = %4
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_comppad_name) #12
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_padix) #12
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_constpadix) #12
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_fill) #12
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_min_intro_pending) #12
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_max_intro_pending) #12
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_cv_has_eval) #12
  %9 = and i32 %0, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !121

11:                                               ; preds = %8
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_pad_reset_pending) #12
  br label %12

12:                                               ; preds = %4, %11, %8, %1
  %13 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 24) #12
  %14 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  %15 = and i32 %0, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17, !prof !122

17:                                               ; preds = %12
  %18 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  %19 = tail call ptr @Perl_av_store(ptr noundef %14, i64 noundef 0, ptr noundef %18) #12
  %20 = getelementptr inbounds %struct.av, ptr %18, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !123
  %22 = and i32 %21, 1073741823
  %23 = or disjoint i32 %22, -2147483648
  store i32 %23, ptr %20, align 4, !tbaa !123
  %24 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %25 = getelementptr inbounds %struct.padnamelist, ptr %24, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !126
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !126
  br label %43

28:                                               ; preds = %12
  %29 = load i32, ptr @PL_padlist_generation, align 4, !tbaa !129
  %30 = add i32 %29, 1
  store i32 %30, ptr @PL_padlist_generation, align 4, !tbaa !129
  %31 = getelementptr inbounds %struct.padlist, ptr %13, i64 0, i32 2
  store i32 %29, ptr %31, align 8, !tbaa !130
  %32 = tail call ptr @Perl_av_store(ptr noundef %14, i64 noundef 0, ptr noundef null) #12
  %33 = tail call ptr @Perl_safesysmalloc(i64 noundef 40) #12
  %34 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 8) #12
  %35 = getelementptr inbounds %struct.padnamelist, ptr %33, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !132
  store i64 -1, ptr %33, align 8, !tbaa !133
  %36 = getelementptr inbounds %struct.padnamelist, ptr %33, i64 0, i32 4
  store i32 1, ptr %36, align 8, !tbaa !126
  %37 = getelementptr inbounds %struct.padnamelist, ptr %33, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  store i64 0, ptr %34, align 1
  store i64 0, ptr %33, align 8, !tbaa !133
  %38 = load ptr, ptr %35, align 8, !tbaa !132
  %39 = load ptr, ptr %38, align 8, !tbaa !116
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !134

41:                                               ; preds = %28
  tail call void @Perl_padname_free(ptr noundef nonnull %39)
  br label %42

42:                                               ; preds = %28, %41
  store ptr @PL_padname_undef, ptr %38, align 8, !tbaa !116
  br label %43

43:                                               ; preds = %42, %17
  %44 = phi ptr [ %24, %17 ], [ %33, %42 ]
  %45 = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #12
  store i64 1, ptr %13, align 8, !tbaa !135
  %46 = getelementptr inbounds %struct.padlist, ptr %13, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !136
  store ptr %44, ptr %45, align 8, !tbaa !116
  %47 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %14, ptr %47, align 8, !tbaa !116
  store ptr %14, ptr @PL_comppad, align 8, !tbaa !116
  %48 = getelementptr inbounds %struct.av, ptr %14, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !137
  store ptr %49, ptr @PL_curpad, align 8, !tbaa !116
  br i1 %16, label %50, label %51, !prof !122

50:                                               ; preds = %43
  store ptr %44, ptr @PL_comppad_name, align 8, !tbaa !116
  store i32 0, ptr @PL_comppad_name_fill, align 4, !tbaa !129
  store i32 0, ptr @PL_min_intro_pending, align 4, !tbaa !129
  store i32 0, ptr @PL_padix, align 4, !tbaa !129
  store i32 0, ptr @PL_constpadix, align 4, !tbaa !129
  store i8 0, ptr @PL_cv_has_eval, align 1, !tbaa !138
  br label %51

51:                                               ; preds = %50, %43
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

declare void @Perl_save_I32(ptr noundef) local_unnamed_addr #2

declare void @Perl_save_bool(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_newPADNAMELIST(i64 noundef %0) local_unnamed_addr #3 !prof !140 {
  %2 = tail call ptr @Perl_safesysmalloc(i64 noundef 40) #12
  %3 = add i64 %0, 1
  %4 = tail call ptr @Perl_safesyscalloc(i64 noundef %3, i64 noundef 8) #12
  %5 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !132
  store i64 -1, ptr %2, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 4
  store i32 1, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 3
  store i64 0, ptr %7, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 2
  store i64 %0, ptr %8, align 8, !tbaa !142
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Perl_padnamelist_store(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !143 {
  %4 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !142
  %6 = icmp slt i64 %5, %1
  br i1 %6, label %7, label %9, !prof !144

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %8) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i64, ptr %0, align 8, !tbaa !133
  %11 = icmp slt i64 %10, %1
  br i1 %11, label %12, label %19, !prof !145

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !132
  %15 = getelementptr inbounds ptr, ptr %14, i64 %10
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = sub nsw i64 %1, %10
  %18 = shl i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %18, i1 false), !prof !146
  store i64 %1, ptr %0, align 8, !tbaa !133
  br label %19

19:                                               ; preds = %12, %9
  %20 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !132
  %22 = getelementptr inbounds ptr, ptr %21, i64 %1
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !134

25:                                               ; preds = %19
  tail call void @Perl_padname_free(ptr noundef nonnull %23)
  br label %26

26:                                               ; preds = %25, %19
  store ptr %2, ptr %22, align 8, !tbaa !116
  ret ptr %22
}

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_cv_undef(ptr noundef %0) local_unnamed_addr #0 !prof !147 {
  tail call void @Perl_cv_undef_flags(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_cv_undef_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !147 {
  %3 = load ptr, ptr %0, align 8, !tbaa !148
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !152

7:                                                ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !153
  %10 = and i32 %9, 4096
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !154

12:                                               ; preds = %7
  tail call void @Perl_safesysfree(ptr noundef nonnull %5) #12
  br label %13

13:                                               ; preds = %7, %12, %2
  %14 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !153
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 6
  br i1 %17, label %19, label %60, !prof !155

19:                                               ; preds = %13
  %20 = load ptr, ptr %18, align 8, !tbaa !137
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22, !prof !156

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !157
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !158

26:                                               ; preds = %22
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str) #12
  br label %27

27:                                               ; preds = %26, %22
  tail call void @Perl_push_scope() #12
  %28 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  tail call void @Perl_save_pushptr(ptr noundef %28, i32 noundef 7) #12
  store ptr null, ptr @PL_comppad, align 8, !tbaa !116
  store ptr null, ptr @PL_curpad, align 8, !tbaa !116
  %29 = load i32, ptr %14, align 4, !tbaa !153
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32, !prof !158

32:                                               ; preds = %27
  %33 = load ptr, ptr %18, align 8, !tbaa !137
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load ptr, ptr %34, align 8, !tbaa !159
  %36 = getelementptr inbounds %struct.opslab, ptr %35, i64 0, i32 3
  %37 = load i64, ptr %36, align 8, !tbaa !162
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void @Perl_opslab_free(ptr noundef %35) #12
  br label %42

40:                                               ; preds = %32
  %41 = add i64 %37, -1
  store i64 %41, ptr %36, align 8, !tbaa !162
  br label %42

42:                                               ; preds = %39, %40, %27
  %43 = load ptr, ptr %18, align 8, !tbaa !137
  tail call void @Perl_op_free(ptr noundef %43) #12
  %44 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  tail call void @Perl_pop_scope() #12
  br label %61

45:                                               ; preds = %19
  %46 = and i32 %15, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48, !prof !164

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !137
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52, !prof !165

52:                                               ; preds = %48
  tail call void @Perl_push_scope() #12
  %53 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  tail call void @Perl_save_pushptr(ptr noundef %53, i32 noundef 7) #12
  store ptr null, ptr @PL_comppad, align 8, !tbaa !116
  store ptr null, ptr @PL_curpad, align 8, !tbaa !116
  %54 = load ptr, ptr @PL_parser, align 8, !tbaa !116
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !165

56:                                               ; preds = %52
  %57 = load ptr, ptr %49, align 8, !tbaa !137
  tail call void @Perl_parser_free_nexttoke_ops(ptr noundef nonnull %54, ptr noundef %57) #12
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %49, align 8, !tbaa !137
  tail call void @Perl_opslab_force_free(ptr noundef %59) #12
  store ptr null, ptr %49, align 8, !tbaa !137
  tail call void @Perl_pop_scope() #12
  br label %61

60:                                               ; preds = %13
  store ptr null, ptr %18, align 8, !tbaa !137
  br label %61

61:                                               ; preds = %42, %48, %58, %45, %60
  %62 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !166
  %64 = and i32 %63, -17409
  store i32 %64, ptr %62, align 4, !tbaa !166
  %65 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %0, i32 noundef 93) #12
  %66 = and i32 %1, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81, !prof !168

68:                                               ; preds = %61
  %69 = load i32, ptr %14, align 4, !tbaa !153
  %70 = and i32 %69, 32768
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72, !prof !168

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !137
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @Perl_unshare_hek(ptr noundef nonnull %74) #12
  br label %77

77:                                               ; preds = %72, %76
  store ptr null, ptr %73, align 8, !tbaa !137
  %78 = load i32, ptr %14, align 4, !tbaa !153
  %79 = and i32 %78, -32769
  store i32 %79, ptr %14, align 4, !tbaa !153
  br label %81

80:                                               ; preds = %68
  tail call void @Perl_cvgv_set(ptr noundef nonnull %0, ptr noundef null) #12
  br label %81

81:                                               ; preds = %77, %80, %61
  %82 = load i32, ptr %14, align 4, !tbaa !153
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %234, !prof !155

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !137
  %88 = icmp eq ptr %87, null
  br i1 %88, label %233, label %89, !prof !169

89:                                               ; preds = %85
  %90 = load i32, ptr @PL_phase, align 4, !tbaa !129
  %91 = icmp eq i32 %90, 6
  br i1 %91, label %166, label %92, !prof !170

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 10
  %94 = load ptr, ptr %93, align 8, !tbaa !171
  %95 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 11
  %96 = load i32, ptr %95, align 8, !tbaa !172
  %97 = getelementptr inbounds %struct.padlist, ptr %87, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !136
  %99 = load ptr, ptr %98, align 8, !tbaa !116
  %100 = getelementptr inbounds %struct.padnamelist, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !132
  %102 = getelementptr inbounds ptr, ptr %98, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !116
  %104 = getelementptr inbounds %struct.av, ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !137
  %106 = load i64, ptr %99, align 8, !tbaa !133
  %107 = trunc i64 %106 to i32
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %166, !prof !173

109:                                              ; preds = %92
  %110 = and i64 %106, 4294967295
  br label %111

111:                                              ; preds = %109, %163
  %112 = phi i64 [ %110, %109 ], [ %164, %163 ]
  %113 = getelementptr inbounds ptr, ptr %101, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !116
  %115 = icmp eq ptr %114, null
  br i1 %115, label %163, label %116, !prof !174

116:                                              ; preds = %111
  %117 = load ptr, ptr %114, align 8, !tbaa !175
  %118 = icmp eq ptr %117, null
  br i1 %118, label %163, label %119, !prof !177

119:                                              ; preds = %116
  %120 = load i8, ptr %117, align 1, !tbaa !137
  %121 = icmp eq i8 %120, 38
  br i1 %121, label %122, label %163, !prof !178

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.av, ptr %103, i64 0, i32 1
  %124 = getelementptr inbounds ptr, ptr %105, i64 %112
  %125 = load ptr, ptr %124, align 8, !tbaa !116
  %126 = getelementptr inbounds %struct.cv, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !129
  %128 = load i32, ptr %123, align 8, !tbaa !179
  %129 = icmp ult i32 %128, 2
  br i1 %129, label %130, label %137, !prof !180

130:                                              ; preds = %122
  store ptr null, ptr %124, align 8, !tbaa !116
  %131 = icmp ugt i32 %127, 1
  br i1 %131, label %132, label %134, !prof !181

132:                                              ; preds = %130
  %133 = add i32 %127, -1
  store i32 %133, ptr %126, align 8, !tbaa !182
  br label %135

134:                                              ; preds = %130
  tail call void @Perl_sv_free2(ptr noundef %125, i32 noundef %127) #12
  br label %135

135:                                              ; preds = %132, %134
  %136 = add i32 %127, -1
  br label %137

137:                                              ; preds = %135, %122
  %138 = phi i32 [ %136, %135 ], [ %127, %122 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %163, label %140, !prof !183

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.cv, ptr %125, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !184
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 13
  br i1 %144, label %145, label %163, !prof !185

145:                                              ; preds = %140
  %146 = load ptr, ptr %125, align 8, !tbaa !148
  %147 = getelementptr inbounds %struct.xpvcv, ptr %146, i64 0, i32 10
  %148 = load ptr, ptr %147, align 8, !tbaa !171
  %149 = icmp eq ptr %148, %0
  br i1 %149, label %150, label %163, !prof !186

150:                                              ; preds = %145
  %151 = icmp eq ptr %94, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.cv, ptr %94, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !129
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.xpvcv, ptr %146, i64 0, i32 12
  %158 = load i32, ptr %157, align 4, !tbaa !153
  %159 = and i32 %158, -17
  store i32 %159, ptr %157, align 4, !tbaa !153
  store ptr %94, ptr %147, align 8, !tbaa !171
  %160 = getelementptr inbounds %struct.xpvcv, ptr %146, i64 0, i32 11
  store i32 %96, ptr %160, align 8, !tbaa !172
  %161 = add i32 %154, 1
  store i32 %161, ptr %153, align 8, !tbaa !182
  br label %163

162:                                              ; preds = %152, %150
  store ptr null, ptr %147, align 8, !tbaa !171
  br label %163

163:                                              ; preds = %137, %140, %145, %162, %156, %119, %116, %111
  %164 = add nsw i64 %112, -1
  %165 = icmp sgt i64 %112, 1
  br i1 %165, label %111, label %166, !prof !187, !llvm.loop !188

166:                                              ; preds = %163, %92, %89
  %167 = load i64, ptr %87, align 8, !tbaa !135
  %168 = trunc i64 %167 to i32
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %193, !prof !173

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.padlist, ptr %87, i64 0, i32 1
  %172 = and i64 %167, 4294967295
  br label %173

173:                                              ; preds = %170, %191
  %174 = phi i64 [ %172, %170 ], [ %176, %191 ]
  %175 = load ptr, ptr %171, align 8, !tbaa !136
  %176 = add nsw i64 %174, -1
  %177 = getelementptr inbounds ptr, ptr %175, i64 %174
  %178 = load ptr, ptr %177, align 8, !tbaa !116
  %179 = icmp eq ptr %178, null
  br i1 %179, label %191, label %180, !prof !170

180:                                              ; preds = %173
  %181 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %182 = icmp eq ptr %178, %181
  br i1 %182, label %183, label %184, !prof !170

183:                                              ; preds = %180
  store ptr null, ptr @PL_comppad, align 8, !tbaa !116
  store ptr null, ptr @PL_curpad, align 8, !tbaa !116
  br label %184

184:                                              ; preds = %183, %180
  %185 = getelementptr inbounds %struct.sv, ptr %178, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !182
  %187 = icmp ugt i32 %186, 1
  br i1 %187, label %188, label %190, !prof !170

188:                                              ; preds = %184
  %189 = add i32 %186, -1
  store i32 %189, ptr %185, align 8, !tbaa !182
  br label %191

190:                                              ; preds = %184
  tail call void @Perl_sv_free2(ptr noundef nonnull %178, i32 noundef %186) #12
  br label %191

191:                                              ; preds = %190, %188, %173
  %192 = icmp sgt i64 %174, 1
  br i1 %192, label %173, label %193, !prof !191, !llvm.loop !192

193:                                              ; preds = %191, %166
  %194 = getelementptr inbounds %struct.padlist, ptr %87, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !136
  %196 = load ptr, ptr %195, align 8, !tbaa !116
  %197 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %198 = icmp eq ptr %196, %197
  br i1 %198, label %199, label %204, !prof !170

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.padnamelist, ptr %196, i64 0, i32 4
  %201 = load i32, ptr %200, align 8, !tbaa !126
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store ptr null, ptr @PL_comppad_name, align 8, !tbaa !116
  br label %204

204:                                              ; preds = %203, %199, %193
  %205 = getelementptr inbounds %struct.padnamelist, ptr %196, i64 0, i32 4
  %206 = load i32, ptr %205, align 8, !tbaa !126
  %207 = add i32 %206, -1
  store i32 %207, ptr %205, align 8, !tbaa !126
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %228, !prof !193

209:                                              ; preds = %204
  %210 = load i64, ptr %196, align 8, !tbaa !133
  %211 = icmp sgt i64 %210, -1
  br i1 %211, label %212, label %225, !prof !194

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.padnamelist, ptr %196, i64 0, i32 1
  br label %214

214:                                              ; preds = %222, %212
  %215 = phi i64 [ %210, %212 ], [ %223, %222 ]
  %216 = load ptr, ptr %213, align 8, !tbaa !132
  %217 = add nsw i64 %215, -1
  store i64 %217, ptr %196, align 8, !tbaa !133
  %218 = getelementptr inbounds ptr, ptr %216, i64 %215
  %219 = load ptr, ptr %218, align 8, !tbaa !116
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221, !prof !195

221:                                              ; preds = %214
  tail call void @Perl_padname_free(ptr noundef nonnull %219)
  br label %222

222:                                              ; preds = %221, %214
  %223 = load i64, ptr %196, align 8, !tbaa !133
  %224 = icmp sgt i64 %223, -1
  br i1 %224, label %214, label %225, !prof !196, !llvm.loop !197

225:                                              ; preds = %222, %209
  %226 = getelementptr inbounds %struct.padnamelist, ptr %196, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !132
  tail call void @Perl_safesysfree(ptr noundef %227) #12
  tail call void @Perl_safesysfree(ptr noundef nonnull %196) #12
  br label %228

228:                                              ; preds = %204, %225
  %229 = load ptr, ptr %194, align 8, !tbaa !136
  %230 = icmp eq ptr %229, null
  br i1 %230, label %232, label %231, !prof !170

231:                                              ; preds = %228
  tail call void @Perl_safesysfree(ptr noundef nonnull %229) #12
  br label %232

232:                                              ; preds = %231, %228
  tail call void @Perl_safesysfree(ptr noundef nonnull %87) #12
  br label %236

233:                                              ; preds = %85
  br i1 %84, label %238, label %234, !prof !198

234:                                              ; preds = %81, %233
  %235 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 9
  br label %236

236:                                              ; preds = %232, %234
  %237 = phi ptr [ %235, %234 ], [ %86, %232 ]
  store ptr null, ptr %237, align 8, !tbaa !137
  br label %238

238:                                              ; preds = %236, %233
  %239 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 1
  %240 = load i32, ptr %239, align 8, !tbaa !199
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %257, !prof !168

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 10
  %244 = load ptr, ptr %243, align 8, !tbaa !171
  %245 = icmp eq ptr %244, null
  br i1 %245, label %257, label %246, !prof !200

246:                                              ; preds = %242
  store ptr null, ptr %243, align 8, !tbaa !171
  %247 = load i32, ptr %14, align 4, !tbaa !153
  %248 = and i32 %247, 16
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %257, !prof !201

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.sv, ptr %244, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !182
  %253 = icmp ugt i32 %252, 1
  br i1 %253, label %254, label %256, !prof !202

254:                                              ; preds = %250
  %255 = add i32 %252, -1
  store i32 %255, ptr %251, align 8, !tbaa !182
  br label %257

256:                                              ; preds = %250
  tail call void @Perl_sv_free2(ptr noundef nonnull %244, i32 noundef %252) #12
  br label %257

257:                                              ; preds = %256, %254, %242, %246, %238
  %258 = load i32, ptr %14, align 4, !tbaa !153
  %259 = and i32 %258, 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %272, label %261, !prof !203

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 5
  %263 = load ptr, ptr %262, align 8, !tbaa !137
  %264 = icmp eq ptr %263, null
  br i1 %264, label %272, label %265, !prof !204

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.sv, ptr %263, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !182
  %268 = icmp ugt i32 %267, 1
  br i1 %268, label %269, label %271, !prof !205

269:                                              ; preds = %265
  %270 = add i32 %267, -1
  store i32 %270, ptr %266, align 8, !tbaa !182
  br label %272

271:                                              ; preds = %265
  tail call void @Perl_sv_free2(ptr noundef nonnull %263, i32 noundef %267) #12
  br label %272

272:                                              ; preds = %271, %269, %261, %257
  %273 = load i32, ptr %14, align 4, !tbaa !153
  %274 = and i32 %273, 99472
  store i32 %274, ptr %14, align 4, !tbaa !153
  ret void
}

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_opslab_free(ptr noundef) local_unnamed_addr #2

declare void @Perl_op_free(ptr noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare void @Perl_parser_free_nexttoke_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_opslab_force_free(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #2

declare void @Perl_cvgv_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_padnamelist_free(ptr noundef %0) local_unnamed_addr #0 !prof !140 {
  %2 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !126
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 8, !tbaa !126
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25, !prof !193

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8, !tbaa !133
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %22, !prof !194

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %19
  %12 = phi i64 [ %7, %9 ], [ %20, %19 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !132
  %14 = add nsw i64 %12, -1
  store i64 %14, ptr %0, align 8, !tbaa !133
  %15 = getelementptr inbounds ptr, ptr %13, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !195

18:                                               ; preds = %11
  tail call void @Perl_padname_free(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i64, ptr %0, align 8, !tbaa !133
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %11, label %22, !prof !196, !llvm.loop !197

22:                                               ; preds = %19, %6
  %23 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !132
  tail call void @Perl_safesysfree(ptr noundef %24) #12
  tail call void @Perl_safesysfree(ptr noundef nonnull %0) #12
  br label %25

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_cv_forget_slab(ptr noundef readonly %0) local_unnamed_addr #0 !prof !206 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3, !prof !207

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !153
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9, !prof !207

9:                                                ; preds = %3
  %10 = and i32 %6, -2049
  store i32 %10, ptr %5, align 4, !tbaa !153
  %11 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !208

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %12, i64 -8
  br label %18

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !137
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22, !prof !207

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.opslab, ptr %20, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !162
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %27, !prof !207

26:                                               ; preds = %22
  tail call void @Perl_opslab_free_nopad(ptr noundef nonnull %20) #12
  br label %29

27:                                               ; preds = %22
  %28 = add i64 %24, -1
  store i64 %28, ptr %23, align 8, !tbaa !162
  br label %29

29:                                               ; preds = %18, %27, %26, %3, %1
  ret void
}

declare void @Perl_opslab_free_nopad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_add_name_pvn(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !209 {
  %6 = icmp ult i32 %2, 8
  br i1 %6, label %9, label %7, !prof !210

7:                                                ; preds = %5
  %8 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i64 noundef %8) #12
  br label %9

9:                                                ; preds = %7, %5
  %10 = add i64 %1, 43
  %11 = tail call ptr @Perl_safesyscalloc(i64 noundef %10, i64 noundef 1) #12
  %12 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 5
  store i32 1, ptr %12, align 8, !tbaa !211
  %13 = getelementptr inbounds %struct.padname_with_str, ptr %11, i64 0, i32 9
  store ptr %13, ptr %11, align 8, !tbaa !175
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr align 1 %0, i64 %1, i1 false), !prof !212
  %14 = getelementptr inbounds i8, ptr %13, i64 %1
  store i8 0, ptr %14, align 1, !tbaa !137
  %15 = trunc i64 %1 to i8
  %16 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 7
  store i8 %15, ptr %16, align 8, !tbaa !213
  %17 = and i32 %2, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %148, !prof !214

19:                                               ; preds = %9
  tail call void @Perl_push_scope() #12
  tail call void @Perl_save_pushptr(ptr noundef nonnull %11, i32 noundef 22) #12
  %20 = and i32 %2, 1
  %21 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %22 = load i64, ptr %21, align 8, !tbaa !133
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %145, label %24, !prof !215

24:                                               ; preds = %19
  %25 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #12
  br i1 %25, label %26, label %145, !prof !216

26:                                               ; preds = %24
  %27 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct.padnamelist, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !132
  %30 = load i64, ptr %27, align 8, !tbaa !133
  %31 = trunc i64 %30 to i32
  %32 = load i32, ptr @PL_comppad_name_floor, align 4, !tbaa !129
  %33 = icmp slt i32 %32, %31
  br i1 %33, label %34, label %94, !prof !217

34:                                               ; preds = %26, %89
  %35 = phi i64 [ %90, %89 ], [ %30, %26 ]
  %36 = getelementptr inbounds ptr, ptr %29, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !116
  %38 = icmp eq ptr %37, null
  br i1 %38, label %86, label %39, !prof !218

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.padname, ptr %37, i64 0, i32 7
  %41 = load i8, ptr %40, align 8, !tbaa !213
  %42 = load i8, ptr %16, align 8, !tbaa !213
  %43 = icmp eq i8 %41, %42
  br i1 %43, label %44, label %86, !prof !219

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.padname, ptr %37, i64 0, i32 8
  %46 = load i8, ptr %45, align 1, !tbaa !220
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %86, !prof !221

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.padname, ptr %37, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !222
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %57, label %53, !prof !223

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.padname, ptr %37, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !224
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %86, !prof !225

57:                                               ; preds = %53, %49
  %58 = load ptr, ptr %37, align 8, !tbaa !175
  %59 = load ptr, ptr %11, align 8, !tbaa !175
  %60 = zext i8 %42 to i64
  %61 = tail call i32 @bcmp(ptr %58, ptr %59, i64 %60), !prof !226
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %86, !prof !227

63:                                               ; preds = %57
  %64 = icmp eq i32 %20, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.padname, ptr %37, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !228
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %86

69:                                               ; preds = %63
  %70 = load ptr, ptr @PL_parser, align 8, !tbaa !116
  %71 = getelementptr inbounds %struct.yy_parser, ptr %70, i64 0, i32 42
  %72 = load i16, ptr %71, align 4, !tbaa !229
  %73 = icmp eq i16 %72, 133
  %74 = select i1 %73, ptr @.str.19, ptr @.str.20
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi ptr [ %74, %69 ], [ @.str.18, %65 ]
  %77 = load i8, ptr %58, align 1, !tbaa !137
  %78 = icmp eq i8 %77, 38
  %79 = select i1 %78, ptr @.str.21, ptr @.str.22
  %80 = zext i8 %41 to i64
  %81 = getelementptr inbounds %struct.padname, ptr %37, i64 0, i32 4
  %82 = load i32, ptr %81, align 4, !tbaa !224
  %83 = icmp eq i32 %82, -1
  %84 = select i1 %83, ptr @.str.23, ptr @.str.24
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.17, ptr noundef nonnull %76, ptr noundef nonnull %79, i32 noundef 1, i64 noundef %80, ptr noundef nonnull %58, ptr noundef nonnull %84) #12
  %85 = add i64 %35, -1
  br label %86

86:                                               ; preds = %75, %65, %57, %53, %44, %39, %34
  %87 = phi i1 [ false, %75 ], [ false, %65 ], [ true, %57 ], [ true, %53 ], [ true, %44 ], [ true, %39 ], [ true, %34 ]
  %88 = phi i64 [ %85, %75 ], [ %35, %65 ], [ %35, %57 ], [ %35, %53 ], [ %35, %44 ], [ %35, %39 ], [ %35, %34 ]
  br i1 %87, label %89, label %94, !prof !233

89:                                               ; preds = %86
  %90 = add i64 %88, -1
  %91 = trunc i64 %90 to i32
  %92 = load i32, ptr @PL_comppad_name_floor, align 4, !tbaa !129
  %93 = icmp slt i32 %92, %91
  br i1 %93, label %34, label %94, !prof !234, !llvm.loop !235

94:                                               ; preds = %89, %86, %26
  %95 = phi i64 [ %30, %26 ], [ %90, %89 ], [ %88, %86 ]
  %96 = icmp ne i32 %20, 0
  %97 = icmp ne i64 %95, 0
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %145, !prof !236

99:                                               ; preds = %94, %140
  %100 = phi i64 [ %142, %140 ], [ %95, %94 ]
  %101 = getelementptr inbounds ptr, ptr %29, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !116
  %103 = icmp eq ptr %102, null
  br i1 %103, label %138, label %104, !prof !237

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.padname, ptr %102, i64 0, i32 7
  %106 = load i8, ptr %105, align 8, !tbaa !213
  %107 = load i8, ptr %16, align 8, !tbaa !213
  %108 = icmp eq i8 %106, %107
  br i1 %108, label %109, label %138, !prof !238

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.padname, ptr %102, i64 0, i32 8
  %111 = load i8, ptr %110, align 1, !tbaa !220
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %138, !prof !239

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.padname, ptr %102, i64 0, i32 3
  %116 = load i32, ptr %115, align 8, !tbaa !222
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %122, label %118, !prof !240

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.padname, ptr %102, i64 0, i32 4
  %120 = load i32, ptr %119, align 4, !tbaa !224
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %138, !prof !240

122:                                              ; preds = %118, %114
  %123 = getelementptr inbounds %struct.padname, ptr %102, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !228
  %125 = icmp eq ptr %124, %4
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load ptr, ptr %102, align 8, !tbaa !175
  %128 = load ptr, ptr %11, align 8, !tbaa !175
  %129 = zext i8 %107 to i64
  %130 = tail call i32 @bcmp(ptr %127, ptr %128, i64 %129)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = zext i8 %106 to i64
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 1, i64 noundef %133, ptr noundef %127) #12
  %134 = trunc i64 %100 to i32
  %135 = load i32, ptr @PL_comppad_name_floor, align 4, !tbaa !129
  %136 = icmp slt i32 %135, %134
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.26) #12
  br label %140

138:                                              ; preds = %126, %122, %118, %109, %104, %99
  %139 = add i64 %100, -1
  br label %140

140:                                              ; preds = %138, %137, %132
  %141 = phi i1 [ false, %138 ], [ true, %137 ], [ true, %132 ]
  %142 = phi i64 [ %139, %138 ], [ %100, %137 ], [ %100, %132 ]
  %143 = icmp eq i64 %142, 0
  %144 = or i1 %141, %143
  br i1 %144, label %145, label %99, !prof !241

145:                                              ; preds = %140, %19, %24, %94
  %146 = load i32, ptr %12, align 8, !tbaa !211
  %147 = add i32 %146, 1
  store i32 %147, ptr %12, align 8, !tbaa !211
  tail call void @Perl_pop_scope() #12
  br label %148

148:                                              ; preds = %145, %9
  %149 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %150 = getelementptr inbounds %struct.av, ptr %149, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !137
  %152 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %155, label %154, !prof !242

154:                                              ; preds = %148
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %151, ptr noundef %152) #12
  br label %155

155:                                              ; preds = %154, %148
  %156 = load i8, ptr @PL_pad_reset_pending, align 1, !tbaa !138, !range !243, !noundef !244
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %159, label %158, !prof !245

158:                                              ; preds = %155
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !138
  br label %159

159:                                              ; preds = %155, %158
  %160 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %161 = load ptr, ptr %160, align 8, !tbaa !246
  %162 = getelementptr inbounds %struct.xpvav, ptr %161, i64 0, i32 2
  %163 = load i64, ptr %162, align 8, !tbaa !247
  %164 = add nsw i64 %163, 1
  %165 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %160, i64 noundef %164, i32 noundef 1) #12
  %166 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %167 = load ptr, ptr %166, align 8, !tbaa !246
  %168 = getelementptr inbounds %struct.xpvav, ptr %167, i64 0, i32 2
  %169 = load i64, ptr %168, align 8, !tbaa !247
  %170 = getelementptr inbounds %struct.av, ptr %166, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !137
  store ptr %171, ptr @PL_curpad, align 8, !tbaa !116
  %172 = shl i64 %169, 32
  %173 = ashr exact i64 %172, 32
  %174 = icmp eq ptr %3, null
  br i1 %174, label %183, label %175, !prof !249

175:                                              ; preds = %159
  %176 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 8
  %177 = load i8, ptr %176, align 1, !tbaa !220
  %178 = or i8 %177, 8
  store i8 %178, ptr %176, align 1, !tbaa !220
  %179 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %180 = load i32, ptr %179, align 8, !tbaa !182
  %181 = add i32 %180, 1
  store i32 %181, ptr %179, align 8, !tbaa !182
  %182 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 2
  store ptr %3, ptr %182, align 8, !tbaa !137
  br label %183

183:                                              ; preds = %175, %159
  %184 = icmp eq ptr %4, null
  br i1 %184, label %193, label %185, !prof !250

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 8
  %187 = load i8, ptr %186, align 1, !tbaa !220
  %188 = or i8 %187, 16
  store i8 %188, ptr %186, align 1, !tbaa !220
  %189 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 1
  store ptr %4, ptr %189, align 8, !tbaa !228
  %190 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !182
  %192 = add i32 %191, 1
  store i32 %192, ptr %190, align 8, !tbaa !182
  br label %200

193:                                              ; preds = %183
  %194 = and i32 %2, 2
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196, !prof !251

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 8
  %198 = load i8, ptr %197, align 1, !tbaa !220
  %199 = or i8 %198, 2
  store i8 %199, ptr %197, align 1, !tbaa !220
  br label %200

200:                                              ; preds = %196, %193, %185
  %201 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %202 = getelementptr inbounds %struct.padnamelist, ptr %201, i64 0, i32 2
  %203 = load i64, ptr %202, align 8, !tbaa !142
  %204 = icmp slt i64 %203, %173
  br i1 %204, label %205, label %207, !prof !144

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.padnamelist, ptr %201, i64 0, i32 1
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %173, ptr noundef nonnull %202, ptr noundef nonnull %206, ptr noundef nonnull %206) #12
  br label %207

207:                                              ; preds = %205, %200
  %208 = load i64, ptr %201, align 8, !tbaa !133
  %209 = icmp slt i64 %208, %173
  br i1 %209, label %210, label %217, !prof !145

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.padnamelist, ptr %201, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !132
  %213 = getelementptr inbounds ptr, ptr %212, i64 %208
  %214 = getelementptr inbounds ptr, ptr %213, i64 1
  %215 = sub nsw i64 %173, %208
  %216 = shl i64 %215, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %214, i8 0, i64 %216, i1 false), !prof !252
  store i64 %173, ptr %201, align 8, !tbaa !133
  br label %217

217:                                              ; preds = %210, %207
  %218 = getelementptr inbounds %struct.padnamelist, ptr %201, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !132
  %220 = getelementptr inbounds ptr, ptr %219, i64 %173
  %221 = load ptr, ptr %220, align 8, !tbaa !116
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223, !prof !134

223:                                              ; preds = %217
  tail call void @Perl_padname_free(ptr noundef nonnull %221)
  br label %224

224:                                              ; preds = %217, %223
  store ptr %11, ptr %220, align 8, !tbaa !116
  %225 = load i8, ptr %16, align 8, !tbaa !213
  %226 = icmp ugt i8 %225, 1
  br i1 %226, label %227, label %230, !prof !253

227:                                              ; preds = %224
  %228 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %229 = getelementptr inbounds %struct.padnamelist, ptr %228, i64 0, i32 3
  store i64 %173, ptr %229, align 8, !tbaa !141
  br label %230

230:                                              ; preds = %224, %227
  %231 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 3
  store i32 -1, ptr %231, align 8, !tbaa !222
  %232 = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 4
  store i32 0, ptr %232, align 4, !tbaa !224
  %233 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !129
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %237, !prof !254

235:                                              ; preds = %230
  %236 = trunc i64 %169 to i32
  store i32 %236, ptr @PL_min_intro_pending, align 4, !tbaa !129
  br label %237

237:                                              ; preds = %235, %230
  %238 = trunc i64 %169 to i32
  store i32 %238, ptr @PL_max_intro_pending, align 4, !tbaa !129
  %239 = icmp eq i64 %1, 0
  br i1 %239, label %249, label %240, !prof !255

240:                                              ; preds = %237
  %241 = load i8, ptr %0, align 1, !tbaa !137
  switch i8 %241, label %249 [
    i8 64, label %244
    i8 37, label %242
    i8 38, label %243
  ], !prof !256

242:                                              ; preds = %240
  br label %244

243:                                              ; preds = %240
  br label %244

244:                                              ; preds = %240, %243, %242
  %245 = phi i32 [ 12, %242 ], [ 13, %243 ], [ 11, %240 ]
  %246 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %247 = getelementptr inbounds ptr, ptr %246, i64 %173
  %248 = load ptr, ptr %247, align 8, !tbaa !116
  tail call void @Perl_sv_upgrade(ptr noundef %248, i32 noundef %245) #12
  br label %249

249:                                              ; preds = %244, %240, %237
  ret i64 %173
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_newPADNAMEpvn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 !prof !140 {
  %3 = add i64 %1, 43
  %4 = tail call ptr @Perl_safesyscalloc(i64 noundef %3, i64 noundef 1) #12
  %5 = getelementptr inbounds %struct.padname, ptr %4, i64 0, i32 5
  store i32 1, ptr %5, align 8, !tbaa !211
  %6 = getelementptr inbounds %struct.padname_with_str, ptr %4, i64 0, i32 9
  store ptr %6, ptr %4, align 8, !tbaa !175
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %0, i64 %1, i1 false)
  %7 = getelementptr inbounds i8, ptr %6, i64 %1
  store i8 0, ptr %7, align 1, !tbaa !137
  %8 = trunc i64 %1 to i8
  %9 = getelementptr inbounds %struct.padname, ptr %4, i64 0, i32 7
  store i8 %8, ptr %9, align 8, !tbaa !213
  ret ptr %4
}

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_pad_add_name_pv(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !140 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %6 = tail call i64 @Perl_pad_add_name_pvn(ptr noundef %0, i64 noundef %5, i32 noundef %1, ptr noundef %2, ptr noundef %3), !range !257
  ret i64 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_pad_add_name_sv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !140 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !166
  %8 = and i32 %7, 538969088
  %9 = icmp eq i32 %8, 536871936
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !258
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !259
  store i64 %13, ptr %5, align 8, !tbaa !261
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  br label %18

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pvutf8(ptr noundef %0, ptr noundef nonnull %5) #12
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %20 = load i64, ptr %5, align 8, !tbaa !261
  %21 = call i64 @Perl_pad_add_name_pvn(ptr noundef %19, i64 noundef %20, i32 noundef %1, ptr noundef %2, ptr noundef %3), !range !257
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i64 %21
}

declare ptr @Perl_sv_2pvutf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_alloc(i32 %0, i32 noundef %1) local_unnamed_addr #0 !prof !262 {
  %3 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %4 = getelementptr inbounds %struct.av, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %9, label %8, !prof !242

8:                                                ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %5, ptr noundef %6) #12
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i8, ptr @PL_pad_reset_pending, align 1, !tbaa !138, !range !243, !noundef !244
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !245

12:                                               ; preds = %9
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !138
  br label %13

13:                                               ; preds = %12, %9
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %27, !prof !263

15:                                               ; preds = %13
  %16 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %17 = load ptr, ptr %16, align 8, !tbaa !246
  %18 = getelementptr inbounds %struct.xpvav, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !247
  %20 = add nsw i64 %19, 1
  %21 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %16, i64 noundef %20, i32 noundef 1) #12
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %24 = load ptr, ptr %23, align 8, !tbaa !246
  %25 = getelementptr inbounds %struct.xpvav, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !247
  br label %73

27:                                               ; preds = %13
  %28 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.padnamelist, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !132
  %31 = load i64, ptr %28, align 8, !tbaa !133
  %32 = and i32 %1, 134217728
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr @PL_constpadix, align 4
  %35 = load i32, ptr @PL_padix, align 4
  %36 = select i1 %33, i32 %35, i32 %34, !prof !264
  %37 = sext i32 %36 to i64
  br label %38

38:                                               ; preds = %59, %27
  %39 = phi i64 [ %41, %59 ], [ %37, %27 ]
  %40 = phi ptr [ %60, %59 ], [ undef, %27 ]
  %41 = add nsw i64 %39, 1
  %42 = icmp sgt i64 %31, %39
  br i1 %42, label %43, label %50, !prof !265

43:                                               ; preds = %38
  %44 = getelementptr inbounds ptr, ptr %30, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !116
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47, !prof !266

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !175
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59, !prof !267, !llvm.loop !268

50:                                               ; preds = %47, %43, %38
  %51 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %52 = tail call ptr @Perl_av_fetch(ptr noundef %51, i64 noundef %41, i32 noundef 1) #12
  %53 = load ptr, ptr %52, align 8, !tbaa !116
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !166
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 2
  %58 = xor i32 %57, 2
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi ptr [ %40, %47 ], [ %53, %50 ]
  %61 = phi i32 [ 3, %47 ], [ %58, %50 ]
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %38, !prof !269

63:                                               ; preds = %59
  %64 = trunc i64 %41 to i32
  br i1 %33, label %70, label %65, !prof !264

65:                                               ; preds = %63
  %66 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %67 = tail call ptr @Perl_padnamelist_store(ptr noundef %66, i64 noundef %41, ptr noundef nonnull @PL_padname_const)
  %68 = and i32 %1, -134348801
  %69 = or disjoint i32 %68, 131072
  br label %70

70:                                               ; preds = %65, %63
  %71 = phi ptr [ @PL_constpadix, %65 ], [ @PL_padix, %63 ]
  %72 = phi i32 [ %69, %65 ], [ %1, %63 ]
  store i32 %64, ptr %71, align 4, !tbaa !129
  br label %73

73:                                               ; preds = %70, %15
  %74 = phi i64 [ %26, %15 ], [ %41, %70 ]
  %75 = phi ptr [ %22, %15 ], [ %60, %70 ]
  %76 = phi i32 [ 0, %15 ], [ %72, %70 ]
  %77 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !166
  %79 = or i32 %78, %76
  store i32 %79, ptr %77, align 4, !tbaa !166
  %80 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %81 = getelementptr inbounds %struct.av, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !137
  store ptr %82, ptr @PL_curpad, align 8, !tbaa !116
  %83 = shl i64 %74, 32
  %84 = ashr exact i64 %83, 32
  ret i64 %84
}

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_add_anon(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !270 {
  %3 = tail call ptr @Perl_safesyscalloc(i64 noundef 44, i64 noundef 1) #12
  %4 = getelementptr inbounds %struct.padname, ptr %3, i64 0, i32 5
  store i32 1, ptr %4, align 8, !tbaa !211
  %5 = getelementptr inbounds %struct.padname_with_str, ptr %3, i64 0, i32 9
  store ptr %5, ptr %3, align 8, !tbaa !175
  store i8 38, ptr %5, align 1
  %6 = getelementptr inbounds %struct.padname_with_str, ptr %3, i64 0, i32 9, i64 1
  store i8 0, ptr %6, align 1, !tbaa !137
  %7 = getelementptr inbounds %struct.padname, ptr %3, i64 0, i32 7
  store i8 1, ptr %7, align 8, !tbaa !213
  %8 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.av, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13, !prof !242

13:                                               ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %10, ptr noundef %11) #12
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i8, ptr @PL_pad_reset_pending, align 1, !tbaa !138, !range !243, !noundef !244
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !245

17:                                               ; preds = %14
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !138
  br label %18

18:                                               ; preds = %14, %17
  %19 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %20 = load ptr, ptr %19, align 8, !tbaa !246
  %21 = getelementptr inbounds %struct.xpvav, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !247
  %23 = add nsw i64 %22, 1
  %24 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %19, i64 noundef %23, i32 noundef 1) #12
  %25 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %26 = load ptr, ptr %25, align 8, !tbaa !246
  %27 = getelementptr inbounds %struct.xpvav, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !247
  %29 = getelementptr inbounds %struct.av, ptr %25, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !137
  store ptr %30, ptr @PL_curpad, align 8, !tbaa !116
  %31 = shl i64 %28, 32
  %32 = ashr exact i64 %31, 32
  %33 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %34 = getelementptr inbounds %struct.padnamelist, ptr %33, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !142
  %36 = icmp slt i64 %35, %32
  br i1 %36, label %37, label %39, !prof !144

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.padnamelist, ptr %33, i64 0, i32 1
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %32, ptr noundef nonnull %34, ptr noundef nonnull %38, ptr noundef nonnull %38) #12
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i64, ptr %33, align 8, !tbaa !133
  %41 = icmp slt i64 %40, %32
  br i1 %41, label %42, label %49, !prof !145

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.padnamelist, ptr %33, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !132
  %45 = getelementptr inbounds ptr, ptr %44, i64 %40
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = sub nsw i64 %32, %40
  %48 = shl i64 %47, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %46, i8 0, i64 %48, i1 false), !prof !271
  store i64 %32, ptr %33, align 8, !tbaa !133
  br label %49

49:                                               ; preds = %42, %39
  %50 = getelementptr inbounds %struct.padnamelist, ptr %33, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !132
  %52 = getelementptr inbounds ptr, ptr %51, i64 %32
  %53 = load ptr, ptr %52, align 8, !tbaa !116
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !134

55:                                               ; preds = %49
  tail call void @Perl_padname_free(ptr noundef nonnull %53)
  br label %56

56:                                               ; preds = %49, %55
  store ptr %3, ptr %52, align 8, !tbaa !116
  %57 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %58 = tail call ptr @Perl_av_store(ptr noundef %57, i64 noundef %32, ptr noundef %0) #12
  %59 = load ptr, ptr %0, align 8, !tbaa !148
  %60 = getelementptr inbounds %struct.xpvcv, ptr %59, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !171
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63, !prof !272

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.xpvcv, ptr %59, i64 0, i32 12
  %65 = load i32, ptr %64, align 4, !tbaa !153
  %66 = or i32 %65, 16
  store i32 %66, ptr %64, align 4, !tbaa !153
  %67 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !182
  %69 = icmp ugt i32 %68, 1
  br i1 %69, label %70, label %72, !prof !273

70:                                               ; preds = %63
  %71 = add i32 %68, -1
  store i32 %71, ptr %67, align 8, !tbaa !182
  br label %73

72:                                               ; preds = %63
  tail call void @Perl_sv_free2(ptr noundef nonnull %61, i32 noundef %68) #12
  br label %73

73:                                               ; preds = %72, %70, %56
  ret i64 %32
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_pad_add_weakref(ptr noundef %0) local_unnamed_addr #3 !prof !274 {
  %2 = tail call i64 @Perl_pad_alloc(i32 poison, i32 noundef 0), !range !257
  %3 = tail call ptr @Perl_safesyscalloc(i64 noundef 44, i64 noundef 1) #12
  %4 = getelementptr inbounds %struct.padname, ptr %3, i64 0, i32 5
  store i32 1, ptr %4, align 8, !tbaa !211
  %5 = getelementptr inbounds %struct.padname_with_str, ptr %3, i64 0, i32 9
  store ptr %5, ptr %3, align 8, !tbaa !175
  store i8 38, ptr %5, align 1
  %6 = getelementptr inbounds %struct.padname_with_str, ptr %3, i64 0, i32 9, i64 1
  store i8 0, ptr %6, align 1, !tbaa !137
  %7 = getelementptr inbounds %struct.padname, ptr %3, i64 0, i32 7
  store i8 1, ptr %7, align 8, !tbaa !213
  %8 = tail call ptr @Perl_newRV(ptr noundef %0) #12
  %9 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %10 = tail call ptr @Perl_padnamelist_store(ptr noundef %9, i64 noundef %2, ptr noundef nonnull %3)
  %11 = tail call ptr @Perl_sv_rvweaken(ptr noundef %8) #12
  %12 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %13 = tail call ptr @Perl_av_store(ptr noundef %12, i64 noundef %2, ptr noundef %8) #12
  ret void
}

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_findmy_pvn(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !275 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %9, label %7, !prof !276

7:                                                ; preds = %3
  %8 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i64 noundef %8) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = load ptr, ptr @PL_compcv, align 8, !tbaa !116
  %11 = icmp eq ptr %10, null
  br i1 %11, label %75, label %12, !prof !277

12:                                               ; preds = %9
  %13 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !129
  %14 = call fastcc i64 @S_pad_findlex(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %10, i32 noundef %13, i32 noundef 1, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %15 = shl i64 %14, 32
  %16 = icmp eq i64 %15, -4294967296
  br i1 %16, label %19, label %17, !prof !278

17:                                               ; preds = %12
  %18 = ashr exact i64 %15, 32
  br label %75

19:                                               ; preds = %12
  %20 = load i8, ptr %0, align 1, !tbaa !137
  %21 = icmp eq i8 %20, 38
  br i1 %21, label %75, label %22, !prof !279

22:                                               ; preds = %19
  %23 = load ptr, ptr @PL_compcv, align 8, !tbaa !116
  %24 = load ptr, ptr %23, align 8, !tbaa !148
  %25 = getelementptr inbounds %struct.xpvcv, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = getelementptr inbounds %struct.padlist, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  %30 = getelementptr inbounds %struct.padnamelist, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !132
  %32 = getelementptr inbounds %struct.padnamelist, ptr %29, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !141
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %75, !prof !280

36:                                               ; preds = %22
  %37 = and i64 %33, 4294967295
  br label %41

38:                                               ; preds = %72
  %39 = add nsw i64 %42, -1
  %40 = icmp sgt i64 %42, 1
  br i1 %40, label %41, label %75, !prof !281, !llvm.loop !282

41:                                               ; preds = %36, %38
  %42 = phi i64 [ %37, %36 ], [ %39, %38 ]
  %43 = phi i64 [ undef, %36 ], [ %74, %38 ]
  %44 = getelementptr inbounds ptr, ptr %31, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !116
  %46 = icmp eq ptr %45, null
  br i1 %46, label %71, label %47, !prof !283

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.padname, ptr %45, i64 0, i32 7
  %49 = load i8, ptr %48, align 8, !tbaa !213
  %50 = zext i8 %49 to i64
  %51 = icmp eq i64 %50, %1
  br i1 %51, label %52, label %71, !prof !284

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.padname, ptr %45, i64 0, i32 8
  %54 = load i8, ptr %53, align 1, !tbaa !220
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %71, !prof !285

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.padname, ptr %45, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !228
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61, !prof !286

61:                                               ; preds = %57
  %62 = load ptr, ptr %45, align 8, !tbaa !175
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = call i32 @bcmp(ptr %62, ptr nonnull %0, i64 %1)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %61
  %68 = getelementptr inbounds %struct.padname, ptr %45, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !222
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %64, %57, %52, %47, %41
  br label %72

72:                                               ; preds = %67, %71
  %73 = phi i1 [ true, %71 ], [ false, %67 ]
  %74 = phi i64 [ %43, %71 ], [ %42, %67 ]
  br i1 %73, label %38, label %75, !prof !287

75:                                               ; preds = %72, %38, %22, %19, %9, %17
  %76 = phi i64 [ %18, %17 ], [ -1, %9 ], [ -1, %19 ], [ -1, %22 ], [ -1, %38 ], [ %74, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i64 %76
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @S_pad_findlex(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 !prof !288 !PGOFuncName !289 {
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %11 = load ptr, ptr %3, align 8, !tbaa !148
  %12 = getelementptr inbounds %struct.xpvcv, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  %14 = and i32 %2, 8
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %2, -9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !290

18:                                               ; preds = %9
  %19 = zext i32 %16 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, i64 noundef %19) #12
  br label %20

20:                                               ; preds = %18, %9
  store i32 0, ptr %8, align 4, !tbaa !129
  %21 = icmp ne ptr %13, null
  br i1 %21, label %22, label %262, !prof !290

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.padlist, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  %26 = getelementptr inbounds %struct.padnamelist, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !132
  %28 = getelementptr inbounds %struct.padnamelist, ptr %25, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !141
  %30 = trunc i64 %29 to i32
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %91, label %32, !prof !291

32:                                               ; preds = %22
  %33 = and i64 %29, 4294967295
  br label %34

34:                                               ; preds = %32, %86
  %35 = phi i64 [ %33, %32 ], [ %87, %86 ]
  %36 = phi i1 [ %31, %32 ], [ %88, %86 ]
  %37 = phi i32 [ 0, %32 ], [ %85, %86 ]
  %38 = getelementptr inbounds ptr, ptr %27, i64 %35
  %39 = load ptr, ptr %38, align 8, !tbaa !116
  %40 = icmp eq ptr %39, null
  br i1 %40, label %83, label %41, !prof !292

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.padname, ptr %39, i64 0, i32 7
  %43 = load i8, ptr %42, align 8, !tbaa !213
  %44 = zext i8 %43 to i64
  %45 = icmp eq i64 %44, %1
  br i1 %45, label %46, label %83, !prof !293

46:                                               ; preds = %41
  %47 = load ptr, ptr %39, align 8, !tbaa !175
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %52, label %49, !prof !294

49:                                               ; preds = %46
  %50 = tail call i32 @bcmp(ptr %47, ptr %0, i64 %1), !prof !295
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %83, !prof !296

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.padname, ptr %39, i64 0, i32 8
  %54 = load i8, ptr %53, align 1, !tbaa !220
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  %57 = trunc i64 %35 to i32
  br i1 %56, label %58, label %83, !prof !297

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.padname, ptr %39, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !222
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %82, label %62, !prof !298

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.padname, ptr %39, i64 0, i32 4
  %64 = load i32, ptr %63, align 4, !tbaa !224
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %74, !prof !299

66:                                               ; preds = %62
  %67 = icmp ult i32 %60, %4
  br i1 %67, label %68, label %71, !prof !300

68:                                               ; preds = %66
  %69 = sub i32 %4, %60
  %70 = icmp ult i32 %69, 2147483647
  br i1 %70, label %83, label %82, !prof !300

71:                                               ; preds = %66
  %72 = sub i32 %60, %4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %83, label %82

74:                                               ; preds = %62
  %75 = icmp ugt i32 %60, %64
  %76 = icmp uge i32 %60, %4
  %77 = icmp ult i32 %64, %4
  br i1 %75, label %78, label %80, !prof !301

78:                                               ; preds = %74
  %79 = and i1 %76, %77
  br i1 %79, label %82, label %83

80:                                               ; preds = %74
  %81 = or i1 %76, %77
  br i1 %81, label %82, label %83, !prof !302

82:                                               ; preds = %68, %71, %78, %80, %58
  br label %83

83:                                               ; preds = %80, %71, %34, %41, %49, %82, %78, %68, %52
  %84 = phi i1 [ false, %52 ], [ true, %68 ], [ true, %78 ], [ false, %82 ], [ false, %49 ], [ false, %41 ], [ false, %34 ], [ true, %71 ], [ true, %80 ]
  %85 = phi i32 [ %57, %52 ], [ %37, %68 ], [ %37, %78 ], [ %37, %82 ], [ %37, %49 ], [ %37, %41 ], [ %37, %34 ], [ %37, %71 ], [ %37, %80 ]
  br i1 %84, label %89, label %86, !prof !303

86:                                               ; preds = %83
  %87 = add nsw i64 %35, -1
  %88 = icmp slt i64 %35, 2
  br i1 %88, label %91, label %34, !prof !304, !llvm.loop !305

89:                                               ; preds = %83
  %90 = trunc i64 %35 to i32
  br label %91

91:                                               ; preds = %89, %86, %22
  %92 = phi i32 [ %30, %22 ], [ %90, %89 ], [ 0, %86 ]
  %93 = phi i1 [ %31, %22 ], [ %36, %89 ], [ %88, %86 ]
  %94 = phi i32 [ 0, %22 ], [ %85, %86 ], [ %85, %89 ]
  %95 = icmp slt i32 %94, 1
  %96 = select i1 %93, i1 %95, i1 false, !prof !306
  br i1 %96, label %260, label %97, !prof !307

97:                                               ; preds = %91
  br i1 %93, label %117, label %98, !prof !308

98:                                               ; preds = %97
  %99 = zext nneg i32 %92 to i64
  %100 = getelementptr inbounds ptr, ptr %27, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !116
  store ptr %101, ptr %7, align 8, !tbaa !116
  %102 = load ptr, ptr %3, align 8, !tbaa !148
  %103 = getelementptr inbounds %struct.xpvcv, ptr %102, i64 0, i32 12
  %104 = load i32, ptr %103, align 4, !tbaa !153
  %105 = and i32 %104, 128
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %123, !prof !309

107:                                              ; preds = %98
  %108 = and i32 %104, 256
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114, !prof !310

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.xpvcv, ptr %102, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !137
  %113 = icmp eq ptr %112, null
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  %116 = select i1 %115, i32 2, i32 0, !prof !310
  br label %123

117:                                              ; preds = %97
  %118 = zext nneg i32 %94 to i64
  %119 = getelementptr inbounds ptr, ptr %27, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !116
  store ptr %120, ptr %7, align 8, !tbaa !116
  %121 = getelementptr inbounds %struct.padname, ptr %120, i64 0, i32 4
  %122 = load i32, ptr %121, align 4, !tbaa !224
  br label %123

123:                                              ; preds = %114, %98, %117
  %124 = phi i32 [ %122, %117 ], [ %116, %114 ], [ 1, %98 ]
  %125 = phi i32 [ %94, %117 ], [ 0, %114 ], [ 0, %98 ]
  %126 = phi i32 [ %94, %117 ], [ %92, %114 ], [ %92, %98 ]
  store i32 %124, ptr %8, align 4, !tbaa !129
  %127 = icmp eq ptr %6, null
  br i1 %127, label %258, label %128, !prof !311

128:                                              ; preds = %123
  %129 = load ptr, ptr %7, align 8, !tbaa !116
  %130 = getelementptr inbounds %struct.padname, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !228
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133, !prof !312

133:                                              ; preds = %128
  store ptr null, ptr %6, align 8, !tbaa !116
  %134 = zext nneg i32 %126 to i64
  br label %260

135:                                              ; preds = %128
  %136 = load ptr, ptr %3, align 8, !tbaa !148
  %137 = getelementptr inbounds %struct.xpvcv, ptr %136, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !137
  %139 = icmp ne ptr %138, null
  br i1 %139, label %140, label %145, !prof !313

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.xpvcv, ptr %136, i64 0, i32 12
  %142 = load i32, ptr %141, align 4, !tbaa !153
  %143 = and i32 %142, 224
  %144 = icmp eq i32 %143, 160
  br i1 %144, label %148, label %159

145:                                              ; preds = %135
  %146 = and i32 %124, 1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %159, label %148, !prof !314

148:                                              ; preds = %145, %140
  %149 = icmp eq i32 %5, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %148
  %151 = load ptr, ptr %129, align 8, !tbaa !175
  %152 = load i8, ptr %151, align 1, !tbaa !137
  %153 = icmp eq i8 %152, 38
  %154 = select i1 %153, ptr @.str.29, ptr @.str.30
  %155 = getelementptr inbounds %struct.padname, ptr %129, i64 0, i32 7
  %156 = load i8, ptr %155, align 8, !tbaa !213
  %157 = zext i8 %156 to i64
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %154, i32 noundef 1, i64 noundef %157, ptr noundef nonnull %151) #12
  br label %158

158:                                              ; preds = %150, %148
  store ptr null, ptr %6, align 8, !tbaa !116
  br label %238

159:                                              ; preds = %145, %140
  %160 = and i32 %124, 2
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %139, i1 true, i1 %161
  br i1 %162, label %179, label %163, !prof !315

163:                                              ; preds = %159
  %164 = zext nneg i32 %126 to i64
  %165 = getelementptr inbounds ptr, ptr %27, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !116
  %167 = getelementptr inbounds %struct.padname, ptr %166, i64 0, i32 8
  %168 = load i8, ptr %167, align 1, !tbaa !220
  %169 = and i8 %168, 2
  %170 = icmp eq i8 %169, 0
  %171 = icmp ne i32 %5, 0
  %172 = and i1 %171, %170
  br i1 %172, label %173, label %179

173:                                              ; preds = %163
  %174 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 1) #12
  br i1 %174, label %175, label %179

175:                                              ; preds = %173
  %176 = load i8, ptr %0, align 1, !tbaa !137
  %177 = icmp eq i8 %176, 38
  %178 = select i1 %177, ptr @.str.29, ptr @.str.30
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull %178, i32 noundef 1, i64 noundef %1, ptr noundef nonnull %0) #12
  br label %179

179:                                              ; preds = %175, %173, %163, %159
  %180 = phi i32 [ %5, %159 ], [ 0, %175 ], [ 1, %173 ], [ %5, %163 ]
  %181 = icmp eq i32 %125, 0
  br i1 %181, label %196, label %182, !prof !314

182:                                              ; preds = %179
  %183 = load ptr, ptr %3, align 8, !tbaa !148
  %184 = getelementptr inbounds %struct.xpvcv, ptr %183, i64 0, i32 12
  %185 = load i32, ptr %184, align 4, !tbaa !153
  %186 = and i32 %185, 224
  %187 = icmp eq i32 %186, 160
  br i1 %187, label %188, label %196

188:                                              ; preds = %182
  %189 = load ptr, ptr %7, align 8, !tbaa !116
  %190 = getelementptr inbounds %struct.xpvcv, ptr %183, i64 0, i32 10
  %191 = load ptr, ptr %190, align 8, !tbaa !171
  %192 = getelementptr inbounds %struct.xpvcv, ptr %183, i64 0, i32 11
  %193 = load i32, ptr %192, align 8, !tbaa !172
  %194 = tail call fastcc i64 @S_pad_findlex(ptr noundef %0, i64 noundef %1, i32 noundef %16, ptr noundef %191, i32 noundef %193, i32 noundef %180, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  store ptr %189, ptr %7, align 8, !tbaa !116
  %195 = zext nneg i32 %126 to i64
  br label %235

196:                                              ; preds = %182, %179
  %197 = load ptr, ptr %23, align 8, !tbaa !136
  %198 = load ptr, ptr %3, align 8, !tbaa !148
  %199 = getelementptr inbounds %struct.xpvcv, ptr %198, i64 0, i32 13
  %200 = load i32, ptr %199, align 4, !tbaa !129
  %201 = tail call i32 @llvm.umax.i32(i32 %200, i32 1)
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %197, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !116
  %205 = getelementptr inbounds %struct.av, ptr %204, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !137
  %207 = zext nneg i32 %126 to i64
  %208 = getelementptr inbounds ptr, ptr %206, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !116
  store ptr %209, ptr %6, align 8, !tbaa !116
  %210 = getelementptr inbounds %struct.sv, ptr %209, i64 0, i32 2
  %211 = load i32, ptr %210, align 4, !tbaa !166
  %212 = and i32 %211, 262144
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %235, label %214, !prof !314

214:                                              ; preds = %196
  %215 = load ptr, ptr %3, align 8, !tbaa !148
  %216 = getelementptr inbounds %struct.xpvcv, ptr %215, i64 0, i32 13
  %217 = load i32, ptr %216, align 4, !tbaa !129
  %218 = icmp eq i32 %217, 0
  %219 = or i1 %15, %218
  br i1 %219, label %220, label %235

220:                                              ; preds = %214
  %221 = getelementptr inbounds ptr, ptr %27, i64 %207
  %222 = load ptr, ptr %221, align 8, !tbaa !116
  %223 = getelementptr inbounds %struct.padname, ptr %222, i64 0, i32 8
  %224 = load i8, ptr %223, align 1, !tbaa !220
  %225 = and i8 %224, 2
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load ptr, ptr %222, align 8, !tbaa !175
  %229 = load i8, ptr %228, align 1, !tbaa !137
  %230 = icmp eq i8 %229, 38
  %231 = select i1 %230, ptr @.str.29, ptr @.str.30
  %232 = getelementptr inbounds %struct.padname, ptr %222, i64 0, i32 7
  %233 = load i8, ptr %232, align 8, !tbaa !213
  %234 = zext i8 %233 to i64
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %231, i32 noundef 1, i64 noundef %234, ptr noundef nonnull %228) #12
  store ptr null, ptr %6, align 8, !tbaa !116
  br label %235

235:                                              ; preds = %196, %220, %227, %214, %188
  %236 = phi i1 [ false, %188 ], [ true, %214 ], [ true, %227 ], [ true, %220 ], [ true, %196 ]
  %237 = phi i64 [ %195, %188 ], [ undef, %214 ], [ undef, %227 ], [ undef, %220 ], [ undef, %196 ]
  br i1 %236, label %238, label %260, !prof !314

238:                                              ; preds = %235, %158
  %239 = load ptr, ptr %6, align 8, !tbaa !116
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %258, !prof !313

241:                                              ; preds = %238
  %242 = icmp eq i64 %1, 0
  br i1 %242, label %254, label %243

243:                                              ; preds = %241
  %244 = load i8, ptr %0, align 1, !tbaa !137
  switch i8 %244, label %254 [
    i8 64, label %245
    i8 37, label %248
    i8 38, label %251
  ]

245:                                              ; preds = %243
  %246 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  %247 = tail call ptr @Perl_sv_2mortal(ptr noundef %246) #12
  br label %256

248:                                              ; preds = %243
  %249 = tail call ptr @Perl_newSV_type(i32 noundef 12) #12
  %250 = tail call ptr @Perl_sv_2mortal(ptr noundef %249) #12
  br label %256

251:                                              ; preds = %243
  %252 = tail call ptr @Perl_newSV_type(i32 noundef 13) #12
  %253 = tail call ptr @Perl_sv_2mortal(ptr noundef %252) #12
  br label %256

254:                                              ; preds = %243, %241
  %255 = tail call ptr @Perl_sv_newmortal() #12
  br label %256

256:                                              ; preds = %245, %251, %254, %248
  %257 = phi ptr [ %250, %248 ], [ %255, %254 ], [ %253, %251 ], [ %247, %245 ]
  store ptr %257, ptr %6, align 8, !tbaa !116
  br label %258

258:                                              ; preds = %256, %238, %123
  %259 = zext nneg i32 %126 to i64
  br label %260

260:                                              ; preds = %91, %235, %258, %133
  %261 = phi i64 [ %134, %133 ], [ %259, %258 ], [ %237, %235 ], [ undef, %91 ]
  br i1 %96, label %262, label %435, !prof !307

262:                                              ; preds = %260, %20
  %263 = load ptr, ptr %3, align 8, !tbaa !148
  %264 = getelementptr inbounds %struct.xpvcv, ptr %263, i64 0, i32 10
  %265 = load ptr, ptr %264, align 8, !tbaa !171
  %266 = icmp eq ptr %265, null
  br i1 %266, label %435, label %267, !prof !316

267:                                              ; preds = %262
  %268 = icmp eq ptr %6, null
  br i1 %268, label %269, label %280, !prof !317

269:                                              ; preds = %267
  %270 = getelementptr inbounds %struct.xpvcv, ptr %263, i64 0, i32 12
  %271 = load i32, ptr %270, align 4, !tbaa !153
  %272 = and i32 %271, 160
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %280, !prof !318

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.cv, ptr %3, i64 0, i32 2
  %276 = load i32, ptr %275, align 4, !tbaa !184
  %277 = and i32 %276, 255
  %278 = icmp eq i32 %277, 14
  %279 = select i1 %278, ptr null, ptr %10, !prof !319
  br label %280

280:                                              ; preds = %267, %274, %269
  %281 = phi ptr [ null, %269 ], [ %279, %274 ], [ %6, %267 ]
  %282 = icmp eq ptr %281, %10
  %283 = select i1 %282, i32 8, i32 0, !prof !320
  %284 = or disjoint i32 %283, %16
  %285 = getelementptr inbounds %struct.xpvcv, ptr %263, i64 0, i32 11
  %286 = load i32, ptr %285, align 8, !tbaa !172
  %287 = call fastcc i64 @S_pad_findlex(ptr noundef %0, i64 noundef %1, i32 noundef %284, ptr noundef nonnull %265, i32 noundef %286, i32 noundef 1, ptr noundef %281, ptr noundef %7, ptr noundef nonnull %8)
  %288 = trunc i64 %287 to i32
  %289 = and i64 %287, 4294967295
  %290 = icmp eq i64 %289, 4294967295
  br i1 %290, label %435, label %291, !prof !321

291:                                              ; preds = %280
  %292 = load ptr, ptr %3, align 8, !tbaa !148
  %293 = getelementptr inbounds %struct.xpvcv, ptr %292, i64 0, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !137
  %295 = icmp eq ptr %294, null
  %296 = and i1 %21, %295
  br i1 %296, label %297, label %435, !prof !322

297:                                              ; preds = %291
  %298 = load ptr, ptr %7, align 8, !tbaa !116
  %299 = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #12
  %300 = getelementptr inbounds %struct.padname, ptr %299, i64 0, i32 5
  store i32 1, ptr %300, align 8, !tbaa !211
  %301 = load ptr, ptr %298, align 8, !tbaa !175
  store ptr %301, ptr %299, align 8, !tbaa !175
  %302 = load ptr, ptr %298, align 8, !tbaa !175
  %303 = getelementptr inbounds i8, ptr %302, i64 -10
  %304 = load i32, ptr %303, align 8, !tbaa !211
  %305 = add i32 %304, 1
  store i32 %305, ptr %303, align 8, !tbaa !211
  %306 = getelementptr inbounds %struct.padname, ptr %299, i64 0, i32 8
  store i8 1, ptr %306, align 1, !tbaa !220
  %307 = getelementptr inbounds %struct.padname, ptr %298, i64 0, i32 7
  %308 = load i8, ptr %307, align 8, !tbaa !213
  %309 = getelementptr inbounds %struct.padname, ptr %299, i64 0, i32 7
  store i8 %308, ptr %309, align 8, !tbaa !213
  %310 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %311 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %312 = getelementptr inbounds %struct.padlist, ptr %13, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !136
  %314 = load ptr, ptr %313, align 8, !tbaa !116
  store ptr %314, ptr @PL_comppad_name, align 8, !tbaa !116
  %315 = getelementptr inbounds ptr, ptr %313, i64 1
  %316 = load ptr, ptr %315, align 8, !tbaa !116
  store ptr %316, ptr @PL_comppad, align 8, !tbaa !116
  %317 = getelementptr inbounds %struct.av, ptr %316, i64 0, i32 3
  %318 = load ptr, ptr %317, align 8, !tbaa !137
  store ptr %318, ptr @PL_curpad, align 8, !tbaa !116
  %319 = load ptr, ptr %7, align 8, !tbaa !116
  %320 = getelementptr inbounds %struct.padname, ptr %319, i64 0, i32 8
  %321 = load i8, ptr %320, align 1, !tbaa !220
  %322 = getelementptr inbounds %struct.padname, ptr %319, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !137
  %324 = getelementptr inbounds %struct.padname, ptr %319, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !228
  %326 = load i8, ptr @PL_pad_reset_pending, align 1, !tbaa !138, !range !243, !noundef !244
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %329, label %328, !prof !245

328:                                              ; preds = %297
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !138
  br label %329

329:                                              ; preds = %297, %328
  %330 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %331 = load ptr, ptr %330, align 8, !tbaa !246
  %332 = getelementptr inbounds %struct.xpvav, ptr %331, i64 0, i32 2
  %333 = load i64, ptr %332, align 8, !tbaa !247
  %334 = add nsw i64 %333, 1
  %335 = call ptr @Perl_av_fetch(ptr noundef nonnull %330, i64 noundef %334, i32 noundef 1) #12
  %336 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %337 = load ptr, ptr %336, align 8, !tbaa !246
  %338 = getelementptr inbounds %struct.xpvav, ptr %337, i64 0, i32 2
  %339 = load i64, ptr %338, align 8, !tbaa !247
  %340 = getelementptr inbounds %struct.av, ptr %336, i64 0, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !137
  store ptr %341, ptr @PL_curpad, align 8, !tbaa !116
  %342 = shl i64 %339, 32
  %343 = ashr exact i64 %342, 32
  %344 = icmp eq ptr %323, null
  br i1 %344, label %352, label %345, !prof !249

345:                                              ; preds = %329
  %346 = load i8, ptr %306, align 1, !tbaa !220
  %347 = or i8 %346, 8
  store i8 %347, ptr %306, align 1, !tbaa !220
  %348 = getelementptr inbounds %struct.sv, ptr %323, i64 0, i32 1
  %349 = load i32, ptr %348, align 8, !tbaa !182
  %350 = add i32 %349, 1
  store i32 %350, ptr %348, align 8, !tbaa !182
  %351 = getelementptr inbounds %struct.padname, ptr %299, i64 0, i32 2
  store ptr %323, ptr %351, align 8, !tbaa !137
  br label %352

352:                                              ; preds = %345, %329
  %353 = icmp eq ptr %325, null
  br i1 %353, label %361, label %354, !prof !250

354:                                              ; preds = %352
  %355 = load i8, ptr %306, align 1, !tbaa !220
  %356 = or i8 %355, 16
  store i8 %356, ptr %306, align 1, !tbaa !220
  %357 = getelementptr inbounds %struct.padname, ptr %299, i64 0, i32 1
  store ptr %325, ptr %357, align 8, !tbaa !228
  %358 = getelementptr inbounds %struct.sv, ptr %325, i64 0, i32 1
  %359 = load i32, ptr %358, align 8, !tbaa !182
  %360 = add i32 %359, 1
  store i32 %360, ptr %358, align 8, !tbaa !182
  br label %367

361:                                              ; preds = %352
  %362 = and i8 %321, 2
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %367, label %364, !prof !251

364:                                              ; preds = %361
  %365 = load i8, ptr %306, align 1, !tbaa !220
  %366 = or i8 %365, 2
  store i8 %366, ptr %306, align 1, !tbaa !220
  br label %367

367:                                              ; preds = %364, %361, %354
  %368 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %369 = getelementptr inbounds %struct.padnamelist, ptr %368, i64 0, i32 2
  %370 = load i64, ptr %369, align 8, !tbaa !142
  %371 = icmp slt i64 %370, %343
  br i1 %371, label %372, label %374, !prof !144

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.padnamelist, ptr %368, i64 0, i32 1
  call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %343, ptr noundef nonnull %369, ptr noundef nonnull %373, ptr noundef nonnull %373) #12
  br label %374

374:                                              ; preds = %372, %367
  %375 = load i64, ptr %368, align 8, !tbaa !133
  %376 = icmp slt i64 %375, %343
  br i1 %376, label %377, label %384, !prof !145

377:                                              ; preds = %374
  %378 = getelementptr inbounds %struct.padnamelist, ptr %368, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !132
  %380 = getelementptr inbounds ptr, ptr %379, i64 %375
  %381 = getelementptr inbounds ptr, ptr %380, i64 1
  %382 = sub nsw i64 %343, %375
  %383 = shl i64 %382, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %381, i8 0, i64 %383, i1 false), !prof !323
  store i64 %343, ptr %368, align 8, !tbaa !133
  br label %384

384:                                              ; preds = %377, %374
  %385 = getelementptr inbounds %struct.padnamelist, ptr %368, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !132
  %387 = getelementptr inbounds ptr, ptr %386, i64 %343
  %388 = load ptr, ptr %387, align 8, !tbaa !116
  %389 = icmp eq ptr %388, null
  br i1 %389, label %391, label %390, !prof !134

390:                                              ; preds = %384
  call void @Perl_padname_free(ptr noundef nonnull %388)
  br label %391

391:                                              ; preds = %384, %390
  store ptr %299, ptr %387, align 8, !tbaa !116
  %392 = load i8, ptr %309, align 8, !tbaa !213
  %393 = icmp ugt i8 %392, 1
  br i1 %393, label %394, label %397, !prof !253

394:                                              ; preds = %391
  %395 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %396 = getelementptr inbounds %struct.padnamelist, ptr %395, i64 0, i32 3
  store i64 %343, ptr %396, align 8, !tbaa !141
  br label %397

397:                                              ; preds = %391, %394
  %398 = load i32, ptr %8, align 4, !tbaa !129
  %399 = getelementptr inbounds %struct.padname, ptr %299, i64 0, i32 4
  store i32 %398, ptr %399, align 4, !tbaa !224
  %400 = getelementptr inbounds %struct.padname, ptr %299, i64 0, i32 3
  store i32 0, ptr %400, align 8, !tbaa !222
  %401 = getelementptr inbounds %struct.padname, ptr %299, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !228
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %427, !prof !324

404:                                              ; preds = %397
  %405 = load ptr, ptr %3, align 8, !tbaa !148
  %406 = getelementptr inbounds %struct.xpvcv, ptr %405, i64 0, i32 12
  %407 = load i32, ptr %406, align 4, !tbaa !153
  %408 = and i32 %407, 160
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %415, !prof !325

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.cv, ptr %3, i64 0, i32 2
  %412 = load i32, ptr %411, align 4, !tbaa !184
  %413 = and i32 %412, 255
  %414 = icmp eq i32 %413, 14
  br i1 %414, label %415, label %417, !prof !313

415:                                              ; preds = %404, %410
  store i32 %288, ptr %400, align 8, !tbaa !222
  %416 = or i32 %407, 32
  store i32 %416, ptr %406, align 4, !tbaa !153
  br label %427

417:                                              ; preds = %410
  %418 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %419 = load ptr, ptr %281, align 8, !tbaa !116
  %420 = icmp eq ptr %419, null
  br i1 %420, label %425, label %421, !prof !313

421:                                              ; preds = %417
  %422 = getelementptr inbounds %struct.sv, ptr %419, i64 0, i32 1
  %423 = load i32, ptr %422, align 8, !tbaa !182
  %424 = add i32 %423, 1
  store i32 %424, ptr %422, align 8, !tbaa !182
  br label %425

425:                                              ; preds = %417, %421
  %426 = call ptr @Perl_av_store(ptr noundef %418, i64 noundef %343, ptr noundef %419) #12
  store i32 %288, ptr %400, align 8, !tbaa !222
  br label %427

427:                                              ; preds = %415, %425, %397
  store ptr %299, ptr %7, align 8, !tbaa !116
  %428 = load i32, ptr %399, align 4, !tbaa !224
  store i32 %428, ptr %8, align 4, !tbaa !129
  store ptr %310, ptr @PL_comppad_name, align 8, !tbaa !116
  store ptr %311, ptr @PL_comppad, align 8, !tbaa !116
  %429 = icmp eq ptr %311, null
  br i1 %429, label %433, label %430, !prof !326

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.av, ptr %311, i64 0, i32 3
  %432 = load ptr, ptr %431, align 8, !tbaa !137
  br label %433

433:                                              ; preds = %427, %430
  %434 = phi ptr [ %432, %430 ], [ null, %427 ]
  store ptr %434, ptr @PL_curpad, align 8, !tbaa !116
  br label %435

435:                                              ; preds = %262, %291, %280, %260, %433
  %436 = phi i64 [ %343, %433 ], [ %261, %260 ], [ -1, %280 ], [ 0, %291 ], [ -1, %262 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  ret i64 %436
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_pad_findmy_pv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !140 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %4 = tail call i64 @Perl_pad_findmy_pvn(ptr noundef %0, i64 noundef %3, i32 noundef %1)
  ret i64 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_pad_findmy_sv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !140 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !166
  %6 = and i32 %5, 538969088
  %7 = icmp eq i32 %6, 536871936
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !258
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !259
  store i64 %11, ptr %3, align 8, !tbaa !261
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @Perl_sv_2pvutf8(ptr noundef %0, ptr noundef nonnull %3) #12
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %18 = load i64, ptr %3, align 8, !tbaa !261
  %19 = call i64 @Perl_pad_findmy_pvn(ptr noundef %17, i64 noundef %18, i32 noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i64 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_find_rundefsvoffset() local_unnamed_addr #3 !prof !140 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = tail call ptr @Perl_find_runcv(ptr noundef null) #12
  %4 = load ptr, ptr @PL_curcop, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !327
  %7 = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %3, i32 noundef %6, i32 noundef 1, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  ret i64 %7
}

declare ptr @Perl_find_runcv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_find_rundefsv() local_unnamed_addr #3 !prof !140 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = tail call ptr @Perl_find_runcv(ptr noundef null) #12
  %4 = load ptr, ptr @PL_curcop, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !327
  %7 = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %3, i32 noundef %6, i32 noundef 1, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !228
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9, %0
  %15 = load ptr, ptr @PL_defgv, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = load ptr, ptr %17, align 8, !tbaa !329
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = call ptr @Perl_gv_add_by_type(ptr noundef %15, i32 noundef 0) #12
  %22 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  br label %27

24:                                               ; preds = %9
  %25 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %26 = getelementptr inbounds ptr, ptr %25, i64 %7
  br label %27

27:                                               ; preds = %20, %14, %24
  %28 = phi ptr [ %26, %24 ], [ %23, %20 ], [ %17, %14 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  ret ptr %29
}

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_find_rundefsv2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !140 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.padname, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !228
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7, %2
  %13 = load ptr, ptr @PL_defgv, align 8, !tbaa !116
  %14 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = load ptr, ptr %15, align 8, !tbaa !329
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = call ptr @Perl_gv_add_by_type(ptr noundef %13, i32 noundef 0) #12
  %20 = getelementptr inbounds %struct.gv, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  br label %36

22:                                               ; preds = %7
  %23 = load ptr, ptr %0, align 8, !tbaa !148
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !137
  %26 = getelementptr inbounds %struct.padlist, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !136
  %28 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 13
  %29 = load i32, ptr %28, align 4, !tbaa !129
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = getelementptr inbounds %struct.av, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !137
  %35 = getelementptr inbounds ptr, ptr %34, i64 %5
  br label %36

36:                                               ; preds = %18, %12, %22
  %37 = phi ptr [ %35, %22 ], [ %21, %18 ], [ %15, %12 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret ptr %38
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_block_start(i32 noundef %0) local_unnamed_addr #0 !prof !331 {
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_floor) #12
  %2 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %3 = load i64, ptr %2, align 8, !tbaa !133
  %4 = trunc i64 %3 to i32
  store i32 %4, ptr @PL_comppad_name_floor, align 4, !tbaa !129
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %7, label %6, !prof !332

6:                                                ; preds = %1
  store i32 %4, ptr @PL_comppad_name_fill, align 4, !tbaa !129
  br label %7

7:                                                ; preds = %6, %1
  %8 = icmp slt i32 %4, 0
  br i1 %8, label %9, label %10, !prof !333

9:                                                ; preds = %7
  store i32 0, ptr @PL_comppad_name_floor, align 4, !tbaa !129
  br label %10

10:                                               ; preds = %9, %7
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_min_intro_pending) #12
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_max_intro_pending) #12
  store i32 0, ptr @PL_min_intro_pending, align 4, !tbaa !129
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_fill) #12
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_padix_floor) #12
  %11 = load i32, ptr @PL_padix, align 4, !tbaa !129
  store i32 %11, ptr @PL_padix_floor, align 4, !tbaa !129
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !138
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_intro_my() local_unnamed_addr #5 !prof !334 {
  %1 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 11), align 4, !tbaa !327
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !335

3:                                                ; preds = %0
  store i32 0, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 11), align 4, !tbaa !327
  br label %6

4:                                                ; preds = %0
  %5 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !129
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ %1, %3 ], [ %5, %4 ]
  %8 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !129
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %49, label %10, !prof !336

10:                                               ; preds = %6
  %11 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = load i32, ptr @PL_max_intro_pending, align 4, !tbaa !129
  %15 = icmp sgt i32 %8, %14
  br i1 %15, label %44, label %16, !prof !337

16:                                               ; preds = %10
  %17 = load i32, ptr @PL_cop_seqmax, align 4
  %18 = sext i32 %8 to i64
  %19 = add i32 %14, 1
  br label %20

20:                                               ; preds = %16, %40
  %21 = phi i64 [ %18, %16 ], [ %41, %40 ]
  %22 = getelementptr inbounds ptr, ptr %13, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25, !prof !338

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 7
  %27 = load i8, ptr %26, align 8, !tbaa !213
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29, !prof !255

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 8
  %31 = load i8, ptr %30, align 1, !tbaa !220
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40, !prof !210

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !222
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40, !prof !210

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.padname, ptr %23, i64 0, i32 4
  store i32 -1, ptr %39, align 4, !tbaa !224
  store i32 %17, ptr %35, align 8, !tbaa !222
  br label %40

40:                                               ; preds = %38, %34, %29, %25, %20
  %41 = add nsw i64 %21, 1
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %19, %42
  br i1 %43, label %44, label %20, !prof !339, !llvm.loop !340

44:                                               ; preds = %40, %10
  %45 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !129
  %46 = add i32 %45, 1
  %47 = icmp eq i32 %46, -1
  %48 = select i1 %47, i32 0, i32 %46, !prof !341
  store i32 %48, ptr @PL_cop_seqmax, align 4, !tbaa !129
  store i32 0, ptr @PL_min_intro_pending, align 4, !tbaa !129
  store i32 %14, ptr @PL_comppad_name_fill, align 4, !tbaa !129
  br label %49

49:                                               ; preds = %6, %44
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pad_leavemy() local_unnamed_addr #0 !prof !331 {
  %1 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %2 = getelementptr inbounds %struct.padnamelist, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  store i8 0, ptr @PL_pad_reset_pending, align 1, !tbaa !138
  %4 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !129
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @PL_comppad_name_fill, align 4
  %7 = icmp slt i32 %6, %4
  %8 = select i1 %5, i1 %7, i1 false, !prof !342
  br i1 %8, label %9, label %37, !prof !333

9:                                                ; preds = %0
  %10 = load i32, ptr @PL_max_intro_pending, align 4, !tbaa !129
  %11 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !129
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = sext i32 %10 to i64
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi i64 [ %14, %13 ], [ %33, %32 ]
  %17 = getelementptr inbounds ptr, ptr %3, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.padname, ptr %18, i64 0, i32 7
  %22 = load i8, ptr %21, align 8, !tbaa !213
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.padname, ptr %18, i64 0, i32 8
  %26 = load i8, ptr %25, align 1, !tbaa !220
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = zext i8 %22 to i64
  %31 = load ptr, ptr %18, align 8, !tbaa !175
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.6, i32 noundef 1, i64 noundef %30, ptr noundef %31) #12
  br label %32

32:                                               ; preds = %29, %24, %20, %15
  %33 = add i64 %16, -1
  %34 = load i32, ptr @PL_min_intro_pending, align 4, !tbaa !129
  %35 = sext i32 %34 to i64
  %36 = icmp sgt i64 %16, %35
  br i1 %36, label %15, label %37, !llvm.loop !343

37:                                               ; preds = %32, %9, %0
  %38 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %39 = load i64, ptr %38, align 8, !tbaa !133
  %40 = trunc i64 %39 to i32
  %41 = load i32, ptr @PL_comppad_name_fill, align 4, !tbaa !129
  %42 = icmp slt i32 %41, %40
  br i1 %42, label %43, label %89, !prof !344

43:                                               ; preds = %37
  %44 = shl i64 %39, 32
  %45 = ashr exact i64 %44, 32
  br label %46

46:                                               ; preds = %43, %83
  %47 = phi i64 [ %45, %43 ], [ %85, %83 ]
  %48 = phi ptr [ null, %43 ], [ %84, %83 ]
  %49 = getelementptr inbounds ptr, ptr %3, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !116
  %51 = icmp eq ptr %50, null
  br i1 %51, label %83, label %52, !prof !345

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.padname, ptr %50, i64 0, i32 7
  %54 = load i8, ptr %53, align 8, !tbaa !213
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %83, label %56, !prof !346

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.padname, ptr %50, i64 0, i32 8
  %58 = load i8, ptr %57, align 1, !tbaa !220
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %83, !prof !347

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.padname, ptr %50, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !224
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %83, !prof !348

65:                                               ; preds = %61
  %66 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !129
  store i32 %66, ptr %62, align 4, !tbaa !224
  %67 = and i8 %58, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %83, !prof !214

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.padname, ptr %50, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !228
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %83, !prof !349

73:                                               ; preds = %69
  %74 = load ptr, ptr %50, align 8, !tbaa !175
  %75 = load i8, ptr %74, align 1, !tbaa !137
  %76 = icmp eq i8 %75, 38
  br i1 %76, label %77, label %83, !prof !350

77:                                               ; preds = %73
  %78 = icmp eq i8 %54, 1
  br i1 %78, label %83, label %79

79:                                               ; preds = %77
  %80 = tail call ptr @Perl_newOP(i32 noundef 388, i32 noundef 0) #12
  %81 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 3
  store i64 %47, ptr %81, align 8, !tbaa !351
  %82 = tail call ptr @Perl_op_prepend_elem(i32 noundef 192, ptr noundef %80, ptr noundef %48) #12
  br label %83

83:                                               ; preds = %65, %69, %73, %77, %79, %61, %56, %52, %46
  %84 = phi ptr [ %48, %56 ], [ %48, %65 ], [ %48, %69 ], [ %82, %79 ], [ %48, %77 ], [ %48, %73 ], [ %48, %61 ], [ %48, %52 ], [ %48, %46 ]
  %85 = add nsw i64 %47, -1
  %86 = load i32, ptr @PL_comppad_name_fill, align 4, !tbaa !129
  %87 = sext i32 %86 to i64
  %88 = icmp sgt i64 %85, %87
  br i1 %88, label %46, label %89, !prof !352, !llvm.loop !353

89:                                               ; preds = %83, %37
  %90 = phi ptr [ null, %37 ], [ %84, %83 ]
  %91 = load i32, ptr @PL_cop_seqmax, align 4, !tbaa !129
  %92 = add i32 %91, 1
  %93 = icmp eq i32 %92, -1
  %94 = select i1 %93, i32 0, i32 %92, !prof !333
  store i32 %94, ptr @PL_cop_seqmax, align 4, !tbaa !129
  ret ptr %90
}

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newOP(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_op_prepend_elem(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_swipe(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !354 {
  %3 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5, !prof !355

5:                                                ; preds = %2
  %6 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.av, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %11, label %10, !prof !356

10:                                               ; preds = %5
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7, ptr noundef %8, ptr noundef nonnull %3) #12
  br label %11

11:                                               ; preds = %10, %5
  %12 = icmp eq i64 %0, 0
  br i1 %12, label %19, label %13, !prof !355

13:                                               ; preds = %11
  %14 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %15 = load ptr, ptr %14, align 8, !tbaa !246
  %16 = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !247
  %18 = icmp slt i64 %17, %0
  br i1 %18, label %19, label %24, !prof !355

19:                                               ; preds = %13, %11
  %20 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %21 = load ptr, ptr %20, align 8, !tbaa !246
  %22 = getelementptr inbounds %struct.xpvav, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !247
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, i64 noundef %0, i64 noundef %23) #12
  br label %24

24:                                               ; preds = %19, %13
  br i1 %1, label %25, label %37, !prof !355

25:                                               ; preds = %24
  %26 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %27 = getelementptr inbounds ptr, ptr %26, i64 %0
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !182
  %33 = icmp ugt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = add i32 %32, -1
  store i32 %35, ptr %31, align 8, !tbaa !182
  br label %37

36:                                               ; preds = %30
  tail call void @Perl_sv_free2(ptr noundef nonnull %28, i32 noundef %32) #12
  br label %37

37:                                               ; preds = %36, %34, %25, %24
  %38 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %39 = getelementptr inbounds ptr, ptr %38, i64 %0
  store ptr null, ptr %39, align 8, !tbaa !116
  %40 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %41 = load i64, ptr %40, align 8, !tbaa !133
  %42 = icmp eq i64 %41, -1
  %43 = icmp ult i64 %41, %0
  %44 = or i1 %42, %43
  br i1 %44, label %49, label %45, !prof !357

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.padnamelist, ptr %40, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !132
  %48 = getelementptr inbounds ptr, ptr %47, i64 %0
  store ptr @PL_padname_undef, ptr %48, align 8, !tbaa !116
  br label %49

49:                                               ; preds = %45, %37
  %50 = trunc i64 %0 to i32
  %51 = load i32, ptr @PL_constpadix, align 4, !tbaa !129
  %52 = icmp sgt i32 %51, %50
  br i1 %52, label %53, label %55, !prof !355

53:                                               ; preds = %49
  %54 = add i32 %50, -1
  store i32 %54, ptr @PL_constpadix, align 4, !tbaa !129
  br label %55

55:                                               ; preds = %2, %53, %49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_tidy(i32 noundef %0) local_unnamed_addr #0 !prof !358 {
  %2 = load i8, ptr @PL_cv_has_eval, align 1, !tbaa !138, !range !243, !noundef !244
  %3 = icmp ne i8 %2, 0
  %4 = load i32, ptr @PL_perldb, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5, !prof !359
  br i1 %6, label %7, label %34, !prof !359

7:                                                ; preds = %1
  %8 = load ptr, ptr @PL_compcv, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10, !prof !360

10:                                               ; preds = %7
  %11 = load ptr, ptr @PL_compcv, align 8, !tbaa !116
  br label %12

12:                                               ; preds = %10, %28
  %13 = phi ptr [ %8, %10 ], [ %32, %28 ]
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %20, label %15, !prof !361

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !148
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !137
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %34, !prof !362

20:                                               ; preds = %15, %12
  %21 = load ptr, ptr %13, align 8, !tbaa !148
  %22 = getelementptr inbounds %struct.xpvcv, ptr %21, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !153
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !363

26:                                               ; preds = %20
  %27 = or i32 %23, 32
  store i32 %27, ptr %22, align 4, !tbaa !153
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i32, ptr %22, align 4, !tbaa !153
  %30 = or i32 %29, 16384
  store i32 %30, ptr %22, align 4, !tbaa !153
  %31 = getelementptr inbounds %struct.xpvcv, ptr %21, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %12, !prof !364, !llvm.loop !365

34:                                               ; preds = %15, %28, %7, %1
  %35 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %36 = load i64, ptr %35, align 8, !tbaa !133
  %37 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %38 = load ptr, ptr %37, align 8, !tbaa !246
  %39 = getelementptr inbounds %struct.xpvav, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !247
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %66, !prof !366

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.padnamelist, ptr %35, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !142
  %45 = icmp slt i64 %44, %40
  br i1 %45, label %46, label %48, !prof !144

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.padnamelist, ptr %35, i64 0, i32 1
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %40, ptr noundef nonnull %43, ptr noundef nonnull %47, ptr noundef nonnull %47) #12
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64, ptr %35, align 8, !tbaa !133
  %50 = icmp slt i64 %49, %40
  br i1 %50, label %51, label %58, !prof !145

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.padnamelist, ptr %35, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !132
  %54 = getelementptr inbounds ptr, ptr %53, i64 %49
  %55 = getelementptr inbounds ptr, ptr %54, i64 1
  %56 = sub nsw i64 %40, %49
  %57 = shl i64 %56, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %55, i8 0, i64 %57, i1 false), !prof !367
  store i64 %40, ptr %35, align 8, !tbaa !133
  br label %58

58:                                               ; preds = %51, %48
  %59 = getelementptr inbounds %struct.padnamelist, ptr %35, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !132
  %61 = getelementptr inbounds ptr, ptr %60, i64 %40
  %62 = load ptr, ptr %61, align 8, !tbaa !116
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64, !prof !134

64:                                               ; preds = %58
  tail call void @Perl_padname_free(ptr noundef nonnull %62)
  br label %65

65:                                               ; preds = %58, %64
  store ptr null, ptr %61, align 8, !tbaa !116
  br label %66

66:                                               ; preds = %65, %34
  switch i32 %0, label %132 [
    i32 1, label %67
    i32 0, label %124
  ], !prof !368

67:                                               ; preds = %66
  %68 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %69 = getelementptr inbounds %struct.padnamelist, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !132
  %71 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %72 = load ptr, ptr %71, align 8, !tbaa !246
  %73 = getelementptr inbounds %struct.xpvav, ptr %72, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !247
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %132, label %76, !prof !369

76:                                               ; preds = %67, %121
  %77 = phi i64 [ %122, %121 ], [ %74, %67 ]
  %78 = getelementptr inbounds ptr, ptr %70, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !116
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82, !prof !370

81:                                               ; preds = %76
  store ptr @PL_padname_undef, ptr %78, align 8, !tbaa !116
  br label %82

82:                                               ; preds = %81, %76
  %83 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %84 = getelementptr inbounds ptr, ptr %83, i64 %77
  %85 = load ptr, ptr %84, align 8, !tbaa !116
  %86 = icmp eq ptr %85, null
  br i1 %86, label %121, label %87, !prof !371

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !166
  %90 = and i32 %89, 134283264
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92, !prof !372

92:                                               ; preds = %87
  %93 = icmp eq ptr %85, @PL_sv_undef
  %94 = icmp eq ptr %85, @PL_sv_yes
  %95 = or i1 %93, %94
  %96 = icmp eq ptr %85, @PL_sv_no
  %97 = or i1 %96, %95
  %98 = icmp eq ptr %85, @PL_sv_placeholder
  %99 = or i1 %98, %97
  br i1 %99, label %121, label %100

100:                                              ; preds = %92, %87
  %101 = load ptr, ptr %78, align 8, !tbaa !116
  %102 = load ptr, ptr %101, align 8, !tbaa !175
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104, !prof !370

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.padname, ptr %101, i64 0, i32 7
  %106 = load i8, ptr %105, align 8, !tbaa !213
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %121, label %108, !prof !373

108:                                              ; preds = %104
  %109 = load i8, ptr %102, align 1, !tbaa !137
  %110 = icmp eq i8 %109, 38
  br i1 %110, label %121, label %111, !prof !373

111:                                              ; preds = %100, %108
  %112 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !182
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %115, label %117, !prof !371

115:                                              ; preds = %111
  %116 = add i32 %113, -1
  store i32 %116, ptr %112, align 8, !tbaa !182
  br label %118

117:                                              ; preds = %111
  tail call void @Perl_sv_free2(ptr noundef nonnull %85, i32 noundef %113) #12
  br label %118

118:                                              ; preds = %115, %117
  %119 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %120 = getelementptr inbounds ptr, ptr %119, i64 %77
  store ptr null, ptr %120, align 8, !tbaa !116
  br label %121

121:                                              ; preds = %104, %108, %118, %82, %92
  %122 = add i64 %77, -1
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %132, label %76, !prof !374, !llvm.loop !375

124:                                              ; preds = %66
  %125 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  %126 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %127 = tail call ptr @Perl_av_store(ptr noundef %126, i64 noundef 0, ptr noundef %125) #12
  %128 = getelementptr inbounds %struct.av, ptr %125, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !123
  %130 = and i32 %129, 1073741823
  %131 = or disjoint i32 %130, -2147483648
  store i32 %131, ptr %128, align 4, !tbaa !123
  br label %132

132:                                              ; preds = %121, %67, %66, %124
  %133 = and i32 %0, -3
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %185, !prof !376

135:                                              ; preds = %132
  %136 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !116
  %137 = getelementptr inbounds %struct.padnamelist, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !132
  %139 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %140 = load ptr, ptr %139, align 8, !tbaa !246
  %141 = getelementptr inbounds %struct.xpvav, ptr %140, i64 0, i32 2
  %142 = load i64, ptr %141, align 8, !tbaa !247
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %185, label %144, !prof !377

144:                                              ; preds = %135, %182
  %145 = phi i64 [ %183, %182 ], [ %142, %135 ]
  %146 = getelementptr inbounds ptr, ptr %138, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !116
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %150, !prof !378

149:                                              ; preds = %144
  store ptr @PL_padname_undef, ptr %146, align 8, !tbaa !116
  br label %150

150:                                              ; preds = %149, %144
  %151 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %152 = getelementptr inbounds ptr, ptr %151, i64 %145
  %153 = load ptr, ptr %152, align 8, !tbaa !116
  %154 = icmp eq ptr %153, null
  br i1 %154, label %182, label %155, !prof !379

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !166
  %158 = and i32 %157, 134283264
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %171, label %160, !prof !380

160:                                              ; preds = %155
  %161 = icmp eq ptr %153, @PL_sv_undef
  %162 = icmp eq ptr %153, @PL_sv_yes
  %163 = or i1 %161, %162
  %164 = icmp eq ptr %153, @PL_sv_no
  %165 = or i1 %164, %163
  %166 = icmp eq ptr %153, @PL_sv_placeholder
  %167 = or i1 %166, %165
  %168 = and i32 %157, 131072
  %169 = icmp ne i32 %168, 0
  %170 = or i1 %167, %169
  br i1 %170, label %182, label %174, !prof !381

171:                                              ; preds = %155
  %172 = and i32 %157, 131072
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %182, !prof !382

174:                                              ; preds = %160, %171
  %175 = load ptr, ptr %146, align 8, !tbaa !116
  %176 = getelementptr inbounds %struct.padname, ptr %175, i64 0, i32 8
  %177 = load i8, ptr %176, align 1, !tbaa !220
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %182, !prof !383

180:                                              ; preds = %174
  %181 = or i32 %157, 262144
  store i32 %181, ptr %156, align 4, !tbaa !166
  br label %182

182:                                              ; preds = %171, %174, %180, %150, %160
  %183 = add i64 %145, -1
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %144, !prof !384, !llvm.loop !385

185:                                              ; preds = %182, %135, %132
  %186 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %187 = getelementptr inbounds %struct.av, ptr %186, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !137
  store ptr %188, ptr @PL_curpad, align 8, !tbaa !116
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_free(i64 noundef %0) local_unnamed_addr #0 !prof !386 {
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4, !prof !387

4:                                                ; preds = %1
  %5 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.av, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %10, label %9, !prof !388

9:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef %7, ptr noundef nonnull %2) #12
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp eq i64 %0, 0
  br i1 %11, label %12, label %13, !prof !389

12:                                               ; preds = %10
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #12
  br label %13

13:                                               ; preds = %12, %10
  %14 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %15 = getelementptr inbounds ptr, ptr %14, i64 %0
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  %17 = icmp ne ptr %16, null
  %18 = icmp ne ptr %16, @PL_sv_undef
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %27, !prof !390

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !166
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !391

25:                                               ; preds = %20
  %26 = and i32 %22, -131073
  store i32 %26, ptr %21, align 4, !tbaa !166
  br label %27

27:                                               ; preds = %25, %20, %13
  %28 = trunc i64 %0 to i32
  %29 = load i32, ptr @PL_padix, align 4, !tbaa !129
  %30 = icmp sgt i32 %29, %28
  br i1 %30, label %31, label %33, !prof !392

31:                                               ; preds = %27
  %32 = add i32 %28, -1
  store i32 %32, ptr @PL_padix, align 4, !tbaa !129
  br label %33

33:                                               ; preds = %27, %31, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_dump_pad(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !140 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %96, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.padlist, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds ptr, ptr %8, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct.padnamelist, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.av, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = ptrtoint ptr %9 to i64
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %11 to i64
  %19 = ptrtoint ptr %15 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.11, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19) #12
  %20 = load i64, ptr %9, align 8, !tbaa !133
  %21 = icmp slt i64 %20, 1
  br i1 %21, label %96, label %22

22:                                               ; preds = %6
  %23 = add nsw i32 %0, 1
  %24 = add nsw i32 %0, 1
  %25 = icmp eq i32 %3, 0
  %26 = add nsw i32 %0, 1
  br label %27

27:                                               ; preds = %22, %92
  %28 = phi i64 [ 1, %22 ], [ %93, %92 ]
  %29 = getelementptr inbounds ptr, ptr %13, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.padname, ptr %30, i64 0, i32 7
  %34 = load i8, ptr %33, align 8, !tbaa !213
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, ptr null, ptr %30
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi ptr [ %36, %32 ], [ null, %27 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 8
  %42 = load i8, ptr %41, align 1, !tbaa !220
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds ptr, ptr %15, i64 %28
  %46 = load ptr, ptr %45, align 8, !tbaa !116
  %47 = ptrtoint ptr %46 to i64
  %48 = icmp eq ptr %46, null
  br i1 %44, label %64, label %49

49:                                               ; preds = %40
  br i1 %48, label %53, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !182
  br label %53

53:                                               ; preds = %49, %50
  %54 = phi i32 [ %52, %50 ], [ 0, %49 ]
  %55 = zext i32 %54 to i64
  %56 = load ptr, ptr %38, align 8, !tbaa !175
  %57 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !224
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !222
  %62 = zext i32 %61 to i64
  %63 = trunc i64 %28 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %23, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %63, i64 noundef %47, i64 noundef %55, ptr noundef %56, i64 noundef %59, i64 noundef %62) #12
  br label %92

64:                                               ; preds = %40
  br i1 %48, label %68, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !182
  br label %68

68:                                               ; preds = %64, %65
  %69 = phi i32 [ %67, %65 ], [ 0, %64 ]
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !222
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.padname, ptr %38, i64 0, i32 4
  %75 = load i32, ptr %74, align 4, !tbaa !224
  %76 = zext i32 %75 to i64
  %77 = load ptr, ptr %38, align 8, !tbaa !175
  %78 = trunc i64 %28 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %24, ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %78, i64 noundef %47, i64 noundef %70, i64 noundef %73, i64 noundef %76, ptr noundef %77) #12
  br label %92

79:                                               ; preds = %37
  br i1 %25, label %92, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds ptr, ptr %15, i64 %28
  %82 = load ptr, ptr %81, align 8, !tbaa !116
  %83 = ptrtoint ptr %82 to i64
  %84 = icmp eq ptr %82, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !182
  br label %88

88:                                               ; preds = %80, %85
  %89 = phi i32 [ %87, %85 ], [ 0, %80 ]
  %90 = zext i32 %89 to i64
  %91 = trunc i64 %28 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %26, ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %91, i64 noundef %83, i64 noundef %90) #12
  br label %92

92:                                               ; preds = %79, %88, %53, %68
  %93 = add nuw i64 %28, 1
  %94 = load i64, ptr %9, align 8, !tbaa !133
  %95 = icmp slt i64 %94, %93
  br i1 %95, label %96, label %27, !llvm.loop !393

96:                                               ; preds = %92, %6, %4
  ret void
}

declare void @Perl_dump_indent(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_cv_clone(ptr noundef %0) local_unnamed_addr #3 !prof !394 {
  %2 = load ptr, ptr %0, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !395

6:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15) #12
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call fastcc ptr @S_cv_clone(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_cv_clone(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !394 !PGOFuncName !396 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %13, !prof !397

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !184
  %11 = and i32 %10, 255
  %12 = tail call ptr @Perl_newSV_type(i32 noundef %11) #12
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi ptr [ %1, %4 ], [ %12, %8 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !148
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !153
  %18 = and i32 %17, -3185
  %19 = load ptr, ptr %14, align 8, !tbaa !148
  %20 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 12
  %21 = or disjoint i32 %18, 64
  store i32 %21, ptr %20, align 4, !tbaa !153
  %22 = load i32, ptr %16, align 4, !tbaa !153
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !150
  br i1 %24, label %29, label %27, !prof !397

27:                                               ; preds = %13
  %28 = tail call ptr @Perl_savepv(ptr noundef %26) #12
  br label %29

29:                                               ; preds = %13, %27
  %30 = phi ptr [ %28, %27 ], [ %26, %13 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !148
  %32 = getelementptr inbounds %struct.xpvcv, ptr %31, i64 0, i32 8
  store ptr %30, ptr %32, align 8, !tbaa !150
  %33 = load ptr, ptr %0, align 8, !tbaa !148
  %34 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 12
  %35 = load i32, ptr %34, align 4, !tbaa !153
  %36 = and i32 %35, 32768
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %79, label %38, !prof !397

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.xpvcv, ptr %31, i64 0, i32 12
  %40 = load i32, ptr %39, align 4, !tbaa !153
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.xpvcv, ptr %31, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !137
  br label %46

46:                                               ; preds = %38, %43
  %47 = phi ptr [ %45, %43 ], [ null, %38 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.xpvcv, ptr %31, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !137
  tail call void @Perl_unshare_hek(ptr noundef %51) #12
  br label %52

52:                                               ; preds = %46, %49
  %53 = load ptr, ptr %0, align 8, !tbaa !148
  %54 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 12
  %55 = load i32, ptr %54, align 4, !tbaa !153
  %56 = and i32 %55, 32768
  %57 = icmp ne i32 %56, 0
  tail call void @llvm.assume(i1 %57)
  %58 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !137
  %60 = getelementptr inbounds i8, ptr %59, i64 -8
  %61 = load i64, ptr %60, align 8, !tbaa !137
  %62 = add i64 %61, 1
  store i64 %62, ptr %60, align 8, !tbaa !137
  %63 = load ptr, ptr %0, align 8, !tbaa !148
  %64 = getelementptr inbounds %struct.xpvcv, ptr %63, i64 0, i32 12
  %65 = load i32, ptr %64, align 4, !tbaa !153
  %66 = and i32 %65, 32768
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.xpvcv, ptr %63, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !137
  br label %71

71:                                               ; preds = %52, %68
  %72 = phi ptr [ %70, %68 ], [ null, %52 ]
  %73 = load ptr, ptr %14, align 8, !tbaa !148
  %74 = getelementptr inbounds %struct.xpvcv, ptr %73, i64 0, i32 7
  store ptr %72, ptr %74, align 8, !tbaa !137
  %75 = load ptr, ptr %14, align 8, !tbaa !148
  %76 = getelementptr inbounds %struct.xpvcv, ptr %75, i64 0, i32 12
  %77 = load i32, ptr %76, align 4, !tbaa !153
  %78 = or i32 %77, 32768
  store i32 %78, ptr %76, align 4, !tbaa !153
  br label %82

79:                                               ; preds = %29
  %80 = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !137
  tail call void @Perl_cvgv_set(ptr noundef nonnull %14, ptr noundef %81) #12
  br label %82

82:                                               ; preds = %79, %71
  %83 = load ptr, ptr %0, align 8, !tbaa !148
  %84 = getelementptr inbounds %struct.xpvcv, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !398
  tail call void @Perl_cvstash_set(ptr noundef nonnull %14, ptr noundef %85) #12
  %86 = load ptr, ptr %0, align 8, !tbaa !148
  %87 = getelementptr inbounds %struct.xpvcv, ptr %86, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !137
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90, !prof !395

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.op, ptr %88, i64 0, i32 3
  %92 = load i64, ptr %91, align 8, !tbaa !351
  %93 = add i64 %92, 1
  store i64 %93, ptr %91, align 8, !tbaa !351
  %94 = load ptr, ptr %87, align 8, !tbaa !137
  br label %95

95:                                               ; preds = %82, %90
  %96 = phi ptr [ %94, %90 ], [ null, %82 ]
  %97 = load ptr, ptr %14, align 8, !tbaa !148
  %98 = getelementptr inbounds %struct.xpvcv, ptr %97, i64 0, i32 6
  store ptr %96, ptr %98, align 8, !tbaa !137
  %99 = load ptr, ptr %0, align 8, !tbaa !148
  %100 = getelementptr inbounds %struct.xpvcv, ptr %99, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !137
  %102 = load ptr, ptr %14, align 8, !tbaa !148
  %103 = getelementptr inbounds %struct.xpvcv, ptr %102, i64 0, i32 5
  store ptr %101, ptr %103, align 8, !tbaa !137
  %104 = load ptr, ptr %0, align 8, !tbaa !148
  %105 = getelementptr inbounds %struct.xpvcv, ptr %104, i64 0, i32 11
  %106 = load i32, ptr %105, align 8, !tbaa !172
  %107 = load ptr, ptr %14, align 8, !tbaa !148
  %108 = getelementptr inbounds %struct.xpvcv, ptr %107, i64 0, i32 11
  store i32 %106, ptr %108, align 8, !tbaa !172
  %109 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !184
  %111 = and i32 %110, 1024
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %125, label %113, !prof !205

113:                                              ; preds = %95
  %114 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !137
  %116 = getelementptr inbounds %struct.xpv, ptr %104, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !259
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %14, ptr noundef %115, i64 noundef %117) #12
  %118 = load i32, ptr %109, align 4, !tbaa !184
  %119 = and i32 %118, 536870912
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121, !prof !185

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !166
  %124 = or i32 %123, 536870912
  store i32 %124, ptr %122, align 4, !tbaa !166
  br label %125

125:                                              ; preds = %113, %121, %95
  %126 = load ptr, ptr %0, align 8, !tbaa !148
  %127 = getelementptr inbounds %struct.xpvmg, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !137
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130, !prof !397

130:                                              ; preds = %125
  %131 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef null, i32 noundef 0) #12
  br label %132

132:                                              ; preds = %130, %125
  %133 = load ptr, ptr %0, align 8, !tbaa !148
  %134 = getelementptr inbounds %struct.xpvcv, ptr %133, i64 0, i32 9
  %135 = load ptr, ptr %134, align 8, !tbaa !137
  %136 = icmp eq ptr %135, null
  br i1 %136, label %795, label %137, !prof !395

137:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %14, ptr %5, align 8, !tbaa !116
  %138 = getelementptr inbounds %struct.padlist, ptr %135, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !136
  %140 = load ptr, ptr %139, align 8, !tbaa !116
  %141 = getelementptr inbounds ptr, ptr %139, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !116
  %143 = getelementptr inbounds %struct.padnamelist, ptr %140, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !132
  %145 = getelementptr inbounds %struct.av, ptr %142, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !137
  %147 = load i64, ptr %140, align 8, !tbaa !133
  %148 = load ptr, ptr %142, align 8, !tbaa !246
  %149 = getelementptr inbounds %struct.xpvav, ptr %148, i64 0, i32 2
  %150 = load i64, ptr %149, align 8, !tbaa !247
  %151 = trunc i64 %150 to i32
  %152 = icmp eq ptr %2, null
  br i1 %152, label %153, label %183, !prof !397

153:                                              ; preds = %137
  %154 = getelementptr inbounds %struct.xpvcv, ptr %133, i64 0, i32 12
  %155 = load i32, ptr %154, align 4, !tbaa !153
  %156 = and i32 %155, 16
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158, !prof !395

158:                                              ; preds = %153
  %159 = tail call ptr @Perl_find_runcv(ptr noundef null) #12
  br label %183

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.xpvcv, ptr %133, i64 0, i32 10
  %162 = load ptr, ptr %161, align 8, !tbaa !171
  %163 = load ptr, ptr %162, align 8, !tbaa !148
  %164 = getelementptr inbounds %struct.xpvcv, ptr %163, i64 0, i32 12
  %165 = load i32, ptr %164, align 4, !tbaa !153
  %166 = and i32 %165, 96
  %167 = icmp eq i32 %166, 32
  br i1 %167, label %178, label %168

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.xpvcv, ptr %163, i64 0, i32 9
  %170 = load ptr, ptr %169, align 8, !tbaa !137
  %171 = icmp eq ptr %170, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.padlist, ptr %170, i64 0, i32 2
  %174 = load i32, ptr %173, align 8, !tbaa !130
  %175 = getelementptr inbounds %struct.padlist, ptr %135, i64 0, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !399
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %183, label %178

178:                                              ; preds = %172, %168, %160
  %179 = getelementptr inbounds %struct.padlist, ptr %135, i64 0, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !399
  %181 = zext i32 %180 to i64
  %182 = tail call ptr @Perl_find_runcv_where(i8 noundef zeroext 1, i64 noundef %181, ptr noundef null) #12
  br label %183

183:                                              ; preds = %178, %172, %158, %137
  %184 = phi ptr [ %2, %137 ], [ %159, %158 ], [ %182, %178 ], [ %162, %172 ]
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186, !prof !395

186:                                              ; preds = %183
  %187 = load ptr, ptr %184, align 8, !tbaa !148
  %188 = getelementptr inbounds %struct.xpvcv, ptr %187, i64 0, i32 13
  %189 = load i32, ptr %188, align 4, !tbaa !129
  br label %190

190:                                              ; preds = %186, %183
  %191 = phi i32 [ %189, %186 ], [ 0, %183 ]
  %192 = tail call i32 @llvm.umax.i32(i32 %191, i32 1)
  %193 = sext i32 %192 to i64
  tail call void @Perl_push_scope() #12
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_compcv) #12
  %194 = load ptr, ptr %5, align 8, !tbaa !116
  store ptr %194, ptr @PL_compcv, align 8, !tbaa !116
  br i1 %7, label %195, label %196, !prof !397

195:                                              ; preds = %190
  tail call void @Perl_save_pushptr(ptr noundef %194, i32 noundef 11) #12
  br label %196

196:                                              ; preds = %195, %190
  %197 = load ptr, ptr %5, align 8, !tbaa !116
  %198 = load ptr, ptr %197, align 8, !tbaa !148
  %199 = getelementptr inbounds %struct.xpvcv, ptr %198, i64 0, i32 12
  %200 = load i32, ptr %199, align 4, !tbaa !153
  %201 = and i32 %200, 16384
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %210, label %203, !prof !397

203:                                              ; preds = %196
  br i1 %185, label %208, label %204

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct.sv, ptr %184, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !182
  %207 = add i32 %206, 1
  store i32 %207, ptr %205, align 8, !tbaa !182
  br label %208

208:                                              ; preds = %203, %204
  %209 = getelementptr inbounds %struct.xpvcv, ptr %198, i64 0, i32 10
  store ptr %184, ptr %209, align 8, !tbaa !171
  br label %210

210:                                              ; preds = %208, %196
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_comppad_name) #12
  store ptr %140, ptr @PL_comppad_name, align 8, !tbaa !116
  %211 = tail call ptr @Perl_pad_new(i32 noundef 3)
  %212 = load ptr, ptr %5, align 8, !tbaa !116
  %213 = load ptr, ptr %212, align 8, !tbaa !148
  %214 = getelementptr inbounds %struct.xpvcv, ptr %213, i64 0, i32 9
  store ptr %211, ptr %214, align 8, !tbaa !137
  %215 = getelementptr inbounds %struct.padlist, ptr %135, i64 0, i32 2
  %216 = load i32, ptr %215, align 8, !tbaa !130
  %217 = load ptr, ptr %212, align 8, !tbaa !148
  %218 = getelementptr inbounds %struct.xpvcv, ptr %217, i64 0, i32 9
  %219 = load ptr, ptr %218, align 8, !tbaa !137
  %220 = getelementptr inbounds %struct.padlist, ptr %219, i64 0, i32 2
  store i32 %216, ptr %220, align 8, !tbaa !130
  %221 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %222 = shl i64 %150, 32
  %223 = ashr exact i64 %222, 32
  tail call void @Perl_av_fill(ptr noundef %221, i64 noundef %223) #12
  %224 = load ptr, ptr @PL_comppad, align 8, !tbaa !116
  %225 = getelementptr inbounds %struct.av, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !137
  store ptr %226, ptr @PL_curpad, align 8, !tbaa !116
  br i1 %185, label %239, label %227, !prof !395

227:                                              ; preds = %210
  %228 = load ptr, ptr %184, align 8, !tbaa !148
  %229 = getelementptr inbounds %struct.xpvcv, ptr %228, i64 0, i32 9
  %230 = load ptr, ptr %229, align 8, !tbaa !137
  %231 = icmp eq ptr %230, null
  br i1 %231, label %239, label %232, !prof !395

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.padlist, ptr %230, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !136
  %235 = getelementptr inbounds ptr, ptr %234, i64 %193
  %236 = load ptr, ptr %235, align 8, !tbaa !116
  %237 = getelementptr inbounds %struct.av, ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !137
  br label %239

239:                                              ; preds = %232, %227, %210
  %240 = phi ptr [ %238, %232 ], [ null, %227 ], [ null, %210 ]
  %241 = icmp eq ptr %240, null
  br i1 %241, label %253, label %242, !prof !395

242:                                              ; preds = %239
  %243 = load ptr, ptr %184, align 8, !tbaa !148
  %244 = getelementptr inbounds %struct.xpvcv, ptr %243, i64 0, i32 9
  %245 = load ptr, ptr %244, align 8, !tbaa !137
  %246 = getelementptr inbounds %struct.padlist, ptr %245, i64 0, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !130
  %248 = load ptr, ptr %5, align 8, !tbaa !116
  %249 = load ptr, ptr %248, align 8, !tbaa !148
  %250 = getelementptr inbounds %struct.xpvcv, ptr %249, i64 0, i32 9
  %251 = load ptr, ptr %250, align 8, !tbaa !137
  %252 = getelementptr inbounds %struct.padlist, ptr %251, i64 0, i32 3
  store i32 %247, ptr %252, align 4, !tbaa !399
  br label %253

253:                                              ; preds = %242, %239
  %254 = icmp sgt i32 %151, 0
  br i1 %254, label %255, label %472, !prof !400

255:                                              ; preds = %253
  %256 = and i64 %150, 4294967295
  %257 = shl i64 %147, 32
  %258 = ashr exact i64 %257, 32
  br label %259

259:                                              ; preds = %255, %464
  %260 = phi i64 [ %256, %255 ], [ %470, %464 ]
  %261 = phi i32 [ 0, %255 ], [ %467, %464 ]
  %262 = phi i8 [ 0, %255 ], [ %466, %464 ]
  %263 = icmp sgt i64 %260, %258
  br i1 %263, label %267, label %264, !prof !401

264:                                              ; preds = %259
  %265 = getelementptr inbounds ptr, ptr %144, i64 %260
  %266 = load ptr, ptr %265, align 8, !tbaa !116
  br label %267

267:                                              ; preds = %264, %259
  %268 = phi ptr [ %266, %264 ], [ null, %259 ]
  %269 = icmp eq ptr %268, null
  br i1 %269, label %459, label %270, !prof !401

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.padname, ptr %268, i64 0, i32 7
  %272 = load i8, ptr %271, align 8, !tbaa !213
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %450, label %274, !prof !402

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.padname, ptr %268, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !228
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %464, !prof !403

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.padname, ptr %268, i64 0, i32 8
  %280 = load i8, ptr %279, align 1, !tbaa !220
  %281 = zext i8 %280 to i32
  %282 = and i32 %281, 1
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %316, label %284, !prof !404

284:                                              ; preds = %278
  br i1 %241, label %306, label %285, !prof !405

285:                                              ; preds = %284
  %286 = getelementptr inbounds %struct.padname, ptr %268, i64 0, i32 3
  %287 = load i32, ptr %286, align 8, !tbaa !222
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds ptr, ptr %240, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !116
  %291 = icmp eq ptr %290, null
  br i1 %291, label %306, label %292, !prof !405

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.sv, ptr %290, i64 0, i32 2
  %294 = load i32, ptr %293, align 4, !tbaa !166
  %295 = and i32 %294, 262144
  %296 = icmp ne i32 %295, 0
  %297 = and i32 %281, 2
  %298 = icmp eq i32 %297, 0
  %299 = and i1 %298, %296
  br i1 %299, label %300, label %312, !prof !405

300:                                              ; preds = %292
  br i1 %185, label %306, label %301

301:                                              ; preds = %300
  %302 = load ptr, ptr %184, align 8, !tbaa !148
  %303 = getelementptr inbounds %struct.xpvcv, ptr %302, i64 0, i32 13
  %304 = load i32, ptr %303, align 4, !tbaa !129
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %301, %300, %285, %284
  %307 = load ptr, ptr %268, align 8, !tbaa !175
  %308 = load i8, ptr %307, align 1, !tbaa !137
  %309 = icmp eq i8 %308, 38
  %310 = select i1 %309, ptr @.str.29, ptr @.str.30
  %311 = zext i8 %272 to i64
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %310, i32 noundef 1, i64 noundef %311, ptr noundef nonnull %307) #12
  br label %316

312:                                              ; preds = %301, %292
  %313 = getelementptr inbounds %struct.sv, ptr %290, i64 0, i32 1
  %314 = load i32, ptr %313, align 8, !tbaa !182
  %315 = add i32 %314, 1
  store i32 %315, ptr %313, align 8, !tbaa !182
  br label %316

316:                                              ; preds = %312, %306, %278
  %317 = phi ptr [ %290, %312 ], [ null, %306 ], [ null, %278 ]
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %464, !prof !404

319:                                              ; preds = %316
  %320 = load ptr, ptr %268, align 8, !tbaa !175
  %321 = load i8, ptr %320, align 1, !tbaa !137
  switch i8 %321, label %435 [
    i8 38, label %322
    i8 64, label %431
    i8 37, label %433
  ], !prof !406

322:                                              ; preds = %319
  %323 = load i8, ptr %279, align 1, !tbaa !220
  %324 = and i8 %323, 2
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %345, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds ptr, ptr %146, i64 %260
  %328 = load ptr, ptr %327, align 8, !tbaa !116
  %329 = load ptr, ptr %328, align 8, !tbaa !258
  %330 = getelementptr inbounds %struct.xpvcv, ptr %329, i64 0, i32 12
  %331 = load i32, ptr %330, align 4, !tbaa !153
  %332 = and i32 %331, 64
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %326
  %335 = add i32 %261, 1
  %336 = getelementptr inbounds %struct.xpvcv, ptr %329, i64 0, i32 10
  %337 = load ptr, ptr %336, align 8, !tbaa !171
  %338 = icmp eq ptr %337, %0
  %339 = select i1 %338, i8 %262, i8 1
  %340 = tail call ptr @Perl_newSV_type(i32 noundef 13) #12
  %341 = load ptr, ptr %340, align 8, !tbaa !258
  %342 = getelementptr inbounds %struct.xpvcv, ptr %341, i64 0, i32 12
  %343 = load i32, ptr %342, align 4, !tbaa !153
  %344 = or i32 %343, 65536
  store i32 %344, ptr %342, align 4, !tbaa !153
  br label %437

345:                                              ; preds = %326, %322
  %346 = load i8, ptr %271, align 8, !tbaa !213
  %347 = zext i8 %346 to i64
  %348 = icmp ugt i8 %346, 1
  br i1 %348, label %349, label %423

349:                                              ; preds = %345
  %350 = load ptr, ptr %275, align 8, !tbaa !228
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %423

352:                                              ; preds = %349
  %353 = add nuw nsw i64 %347, 4294967295
  %354 = and i64 %353, 4294967295
  %355 = getelementptr i8, ptr %320, i64 %354
  %356 = trunc i64 %353 to i32
  %357 = add nuw nsw i32 %356, 544173908
  %358 = icmp eq i64 %354, 0
  br i1 %358, label %370, label %359

359:                                              ; preds = %352, %359
  %360 = phi i32 [ %368, %359 ], [ %357, %352 ]
  %361 = phi ptr [ %362, %359 ], [ %320, %352 ]
  %362 = getelementptr inbounds i8, ptr %361, i64 1
  %363 = mul i32 %360, 1025
  %364 = lshr i32 %363, 6
  %365 = xor i32 %364, %363
  %366 = load i8, ptr %362, align 1, !tbaa !137
  %367 = zext i8 %366 to i32
  %368 = add i32 %365, %367
  %369 = icmp ult ptr %362, %355
  br i1 %369, label %359, label %370, !llvm.loop !407

370:                                              ; preds = %359, %352
  %371 = phi i32 [ %357, %352 ], [ %368, %359 ]
  %372 = mul i32 %371, 1025
  %373 = lshr i32 %372, 6
  %374 = xor i32 %373, %372
  %375 = mul i32 %374, 1025
  %376 = add i32 %375, 73800
  %377 = lshr i32 %376, 6
  %378 = xor i32 %377, %376
  %379 = mul i32 %378, 1025
  %380 = add i32 %379, 113775
  %381 = lshr i32 %380, 6
  %382 = xor i32 %381, %380
  %383 = mul i32 %382, 1025
  %384 = add i32 %383, 118900
  %385 = lshr i32 %384, 6
  %386 = xor i32 %385, %384
  %387 = mul i32 %386, 1025
  %388 = add i32 %387, 32800
  %389 = lshr i32 %388, 6
  %390 = xor i32 %389, %388
  %391 = mul i32 %390, 9
  %392 = lshr i32 %391, 11
  %393 = xor i32 %392, %391
  %394 = mul i32 %393, 32769
  %395 = tail call ptr @Perl_newSV_type(i32 noundef 13) #12
  %396 = load ptr, ptr %395, align 8, !tbaa !148
  %397 = getelementptr inbounds %struct.xpvcv, ptr %396, i64 0, i32 12
  %398 = load i32, ptr %397, align 4, !tbaa !153
  %399 = and i32 %398, 32768
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %404, label %401

401:                                              ; preds = %370
  %402 = getelementptr inbounds %struct.xpvcv, ptr %396, i64 0, i32 7
  %403 = load ptr, ptr %402, align 8, !tbaa !137
  br label %404

404:                                              ; preds = %370, %401
  %405 = phi ptr [ %403, %401 ], [ null, %370 ]
  %406 = icmp eq ptr %405, null
  br i1 %406, label %410, label %407

407:                                              ; preds = %404
  %408 = getelementptr inbounds %struct.xpvcv, ptr %396, i64 0, i32 7
  %409 = load ptr, ptr %408, align 8, !tbaa !137
  tail call void @Perl_unshare_hek(ptr noundef %409) #12
  br label %410

410:                                              ; preds = %407, %404
  %411 = load ptr, ptr %268, align 8, !tbaa !175
  %412 = getelementptr inbounds i8, ptr %411, i64 1
  %413 = load i8, ptr %271, align 8, !tbaa !213
  %414 = zext i8 %413 to i32
  %415 = sub nsw i32 1, %414
  %416 = tail call ptr @Perl_share_hek(ptr noundef nonnull %412, i32 noundef %415, i32 noundef %394) #12
  %417 = load ptr, ptr %395, align 8, !tbaa !258
  %418 = getelementptr inbounds %struct.xpvcv, ptr %417, i64 0, i32 7
  store ptr %416, ptr %418, align 8, !tbaa !137
  %419 = load ptr, ptr %395, align 8, !tbaa !258
  %420 = getelementptr inbounds %struct.xpvcv, ptr %419, i64 0, i32 12
  %421 = load i32, ptr %420, align 4, !tbaa !153
  %422 = or i32 %421, 98304
  store i32 %422, ptr %420, align 4, !tbaa !153
  br label %437

423:                                              ; preds = %349, %345
  %424 = getelementptr inbounds ptr, ptr %146, i64 %260
  %425 = load ptr, ptr %424, align 8, !tbaa !116
  %426 = icmp eq ptr %425, null
  br i1 %426, label %437, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.sv, ptr %425, i64 0, i32 1
  %429 = load i32, ptr %428, align 8, !tbaa !182
  %430 = add i32 %429, 1
  store i32 %430, ptr %428, align 8, !tbaa !182
  br label %437

431:                                              ; preds = %319
  %432 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  br label %437

433:                                              ; preds = %319
  %434 = tail call ptr @Perl_newSV_type(i32 noundef 12) #12
  br label %437

435:                                              ; preds = %319
  %436 = tail call ptr @Perl_newSV(i64 noundef 0) #12
  br label %437

437:                                              ; preds = %427, %423, %435, %433, %431, %410, %334
  %438 = phi ptr [ %395, %410 ], [ %340, %334 ], [ %432, %431 ], [ %434, %433 ], [ %436, %435 ], [ %425, %423 ], [ %425, %427 ]
  %439 = phi i8 [ %262, %410 ], [ %339, %334 ], [ %262, %431 ], [ %262, %433 ], [ %262, %435 ], [ %262, %423 ], [ %262, %427 ]
  %440 = phi i32 [ %261, %410 ], [ %335, %334 ], [ %261, %431 ], [ %261, %433 ], [ %261, %435 ], [ %261, %423 ], [ %261, %427 ]
  %441 = icmp eq i8 %321, 38
  br i1 %441, label %464, label %442, !prof !408

442:                                              ; preds = %437
  %443 = load i8, ptr %279, align 1, !tbaa !220
  %444 = and i8 %443, 2
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %464, label %446, !prof !409

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.sv, ptr %438, i64 0, i32 2
  %448 = load i32, ptr %447, align 4, !tbaa !166
  %449 = or i32 %448, 262144
  store i32 %449, ptr %447, align 4, !tbaa !166
  br label %464

450:                                              ; preds = %270
  %451 = load ptr, ptr %268, align 8, !tbaa !175
  %452 = icmp eq ptr %451, null
  br i1 %452, label %459, label %453, !prof !410

453:                                              ; preds = %450
  %454 = getelementptr inbounds ptr, ptr %146, i64 %260
  %455 = load ptr, ptr %454, align 8, !tbaa !116
  %456 = getelementptr inbounds %struct.sv, ptr %455, i64 0, i32 1
  %457 = load i32, ptr %456, align 8, !tbaa !182
  %458 = add i32 %457, 1
  store i32 %458, ptr %456, align 8, !tbaa !182
  br label %464

459:                                              ; preds = %450, %267
  %460 = tail call ptr @Perl_newSV(i64 noundef 0) #12
  %461 = getelementptr inbounds %struct.sv, ptr %460, i64 0, i32 2
  %462 = load i32, ptr %461, align 4, !tbaa !166
  %463 = or i32 %462, 131072
  store i32 %463, ptr %461, align 4, !tbaa !166
  br label %464

464:                                              ; preds = %459, %453, %446, %442, %437, %316, %274
  %465 = phi ptr [ null, %274 ], [ %317, %316 ], [ %455, %453 ], [ %460, %459 ], [ %438, %446 ], [ %438, %442 ], [ %438, %437 ]
  %466 = phi i8 [ %262, %274 ], [ %262, %316 ], [ %262, %453 ], [ %262, %459 ], [ %439, %446 ], [ %439, %442 ], [ %439, %437 ]
  %467 = phi i32 [ %261, %274 ], [ %261, %316 ], [ %261, %453 ], [ %261, %459 ], [ %440, %446 ], [ %440, %442 ], [ %440, %437 ]
  %468 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %469 = getelementptr inbounds ptr, ptr %468, i64 %260
  store ptr %465, ptr %469, align 8, !tbaa !116
  %470 = add nsw i64 %260, -1
  %471 = icmp sgt i64 %260, 1
  br i1 %471, label %259, label %472, !prof !411, !llvm.loop !412

472:                                              ; preds = %464, %253
  %473 = phi i8 [ 0, %253 ], [ %466, %464 ]
  %474 = phi i32 [ 0, %253 ], [ %467, %464 ]
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %661, label %476, !prof !397

476:                                              ; preds = %472
  %477 = and i8 %473, 1
  %478 = icmp ne i8 %477, 0
  %479 = icmp ne ptr %3, null
  %480 = or i1 %479, %478
  br i1 %480, label %487, label %481

481:                                              ; preds = %476
  %482 = icmp sgt i32 %151, 0
  br i1 %482, label %483, label %661

483:                                              ; preds = %481
  %484 = and i64 %150, 4294967295
  %485 = shl i64 %147, 32
  %486 = ashr exact i64 %485, 32
  br label %626

487:                                              ; preds = %476
  br i1 %479, label %491, label %488

488:                                              ; preds = %487
  %489 = tail call ptr @Perl_newSV_type(i32 noundef 12) #12
  %490 = tail call ptr @Perl_sv_2mortal(ptr noundef %489) #12
  br label %491

491:                                              ; preds = %488, %487
  %492 = phi ptr [ %3, %487 ], [ %490, %488 ]
  %493 = icmp sgt i32 %151, 0
  %494 = and i64 %150, 4294967295
  %495 = shl i64 %147, 32
  %496 = ashr exact i64 %495, 32
  br label %497

497:                                              ; preds = %571, %491
  %498 = phi i32 [ %474, %491 ], [ %573, %571 ]
  br i1 %493, label %499, label %571

499:                                              ; preds = %497, %566
  %500 = phi i64 [ %569, %566 ], [ %494, %497 ]
  %501 = phi i32 [ %568, %566 ], [ %498, %497 ]
  %502 = phi i8 [ %567, %566 ], [ 0, %497 ]
  %503 = icmp sgt i64 %500, %496
  br i1 %503, label %507, label %504

504:                                              ; preds = %499
  %505 = getelementptr inbounds ptr, ptr %144, i64 %500
  %506 = load ptr, ptr %505, align 8, !tbaa !116
  br label %507

507:                                              ; preds = %504, %499
  %508 = phi ptr [ %506, %504 ], [ null, %499 ]
  %509 = icmp ne ptr %508, null
  %510 = icmp ne ptr %508, @PL_padname_undef
  %511 = and i1 %509, %510
  br i1 %511, label %512, label %566

512:                                              ; preds = %507
  %513 = getelementptr inbounds %struct.padname, ptr %508, i64 0, i32 8
  %514 = load i8, ptr %513, align 1, !tbaa !220
  %515 = zext i8 %514 to i32
  %516 = and i32 %515, 1
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %566

518:                                              ; preds = %512
  %519 = load ptr, ptr %508, align 8, !tbaa !175
  %520 = load i8, ptr %519, align 1, !tbaa !137
  %521 = icmp ne i8 %520, 38
  %522 = and i32 %515, 2
  %523 = icmp eq i32 %522, 0
  %524 = or i1 %523, %521
  br i1 %524, label %566, label %525

525:                                              ; preds = %518
  %526 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %527 = getelementptr inbounds ptr, ptr %526, i64 %500
  %528 = load ptr, ptr %527, align 8, !tbaa !116
  %529 = load ptr, ptr %528, align 8, !tbaa !258
  %530 = getelementptr inbounds %struct.xpvcv, ptr %529, i64 0, i32 12
  %531 = load i32, ptr %530, align 4, !tbaa !153
  %532 = and i32 %531, 64
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %566

534:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %535 = getelementptr inbounds ptr, ptr %146, i64 %500
  %536 = load ptr, ptr %535, align 8, !tbaa !116
  %537 = load ptr, ptr %536, align 8, !tbaa !258
  %538 = getelementptr inbounds %struct.xpvcv, ptr %537, i64 0, i32 10
  %539 = load ptr, ptr %538, align 8, !tbaa !171
  store ptr %539, ptr %6, align 8, !tbaa !116
  %540 = icmp eq ptr %539, %0
  br i1 %540, label %543, label %541

541:                                              ; preds = %534
  %542 = call ptr @Perl_hv_common_key_len(ptr noundef %492, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  br label %543

543:                                              ; preds = %541, %534
  %544 = phi ptr [ %542, %541 ], [ %5, %534 ]
  %545 = icmp eq ptr %544, null
  br i1 %545, label %563, label %546

546:                                              ; preds = %543
  %547 = load ptr, ptr %544, align 8, !tbaa !116
  %548 = icmp eq ptr %547, null
  br i1 %548, label %563, label %549

549:                                              ; preds = %546
  %550 = load ptr, ptr %535, align 8, !tbaa !116
  %551 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %552 = getelementptr inbounds ptr, ptr %551, i64 %500
  %553 = load ptr, ptr %552, align 8, !tbaa !116
  %554 = call fastcc ptr @S_cv_clone(ptr noundef %550, ptr noundef %553, ptr noundef nonnull %547, ptr noundef %492)
  %555 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %556 = getelementptr inbounds ptr, ptr %555, i64 %500
  %557 = load ptr, ptr %556, align 8, !tbaa !116
  %558 = getelementptr inbounds %struct.sv, ptr %557, i64 0, i32 1
  %559 = load i32, ptr %558, align 8, !tbaa !182
  %560 = add i32 %559, 1
  store i32 %560, ptr %558, align 8, !tbaa !182
  %561 = call ptr @Perl_hv_common_key_len(ptr noundef %492, ptr noundef nonnull %535, i32 noundef 8, i32 noundef 36, ptr noundef %557, i32 noundef 0) #12
  %562 = add i32 %501, -1
  br label %563

563:                                              ; preds = %549, %546, %543
  %564 = phi i8 [ 1, %549 ], [ %502, %546 ], [ %502, %543 ]
  %565 = phi i32 [ %562, %549 ], [ %501, %546 ], [ %501, %543 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %566

566:                                              ; preds = %563, %525, %518, %512, %507
  %567 = phi i8 [ %502, %512 ], [ %502, %525 ], [ %564, %563 ], [ %502, %518 ], [ %502, %507 ]
  %568 = phi i32 [ %501, %512 ], [ %501, %525 ], [ %565, %563 ], [ %501, %518 ], [ %501, %507 ]
  %569 = add nsw i64 %500, -1
  %570 = icmp sgt i64 %500, 1
  br i1 %570, label %499, label %571, !llvm.loop !413

571:                                              ; preds = %566, %497
  %572 = phi i8 [ 0, %497 ], [ %567, %566 ]
  %573 = phi i32 [ %498, %497 ], [ %568, %566 ]
  %574 = and i8 %572, 1
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %576, label %497, !llvm.loop !414

576:                                              ; preds = %571
  %577 = icmp ne i32 %573, 0
  %578 = icmp sgt i32 %151, 0
  %579 = select i1 %577, i1 %578, i1 false
  br i1 %579, label %580, label %661

580:                                              ; preds = %576
  %581 = shl i64 %147, 32
  %582 = ashr exact i64 %581, 32
  br label %583

583:                                              ; preds = %580, %623
  %584 = phi i64 [ %494, %580 ], [ %624, %623 ]
  %585 = icmp sgt i64 %584, %582
  br i1 %585, label %589, label %586

586:                                              ; preds = %583
  %587 = getelementptr inbounds ptr, ptr %144, i64 %584
  %588 = load ptr, ptr %587, align 8, !tbaa !116
  br label %589

589:                                              ; preds = %586, %583
  %590 = phi ptr [ %588, %586 ], [ null, %583 ]
  %591 = icmp ne ptr %590, null
  %592 = icmp ne ptr %590, @PL_padname_undef
  %593 = and i1 %591, %592
  br i1 %593, label %594, label %623

594:                                              ; preds = %589
  %595 = getelementptr inbounds %struct.padname, ptr %590, i64 0, i32 8
  %596 = load i8, ptr %595, align 1, !tbaa !220
  %597 = zext i8 %596 to i32
  %598 = and i32 %597, 1
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %623

600:                                              ; preds = %594
  %601 = load ptr, ptr %590, align 8, !tbaa !175
  %602 = load i8, ptr %601, align 1, !tbaa !137
  %603 = icmp ne i8 %602, 38
  %604 = and i32 %597, 2
  %605 = icmp eq i32 %604, 0
  %606 = or i1 %605, %603
  br i1 %606, label %623, label %607

607:                                              ; preds = %600
  %608 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %609 = getelementptr inbounds ptr, ptr %608, i64 %584
  %610 = load ptr, ptr %609, align 8, !tbaa !116
  %611 = load ptr, ptr %610, align 8, !tbaa !258
  %612 = getelementptr inbounds %struct.xpvcv, ptr %611, i64 0, i32 12
  %613 = load i32, ptr %612, align 4, !tbaa !153
  %614 = and i32 %613, 64
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %623

616:                                              ; preds = %607
  %617 = getelementptr inbounds ptr, ptr %146, i64 %584
  %618 = load ptr, ptr %617, align 8, !tbaa !116
  %619 = load ptr, ptr %618, align 8, !tbaa !258
  %620 = getelementptr inbounds %struct.xpvcv, ptr %619, i64 0, i32 10
  %621 = load ptr, ptr %620, align 8, !tbaa !171
  %622 = call fastcc ptr @S_cv_clone(ptr noundef nonnull %618, ptr noundef nonnull %610, ptr noundef %621, ptr noundef %492)
  br label %623

623:                                              ; preds = %616, %607, %600, %594, %589
  %624 = add nsw i64 %584, -1
  %625 = icmp sgt i64 %584, 1
  br i1 %625, label %583, label %661, !llvm.loop !415

626:                                              ; preds = %483, %658
  %627 = phi i64 [ %484, %483 ], [ %659, %658 ]
  %628 = icmp sgt i64 %627, %486
  br i1 %628, label %632, label %629

629:                                              ; preds = %626
  %630 = getelementptr inbounds ptr, ptr %144, i64 %627
  %631 = load ptr, ptr %630, align 8, !tbaa !116
  br label %632

632:                                              ; preds = %629, %626
  %633 = phi ptr [ %631, %629 ], [ null, %626 ]
  %634 = icmp ne ptr %633, null
  %635 = icmp ne ptr %633, @PL_padname_undef
  %636 = and i1 %634, %635
  br i1 %636, label %637, label %658

637:                                              ; preds = %632
  %638 = getelementptr inbounds %struct.padname, ptr %633, i64 0, i32 8
  %639 = load i8, ptr %638, align 1, !tbaa !220
  %640 = zext i8 %639 to i32
  %641 = and i32 %640, 1
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %658

643:                                              ; preds = %637
  %644 = load ptr, ptr %633, align 8, !tbaa !175
  %645 = load i8, ptr %644, align 1, !tbaa !137
  %646 = icmp ne i8 %645, 38
  %647 = and i32 %640, 2
  %648 = icmp eq i32 %647, 0
  %649 = or i1 %648, %646
  br i1 %649, label %658, label %650

650:                                              ; preds = %643
  %651 = getelementptr inbounds ptr, ptr %146, i64 %627
  %652 = load ptr, ptr %651, align 8, !tbaa !116
  %653 = load ptr, ptr @PL_curpad, align 8, !tbaa !116
  %654 = getelementptr inbounds ptr, ptr %653, i64 %627
  %655 = load ptr, ptr %654, align 8, !tbaa !116
  %656 = load ptr, ptr %5, align 8, !tbaa !116
  %657 = tail call fastcc ptr @S_cv_clone(ptr noundef %652, ptr noundef %655, ptr noundef %656, ptr noundef null)
  br label %658

658:                                              ; preds = %650, %643, %637, %632
  %659 = add nsw i64 %627, -1
  %660 = icmp sgt i64 %627, 1
  br i1 %660, label %626, label %661, !llvm.loop !416

661:                                              ; preds = %658, %623, %481, %576, %472
  br i1 %7, label %662, label %667, !prof !397

662:                                              ; preds = %661
  %663 = load ptr, ptr %5, align 8, !tbaa !116
  %664 = getelementptr inbounds %struct.sv, ptr %663, i64 0, i32 1
  %665 = load i32, ptr %664, align 8, !tbaa !182
  %666 = add i32 %665, 1
  store i32 %666, ptr %664, align 8, !tbaa !182
  br label %667

667:                                              ; preds = %662, %661
  call void @Perl_pop_scope() #12
  %668 = load ptr, ptr %5, align 8, !tbaa !116
  %669 = load ptr, ptr %668, align 8, !tbaa !148
  %670 = getelementptr inbounds %struct.xpvcv, ptr %669, i64 0, i32 12
  %671 = load i32, ptr %670, align 4, !tbaa !153
  %672 = and i32 %671, 4
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %793, label %674, !prof !205

674:                                              ; preds = %667
  %675 = getelementptr inbounds %struct.xpvcv, ptr %669, i64 0, i32 5
  br label %676

676:                                              ; preds = %680, %674
  %677 = phi ptr [ %675, %674 ], [ %678, %680 ]
  %678 = load ptr, ptr %677, align 8, !tbaa !137
  %679 = icmp eq ptr %678, null
  br i1 %679, label %685, label %680, !prof !417

680:                                              ; preds = %676
  %681 = getelementptr inbounds %struct.op, ptr %678, i64 0, i32 4
  %682 = load i16, ptr %681, align 8
  %683 = and i16 %682, 511
  %684 = icmp eq i16 %683, 9
  br i1 %684, label %685, label %676, !prof !418, !llvm.loop !419

685:                                              ; preds = %680, %676
  %686 = getelementptr inbounds %struct.xpvcv, ptr %669, i64 0, i32 9
  %687 = load ptr, ptr %686, align 8, !tbaa !137
  %688 = getelementptr inbounds %struct.padlist, ptr %687, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !136
  %690 = getelementptr inbounds ptr, ptr %689, i64 1
  %691 = load ptr, ptr %690, align 8, !tbaa !116
  %692 = icmp eq ptr %691, null
  br i1 %692, label %700, label %693, !prof !186

693:                                              ; preds = %685
  %694 = getelementptr inbounds %struct.av, ptr %691, i64 0, i32 3
  %695 = load ptr, ptr %694, align 8, !tbaa !137
  %696 = getelementptr inbounds %struct.op, ptr %678, i64 0, i32 3
  %697 = load i64, ptr %696, align 8, !tbaa !351
  %698 = getelementptr inbounds ptr, ptr %695, i64 %697
  %699 = load ptr, ptr %698, align 8, !tbaa !116
  br label %700

700:                                              ; preds = %693, %685
  %701 = phi ptr [ %699, %693 ], [ null, %685 ]
  %702 = icmp eq ptr %701, null
  br i1 %702, label %787, label %703, !prof !186

703:                                              ; preds = %700
  %704 = getelementptr inbounds %struct.sv, ptr %701, i64 0, i32 1
  %705 = load i32, ptr %704, align 8, !tbaa !182
  %706 = icmp eq i32 %705, 2
  br i1 %706, label %707, label %787, !prof !185

707:                                              ; preds = %703
  %708 = and i32 %671, 1
  %709 = icmp eq i32 %708, 0
  br i1 %185, label %756, label %710, !prof !186

710:                                              ; preds = %707
  %711 = load ptr, ptr %184, align 8, !tbaa !148
  %712 = getelementptr inbounds %struct.xpvcv, ptr %711, i64 0, i32 9
  %713 = load ptr, ptr %712, align 8, !tbaa !137
  %714 = getelementptr inbounds %struct.padlist, ptr %713, i64 0, i32 1
  %715 = load ptr, ptr %714, align 8, !tbaa !136
  %716 = load ptr, ptr %715, align 8, !tbaa !116
  %717 = getelementptr inbounds %struct.padnamelist, ptr %716, i64 0, i32 1
  %718 = load ptr, ptr %717, align 8, !tbaa !132
  %719 = load ptr, ptr %689, align 8, !tbaa !116
  %720 = getelementptr inbounds %struct.padnamelist, ptr %719, i64 0, i32 1
  %721 = load ptr, ptr %720, align 8, !tbaa !132
  %722 = getelementptr inbounds %struct.op, ptr %678, i64 0, i32 3
  %723 = load i64, ptr %722, align 8, !tbaa !351
  %724 = getelementptr inbounds ptr, ptr %721, i64 %723
  %725 = load ptr, ptr %724, align 8, !tbaa !116
  %726 = getelementptr inbounds %struct.padname, ptr %725, i64 0, i32 3
  %727 = load i32, ptr %726, align 8, !tbaa !222
  %728 = zext i32 %727 to i64
  %729 = getelementptr inbounds ptr, ptr %718, i64 %728
  %730 = load ptr, ptr %729, align 8, !tbaa !116
  %731 = getelementptr inbounds %struct.padname, ptr %730, i64 0, i32 8
  %732 = load i8, ptr %731, align 1, !tbaa !220
  %733 = and i8 %732, 4
  %734 = icmp ne i8 %733, 0
  br i1 %734, label %735, label %751, !prof !186

735:                                              ; preds = %710
  %736 = getelementptr inbounds %struct.xpvcv, ptr %669, i64 0, i32 6
  %737 = load ptr, ptr %736, align 8, !tbaa !137
  %738 = getelementptr inbounds %struct.unop, ptr %737, i64 0, i32 7
  %739 = load ptr, ptr %738, align 8, !tbaa !420
  %740 = getelementptr inbounds %struct.unop, ptr %739, i64 0, i32 7
  %741 = load ptr, ptr %740, align 8, !tbaa !420
  %742 = getelementptr inbounds %struct.op, ptr %741, i64 0, i32 1
  %743 = load ptr, ptr %742, align 8, !tbaa !422
  %744 = icmp eq ptr %743, %678
  br i1 %744, label %745, label %751

745:                                              ; preds = %735
  %746 = getelementptr inbounds %struct.op, ptr %678, i64 0, i32 1
  %747 = load ptr, ptr %746, align 8, !tbaa !422
  %748 = icmp eq ptr %747, null
  br i1 %748, label %749, label %751

749:                                              ; preds = %745
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.33) #12
  %750 = call ptr @Perl_newSVsv(ptr noundef nonnull %701) #12
  br label %751

751:                                              ; preds = %749, %745, %735, %710
  %752 = phi ptr [ %701, %745 ], [ %701, %735 ], [ %750, %749 ], [ %701, %710 ]
  %753 = phi i1 [ false, %745 ], [ false, %735 ], [ true, %749 ], [ %734, %710 ]
  %754 = phi i1 [ false, %745 ], [ false, %735 ], [ true, %749 ], [ true, %710 ]
  %755 = phi i32 [ 19, %745 ], [ 19, %735 ], [ 0, %749 ], [ 0, %710 ]
  br i1 %754, label %756, label %784, !prof !185

756:                                              ; preds = %751, %707
  %757 = phi ptr [ %752, %751 ], [ %701, %707 ]
  %758 = phi i1 [ %753, %751 ], [ false, %707 ]
  br i1 %758, label %763, label %759, !prof !186

759:                                              ; preds = %756
  %760 = getelementptr inbounds %struct.sv, ptr %757, i64 0, i32 1
  %761 = load i32, ptr %760, align 8, !tbaa !182
  %762 = add i32 %761, 1
  store i32 %762, ptr %760, align 8, !tbaa !182
  br label %763

763:                                              ; preds = %759, %756
  %764 = getelementptr inbounds %struct.sv, ptr %757, i64 0, i32 2
  %765 = load i32, ptr %764, align 4, !tbaa !166
  %766 = or i32 %765, 134414336
  store i32 %766, ptr %764, align 4, !tbaa !166
  %767 = load ptr, ptr %5, align 8, !tbaa !116
  %768 = getelementptr inbounds %struct.sv, ptr %767, i64 0, i32 1
  %769 = load i32, ptr %768, align 8, !tbaa !182
  %770 = icmp ugt i32 %769, 1
  br i1 %770, label %771, label %773, !prof !186

771:                                              ; preds = %763
  %772 = add i32 %769, -1
  store i32 %772, ptr %768, align 8, !tbaa !182
  br label %774

773:                                              ; preds = %763
  call void @Perl_sv_free2(ptr noundef %767, i32 noundef %769) #12
  br label %774

774:                                              ; preds = %771, %773
  %775 = load ptr, ptr %0, align 8, !tbaa !148
  %776 = getelementptr inbounds %struct.xpvcv, ptr %775, i64 0, i32 4
  %777 = load ptr, ptr %776, align 8, !tbaa !398
  %778 = call ptr @Perl_newCONSTSUB(ptr noundef %777, ptr noundef null, ptr noundef %757) #12
  store ptr %778, ptr %5, align 8, !tbaa !116
  br i1 %709, label %784, label %779, !prof !185

779:                                              ; preds = %774
  %780 = load ptr, ptr %778, align 8, !tbaa !148
  %781 = getelementptr inbounds %struct.xpvcv, ptr %780, i64 0, i32 12
  %782 = load i32, ptr %781, align 4, !tbaa !153
  %783 = or i32 %782, 1
  store i32 %783, ptr %781, align 4, !tbaa !153
  br label %784

784:                                              ; preds = %779, %774, %751
  %785 = phi i32 [ %755, %751 ], [ 0, %779 ], [ 0, %774 ]
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %793, label %787, !prof !185

787:                                              ; preds = %784, %703, %700
  %788 = load ptr, ptr %5, align 8, !tbaa !116
  %789 = load ptr, ptr %788, align 8, !tbaa !148
  %790 = getelementptr inbounds %struct.xpvcv, ptr %789, i64 0, i32 12
  %791 = load i32, ptr %790, align 4, !tbaa !153
  %792 = and i32 %791, -5
  store i32 %792, ptr %790, align 4, !tbaa !153
  br label %793

793:                                              ; preds = %667, %784, %787
  %794 = load ptr, ptr %5, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %795

795:                                              ; preds = %793, %132
  %796 = phi ptr [ %794, %793 ], [ %14, %132 ]
  ret ptr %796
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_cv_clone_into(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !140 {
  tail call void @Perl_cv_undef_flags(ptr noundef %1, i32 noundef 0)
  %3 = tail call fastcc ptr @S_cv_clone(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_cv_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !423 {
  %4 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !184
  %6 = and i32 %5, 49152
  %7 = icmp eq i32 %6, 32768
  %8 = and i32 %5, 255
  br i1 %7, label %9, label %15, !prof !424

9:                                                ; preds = %3
  %10 = add nsw i32 %8, -9
  %11 = icmp ult i32 %10, 2
  %12 = and i32 %5, 255
  %13 = icmp eq i32 %12, 13
  %14 = or i1 %13, %11
  br i1 %14, label %20, label %17, !prof !180

15:                                               ; preds = %3
  %16 = icmp eq i32 %8, 13
  br i1 %16, label %20, label %17, !prof !425

17:                                               ; preds = %9, %15
  %18 = icmp eq ptr %1, null
  br i1 %18, label %105, label %19

19:                                               ; preds = %17
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %1, ptr noundef %0, i32 noundef 1538) #12
  br label %105

20:                                               ; preds = %9, %15
  %21 = icmp eq ptr %1, null
  br i1 %21, label %22, label %24, !prof !425

22:                                               ; preds = %20
  %23 = tail call ptr @Perl_sv_newmortal() #12
  br label %24

24:                                               ; preds = %20, %22
  %25 = phi ptr [ %23, %22 ], [ %1, %20 ]
  %26 = load i32, ptr %4, align 4, !tbaa !184
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %29, label %97, !prof !425

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !148
  %31 = getelementptr inbounds %struct.xpvcv, ptr %30, i64 0, i32 12
  %32 = load i32, ptr %31, align 4, !tbaa !153
  %33 = and i32 %32, 32768
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %32, 65536
  %36 = and i32 %2, 1
  %37 = or disjoint i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %34, label %85, label %39, !prof !425

39:                                               ; preds = %29
  br i1 %38, label %43, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.xpvcv, ptr %30, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !137
  tail call void @Perl_sv_sethek(ptr noundef %25, ptr noundef %42) #12
  br label %105

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.xpvcv, ptr %30, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !398
  %46 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !426
  %48 = and i32 %47, 33554432
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.hv, ptr %45, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !137
  %53 = load ptr, ptr %45, align 8, !tbaa !428
  %54 = getelementptr inbounds %struct.xpvhv, ptr %53, i64 0, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !429
  %56 = getelementptr ptr, ptr %52, i64 %55
  %57 = getelementptr ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !137
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = getelementptr i8, ptr %56, i64 36
  %62 = load i32, ptr %61, align 4, !tbaa !431
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %58, align 8, !tbaa !116
  br label %66

66:                                               ; preds = %60, %43, %50, %64
  %67 = phi ptr [ %65, %64 ], [ null, %50 ], [ null, %43 ], [ %58, %60 ]
  tail call void @Perl_sv_sethek(ptr noundef %25, ptr noundef %67) #12
  tail call void @Perl_sv_catpvn_flags(ptr noundef %25, ptr noundef nonnull @.str.16, i64 noundef 2, i32 noundef 2) #12
  %68 = load ptr, ptr %0, align 8, !tbaa !148
  %69 = getelementptr inbounds %struct.xpvcv, ptr %68, i64 0, i32 12
  %70 = load i32, ptr %69, align 4, !tbaa !153
  %71 = and i32 %70, 32768
  %72 = icmp ne i32 %71, 0
  tail call void @llvm.assume(i1 %72)
  %73 = getelementptr inbounds %struct.xpvcv, ptr %68, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !137
  %75 = getelementptr inbounds %struct.hek, ptr %74, i64 0, i32 2
  %76 = getelementptr inbounds %struct.hek, ptr %74, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !433
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %75, i64 %78
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !137
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i32 16384, i32 32768
  tail call void @Perl_sv_catpvn_flags(ptr noundef %25, ptr noundef nonnull %75, i64 noundef %78, i32 noundef %84) #12
  br label %105

85:                                               ; preds = %29
  %86 = getelementptr inbounds %struct.xpvcv, ptr %30, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !137
  br i1 %38, label %96, label %88, !prof !425

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.gv, ptr %87, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !137
  %91 = getelementptr inbounds %struct.gp, ptr %90, i64 0, i32 8
  %92 = load ptr, ptr %91, align 8, !tbaa !435
  %93 = load ptr, ptr %92, align 8, !tbaa !436
  %94 = getelementptr inbounds %struct.xpvgv, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !137
  tail call void @Perl_sv_sethek(ptr noundef %25, ptr noundef %95) #12
  br label %105

96:                                               ; preds = %85
  tail call void @Perl_gv_efullname4(ptr noundef %25, ptr noundef %87, ptr noundef null, i1 noundef zeroext true) #12
  br label %105

97:                                               ; preds = %24
  %98 = and i32 %2, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %0, align 8, !tbaa !148
  %102 = getelementptr inbounds %struct.xpvgv, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !137
  tail call void @Perl_sv_sethek(ptr noundef %25, ptr noundef %103) #12
  br label %105

104:                                              ; preds = %97
  tail call void @Perl_gv_efullname4(ptr noundef %25, ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #12
  br label %105

105:                                              ; preds = %88, %96, %40, %66, %104, %100, %17, %19
  %106 = phi ptr [ %1, %19 ], [ %0, %17 ], [ %25, %100 ], [ %25, %104 ], [ %25, %66 ], [ %25, %40 ], [ %25, %96 ], [ %25, %88 ]
  ret ptr %106
}

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_fixup_inner_anons(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !438 {
  %4 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds ptr, ptr %5, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.padnamelist, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.av, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = load i64, ptr %6, align 8, !tbaa !133
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %146, !prof !439

16:                                               ; preds = %3
  %17 = and i64 %13, 4294967295
  br label %18

18:                                               ; preds = %16, %143
  %19 = phi i64 [ %17, %16 ], [ %144, %143 ]
  %20 = getelementptr inbounds ptr, ptr %10, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = icmp ne ptr %21, null
  %23 = icmp ne ptr %21, @PL_padname_undef
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %143, !prof !440

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.padname, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !228
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %143, !prof !441

29:                                               ; preds = %25
  %30 = load ptr, ptr %21, align 8, !tbaa !175
  %31 = load i8, ptr %30, align 1, !tbaa !137
  %32 = icmp eq i8 %31, 38
  br i1 %32, label %33, label %143, !prof !442

33:                                               ; preds = %29
  %34 = getelementptr inbounds ptr, ptr %12, i64 %19
  %35 = getelementptr inbounds %struct.padname, ptr %21, i64 0, i32 8
  %36 = load i8, ptr %35, align 1, !tbaa !220
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.padname, ptr %21, i64 0, i32 8
  %41 = load i8, ptr %40, align 1, !tbaa !220
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %39, %44
  %45 = phi ptr [ %62, %44 ], [ %21, %39 ]
  %46 = phi ptr [ %49, %44 ], [ %2, %39 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !148
  %48 = getelementptr inbounds %struct.xpvcv, ptr %47, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !171
  %50 = load ptr, ptr %49, align 8, !tbaa !148
  %51 = getelementptr inbounds %struct.xpvcv, ptr %50, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !137
  %53 = getelementptr inbounds %struct.padlist, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !136
  %55 = load ptr, ptr %54, align 8, !tbaa !116
  %56 = getelementptr inbounds %struct.padnamelist, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !132
  %58 = getelementptr inbounds %struct.padname, ptr %45, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !222
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %57, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !116
  %63 = getelementptr inbounds %struct.padname, ptr %62, i64 0, i32 8
  %64 = load i8, ptr %63, align 1, !tbaa !220
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %44, !llvm.loop !443

67:                                               ; preds = %44, %39
  %68 = phi ptr [ %2, %39 ], [ %49, %44 ]
  %69 = phi i64 [ %19, %39 ], [ %60, %44 ]
  %70 = load ptr, ptr %68, align 8, !tbaa !148
  %71 = getelementptr inbounds %struct.xpvcv, ptr %70, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !137
  %73 = getelementptr inbounds %struct.padlist, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !136
  %75 = getelementptr inbounds ptr, ptr %74, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !116
  %77 = getelementptr inbounds %struct.av, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !137
  %79 = getelementptr inbounds ptr, ptr %78, i64 %69
  br label %80

80:                                               ; preds = %33, %67
  %81 = phi ptr [ %79, %67 ], [ %34, %33 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !116
  %83 = getelementptr inbounds %struct.cv, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !184
  %85 = and i32 %84, 255
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %107

87:                                               ; preds = %80
  %88 = load ptr, ptr %82, align 8, !tbaa !148
  %89 = getelementptr inbounds %struct.xpvcv, ptr %88, i64 0, i32 10
  %90 = load ptr, ptr %89, align 8, !tbaa !171
  %91 = icmp eq ptr %90, %1
  br i1 %91, label %92, label %143

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.xpvcv, ptr %88, i64 0, i32 12
  %94 = load i32, ptr %93, align 4, !tbaa !153
  %95 = and i32 %94, 16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %92
  %98 = icmp eq ptr %1, null
  %99 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  br i1 %98, label %134, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !182
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = add i32 %102, -1
  store i32 %105, ptr %101, align 8, !tbaa !182
  br label %134

106:                                              ; preds = %100
  tail call void @Perl_sv_free2(ptr noundef nonnull %1, i32 noundef %102) #12
  br label %134

107:                                              ; preds = %80
  %108 = load ptr, ptr %34, align 8, !tbaa !116
  %109 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !166
  %111 = and i32 %110, 65280
  %112 = icmp ne i32 %111, 0
  %113 = and i32 %110, 255
  %114 = icmp eq i32 %113, 8
  %115 = or i1 %112, %114
  %116 = and i32 %110, 16777471
  %117 = icmp eq i32 %116, 16777226
  %118 = or i1 %117, %115
  br i1 %118, label %119, label %143

119:                                              ; preds = %107
  %120 = getelementptr inbounds %struct.cv, ptr %2, i64 0, i32 1
  %121 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !137
  %123 = load ptr, ptr %122, align 8, !tbaa !148
  %124 = getelementptr inbounds %struct.xpvcv, ptr %123, i64 0, i32 10
  %125 = load ptr, ptr %124, align 8, !tbaa !171
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.sv, ptr %125, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !182
  %130 = icmp ugt i32 %129, 1
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = add i32 %129, -1
  store i32 %132, ptr %128, align 8, !tbaa !182
  br label %134

133:                                              ; preds = %127
  tail call void @Perl_sv_free2(ptr noundef nonnull %125, i32 noundef %129) #12
  br label %134

134:                                              ; preds = %133, %131, %119, %106, %104, %97
  %135 = phi ptr [ %99, %97 ], [ %99, %104 ], [ %99, %106 ], [ %120, %119 ], [ %120, %131 ], [ %120, %133 ]
  %136 = phi ptr [ %82, %97 ], [ %82, %104 ], [ %82, %106 ], [ %122, %119 ], [ %122, %131 ], [ %122, %133 ]
  %137 = load i32, ptr %135, align 8, !tbaa !129
  %138 = add i32 %137, 1
  store i32 %138, ptr %135, align 8, !tbaa !129
  br label %139

139:                                              ; preds = %134, %92
  %140 = phi ptr [ %82, %92 ], [ %136, %134 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !148
  %142 = getelementptr inbounds %struct.xpvcv, ptr %141, i64 0, i32 10
  store ptr %2, ptr %142, align 8, !tbaa !171
  br label %143

143:                                              ; preds = %139, %87, %107, %18, %25, %29
  %144 = add nsw i64 %19, -1
  %145 = icmp sgt i64 %19, 1
  br i1 %145, label %18, label %146, !prof !444, !llvm.loop !445

146:                                              ; preds = %143, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_push(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !446 {
  %3 = sext i32 %1 to i64
  %4 = load i64, ptr %0, align 8, !tbaa !135
  %5 = icmp slt i64 %4, %3
  br i1 %5, label %12, label %6, !prof !447

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = getelementptr inbounds ptr, ptr %8, i64 %3
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %107, !prof !448

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !136
  %15 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  %16 = getelementptr ptr, ptr %14, i64 %3
  %17 = getelementptr ptr, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.av, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !137
  %21 = getelementptr inbounds ptr, ptr %14, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = load ptr, ptr %22, align 8, !tbaa !246
  %24 = getelementptr inbounds %struct.xpvav, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !247
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr %14, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct.padnamelist, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !132
  %30 = icmp sgt i32 %26, 0
  br i1 %30, label %31, label %99, !prof !449

31:                                               ; preds = %12
  %32 = load i64, ptr %27, align 8, !tbaa !133
  %33 = and i64 %25, 4294967295
  %34 = shl i64 %32, 32
  %35 = ashr exact i64 %34, 32
  br label %36

36:                                               ; preds = %31, %96
  %37 = phi i64 [ %33, %31 ], [ %97, %96 ]
  %38 = icmp sgt i64 %37, %35
  br i1 %38, label %78, label %39, !prof !450

39:                                               ; preds = %36
  %40 = getelementptr inbounds ptr, ptr %29, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !116
  %42 = getelementptr inbounds %struct.padname, ptr %41, i64 0, i32 7
  %43 = load i8, ptr %42, align 8, !tbaa !213
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %78, label %45, !prof !451

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.padname, ptr %41, i64 0, i32 8
  %47 = load i8, ptr %46, align 1, !tbaa !220
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58, !prof !452

51:                                               ; preds = %45
  %52 = load ptr, ptr %41, align 8, !tbaa !175
  %53 = load i8, ptr %52, align 1, !tbaa !137
  %54 = and i32 %48, 2
  %55 = icmp ne i32 %54, 0
  %56 = icmp eq i8 %53, 38
  %57 = select i1 %55, i1 true, i1 %56, !prof !453
  br i1 %57, label %58, label %68, !prof !453

58:                                               ; preds = %51, %45
  %59 = getelementptr inbounds ptr, ptr %20, i64 %37
  %60 = load ptr, ptr %59, align 8, !tbaa !116
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62, !prof !454

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !182
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !182
  br label %66

66:                                               ; preds = %58, %62
  %67 = tail call ptr @Perl_av_store(ptr noundef %15, i64 noundef %37, ptr noundef %60) #12
  br label %96

68:                                               ; preds = %51
  switch i8 %53, label %73 [
    i8 64, label %69
    i8 37, label %71
  ], !prof !455

69:                                               ; preds = %68
  %70 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  br label %75

71:                                               ; preds = %68
  %72 = tail call ptr @Perl_newSV_type(i32 noundef 12) #12
  br label %75

73:                                               ; preds = %68
  %74 = tail call ptr @Perl_newSV(i64 noundef 0) #12
  br label %75

75:                                               ; preds = %71, %73, %69
  %76 = phi ptr [ %70, %69 ], [ %72, %71 ], [ %74, %73 ]
  %77 = tail call ptr @Perl_av_store(ptr noundef %15, i64 noundef %37, ptr noundef %76) #12
  br label %96

78:                                               ; preds = %39, %36
  %79 = getelementptr inbounds ptr, ptr %29, i64 %37
  %80 = load ptr, ptr %79, align 8, !tbaa !116
  %81 = load ptr, ptr %80, align 8, !tbaa !175
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83, !prof !456

83:                                               ; preds = %78
  %84 = getelementptr inbounds ptr, ptr %20, i64 %37
  %85 = load ptr, ptr %84, align 8, !tbaa !116
  %86 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !182
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !182
  %89 = tail call ptr @Perl_av_store(ptr noundef %15, i64 noundef %37, ptr noundef %85) #12
  br label %96

90:                                               ; preds = %78
  %91 = tail call ptr @Perl_newSV(i64 noundef 0) #12
  %92 = tail call ptr @Perl_av_store(ptr noundef %15, i64 noundef %37, ptr noundef %91) #12
  %93 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !166
  %95 = or i32 %94, 131072
  store i32 %95, ptr %93, align 4, !tbaa !166
  br label %96

96:                                               ; preds = %66, %75, %90, %83
  %97 = add nsw i64 %37, -1
  %98 = icmp sgt i64 %37, 1
  br i1 %98, label %36, label %99, !prof !457, !llvm.loop !458

99:                                               ; preds = %96, %12
  %100 = tail call ptr @Perl_newSV_type(i32 noundef 11) #12
  %101 = tail call ptr @Perl_av_store(ptr noundef %15, i64 noundef 0, ptr noundef %100) #12
  %102 = getelementptr inbounds %struct.av, ptr %100, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !123
  %104 = and i32 %103, 1073741823
  %105 = or disjoint i32 %104, -2147483648
  store i32 %105, ptr %102, align 4, !tbaa !123
  %106 = tail call ptr @Perl_padlist_store(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %15)
  br label %107

107:                                              ; preds = %99, %6
  ret void
}

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_padlist_store(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !459 {
  %4 = load i64, ptr %0, align 8, !tbaa !135
  %5 = sext i32 %1 to i64
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %15, !prof !460

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %8) #12
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = getelementptr inbounds ptr, ptr %9, i64 %4
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load i64, ptr %0, align 8, !tbaa !135
  %13 = sub nsw i64 %12, %4
  %14 = shl i64 %13, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 0, i64 %14, i1 false), !prof !461
  br label %15

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.padlist, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  %18 = getelementptr inbounds ptr, ptr %17, i64 %5
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !460

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !182
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = add i32 %23, -1
  store i32 %26, ptr %22, align 8, !tbaa !182
  br label %28

27:                                               ; preds = %21
  tail call void @Perl_sv_free2(ptr noundef nonnull %19, i32 noundef %23) #12
  br label %28

28:                                               ; preds = %15, %25, %27
  store ptr %2, ptr %18, align 8, !tbaa !116
  ret ptr %18
}

declare void @Perl_av_extend_guts(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @Perl_padname_free(ptr noundef %0) local_unnamed_addr #0 !prof !462 {
  %2 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !211
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 8, !tbaa !211
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %42, !prof !463

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, @PL_padname_undef
  %8 = icmp eq ptr %0, @PL_padname_const
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !464

10:                                               ; preds = %6
  store i32 2147483647, ptr %2, align 8, !tbaa !211
  br label %42

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !465

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !182
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = add i32 %17, -1
  store i32 %20, ptr %16, align 8, !tbaa !182
  br label %22

21:                                               ; preds = %15
  tail call void @Perl_sv_free2(ptr noundef nonnull %13, i32 noundef %17) #12
  br label %22

22:                                               ; preds = %11, %19, %21
  %23 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !228
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26, !prof !466

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !182
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %32, !prof !185

30:                                               ; preds = %26
  %31 = add i32 %28, -1
  store i32 %31, ptr %27, align 8, !tbaa !182
  br label %33

32:                                               ; preds = %26
  tail call void @Perl_sv_free2(ptr noundef nonnull %24, i32 noundef %28) #12
  br label %33

33:                                               ; preds = %22, %30, %32
  %34 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 8
  %35 = load i8, ptr %34, align 1, !tbaa !220
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38, !prof !467

38:                                               ; preds = %33
  %39 = load ptr, ptr %0, align 8, !tbaa !175
  %40 = getelementptr inbounds i8, ptr %39, i64 -42
  tail call void @Perl_padname_free(ptr noundef nonnull %40)
  br label %41

41:                                               ; preds = %38, %33
  tail call void @Perl_safesysfree(ptr noundef %0) #12
  br label %42

42:                                               ; preds = %10, %41, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_padnamelist_fetch(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #7 !prof !468 {
  %3 = load i64, ptr %0, align 8, !tbaa !133
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %10, label %5, !prof !469

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = getelementptr inbounds ptr, ptr %7, i64 %1
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_newPADNAMEouter(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !140 {
  %2 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #12
  %3 = getelementptr inbounds %struct.padname, ptr %2, i64 0, i32 5
  store i32 1, ptr %3, align 8, !tbaa !211
  %4 = load ptr, ptr %0, align 8, !tbaa !175
  store ptr %4, ptr %2, align 8, !tbaa !175
  %5 = load ptr, ptr %0, align 8, !tbaa !175
  %6 = getelementptr inbounds i8, ptr %5, i64 -10
  %7 = load i32, ptr %6, align 8, !tbaa !211
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !211
  %9 = getelementptr inbounds %struct.padname, ptr %2, i64 0, i32 8
  store i8 1, ptr %9, align 1, !tbaa !220
  %10 = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 7
  %11 = load i8, ptr %10, align 8, !tbaa !213
  %12 = getelementptr inbounds %struct.padname, ptr %2, i64 0, i32 7
  store i8 %11, ptr %12, align 8, !tbaa !213
  ret ptr %2
}

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_savepv(ptr noundef) local_unnamed_addr #2

declare void @Perl_cvstash_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_find_runcv_where(i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_av_fill(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_share_hek(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!113}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!35 = !{ptr @Perl_pad_new, ptr @Perl_save_pushptr, i64 1307}
!36 = !{ptr @Perl_pad_new, ptr @Perl_save_sptr, i64 1302}
!37 = !{ptr @Perl_pad_new, ptr @Perl_save_I32, i64 6510}
!38 = !{ptr @Perl_pad_new, ptr @Perl_save_bool, i64 2420}
!39 = !{ptr @Perl_pad_new, ptr @Perl_safesyscalloc, i64 2611}
!40 = !{ptr @Perl_pad_new, ptr @Perl_newSV_type, i64 1313}
!41 = !{ptr @Perl_pad_new, ptr @Perl_av_store, i64 1308}
!42 = !{ptr @Perl_pad_new, ptr @Perl_safesysmalloc, i64 2611}
!43 = !{ptr @Perl_padnamelist_store, ptr @Perl_av_extend_guts, i64 8}
!44 = !{ptr @Perl_cv_undef, ptr @Perl_cv_undef_flags, i64 530}
!45 = !{ptr @Perl_cv_undef_flags, ptr @Perl_safesysfree, i64 2003}
!46 = !{ptr @Perl_cv_undef_flags, ptr @Perl_push_scope, i64 358}
!47 = !{ptr @Perl_cv_undef_flags, ptr @Perl_save_pushptr, i64 358}
!48 = !{ptr @Perl_cv_undef_flags, ptr @Perl_op_free, i64 336}
!49 = !{ptr @Perl_cv_undef_flags, ptr @Perl_pop_scope, i64 358}
!50 = !{ptr @Perl_cv_undef_flags, ptr @Perl_parser_free_nexttoke_ops, i64 22}
!51 = !{ptr @Perl_cv_undef_flags, ptr @Perl_opslab_force_free, i64 22}
!52 = !{ptr @Perl_cv_undef_flags, ptr @Perl_sv_unmagic, i64 530}
!53 = !{ptr @Perl_cv_undef_flags, ptr @Perl_cvgv_set, i64 530}
!54 = !{ptr @Perl_cv_undef_flags, ptr @Perl_sv_free2, i64 619}
!55 = !{ptr @Perl_cv_undef_flags, ptr @Perl_padname_free, i64 1138}
!56 = !{ptr @Perl_pad_add_name_pvn, ptr @Perl_safesyscalloc, i64 2315}
!57 = !{ptr @Perl_pad_add_name_pvn, ptr @Perl_push_scope, i64 2227}
!58 = !{ptr @Perl_pad_add_name_pvn, ptr @Perl_save_pushptr, i64 2227}
!59 = !{ptr @Perl_pad_add_name_pvn, ptr @Perl_ckwarn, i64 2227}
!60 = !{ptr @Perl_pad_add_name_pvn, ptr @bcmp, i64 61}
!61 = !{ptr @Perl_pad_add_name_pvn, ptr @Perl_pop_scope, i64 2227}
!62 = !{ptr @Perl_pad_add_name_pvn, ptr @Perl_av_fetch, i64 2315}
!63 = !{ptr @Perl_pad_add_name_pvn, ptr @Perl_av_extend_guts, i64 1347}
!64 = !{ptr @Perl_pad_add_name_pvn, ptr @Perl_sv_upgrade, i64 261}
!65 = !{ptr @Perl_pad_alloc, ptr @Perl_av_fetch, i64 18080}
!66 = !{ptr @Perl_pad_alloc, ptr @Perl_padnamelist_store, i64 9}
!67 = !{ptr @Perl_pad_add_anon, ptr @Perl_safesyscalloc, i64 151}
!68 = !{ptr @Perl_pad_add_anon, ptr @Perl_av_fetch, i64 151}
!69 = !{ptr @Perl_pad_add_anon, ptr @Perl_av_extend_guts, i64 88}
!70 = !{ptr @Perl_pad_add_anon, ptr @Perl_av_store, i64 151}
!71 = !{ptr @Perl_pad_add_weakref, ptr @Perl_pad_alloc, i64 2}
!72 = !{ptr @Perl_pad_add_weakref, ptr @Perl_safesyscalloc, i64 2}
!73 = !{ptr @Perl_pad_add_weakref, ptr @Perl_newRV, i64 2}
!74 = !{ptr @Perl_pad_add_weakref, ptr @Perl_padnamelist_store, i64 2}
!75 = !{ptr @Perl_pad_add_weakref, ptr @Perl_sv_rvweaken, i64 2}
!76 = !{ptr @Perl_pad_add_weakref, ptr @Perl_av_store, i64 2}
!77 = !{ptr @Perl_pad_findmy_pvn, ptr @S_pad_findlex, i64 35998}
!78 = !{ptr @S_pad_findlex, ptr @bcmp, i64 43049}
!79 = !{ptr @S_pad_findlex, ptr @S_pad_findlex, i64 25759}
!80 = !{ptr @S_pad_findlex, ptr @Perl_safesyscalloc, i64 242}
!81 = !{ptr @S_pad_findlex, ptr @Perl_av_fetch, i64 242}
!82 = !{ptr @S_pad_findlex, ptr @Perl_av_extend_guts, i64 141}
!83 = !{ptr @S_pad_findlex, ptr @Perl_av_store, i64 166}
!84 = !{ptr @Perl_pad_block_start, ptr @Perl_save_I32, i64 34575}
!85 = !{ptr @Perl_pad_tidy, ptr @Perl_av_extend_guts, i64 465}
!86 = !{ptr @Perl_pad_tidy, ptr @Perl_sv_free2, i64 74}
!87 = !{ptr @Perl_pad_tidy, ptr @Perl_newSV_type, i64 1059}
!88 = !{ptr @Perl_pad_tidy, ptr @Perl_av_store, i64 1059}
!89 = !{ptr @Perl_cv_clone, ptr @S_cv_clone, i64 5}
!90 = !{ptr @S_cv_clone, ptr @Perl_newSV_type, i64 5}
!91 = !{ptr @S_cv_clone, ptr @Perl_cvgv_set, i64 5}
!92 = !{ptr @S_cv_clone, ptr @Perl_cvstash_set, i64 5}
!93 = !{ptr @S_cv_clone, ptr @Perl_sv_setpvn, i64 2}
!94 = !{ptr @S_cv_clone, ptr @Perl_find_runcv, i64 5}
!95 = !{ptr @S_cv_clone, ptr @Perl_push_scope, i64 5}
!96 = !{ptr @S_cv_clone, ptr @Perl_save_sptr, i64 10}
!97 = !{ptr @S_cv_clone, ptr @Perl_save_pushptr, i64 5}
!98 = !{ptr @S_cv_clone, ptr @Perl_pad_new, i64 5}
!99 = !{ptr @S_cv_clone, ptr @Perl_av_fill, i64 5}
!100 = !{ptr @S_cv_clone, ptr @Perl_newSV, i64 59}
!101 = !{ptr @S_cv_clone, ptr @Perl_pop_scope, i64 5}
!102 = !{ptr @S_cv_clone, ptr @Perl_sv_free2, i64 2}
!103 = !{ptr @S_cv_clone, ptr @Perl_newCONSTSUB, i64 2}
!104 = !{ptr @Perl_cv_name, ptr @Perl_sv_newmortal, i64 6}
!105 = !{ptr @Perl_cv_name, ptr @Perl_gv_efullname4, i64 6}
!106 = !{ptr @Perl_pad_push, ptr @Perl_newSV_type, i64 11}
!107 = !{ptr @Perl_pad_push, ptr @Perl_av_store, i64 389}
!108 = !{ptr @Perl_pad_push, ptr @Perl_newSV, i64 369}
!109 = !{ptr @Perl_pad_push, ptr @Perl_padlist_store, i64 4}
!110 = !{ptr @Perl_padlist_store, ptr @Perl_av_extend_guts, i64 4}
!111 = !{ptr @Perl_padname_free, ptr @Perl_padname_free, i64 10}
!112 = !{ptr @Perl_padname_free, ptr @Perl_safesysfree, i64 115}
!113 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!114 = !{!"function_entry_count", i64 1308}
!115 = !{!"branch_weights", i32 1, i32 1307}
!116 = !{!117, !117, i64 0}
!117 = !{!"any pointer", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !{!"branch_weights", i32 1302, i32 5}
!121 = !{!"branch_weights", i32 184, i32 1118}
!122 = !{!"branch_weights", i32 1303, i32 5}
!123 = !{!124, !125, i64 12}
!124 = !{!"av", !117, i64 0, !125, i64 8, !125, i64 12, !118, i64 16}
!125 = !{!"int", !118, i64 0}
!126 = !{!127, !125, i64 32}
!127 = !{!"padnamelist", !128, i64 0, !117, i64 8, !128, i64 16, !128, i64 24, !125, i64 32}
!128 = !{!"long", !118, i64 0}
!129 = !{!125, !125, i64 0}
!130 = !{!131, !125, i64 16}
!131 = !{!"padlist", !128, i64 0, !117, i64 8, !125, i64 16, !125, i64 20}
!132 = !{!127, !117, i64 8}
!133 = !{!127, !128, i64 0}
!134 = !{!"branch_weights", i32 4823, i32 0}
!135 = !{!131, !128, i64 0}
!136 = !{!131, !117, i64 8}
!137 = !{!118, !118, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"_Bool", !118, i64 0}
!140 = !{!"function_entry_count", i64 0}
!141 = !{!127, !128, i64 24}
!142 = !{!127, !128, i64 16}
!143 = !{!"function_entry_count", i64 13}
!144 = !{!"branch_weights", i32 2806, i32 2017}
!145 = !{!"branch_weights", i32 4821, i32 2}
!146 = !{!"VP", i32 1, i64 12, i64 8, i64 9, i64 16, i64 1, i64 17, i64 0, i64 33, i64 0}
!147 = !{!"function_entry_count", i64 530}
!148 = !{!149, !117, i64 0}
!149 = !{!"cv", !117, i64 0, !125, i64 8, !125, i64 12, !118, i64 16}
!150 = !{!151, !117, i64 64}
!151 = !{!"xpvcv", !117, i64 0, !118, i64 8, !128, i64 16, !118, i64 24, !117, i64 32, !118, i64 40, !118, i64 48, !118, i64 56, !117, i64 64, !118, i64 72, !117, i64 80, !125, i64 88, !125, i64 92, !125, i64 96}
!152 = !{!"branch_weights", i32 189, i32 341}
!153 = !{!151, !125, i64 92}
!154 = !{!"branch_weights", i32 336, i32 5}
!155 = !{!"branch_weights", i32 525, i32 5}
!156 = !{!"branch_weights", i32 189, i32 336}
!157 = !{!151, !125, i64 96}
!158 = !{!"branch_weights", i32 336, i32 0}
!159 = !{!160, !117, i64 8}
!160 = !{!"opslot", !117, i64 0, !117, i64 8, !161, i64 16}
!161 = !{!"op", !117, i64 0, !117, i64 8, !117, i64 16, !128, i64 24, !125, i64 32, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !118, i64 34, !118, i64 35}
!162 = !{!163, !128, i64 24}
!163 = !{!"opslab", !117, i64 0, !117, i64 8, !117, i64 16, !128, i64 24, !160, i64 32}
!164 = !{!"branch_weights", i32 167, i32 22}
!165 = !{!"branch_weights", i32 0, i32 22}
!166 = !{!167, !125, i64 12}
!167 = !{!"sv", !117, i64 0, !125, i64 8, !125, i64 12, !118, i64 16}
!168 = !{!"branch_weights", i32 530, i32 0}
!169 = !{!"branch_weights", i32 23, i32 502}
!170 = !{!"branch_weights", i32 0, i32 502}
!171 = !{!151, !117, i64 80}
!172 = !{!151, !125, i64 88}
!173 = !{!"branch_weights", i32 501, i32 1}
!174 = !{!"branch_weights", i32 19, i32 711}
!175 = !{!176, !117, i64 0}
!176 = !{!"padname", !117, i64 0, !117, i64 8, !118, i64 16, !125, i64 24, !125, i64 28, !125, i64 32, !125, i64 36, !118, i64 40, !118, i64 41}
!177 = !{!"branch_weights", i32 561, i32 150}
!178 = !{!"branch_weights", i32 12, i32 138}
!179 = !{!124, !125, i64 8}
!180 = !{!"branch_weights", i32 12, i32 0}
!181 = !{!"branch_weights", i32 2, i32 10}
!182 = !{!167, !125, i64 8}
!183 = !{!"branch_weights", i32 10, i32 2}
!184 = !{!149, !125, i64 12}
!185 = !{!"branch_weights", i32 2, i32 0}
!186 = !{!"branch_weights", i32 0, i32 2}
!187 = !{!"branch_weights", i32 229, i32 501}
!188 = distinct !{!188, !189, !190}
!189 = !{!"llvm.loop.mustprogress"}
!190 = !{!"llvm.loop.unroll.disable"}
!191 = !{!"branch_weights", i32 1, i32 501}
!192 = distinct !{!192, !189, !190}
!193 = !{!"branch_weights", i32 497, i32 5}
!194 = !{!"branch_weights", i32 496, i32 1}
!195 = !{!"branch_weights", i32 19, i32 1138}
!196 = !{!"branch_weights", i32 661, i32 496}
!197 = distinct !{!197, !189, !190}
!198 = !{!"branch_weights", i32 23, i32 5}
!199 = !{!149, !125, i64 8}
!200 = !{!"branch_weights", i32 36, i32 494}
!201 = !{!"branch_weights", i32 486, i32 8}
!202 = !{!"branch_weights", i32 381, i32 105}
!203 = !{!"branch_weights", i32 518, i32 12}
!204 = !{!"branch_weights", i32 7, i32 5}
!205 = !{!"branch_weights", i32 3, i32 2}
!206 = !{!"function_entry_count", i64 185}
!207 = !{!"branch_weights", i32 0, i32 185}
!208 = !{!"branch_weights", i32 185, i32 0}
!209 = !{!"function_entry_count", i64 2315}
!210 = !{!"branch_weights", i32 2315, i32 0}
!211 = !{!176, !125, i64 32}
!212 = !{!"VP", i32 1, i64 2315, i64 5, i64 442, i64 4, i64 424, i64 9, i64 335, i64 6, i64 260}
!213 = !{!176, !118, i64 40}
!214 = !{!"branch_weights", i32 2227, i32 88}
!215 = !{!"branch_weights", i32 0, i32 2227}
!216 = !{!"branch_weights", i32 226, i32 2001}
!217 = !{!"branch_weights", i32 225, i32 1}
!218 = !{!"branch_weights", i32 457, i32 510}
!219 = !{!"branch_weights", i32 61, i32 449}
!220 = !{!176, !118, i64 41}
!221 = !{!"branch_weights", i32 61, i32 0}
!222 = !{!176, !125, i64 24}
!223 = !{!"branch_weights", i32 16, i32 45}
!224 = !{!176, !125, i64 28}
!225 = !{!"branch_weights", i32 45, i32 0}
!226 = !{!"VP", i32 1, i64 61, i64 6, i64 21, i64 5, i64 11, i64 9, i64 10, i64 2, i64 8}
!227 = !{!"branch_weights", i32 0, i32 61}
!228 = !{!176, !117, i64 8}
!229 = !{!230, !231, i64 236}
!230 = !{!"yy_parser", !117, i64 0, !118, i64 8, !125, i64 16, !125, i64 20, !125, i64 24, !125, i64 28, !117, i64 32, !117, i64 40, !125, i64 48, !125, i64 52, !117, i64 56, !117, i64 64, !118, i64 72, !118, i64 73, !118, i64 74, !118, i64 75, !125, i64 76, !117, i64 80, !117, i64 88, !117, i64 96, !231, i64 104, !231, i64 106, !125, i64 108, !117, i64 112, !125, i64 120, !125, i64 124, !118, i64 128, !118, i64 129, !139, i64 130, !139, i64 131, !125, i64 132, !232, i64 136, !117, i64 160, !117, i64 168, !117, i64 176, !117, i64 184, !117, i64 192, !117, i64 200, !117, i64 208, !117, i64 216, !117, i64 224, !125, i64 232, !231, i64 236, !118, i64 238, !118, i64 239, !117, i64 240, !117, i64 248, !117, i64 256, !118, i64 264, !118, i64 272, !118, i64 312, !125, i64 332, !117, i64 336, !118, i64 344, !125, i64 600, !125, i64 604, !118, i64 608, !118, i64 609, !125, i64 610, !125, i64 610, !125, i64 610, !125, i64 610}
!231 = !{!"short", !118, i64 0}
!232 = !{!"_sublex_info", !118, i64 0, !231, i64 2, !117, i64 8, !117, i64 16}
!233 = !{!"branch_weights", i32 967, i32 0}
!234 = !{!"branch_weights", i32 742, i32 225}
!235 = distinct !{!235, !189, !190}
!236 = !{!"branch_weights", i32 2, i32 224}
!237 = !{!"branch_weights", i32 57, i32 15}
!238 = !{!"branch_weights", i32 1, i32 14}
!239 = !{!"branch_weights", i32 1, i32 0}
!240 = !{!"branch_weights", i32 0, i32 1}
!241 = !{!"branch_weights", i32 2, i32 70}
!242 = !{!"branch_weights", i32 12136, i32 0}
!243 = !{i8 0, i8 2}
!244 = !{}
!245 = !{!"branch_weights", i32 8777, i32 3359}
!246 = !{!124, !117, i64 0}
!247 = !{!248, !128, i64 16}
!248 = !{!"xpvav", !117, i64 0, !118, i64 8, !128, i64 16, !128, i64 24, !117, i64 32}
!249 = !{!"branch_weights", i32 2557, i32 0}
!250 = !{!"branch_weights", i32 2418, i32 139}
!251 = !{!"branch_weights", i32 2330, i32 88}
!252 = !{!"VP", i32 1, i64 2313, i64 8, i64 1617, i64 16, i64 220, i64 17, i64 144, i64 33, i64 104}
!253 = !{!"branch_weights", i32 2469, i32 88}
!254 = !{!"branch_weights", i32 1716, i32 599}
!255 = !{!"branch_weights", i32 0, i32 2315}
!256 = !{!"branch_weights", i32 2054, i32 191, i32 70, i32 0}
!257 = !{i64 -2147483648, i64 2147483648}
!258 = !{!167, !117, i64 0}
!259 = !{!260, !128, i64 16}
!260 = !{!"xpv", !117, i64 0, !118, i64 8, !128, i64 16, !118, i64 24}
!261 = !{!128, !128, i64 0}
!262 = !{!"function_entry_count", i64 9428}
!263 = !{!"branch_weights", i32 2710, i32 9426}
!264 = !{!"branch_weights", i32 9415, i32 11}
!265 = !{!"branch_weights", i32 9597, i32 16350}
!266 = !{!"branch_weights", i32 4207, i32 5390}
!267 = !{!"branch_weights", i32 7, i32 5383}
!268 = distinct !{!268, !190}
!269 = !{!"branch_weights", i32 9426, i32 16521}
!270 = !{!"function_entry_count", i64 151}
!271 = !{!"VP", i32 1, i64 150, i64 8, i64 105, i64 16, i64 14, i64 17, i64 9, i64 33, i64 6}
!272 = !{!"branch_weights", i32 4, i32 147}
!273 = !{!"branch_weights", i32 147, i32 0}
!274 = !{!"function_entry_count", i64 2}
!275 = !{!"function_entry_count", i64 35998}
!276 = !{!"branch_weights", i32 35998, i32 0}
!277 = !{!"branch_weights", i32 0, i32 35998}
!278 = !{!"branch_weights", i32 24221, i32 11777}
!279 = !{!"branch_weights", i32 15817, i32 8404}
!280 = !{!"branch_weights", i32 8403, i32 1}
!281 = !{!"branch_weights", i32 243465, i32 8403}
!282 = distinct !{!282, !189, !190}
!283 = !{!"branch_weights", i32 186622, i32 65246}
!284 = !{!"branch_weights", i32 3857, i32 61389}
!285 = !{!"branch_weights", i32 3802, i32 55}
!286 = !{!"branch_weights", i32 3802, i32 0}
!287 = !{!"branch_weights", i32 251868, i32 0}
!288 = !{!"function_entry_count", i64 61757}
!289 = !{!"pad.c;S_pad_findlex"}
!290 = !{!"branch_weights", i32 61757, i32 0}
!291 = !{!"branch_weights", i32 1, i32 50235}
!292 = !{!"branch_weights", i32 822427, i32 376318}
!293 = !{!"branch_weights", i32 42713, i32 333605}
!294 = !{!"branch_weights", i32 0, i32 42713}
!295 = !{!"VP", i32 1, i64 42713, i64 5, i64 12479, i64 4, i64 9039, i64 6, i64 4866, i64 7, i64 4017}
!296 = !{!"branch_weights", i32 11851, i32 30862}
!297 = !{!"branch_weights", i32 11595, i32 256}
!298 = !{!"branch_weights", i32 1, i32 11594}
!299 = !{!"branch_weights", i32 11521, i32 73}
!300 = !{!"branch_weights", i32 11521, i32 0}
!301 = !{!"branch_weights", i32 0, i32 73}
!302 = !{!"branch_weights", i32 73, i32 0}
!303 = !{!"branch_weights", i32 11521, i32 1187224}
!304 = !{!"branch_weights", i32 50235, i32 1148510}
!305 = distinct !{!305, !189, !190}
!306 = !{!"branch_weights", i32 50236, i32 11521}
!307 = !{!"branch_weights", i32 49980, i32 11777}
!308 = !{!"branch_weights", i32 256, i32 11521}
!309 = !{!"branch_weights", i32 11395, i32 126}
!310 = !{!"branch_weights", i32 10860, i32 535}
!311 = !{!"branch_weights", i32 11553, i32 224}
!312 = !{!"branch_weights", i32 166, i32 58}
!313 = !{!"branch_weights", i32 0, i32 166}
!314 = !{!"branch_weights", i32 166, i32 0}
!315 = !{!"branch_weights", i32 27556, i32 0}
!316 = !{!"branch_weights", i32 24221, i32 25759}
!317 = !{!"branch_weights", i32 21121, i32 4638}
!318 = !{!"branch_weights", i32 20874, i32 247}
!319 = !{!"branch_weights", i32 0, i32 20874}
!320 = !{!"branch_weights", i32 20874, i32 4885}
!321 = !{!"branch_weights", i32 25517, i32 242}
!322 = !{!"branch_weights", i32 242, i32 0}
!323 = !{!"VP", i32 1, i64 241, i64 8, i64 168, i64 16, i64 22, i64 17, i64 14, i64 33, i64 10}
!324 = !{!"branch_weights", i32 182, i32 60}
!325 = !{!"branch_weights", i32 166, i32 16}
!326 = !{!"branch_weights", i32 0, i32 242}
!327 = !{!328, !125, i64 60}
!328 = !{!"cop", !117, i64 0, !117, i64 8, !117, i64 16, !128, i64 24, !125, i64 32, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !118, i64 34, !118, i64 35, !125, i64 36, !117, i64 40, !117, i64 48, !125, i64 56, !125, i64 60, !117, i64 64, !117, i64 72}
!329 = !{!330, !117, i64 0}
!330 = !{!"gp", !117, i64 0, !117, i64 8, !117, i64 16, !125, i64 24, !125, i64 28, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !125, i64 64, !125, i64 67, !117, i64 72}
!331 = !{!"function_entry_count", i64 6915}
!332 = !{!"branch_weights", i32 2907, i32 4008}
!333 = !{!"branch_weights", i32 0, i32 6915}
!334 = !{!"function_entry_count", i64 17194}
!335 = !{!"branch_weights", i32 13129, i32 4065}
!336 = !{!"branch_weights", i32 15478, i32 1716}
!337 = !{!"branch_weights", i32 1, i32 1715}
!338 = !{!"branch_weights", i32 17, i32 2315}
!339 = !{!"branch_weights", i32 1715, i32 617}
!340 = distinct !{!340, !189, !190}
!341 = !{!"branch_weights", i32 0, i32 1716}
!342 = !{!"branch_weights", i32 61, i32 6854}
!343 = distinct !{!343, !189, !190}
!344 = !{!"branch_weights", i32 6914, i32 1}
!345 = !{!"branch_weights", i32 15605, i32 5279}
!346 = !{!"branch_weights", i32 34, i32 5245}
!347 = !{!"branch_weights", i32 4488, i32 757}
!348 = !{!"branch_weights", i32 2315, i32 2173}
!349 = !{!"branch_weights", i32 2148, i32 79}
!350 = !{!"branch_weights", i32 0, i32 2148}
!351 = !{!161, !128, i64 24}
!352 = !{!"branch_weights", i32 13970, i32 6914}
!353 = distinct !{!353, !189, !190}
!354 = !{!"function_entry_count", i64 658}
!355 = !{!"branch_weights", i32 0, i32 658}
!356 = !{!"branch_weights", i32 658, i32 0}
!357 = !{!"branch_weights", i32 655, i32 3}
!358 = !{!"function_entry_count", i64 1069}
!359 = !{!"branch_weights", i32 11, i32 1058}
!360 = !{!"branch_weights", i32 1, i32 175}
!361 = !{!"branch_weights", i32 11, i32 11}
!362 = !{!"branch_weights", i32 11, i32 0}
!363 = !{!"branch_weights", i32 22, i32 0}
!364 = !{!"branch_weights", i32 175, i32 177}
!365 = distinct !{!365, !189, !190}
!366 = !{!"branch_weights", i32 799, i32 270}
!367 = !{!"VP", i32 1, i64 798, i64 8, i64 556, i64 16, i64 75, i64 17, i64 49, i64 33, i64 35}
!368 = !{!"branch_weights", i32 0, i32 10, i32 1059}
!369 = !{!"branch_weights", i32 1, i32 159}
!370 = !{!"branch_weights", i32 42, i32 32}
!371 = !{!"branch_weights", i32 0, i32 74}
!372 = !{!"branch_weights", i32 74, i32 0}
!373 = !{!"branch_weights", i32 0, i32 32}
!374 = !{!"branch_weights", i32 159, i32 1025}
!375 = distinct !{!375, !189, !190}
!376 = !{!"branch_weights", i32 1059, i32 10}
!377 = !{!"branch_weights", i32 1, i32 1058}
!378 = !{!"branch_weights", i32 8254, i32 2283}
!379 = !{!"branch_weights", i32 307, i32 10230}
!380 = !{!"branch_weights", i32 10230, i32 0}
!381 = !{!"branch_weights", i32 17577, i32 2883}
!382 = !{!"branch_weights", i32 2883, i32 7347}
!383 = !{!"branch_weights", i32 2657, i32 226}
!384 = !{!"branch_weights", i32 1058, i32 9479}
!385 = distinct !{!385, !189, !190}
!386 = !{!"function_entry_count", i64 5543}
!387 = !{!"branch_weights", i32 1365, i32 4178}
!388 = !{!"branch_weights", i32 4178, i32 0}
!389 = !{!"branch_weights", i32 0, i32 4178}
!390 = !{!"branch_weights", i32 3520, i32 658}
!391 = !{!"branch_weights", i32 2101, i32 1419}
!392 = !{!"branch_weights", i32 852, i32 3326}
!393 = distinct !{!393, !189, !190}
!394 = !{!"function_entry_count", i64 5}
!395 = !{!"branch_weights", i32 0, i32 5}
!396 = !{!"pad.c;S_cv_clone"}
!397 = !{!"branch_weights", i32 5, i32 0}
!398 = !{!151, !117, i64 32}
!399 = !{!131, !125, i64 20}
!400 = !{!"branch_weights", i32 159, i32 1}
!401 = !{!"branch_weights", i32 0, i32 70}
!402 = !{!"branch_weights", i32 42, i32 28}
!403 = !{!"branch_weights", i32 28, i32 0}
!404 = !{!"branch_weights", i32 17, i32 11}
!405 = !{!"branch_weights", i32 0, i32 11}
!406 = !{!"branch_weights", i32 17, i32 0, i32 0, i32 0}
!407 = distinct !{!407, !189, !190}
!408 = !{!"branch_weights", i32 0, i32 17}
!409 = !{!"branch_weights", i32 17, i32 0}
!410 = !{!"branch_weights", i32 42, i32 0}
!411 = !{!"branch_weights", i32 2081, i32 159}
!412 = distinct !{!412, !189, !190}
!413 = distinct !{!413, !189, !190}
!414 = distinct !{!414, !189, !190}
!415 = distinct !{!415, !189, !190}
!416 = distinct !{!416, !189, !190}
!417 = !{!"branch_weights", i32 0, i32 4}
!418 = !{!"branch_weights", i32 2, i32 2}
!419 = distinct !{!419, !189, !190}
!420 = !{!421, !117, i64 40}
!421 = !{!"unop", !117, i64 0, !117, i64 8, !117, i64 16, !128, i64 24, !125, i64 32, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !118, i64 34, !118, i64 35, !117, i64 40}
!422 = !{!161, !117, i64 8}
!423 = !{!"function_entry_count", i64 6}
!424 = !{!"branch_weights", i32 0, i32 6}
!425 = !{!"branch_weights", i32 6, i32 0}
!426 = !{!427, !125, i64 12}
!427 = !{!"hv", !117, i64 0, !125, i64 8, !125, i64 12, !118, i64 16}
!428 = !{!427, !117, i64 0}
!429 = !{!430, !128, i64 24}
!430 = !{!"xpvhv", !117, i64 0, !118, i64 8, !128, i64 16, !128, i64 24}
!431 = !{!432, !125, i64 28}
!432 = !{!"xpvhv_aux", !118, i64 0, !117, i64 8, !117, i64 16, !125, i64 24, !125, i64 28, !117, i64 32, !125, i64 40, !125, i64 44, !125, i64 48, !125, i64 52}
!433 = !{!434, !125, i64 4}
!434 = !{!"hek", !125, i64 0, !125, i64 4, !118, i64 8}
!435 = !{!330, !117, i64 56}
!436 = !{!437, !117, i64 0}
!437 = !{!"gv", !117, i64 0, !125, i64 8, !125, i64 12, !118, i64 16}
!438 = !{!"function_entry_count", i64 23}
!439 = !{!"branch_weights", i32 183, i32 1}
!440 = !{!"branch_weights", i32 120, i32 541}
!441 = !{!"branch_weights", i32 117, i32 3}
!442 = !{!"branch_weights", i32 0, i32 117}
!443 = distinct !{!443, !189, !190}
!444 = !{!"branch_weights", i32 5105, i32 183}
!445 = distinct !{!445, !189, !190}
!446 = !{!"function_entry_count", i64 51928}
!447 = !{!"branch_weights", i32 4, i32 51924}
!448 = !{!"branch_weights", i32 0, i32 51924}
!449 = !{!"branch_weights", i32 127, i32 1}
!450 = !{!"branch_weights", i32 0, i32 385}
!451 = !{!"branch_weights", i32 310, i32 75}
!452 = !{!"branch_weights", i32 62, i32 13}
!453 = !{!"branch_weights", i32 0, i32 62}
!454 = !{!"branch_weights", i32 0, i32 13}
!455 = !{!"branch_weights", i32 59, i32 3, i32 0}
!456 = !{!"branch_weights", i32 310, i32 0}
!457 = !{!"branch_weights", i32 12193, i32 127}
!458 = distinct !{!458, !189, !190}
!459 = !{!"function_entry_count", i64 4}
!460 = !{!"branch_weights", i32 4, i32 0}
!461 = !{!"VP", i32 1, i64 4, i64 8, i64 4}
!462 = !{!"function_entry_count", i64 3375}
!463 = !{!"branch_weights", i32 115, i32 3260}
!464 = !{!"branch_weights", i32 0, i32 115}
!465 = !{!"branch_weights", i32 115, i32 0}
!466 = !{!"branch_weights", i32 113, i32 2}
!467 = !{!"branch_weights", i32 105, i32 10}
!468 = !{!"function_entry_count", i64 253}
!469 = !{!"branch_weights", i32 0, i32 253}
