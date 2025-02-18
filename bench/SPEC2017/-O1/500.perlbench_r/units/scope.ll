; ModuleID = 'scope.c'
source_filename = "scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.av = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%union._xmgu = type { ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon.1 }
%union.anon.1 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.any = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union.anon.8 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hv = type { ptr, i32, i32, %union.anon.10 }
%union.anon.10 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.16, ptr, %union.anon.17, %union.anon.18, %union.anon.19, ptr, %union.anon.20, ptr, i32, i32, i32 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { ptr }
%union.anon.20 = type { ptr }
%struct.he = type { ptr, ptr, %union.anon.21 }
%union.anon.21 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, %union._xnvu }
%union.anon.14 = type { i64 }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.11, %union._xivu, ptr, %union.anon.12, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.15 }
%union.anon.15 = type { i64 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_scopestack_max = external local_unnamed_addr global i32, align 4
@PL_scopestack = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_savestack_max = external local_unnamed_addr global i32, align 4
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_tmps_max = external local_unnamed_addr global i64, align 8
@PL_tmps_stack = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external local_unnamed_addr global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_localizing = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"panic: pad offset %lu out of range (%p-%p)\00", align 1
@PL_compiling = external local_unnamed_addr global %struct.cop, align 8
@PL_hintgv = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"panic: save_alloc elems %lu out of range (%ld-%ld)\00", align 1
@PL_tainted = external global i8, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"panic: corrupt saved stack index %ld\00", align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"panic: leave_scope inconsistency %u\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_stack_grow(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !103 {
  store ptr %0, ptr @PL_stack_sp, align 8, !tbaa !104
  %4 = load ptr, ptr @PL_curstack, align 8, !tbaa !104
  %5 = load ptr, ptr @PL_stack_base, align 8, !tbaa !104
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = add i64 %2, 128
  %11 = add i64 %10, %9
  tail call void @Perl_av_extend(ptr noundef %4, i64 noundef %11) #9
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !104
  ret ptr %12
}

declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_new_stackinfo(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !108 {
  %3 = tail call ptr @Perl_safesysmalloc(i64 noundef 48) #9
  %4 = tail call ptr @Perl_newSV_type(i32 noundef 11) #9
  store ptr %4, ptr %3, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.av, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !112
  %7 = and i32 %6, -1073741825
  store i32 %7, ptr %5, align 4, !tbaa !112
  %8 = icmp sgt i32 %0, 0
  %9 = add nsw i32 %0, -1
  %10 = select i1 %8, i32 %9, i32 0, !prof !114
  %11 = sext i32 %10 to i64
  tail call void @Perl_av_extend(ptr noundef %4, i64 noundef %11) #9
  %12 = load ptr, ptr %3, align 8, !tbaa !109
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = getelementptr inbounds %struct.xpvav, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  store ptr @PL_sv_undef, ptr %15, align 8, !tbaa !104
  %16 = load ptr, ptr %3, align 8, !tbaa !109
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = getelementptr inbounds %struct.xpvav, ptr %17, i64 0, i32 2
  store i64 0, ptr %18, align 8, !tbaa !119
  %19 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 2
  %20 = add nsw i32 %1, -1
  %21 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i32 %20, ptr %21, align 4, !tbaa !120
  %22 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 4
  store i32 -1, ptr %22, align 8, !tbaa !121
  %23 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 6
  store i32 0, ptr %23, align 8, !tbaa !122
  %24 = sext i32 %1 to i64
  %25 = mul nsw i64 %24, 88
  %26 = tail call ptr @Perl_safesysmalloc(i64 noundef %25) #9
  %27 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !123
  tail call void @llvm.memset.p0.i64(ptr align 1 %26, i8 -85, i64 %25, i1 false), !prof !124
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #1

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_cxinc() local_unnamed_addr #0 !prof !125 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !120
  %4 = sext i32 %3 to i64
  %5 = mul nsw i32 %3, 3
  %6 = sdiv i32 %5, 2
  store i32 %6, ptr %2, align 4, !tbaa !120
  %7 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 88
  %12 = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %11) #9
  %13 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !104
  %14 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !123
  %15 = getelementptr inbounds %struct.context, ptr %12, i64 %4
  %16 = getelementptr inbounds %struct.context, ptr %15, i64 1
  %17 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !120
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %4
  %21 = mul nsw i64 %20, 88
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 -85, i64 %21, i1 false)
  %22 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !104
  %23 = getelementptr inbounds %struct.stackinfo, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !121
  %25 = add nsw i32 %24, 1
  ret i32 %25
}

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_push_scope() local_unnamed_addr #4 !prof !126 {
  %1 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !127
  %2 = load i32, ptr @PL_scopestack_max, align 4, !tbaa !127
  %3 = icmp eq i32 %1, %2
  br i1 %3, label %4, label %11, !prof !128

4:                                                ; preds = %0
  %5 = mul nsw i32 %2, 3
  %6 = sdiv i32 %5, 2
  store i32 %6, ptr @PL_scopestack_max, align 4, !tbaa !127
  %7 = load ptr, ptr @PL_scopestack, align 8, !tbaa !104
  %8 = sext i32 %6 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr @Perl_safesysrealloc(ptr noundef %7, i64 noundef %9) #9
  store ptr %10, ptr @PL_scopestack, align 8, !tbaa !104
  br label %11

11:                                               ; preds = %0, %4
  %12 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %13 = load ptr, ptr @PL_scopestack, align 8, !tbaa !104
  %14 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !127
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @PL_scopestack_ix, align 4, !tbaa !127
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, ptr %13, i64 %16
  store i32 %12, ptr %17, align 4, !tbaa !127
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_pop_scope() local_unnamed_addr #4 !prof !129 {
  %1 = load ptr, ptr @PL_scopestack, align 8, !tbaa !104
  %2 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !127
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr @PL_scopestack_ix, align 4, !tbaa !127
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !127
  %7 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %8 = icmp sgt i32 %7, %6
  br i1 %8, label %9, label %854, !prof !130

9:                                                ; preds = %0
  %10 = load i8, ptr @PL_tainted, align 1, !tbaa !131, !range !133, !noundef !134
  %11 = icmp slt i32 %6, -1
  br i1 %11, label %12, label %14, !prof !135

12:                                               ; preds = %9
  %13 = sext i32 %6 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, i64 noundef %13) #9
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %16 = icmp sgt i32 %15, %6
  br i1 %16, label %17, label %851, !prof !136

17:                                               ; preds = %14, %845
  %18 = phi i32 [ %849, %845 ], [ %15, %14 ]
  %19 = phi i8 [ %848, %845 ], [ %10, %14 ]
  %20 = phi ptr [ %58, %845 ], [ null, %14 ]
  %21 = phi ptr [ %57, %845 ], [ null, %14 ]
  %22 = phi ptr [ %56, %845 ], [ null, %14 ]
  %23 = phi ptr [ %847, %845 ], [ undef, %14 ]
  %24 = phi ptr [ %846, %845 ], [ undef, %14 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !131
  %25 = add nsw i32 %18, -1
  %26 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %union.any, ptr %26, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !137
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 63
  %32 = icmp ugt i32 %31, 3
  br i1 %32, label %33, label %54, !prof !138

33:                                               ; preds = %17
  %34 = getelementptr inbounds %union.any, ptr %28, i64 -1
  %35 = load ptr, ptr %34, align 8, !tbaa.struct !139
  %36 = icmp ugt i32 %31, 22
  br i1 %36, label %37, label %44, !prof !141

37:                                               ; preds = %33
  %38 = getelementptr inbounds %union.any, ptr %28, i64 -2
  %39 = load ptr, ptr %38, align 8, !tbaa.struct !139
  %40 = icmp ugt i32 %31, 47
  br i1 %40, label %41, label %44, !prof !142

41:                                               ; preds = %37
  %42 = getelementptr inbounds %union.any, ptr %28, i64 -3
  %43 = load ptr, ptr %42, align 8, !tbaa.struct !139
  br label %44

44:                                               ; preds = %41, %37, %33
  %45 = phi ptr [ %42, %41 ], [ %38, %37 ], [ %34, %33 ]
  %46 = phi ptr [ %43, %41 ], [ %22, %37 ], [ %22, %33 ]
  %47 = phi ptr [ %39, %41 ], [ %39, %37 ], [ %21, %33 ]
  %48 = ptrtoint ptr %28 to i64
  %49 = ptrtoint ptr %45 to i64
  %50 = sub i64 %48, %49
  %51 = lshr exact i64 %50, 3
  %52 = trunc i64 %51 to i32
  %53 = sub i32 %25, %52
  br label %54

54:                                               ; preds = %44, %17
  %55 = phi i32 [ %53, %44 ], [ %25, %17 ]
  %56 = phi ptr [ %46, %44 ], [ %22, %17 ]
  %57 = phi ptr [ %47, %44 ], [ %21, %17 ]
  %58 = phi ptr [ %35, %44 ], [ %20, %17 ]
  store i32 %55, ptr @PL_savestack_ix, align 4, !tbaa !127
  switch i32 %31, label %844 [
    i32 35, label %59
    i32 44, label %69
    i32 43, label %66
    i32 26, label %104
    i32 40, label %108
    i32 29, label %112
    i32 27, label %115
    i32 51, label %135
    i32 23, label %189
    i32 32, label %218
    i32 15, label %247
    i32 34, label %250
    i32 42, label %253
    i32 5, label %255
    i32 13, label %260
    i32 33, label %263
    i32 41, label %266
    i32 45, label %267
    i32 38, label %267
    i32 31, label %268
    i32 47, label %269
    i32 28, label %270
    i32 11, label %340
    i32 22, label %349
    i32 8, label %350
    i32 16, label %351
    i32 9, label %353
    i32 10, label %354
    i32 1, label %355
    i32 2, label %364
    i32 53, label %534
    i32 46, label %547
    i32 25, label %558
    i32 3, label %559
    i32 0, label %559
    i32 20, label %563
    i32 52, label %569
    i32 48, label %623
    i32 18, label %685
    i32 30, label %686
    i32 7, label %757
    i32 49, label %763
    i32 39, label %770
    i32 50, label %790
    i32 17, label %800
    i32 37, label %801
    i32 36, label %803
    i32 12, label %805
    i32 14, label %808
    i32 24, label %811
    i32 6, label %812
    i32 19, label %817
    i32 21, label %818
    i32 4, label %822
  ], !prof !143

59:                                               ; preds = %54
  tail call void @Perl_sv_replace(ptr noundef %57, ptr noundef %58) #9
  %60 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !144
  %62 = and i32 %61, 4194304
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %845, label %64, !prof !146

64:                                               ; preds = %59
  store i8 2, ptr @PL_localizing, align 1, !tbaa !137
  %65 = tail call i32 @Perl_mg_set(ptr noundef %57) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %845

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.gv, ptr %57, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !137
  br label %69

69:                                               ; preds = %680, %603, %66, %54
  %70 = phi ptr [ %682, %680 ], [ %571, %603 ], [ %68, %66 ], [ %57, %54 ]
  %71 = phi ptr [ %683, %680 ], [ %604, %603 ], [ %57, %66 ], [ null, %54 ]
  %72 = load ptr, ptr %70, align 8, !tbaa !104
  store ptr %58, ptr %70, align 8, !tbaa !104
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74, !prof !147

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !148
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80, !prof !147

78:                                               ; preds = %74
  %79 = add i32 %76, -1
  store i32 %79, ptr %75, align 8, !tbaa !148
  br label %81

80:                                               ; preds = %74
  tail call void @Perl_sv_free2(ptr noundef nonnull %72, i32 noundef %76) #9
  br label %81

81:                                               ; preds = %80, %78, %69
  %82 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !144
  %84 = and i32 %83, 4194304
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86, !prof !149

86:                                               ; preds = %81
  store i8 2, ptr @PL_localizing, align 1, !tbaa !137
  %87 = tail call i32 @Perl_mg_set(ptr noundef %58) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %88

88:                                               ; preds = %86, %81
  %89 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1
  %90 = load i32, ptr %89, align 8, !tbaa !148
  %91 = icmp ugt i32 %90, 1
  br i1 %91, label %92, label %94, !prof !150

92:                                               ; preds = %88
  %93 = add i32 %90, -1
  store i32 %93, ptr %89, align 8, !tbaa !148
  br label %95

94:                                               ; preds = %88
  tail call void @Perl_sv_free2(ptr noundef %58, i32 noundef %90) #9
  br label %95

95:                                               ; preds = %94, %92
  %96 = icmp eq ptr %71, null
  br i1 %96, label %845, label %97, !prof !147

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !148
  %100 = icmp ugt i32 %99, 1
  br i1 %100, label %101, label %103, !prof !150

101:                                              ; preds = %97
  %102 = add i32 %99, -1
  store i32 %102, ptr %98, align 8, !tbaa !148
  br label %845

103:                                              ; preds = %97
  tail call void @Perl_sv_free2(ptr noundef nonnull %71, i32 noundef %99) #9
  br label %845

104:                                              ; preds = %54
  %105 = load ptr, ptr %58, align 8, !tbaa !104
  %106 = icmp eq ptr %105, %57
  br i1 %106, label %845, label %107, !prof !151

107:                                              ; preds = %104
  tail call void @Perl_safesysfree(ptr noundef %105) #9
  store ptr %57, ptr %58, align 8, !tbaa !104
  br label %845

108:                                              ; preds = %54
  %109 = load ptr, ptr %57, align 8, !tbaa !104
  %110 = icmp eq ptr %109, %58
  br i1 %110, label %845, label %111

111:                                              ; preds = %108
  tail call void @free(ptr noundef %109) #9
  store ptr %58, ptr %57, align 8, !tbaa !104
  br label %845

112:                                              ; preds = %54
  %113 = getelementptr inbounds %struct.gv, ptr %57, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !137
  br label %115

115:                                              ; preds = %188, %185, %169, %166, %155, %145, %140, %135, %112, %54
  %116 = phi ptr [ %114, %112 ], [ %57, %54 ], [ %57, %185 ], [ %57, %188 ], [ %57, %140 ], [ %57, %145 ], [ %57, %155 ], [ %57, %166 ], [ %57, %135 ], [ %57, %169 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !104
  store ptr %58, ptr %116, align 8, !tbaa !104
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119, !prof !152

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sv, ptr %117, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !148
  %122 = icmp ugt i32 %121, 1
  br i1 %122, label %123, label %125, !prof !153

123:                                              ; preds = %119
  %124 = add i32 %121, -1
  store i32 %124, ptr %120, align 8, !tbaa !148
  br label %126

125:                                              ; preds = %119
  tail call void @Perl_sv_free2(ptr noundef nonnull %117, i32 noundef %121) #9
  br label %126

126:                                              ; preds = %125, %123, %115
  %127 = icmp eq ptr %58, null
  br i1 %127, label %845, label %128, !prof !154

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !148
  %131 = icmp ugt i32 %130, 1
  br i1 %131, label %132, label %134, !prof !155

132:                                              ; preds = %128
  %133 = add i32 %130, -1
  store i32 %133, ptr %129, align 8, !tbaa !148
  br label %845

134:                                              ; preds = %128
  tail call void @Perl_sv_free2(ptr noundef nonnull %58, i32 noundef %130) #9
  br label %845

135:                                              ; preds = %54
  %136 = load ptr, ptr %56, align 8, !tbaa !156
  %137 = getelementptr inbounds %struct.xpvgv, ptr %136, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !137
  %139 = icmp eq ptr %138, null
  br i1 %139, label %115, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.hv, ptr %138, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !158
  %143 = and i32 %142, 33554432
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %115, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.hv, ptr %138, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !137
  %148 = load ptr, ptr %138, align 8, !tbaa !160
  %149 = getelementptr inbounds %struct.xpvhv, ptr %148, i64 0, i32 3
  %150 = load i64, ptr %149, align 8, !tbaa !161
  %151 = getelementptr ptr, ptr %147, i64 %150
  %152 = getelementptr ptr, ptr %151, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !137
  %154 = icmp eq ptr %153, null
  br i1 %154, label %115, label %155

155:                                              ; preds = %145
  %156 = getelementptr i8, ptr %151, i64 36
  %157 = load i32, ptr %156, align 4, !tbaa !163
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %115, label %159

159:                                              ; preds = %155
  %160 = icmp eq ptr %58, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !144
  %164 = and i32 %163, 255
  %165 = icmp eq i32 %164, 13
  br i1 %165, label %174, label %166

166:                                              ; preds = %161, %159
  %167 = load ptr, ptr %57, align 8, !tbaa !104
  %168 = icmp eq ptr %167, null
  br i1 %168, label %115, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.sv, ptr %167, i64 0, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !144
  %172 = and i32 %171, 255
  %173 = icmp eq i32 %172, 13
  br i1 %173, label %174, label %115

174:                                              ; preds = %169, %161
  %175 = getelementptr inbounds %struct.gv, ptr %56, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !137
  %177 = icmp ult ptr %57, %176
  %178 = getelementptr inbounds i8, ptr %176, i64 80
  %179 = icmp ugt ptr %57, %178
  %180 = select i1 %177, i1 true, i1 %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.gp, ptr %176, i64 0, i32 4
  %183 = load i32, ptr %182, align 4, !tbaa !165
  %184 = icmp ugt i32 %183, 2
  br i1 %184, label %185, label %188

185:                                              ; preds = %181, %174
  %186 = load i32, ptr @PL_sub_generation, align 4, !tbaa !127
  %187 = add i32 %186, 1
  store i32 %187, ptr @PL_sub_generation, align 4, !tbaa !127
  br label %115

188:                                              ; preds = %181
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %138) #9
  br label %115

189:                                              ; preds = %54
  %190 = getelementptr inbounds %struct.gv, ptr %57, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !137
  %192 = getelementptr inbounds %struct.gp, ptr %191, i64 0, i32 6
  %193 = load ptr, ptr %192, align 8, !tbaa !167
  %194 = icmp eq ptr %193, null
  br i1 %194, label %202, label %195, !prof !168

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 1
  %197 = load i32, ptr %196, align 8, !tbaa !148
  %198 = icmp ugt i32 %197, 1
  br i1 %198, label %199, label %201, !prof !168

199:                                              ; preds = %195
  %200 = add i32 %197, -1
  store i32 %200, ptr %196, align 8, !tbaa !148
  br label %202

201:                                              ; preds = %195
  tail call void @Perl_sv_free2(ptr noundef nonnull %193, i32 noundef %197) #9
  br label %202

202:                                              ; preds = %201, %199, %189
  %203 = load ptr, ptr %190, align 8, !tbaa !137
  %204 = getelementptr inbounds %struct.gp, ptr %203, i64 0, i32 6
  store ptr %58, ptr %204, align 8, !tbaa !167
  %205 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 2
  %206 = load i32, ptr %205, align 4, !tbaa !144
  %207 = and i32 %206, 4194304
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209, !prof !169

209:                                              ; preds = %202
  store i8 2, ptr @PL_localizing, align 1, !tbaa !137
  %210 = tail call i32 @Perl_mg_set(ptr noundef %58) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %211

211:                                              ; preds = %209, %202
  %212 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 1
  %213 = load i32, ptr %212, align 8, !tbaa !148
  %214 = icmp ugt i32 %213, 1
  br i1 %214, label %215, label %217, !prof !169

215:                                              ; preds = %211
  %216 = add i32 %213, -1
  store i32 %216, ptr %212, align 8, !tbaa !148
  br label %845

217:                                              ; preds = %211
  tail call void @Perl_sv_free2(ptr noundef %57, i32 noundef %213) #9
  br label %845

218:                                              ; preds = %54
  %219 = getelementptr inbounds %struct.gv, ptr %57, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !137
  %221 = getelementptr inbounds %struct.gp, ptr %220, i64 0, i32 5
  %222 = load ptr, ptr %221, align 8, !tbaa !170
  %223 = icmp eq ptr %222, null
  br i1 %223, label %231, label %224, !prof !171

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.sv, ptr %222, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !148
  %227 = icmp ugt i32 %226, 1
  br i1 %227, label %228, label %230, !prof !171

228:                                              ; preds = %224
  %229 = add i32 %226, -1
  store i32 %229, ptr %225, align 8, !tbaa !148
  br label %231

230:                                              ; preds = %224
  tail call void @Perl_sv_free2(ptr noundef nonnull %222, i32 noundef %226) #9
  br label %231

231:                                              ; preds = %230, %228, %218
  %232 = load ptr, ptr %219, align 8, !tbaa !137
  %233 = getelementptr inbounds %struct.gp, ptr %232, i64 0, i32 5
  store ptr %58, ptr %233, align 8, !tbaa !170
  %234 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 2
  %235 = load i32, ptr %234, align 4, !tbaa !144
  %236 = and i32 %235, 4194304
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238, !prof !172

238:                                              ; preds = %231
  store i8 2, ptr @PL_localizing, align 1, !tbaa !137
  %239 = tail call i32 @Perl_mg_set(ptr noundef %58) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %240

240:                                              ; preds = %238, %231
  %241 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !148
  %243 = icmp ugt i32 %242, 1
  br i1 %243, label %244, label %246, !prof !172

244:                                              ; preds = %240
  %245 = add i32 %242, -1
  store i32 %245, ptr %241, align 8, !tbaa !148
  br label %845

246:                                              ; preds = %240
  tail call void @Perl_sv_free2(ptr noundef %57, i32 noundef %242) #9
  br label %845

247:                                              ; preds = %54
  %248 = lshr i64 %29, 6
  %249 = trunc i64 %248 to i32
  store i32 %249, ptr %58, align 4, !tbaa !127
  br label %845

250:                                              ; preds = %54
  %251 = ptrtoint ptr %57 to i64
  %252 = trunc i64 %251 to i32
  store i32 %252, ptr %58, align 4, !tbaa !127
  br label %845

253:                                              ; preds = %54
  %254 = ptrtoint ptr %57 to i64
  store i64 %254, ptr %58, align 8, !tbaa !140
  br label %845

255:                                              ; preds = %54
  %256 = icmp ugt i64 %29, 255
  %257 = zext i1 %256 to i8
  store i8 %257, ptr %58, align 1, !tbaa !131
  %258 = icmp eq ptr %58, @PL_tainted
  %259 = select i1 %258, i8 %257, i8 %19, !prof !173
  br label %845

260:                                              ; preds = %54
  %261 = lshr i64 %29, 6
  %262 = trunc i64 %261 to i32
  store i32 %262, ptr %58, align 4, !tbaa !127
  br label %845

263:                                              ; preds = %54
  %264 = ptrtoint ptr %57 to i64
  %265 = trunc i64 %264 to i32
  store i32 %265, ptr %58, align 4, !tbaa !127
  br label %845

266:                                              ; preds = %54
  store ptr %57, ptr %58, align 8, !tbaa !104
  br label %845

267:                                              ; preds = %54, %54
  store ptr %57, ptr %58, align 8, !tbaa !104
  br label %845

268:                                              ; preds = %54
  store ptr %57, ptr %58, align 8, !tbaa !104
  br label %845

269:                                              ; preds = %54
  store ptr %57, ptr %58, align 8, !tbaa !104
  br label %845

270:                                              ; preds = %54
  %271 = getelementptr inbounds %struct.gv, ptr %57, i64 0, i32 3
  %272 = load ptr, ptr %271, align 8, !tbaa !137
  %273 = getelementptr inbounds %struct.gp, ptr %272, i64 0, i32 3
  %274 = load i32, ptr %273, align 8, !tbaa !174
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %279, !prof !175

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.gp, ptr %272, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !176
  br label %279

279:                                              ; preds = %276, %270
  %280 = phi ptr [ %278, %276 ], [ null, %270 ]
  %281 = icmp eq ptr %280, null
  tail call void @Perl_gp_free(ptr noundef %57) #9
  store ptr %58, ptr %271, align 8, !tbaa !137
  %282 = load ptr, ptr %57, align 8, !tbaa !156
  %283 = getelementptr inbounds %struct.xpvgv, ptr %282, i64 0, i32 5
  %284 = load ptr, ptr %283, align 8, !tbaa !137
  %285 = icmp eq ptr %284, null
  br i1 %285, label %333, label %286, !prof !177

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.hv, ptr %284, i64 0, i32 2
  %288 = load i32, ptr %287, align 4, !tbaa !158
  %289 = and i32 %288, 33554432
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %333, label %291, !prof !177

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.hv, ptr %284, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !137
  %294 = load ptr, ptr %284, align 8, !tbaa !160
  %295 = getelementptr inbounds %struct.xpvhv, ptr %294, i64 0, i32 3
  %296 = load i64, ptr %295, align 8, !tbaa !161
  %297 = getelementptr ptr, ptr %293, i64 %296
  %298 = getelementptr ptr, ptr %297, i64 1
  %299 = load ptr, ptr %298, align 8, !tbaa !137
  %300 = icmp eq ptr %299, null
  br i1 %300, label %333, label %301, !prof !177

301:                                              ; preds = %291
  %302 = getelementptr i8, ptr %297, i64 36
  %303 = load i32, ptr %302, align 4, !tbaa !163
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %333, label %305, !prof !177

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.xpvgv, ptr %282, i64 0, i32 4
  %307 = load ptr, ptr %306, align 8, !tbaa !137
  %308 = getelementptr inbounds %struct.hek, ptr %307, i64 0, i32 1
  %309 = load i32, ptr %308, align 4, !tbaa !178
  %310 = icmp eq i32 %309, 3
  br i1 %310, label %311, label %316, !prof !177

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.hek, ptr %307, i64 0, i32 2
  %313 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %312, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #10
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %284) #9
  br label %333

316:                                              ; preds = %311, %305
  br i1 %281, label %317, label %325, !prof !175

317:                                              ; preds = %316
  %318 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 3
  %319 = load i32, ptr %318, align 8, !tbaa !174
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %333, !prof !175

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !176
  %324 = icmp eq ptr %323, null
  br i1 %324, label %333, label %325, !prof !175

325:                                              ; preds = %321, %316
  %326 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 4
  %327 = load i32, ptr %326, align 4, !tbaa !165
  %328 = icmp ugt i32 %327, 1
  br i1 %328, label %329, label %332

329:                                              ; preds = %325
  %330 = load i32, ptr @PL_sub_generation, align 4, !tbaa !127
  %331 = add i32 %330, 1
  store i32 %331, ptr @PL_sub_generation, align 4, !tbaa !127
  br label %333

332:                                              ; preds = %325
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %284) #9
  br label %333

333:                                              ; preds = %332, %329, %321, %317, %315, %301, %291, %286, %279
  %334 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 1
  %335 = load i32, ptr %334, align 8, !tbaa !148
  %336 = icmp ugt i32 %335, 1
  br i1 %336, label %337, label %339, !prof !175

337:                                              ; preds = %333
  %338 = add i32 %335, -1
  store i32 %338, ptr %334, align 8, !tbaa !148
  br label %845

339:                                              ; preds = %333
  tail call void @Perl_sv_free2(ptr noundef %57, i32 noundef %335) #9
  br label %845

340:                                              ; preds = %54
  %341 = icmp eq ptr %58, null
  br i1 %341, label %845, label %342, !prof !180

342:                                              ; preds = %340
  %343 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1
  %344 = load i32, ptr %343, align 8, !tbaa !148
  %345 = icmp ugt i32 %344, 1
  br i1 %345, label %346, label %348, !prof !181

346:                                              ; preds = %342
  %347 = add i32 %344, -1
  store i32 %347, ptr %343, align 8, !tbaa !148
  br label %845

348:                                              ; preds = %342
  tail call void @Perl_sv_free2(ptr noundef nonnull %58, i32 noundef %344) #9
  br label %845

349:                                              ; preds = %54
  tail call void @Perl_padname_free(ptr noundef %58) #9
  br label %845

350:                                              ; preds = %54
  tail call void @Perl_refcounted_he_free(ptr noundef %58) #9
  br label %845

351:                                              ; preds = %54
  %352 = tail call ptr @Perl_sv_2mortal(ptr noundef %58) #9
  br label %845

353:                                              ; preds = %54
  tail call void @Perl_op_free(ptr noundef %58) #9
  br label %845

354:                                              ; preds = %54
  tail call void @Perl_safesysfree(ptr noundef %58) #9
  br label %845

355:                                              ; preds = %54
  %356 = lshr i32 %30, 6
  %357 = and i32 %356, 127
  %358 = load ptr, ptr @PL_curpad, align 8, !tbaa !104
  %359 = lshr i64 %29, 13
  %360 = getelementptr inbounds ptr, ptr %358, i64 %359
  %361 = zext nneg i32 %357 to i64
  %362 = getelementptr inbounds ptr, ptr %360, i64 %361
  %363 = getelementptr inbounds ptr, ptr %362, i64 -1
  br label %368

364:                                              ; preds = %54
  %365 = load ptr, ptr @PL_curpad, align 8, !tbaa !104
  %366 = lshr i64 %29, 6
  %367 = getelementptr inbounds ptr, ptr %365, i64 %366
  br label %368

368:                                              ; preds = %364, %355
  %369 = phi ptr [ %367, %364 ], [ %363, %355 ]
  %370 = phi i32 [ 1, %364 ], [ %357, %355 ]
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %845, label %372, !prof !182

372:                                              ; preds = %368, %527
  %373 = phi i32 [ %531, %527 ], [ %370, %368 ]
  %374 = phi ptr [ %532, %527 ], [ %369, %368 ]
  %375 = load ptr, ptr %374, align 8, !tbaa !104
  %376 = getelementptr inbounds %struct.sv, ptr %375, i64 0, i32 1
  %377 = load i32, ptr %376, align 8, !tbaa !148
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %466, !prof !183

379:                                              ; preds = %372
  %380 = getelementptr inbounds %struct.sv, ptr %375, i64 0, i32 2
  %381 = load i32, ptr %380, align 4, !tbaa !144
  %382 = and i32 %381, 1048576
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %466, !prof !184

384:                                              ; preds = %379
  %385 = and i32 %381, 467732480
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %418, label %387, !prof !185

387:                                              ; preds = %384
  %388 = and i32 %381, 134283264
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %392, label %390, !prof !186

390:                                              ; preds = %387
  %391 = and i32 %381, -135331841
  store i32 %391, ptr %380, align 4, !tbaa !144
  br label %392

392:                                              ; preds = %390, %387
  %393 = load i32, ptr %380, align 4, !tbaa !144
  %394 = and i32 %393, 33554432
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %402, label %396, !prof !187

396:                                              ; preds = %392
  %397 = and i32 %393, 255
  %398 = icmp eq i32 %397, 12
  br i1 %398, label %399, label %400, !prof !188

399:                                              ; preds = %396
  tail call void @Perl_hv_kill_backrefs(ptr noundef %375) #9
  br label %402

400:                                              ; preds = %396
  %401 = tail call i32 @Perl_sv_backoff(ptr noundef %375) #9
  br label %402

402:                                              ; preds = %400, %399, %392
  %403 = load i32, ptr %380, align 4, !tbaa !144
  %404 = and i32 %403, 14680064
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %413, label %406, !prof !189

406:                                              ; preds = %402
  %407 = tail call i32 @Perl_sv_unmagic(ptr noundef %375, i32 noundef 60) #9
  %408 = load i32, ptr %380, align 4, !tbaa !144
  %409 = and i32 %408, 255
  %410 = icmp eq i32 %409, 13
  br i1 %410, label %413, label %411, !prof !190

411:                                              ; preds = %406
  %412 = tail call i32 @Perl_mg_free(ptr noundef %375) #9
  br label %413

413:                                              ; preds = %411, %406, %402
  %414 = load i32, ptr %380, align 4, !tbaa !144
  %415 = and i32 %414, 427886592
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %418, label %417, !prof !191

417:                                              ; preds = %413
  tail call void @Perl_sv_force_normal_flags(ptr noundef %375, i32 noundef 5) #9
  br label %418

418:                                              ; preds = %417, %413, %384
  %419 = load i32, ptr %380, align 4, !tbaa !144
  %420 = trunc i32 %419 to i8
  switch i8 %420, label %461 [
    i8 0, label %463
    i8 11, label %421
    i8 12, label %422
    i8 13, label %423
  ], !prof !192

421:                                              ; preds = %418
  tail call void @Perl_av_clear(ptr noundef %375) #9
  br label %463

422:                                              ; preds = %418
  tail call void @Perl_hv_clear(ptr noundef %375) #9
  br label %463

423:                                              ; preds = %418
  %424 = load ptr, ptr %375, align 8, !tbaa !104
  %425 = getelementptr inbounds %struct.xpvcv, ptr %424, i64 0, i32 12
  %426 = load i32, ptr %425, align 4, !tbaa !193
  %427 = and i32 %426, 32768
  %428 = icmp eq i32 %427, 0
  %429 = getelementptr inbounds %struct.xpvcv, ptr %424, i64 0, i32 7
  br i1 %428, label %430, label %434

430:                                              ; preds = %423
  %431 = load ptr, ptr %429, align 8, !tbaa !137
  %432 = load ptr, ptr %431, align 8, !tbaa !156
  %433 = getelementptr inbounds %struct.xpvgv, ptr %432, i64 0, i32 4
  br label %434

434:                                              ; preds = %423, %430
  %435 = phi ptr [ %433, %430 ], [ %429, %423 ]
  %436 = load ptr, ptr %435, align 8, !tbaa !137
  %437 = getelementptr inbounds i8, ptr %436, i64 -8
  %438 = load i64, ptr %437, align 8, !tbaa !137
  %439 = add i64 %438, 1
  store i64 %439, ptr %437, align 8, !tbaa !137
  tail call void @Perl_cv_undef(ptr noundef nonnull %375) #9
  %440 = load ptr, ptr %375, align 8, !tbaa !195
  %441 = getelementptr inbounds %struct.xpvcv, ptr %440, i64 0, i32 12
  %442 = load i32, ptr %441, align 4, !tbaa !193
  %443 = and i32 %442, 32768
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %434
  %446 = getelementptr inbounds %struct.xpvcv, ptr %440, i64 0, i32 7
  %447 = load ptr, ptr %446, align 8, !tbaa !137
  br label %448

448:                                              ; preds = %445, %434
  %449 = phi ptr [ %447, %445 ], [ null, %434 ]
  %450 = icmp eq ptr %449, null
  br i1 %450, label %454, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct.xpvcv, ptr %440, i64 0, i32 7
  %453 = load ptr, ptr %452, align 8, !tbaa !137
  tail call void @Perl_unshare_hek(ptr noundef %453) #9
  br label %454

454:                                              ; preds = %451, %448
  %455 = load ptr, ptr %375, align 8, !tbaa !197
  %456 = getelementptr inbounds %struct.xpvcv, ptr %455, i64 0, i32 7
  store ptr %436, ptr %456, align 8, !tbaa !137
  %457 = load ptr, ptr %375, align 8, !tbaa !197
  %458 = getelementptr inbounds %struct.xpvcv, ptr %457, i64 0, i32 12
  %459 = load i32, ptr %458, align 4, !tbaa !193
  %460 = or i32 %459, 98304
  store i32 %460, ptr %458, align 4, !tbaa !193
  br label %463

461:                                              ; preds = %418
  %462 = and i32 %419, 1610547455
  store i32 %462, ptr %380, align 4, !tbaa !144
  br label %463

463:                                              ; preds = %461, %454, %422, %421, %418
  %464 = load i32, ptr %380, align 4, !tbaa !144
  %465 = and i32 %464, -393217
  br label %527

466:                                              ; preds = %379, %372
  %467 = getelementptr inbounds %struct.sv, ptr %375, i64 0, i32 2
  %468 = load i32, ptr %467, align 4, !tbaa !144
  %469 = trunc i32 %468 to i8
  switch i8 %469, label %515 [
    i8 11, label %470
    i8 12, label %472
    i8 13, label %474
  ], !prof !198

470:                                              ; preds = %466
  %471 = tail call ptr @Perl_newSV_type(i32 noundef 11) #9
  store ptr %471, ptr %374, align 8, !tbaa !104
  br label %517

472:                                              ; preds = %466
  %473 = tail call ptr @Perl_newSV_type(i32 noundef 12) #9
  store ptr %473, ptr %374, align 8, !tbaa !104
  br label %517

474:                                              ; preds = %466
  %475 = load ptr, ptr %375, align 8, !tbaa !104
  %476 = getelementptr inbounds %struct.xpvcv, ptr %475, i64 0, i32 12
  %477 = load i32, ptr %476, align 4, !tbaa !193
  %478 = and i32 %477, 32768
  %479 = icmp eq i32 %478, 0
  %480 = getelementptr inbounds %struct.xpvcv, ptr %475, i64 0, i32 7
  br i1 %479, label %481, label %485

481:                                              ; preds = %474
  %482 = load ptr, ptr %480, align 8, !tbaa !137
  %483 = load ptr, ptr %482, align 8, !tbaa !156
  %484 = getelementptr inbounds %struct.xpvgv, ptr %483, i64 0, i32 4
  br label %485

485:                                              ; preds = %474, %481
  %486 = phi ptr [ %484, %481 ], [ %480, %474 ]
  %487 = load ptr, ptr %486, align 8, !tbaa !137
  %488 = tail call ptr @Perl_newSV_type(i32 noundef 13) #9
  store ptr %488, ptr %374, align 8, !tbaa !104
  %489 = load ptr, ptr %488, align 8, !tbaa !195
  %490 = getelementptr inbounds %struct.xpvcv, ptr %489, i64 0, i32 12
  %491 = load i32, ptr %490, align 4, !tbaa !193
  %492 = and i32 %491, 32768
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %485
  %495 = getelementptr inbounds %struct.xpvcv, ptr %489, i64 0, i32 7
  %496 = load ptr, ptr %495, align 8, !tbaa !137
  br label %497

497:                                              ; preds = %494, %485
  %498 = phi ptr [ %496, %494 ], [ null, %485 ]
  %499 = icmp eq ptr %498, null
  br i1 %499, label %503, label %500

500:                                              ; preds = %497
  %501 = getelementptr inbounds %struct.xpvcv, ptr %489, i64 0, i32 7
  %502 = load ptr, ptr %501, align 8, !tbaa !137
  tail call void @Perl_unshare_hek(ptr noundef %502) #9
  br label %503

503:                                              ; preds = %500, %497
  %504 = getelementptr inbounds i8, ptr %487, i64 -8
  %505 = load i64, ptr %504, align 8, !tbaa !137
  %506 = add i64 %505, 1
  store i64 %506, ptr %504, align 8, !tbaa !137
  %507 = load ptr, ptr %374, align 8, !tbaa !104
  %508 = load ptr, ptr %507, align 8, !tbaa !197
  %509 = getelementptr inbounds %struct.xpvcv, ptr %508, i64 0, i32 7
  store ptr %487, ptr %509, align 8, !tbaa !137
  %510 = load ptr, ptr %374, align 8, !tbaa !104
  %511 = load ptr, ptr %510, align 8, !tbaa !197
  %512 = getelementptr inbounds %struct.xpvcv, ptr %511, i64 0, i32 12
  %513 = load i32, ptr %512, align 4, !tbaa !193
  %514 = or i32 %513, 98304
  store i32 %514, ptr %512, align 4, !tbaa !193
  br label %517

515:                                              ; preds = %466
  %516 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  store ptr %516, ptr %374, align 8, !tbaa !104
  br label %517

517:                                              ; preds = %515, %503, %472, %470
  %518 = load i32, ptr %376, align 8, !tbaa !148
  %519 = icmp ugt i32 %518, 1
  br i1 %519, label %520, label %522, !prof !199

520:                                              ; preds = %517
  %521 = add i32 %518, -1
  store i32 %521, ptr %376, align 8, !tbaa !148
  br label %523

522:                                              ; preds = %517
  tail call void @Perl_sv_free2(ptr noundef %375, i32 noundef %518) #9
  br label %523

523:                                              ; preds = %522, %520
  %524 = load ptr, ptr %374, align 8, !tbaa !104
  %525 = getelementptr inbounds %struct.sv, ptr %524, i64 0, i32 2
  %526 = load i32, ptr %525, align 4, !tbaa !144
  br label %527

527:                                              ; preds = %523, %463
  %528 = phi i32 [ %526, %523 ], [ %465, %463 ]
  %529 = phi ptr [ %525, %523 ], [ %380, %463 ]
  %530 = or i32 %528, 262144
  store i32 %530, ptr %529, align 4, !tbaa !144
  %531 = add nsw i32 %373, -1
  %532 = getelementptr inbounds ptr, ptr %374, i64 -1
  %533 = icmp eq i32 %531, 0
  br i1 %533, label %845, label %372, !prof !200, !llvm.loop !201

534:                                              ; preds = %54
  %535 = ptrtoint ptr %57 to i64
  %536 = trunc i64 %535 to i32
  %537 = tail call ptr @Perl_hv_common_key_len(ptr noundef %58, ptr noundef %56, i32 noundef %536, i32 noundef 68, ptr noundef null, i32 noundef 0) #9
  %538 = icmp eq ptr %58, null
  br i1 %538, label %546, label %539, !prof !204

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1
  %541 = load i32, ptr %540, align 8, !tbaa !148
  %542 = icmp ugt i32 %541, 1
  br i1 %542, label %543, label %545, !prof !205

543:                                              ; preds = %539
  %544 = add i32 %541, -1
  store i32 %544, ptr %540, align 8, !tbaa !148
  br label %546

545:                                              ; preds = %539
  tail call void @Perl_sv_free2(ptr noundef nonnull %58, i32 noundef %541) #9
  br label %546

546:                                              ; preds = %545, %543, %534
  tail call void @Perl_safesysfree(ptr noundef %56) #9
  br label %845

547:                                              ; preds = %54
  %548 = ptrtoint ptr %57 to i64
  %549 = tail call ptr @Perl_av_delete(ptr noundef %58, i64 noundef %548, i32 noundef 4) #9
  %550 = icmp eq ptr %58, null
  br i1 %550, label %845, label %551

551:                                              ; preds = %547
  %552 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1
  %553 = load i32, ptr %552, align 8, !tbaa !148
  %554 = icmp ugt i32 %553, 1
  br i1 %554, label %555, label %557

555:                                              ; preds = %551
  %556 = add i32 %553, -1
  store i32 %556, ptr %552, align 8, !tbaa !148
  br label %845

557:                                              ; preds = %551
  tail call void @Perl_sv_free2(ptr noundef nonnull %58, i32 noundef %553) #9
  br label %845

558:                                              ; preds = %54
  tail call void %57(ptr noundef %58) #9, !prof !206
  br label %845

559:                                              ; preds = %54, %54
  %560 = lshr i64 %29, 6
  %561 = trunc i64 %560 to i32
  %562 = sub i32 %55, %561
  store i32 %562, ptr @PL_savestack_ix, align 4, !tbaa !127
  br label %845

563:                                              ; preds = %54
  %564 = load ptr, ptr @PL_stack_base, align 8, !tbaa !104
  %565 = ptrtoint ptr %58 to i64
  %566 = shl i64 %565, 32
  %567 = ashr exact i64 %566, 32
  %568 = getelementptr inbounds ptr, ptr %564, i64 %567
  store ptr %568, ptr @PL_stack_sp, align 8, !tbaa !104
  br label %845

569:                                              ; preds = %54
  %570 = ptrtoint ptr %57 to i64
  %571 = tail call ptr @Perl_av_fetch(ptr noundef %56, i64 noundef %570, i32 noundef 1) #9
  %572 = getelementptr inbounds %struct.av, ptr %56, i64 0, i32 2
  %573 = load i32, ptr %572, align 4, !tbaa !112
  %574 = and i32 %573, -1073741824
  %575 = icmp ne i32 %574, -2147483648
  %576 = icmp eq ptr %58, null
  %577 = select i1 %575, i1 true, i1 %576
  br i1 %577, label %585, label %578

578:                                              ; preds = %569
  %579 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1
  %580 = load i32, ptr %579, align 8, !tbaa !148
  %581 = icmp ugt i32 %580, 1
  br i1 %581, label %582, label %584

582:                                              ; preds = %578
  %583 = add i32 %580, -1
  store i32 %583, ptr %579, align 8, !tbaa !148
  br label %585

584:                                              ; preds = %578
  tail call void @Perl_sv_free2(ptr noundef nonnull %58, i32 noundef %580) #9
  br label %585

585:                                              ; preds = %584, %582, %569
  %586 = icmp eq ptr %571, null
  br i1 %586, label %605, label %587

587:                                              ; preds = %585
  %588 = load ptr, ptr %571, align 8, !tbaa !104
  %589 = icmp eq ptr %588, null
  %590 = icmp eq ptr %588, @PL_sv_undef
  %591 = or i1 %589, %590
  br i1 %591, label %603, label %592

592:                                              ; preds = %587
  %593 = load i32, ptr %572, align 4, !tbaa !144
  %594 = and i32 %593, 8388608
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %603, label %596

596:                                              ; preds = %592
  %597 = tail call ptr @Perl_mg_find(ptr noundef %56, i32 noundef 80) #9
  %598 = icmp eq ptr %597, null
  br i1 %598, label %603, label %599

599:                                              ; preds = %596
  %600 = getelementptr inbounds %struct.sv, ptr %588, i64 0, i32 1
  %601 = load i32, ptr %600, align 8, !tbaa !148
  %602 = add i32 %601, 1
  store i32 %602, ptr %600, align 8, !tbaa !148
  br label %603

603:                                              ; preds = %599, %596, %592, %587
  %604 = phi ptr [ %56, %596 ], [ %56, %592 ], [ %56, %599 ], [ %23, %587 ]
  br i1 %591, label %605, label %69

605:                                              ; preds = %603, %585
  %606 = phi ptr [ %604, %603 ], [ %23, %585 ]
  %607 = icmp eq ptr %56, null
  br i1 %607, label %615, label %608

608:                                              ; preds = %605
  %609 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 1
  %610 = load i32, ptr %609, align 8, !tbaa !148
  %611 = icmp ugt i32 %610, 1
  br i1 %611, label %612, label %614

612:                                              ; preds = %608
  %613 = add i32 %610, -1
  store i32 %613, ptr %609, align 8, !tbaa !148
  br label %615

614:                                              ; preds = %608
  tail call void @Perl_sv_free2(ptr noundef nonnull %56, i32 noundef %610) #9
  br label %615

615:                                              ; preds = %614, %612, %605
  br i1 %576, label %845, label %616

616:                                              ; preds = %615
  %617 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1
  %618 = load i32, ptr %617, align 8, !tbaa !148
  %619 = icmp ugt i32 %618, 1
  br i1 %619, label %620, label %622

620:                                              ; preds = %616
  %621 = add i32 %618, -1
  store i32 %621, ptr %617, align 8, !tbaa !148
  br label %845

622:                                              ; preds = %616
  tail call void @Perl_sv_free2(ptr noundef nonnull %58, i32 noundef %618) #9
  br label %845

623:                                              ; preds = %54
  %624 = tail call ptr @Perl_hv_common(ptr noundef %56, ptr noundef %57, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #9
  %625 = icmp eq ptr %57, null
  br i1 %625, label %633, label %626

626:                                              ; preds = %623
  %627 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 1
  %628 = load i32, ptr %627, align 8, !tbaa !148
  %629 = icmp ugt i32 %628, 1
  br i1 %629, label %630, label %632

630:                                              ; preds = %626
  %631 = add i32 %628, -1
  store i32 %631, ptr %627, align 8, !tbaa !148
  br label %633

632:                                              ; preds = %626
  tail call void @Perl_sv_free2(ptr noundef nonnull %57, i32 noundef %628) #9
  br label %633

633:                                              ; preds = %632, %630, %623
  %634 = icmp eq ptr %624, null
  br i1 %634, label %660, label %635

635:                                              ; preds = %633
  %636 = getelementptr inbounds %struct.he, ptr %624, i64 0, i32 2
  %637 = load ptr, ptr %636, align 8, !tbaa !137
  %638 = icmp eq ptr %637, null
  %639 = icmp eq ptr %637, @PL_sv_undef
  %640 = or i1 %638, %639
  br i1 %640, label %656, label %641

641:                                              ; preds = %635
  %642 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %643 = load i32, ptr %642, align 4, !tbaa !144
  %644 = and i32 %643, 8388608
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %656, label %646

646:                                              ; preds = %641
  %647 = tail call ptr @Perl_mg_find(ptr noundef %56, i32 noundef 80) #9
  %648 = icmp eq ptr %647, null
  br i1 %648, label %656, label %649

649:                                              ; preds = %646
  %650 = load ptr, ptr %636, align 8, !tbaa !104
  %651 = icmp eq ptr %650, null
  br i1 %651, label %656, label %652

652:                                              ; preds = %649
  %653 = getelementptr inbounds %struct.sv, ptr %650, i64 0, i32 1
  %654 = load i32, ptr %653, align 8, !tbaa !148
  %655 = add i32 %654, 1
  store i32 %655, ptr %653, align 8, !tbaa !148
  br label %656

656:                                              ; preds = %652, %649, %646, %641, %635
  %657 = phi i32 [ 5, %646 ], [ 5, %641 ], [ 0, %635 ], [ 5, %649 ], [ 5, %652 ]
  %658 = phi ptr [ %636, %646 ], [ %636, %641 ], [ %24, %635 ], [ %636, %649 ], [ %636, %652 ]
  %659 = phi ptr [ %56, %646 ], [ %56, %641 ], [ %23, %635 ], [ %56, %649 ], [ %56, %652 ]
  br i1 %640, label %660, label %680

660:                                              ; preds = %656, %633
  %661 = phi ptr [ %658, %656 ], [ %24, %633 ]
  %662 = phi ptr [ %659, %656 ], [ %23, %633 ]
  %663 = icmp eq ptr %56, null
  br i1 %663, label %671, label %664

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 1
  %666 = load i32, ptr %665, align 8, !tbaa !148
  %667 = icmp ugt i32 %666, 1
  br i1 %667, label %668, label %670

668:                                              ; preds = %664
  %669 = add i32 %666, -1
  store i32 %669, ptr %665, align 8, !tbaa !148
  br label %671

670:                                              ; preds = %664
  tail call void @Perl_sv_free2(ptr noundef nonnull %56, i32 noundef %666) #9
  br label %671

671:                                              ; preds = %670, %668, %660
  %672 = icmp eq ptr %58, null
  br i1 %672, label %680, label %673

673:                                              ; preds = %671
  %674 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 1
  %675 = load i32, ptr %674, align 8, !tbaa !148
  %676 = icmp ugt i32 %675, 1
  br i1 %676, label %677, label %679

677:                                              ; preds = %673
  %678 = add i32 %675, -1
  store i32 %678, ptr %674, align 8, !tbaa !148
  br label %680

679:                                              ; preds = %673
  tail call void @Perl_sv_free2(ptr noundef nonnull %58, i32 noundef %675) #9
  br label %680

680:                                              ; preds = %679, %677, %671, %656
  %681 = phi i32 [ %657, %656 ], [ 4, %677 ], [ 4, %679 ], [ 4, %671 ]
  %682 = phi ptr [ %658, %656 ], [ %661, %677 ], [ %661, %679 ], [ %661, %671 ]
  %683 = phi ptr [ %659, %656 ], [ %662, %677 ], [ %662, %679 ], [ %662, %671 ]
  %684 = icmp eq i32 %681, 5
  br i1 %684, label %69, label %845

685:                                              ; preds = %54
  store ptr %58, ptr @PL_op, align 8, !tbaa !104
  br label %845

686:                                              ; preds = %54
  %687 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !207
  %688 = and i32 %687, 131072
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %713, label %690, !prof !209

690:                                              ; preds = %686
  %691 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %692 = getelementptr inbounds %struct.gv, ptr %691, i64 0, i32 3
  %693 = load ptr, ptr %692, align 8, !tbaa !137
  %694 = getelementptr inbounds %struct.gp, ptr %693, i64 0, i32 5
  %695 = load ptr, ptr %694, align 8, !tbaa !170
  %696 = icmp eq ptr %695, null
  br i1 %696, label %713, label %697, !prof !210

697:                                              ; preds = %690, %706
  %698 = phi ptr [ %711, %706 ], [ %695, %690 ]
  %699 = phi ptr [ %710, %706 ], [ %694, %690 ]
  store ptr null, ptr %699, align 8, !tbaa !170
  %700 = getelementptr inbounds %struct.sv, ptr %698, i64 0, i32 1
  %701 = load i32, ptr %700, align 8, !tbaa !148
  %702 = icmp ugt i32 %701, 1
  br i1 %702, label %703, label %705, !prof !211

703:                                              ; preds = %697
  %704 = add i32 %701, -1
  store i32 %704, ptr %700, align 8, !tbaa !148
  br label %706

705:                                              ; preds = %697
  tail call void @Perl_sv_free2(ptr noundef nonnull %698, i32 noundef %701) #9
  br label %706

706:                                              ; preds = %705, %703
  %707 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %708 = getelementptr inbounds %struct.gv, ptr %707, i64 0, i32 3
  %709 = load ptr, ptr %708, align 8, !tbaa !137
  %710 = getelementptr inbounds %struct.gp, ptr %709, i64 0, i32 5
  %711 = load ptr, ptr %710, align 8, !tbaa !170
  %712 = icmp eq ptr %711, null
  br i1 %712, label %713, label %697, !prof !212, !llvm.loop !213

713:                                              ; preds = %706, %690, %686
  %714 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !214
  tail call void @Perl_refcounted_he_free(ptr noundef %714) #9
  store ptr %58, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !214
  %715 = ptrtoint ptr %57 to i64
  %716 = trunc i64 %715 to i32
  store i32 %716, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !127
  %717 = and i32 %716, 131072
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %744, label %719, !prof !215

719:                                              ; preds = %713
  %720 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %721 = getelementptr inbounds %struct.gv, ptr %720, i64 0, i32 3
  %722 = load ptr, ptr %721, align 8, !tbaa !137
  %723 = getelementptr inbounds %struct.gp, ptr %722, i64 0, i32 5
  %724 = load ptr, ptr %723, align 8, !tbaa !170
  %725 = icmp eq ptr %724, null
  br i1 %725, label %733, label %726, !prof !216

726:                                              ; preds = %719
  %727 = getelementptr inbounds %struct.sv, ptr %724, i64 0, i32 1
  %728 = load i32, ptr %727, align 8, !tbaa !148
  %729 = icmp ugt i32 %728, 1
  br i1 %729, label %730, label %732

730:                                              ; preds = %726
  %731 = add i32 %728, -1
  store i32 %731, ptr %727, align 8, !tbaa !148
  br label %733

732:                                              ; preds = %726
  tail call void @Perl_sv_free2(ptr noundef nonnull %724, i32 noundef %728) #9
  br label %733

733:                                              ; preds = %732, %730, %719
  %734 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %735 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %736 = add nsw i32 %735, -1
  store i32 %736, ptr @PL_savestack_ix, align 4, !tbaa !127
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %union.any, ptr %734, i64 %737
  %739 = load ptr, ptr %738, align 8, !tbaa !137
  %740 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %741 = getelementptr inbounds %struct.gv, ptr %740, i64 0, i32 3
  %742 = load ptr, ptr %741, align 8, !tbaa !137
  %743 = getelementptr inbounds %struct.gp, ptr %742, i64 0, i32 5
  store ptr %739, ptr %743, align 8, !tbaa !170
  br label %744

744:                                              ; preds = %733, %713
  %745 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %746 = getelementptr inbounds %struct.gv, ptr %745, i64 0, i32 3
  %747 = load ptr, ptr %746, align 8, !tbaa !137
  %748 = getelementptr inbounds %struct.gp, ptr %747, i64 0, i32 5
  %749 = load ptr, ptr %748, align 8, !tbaa !170
  %750 = icmp eq ptr %749, null
  br i1 %750, label %751, label %845, !prof !217

751:                                              ; preds = %744
  %752 = tail call ptr @Perl_newSV_type(i32 noundef 12) #9
  tail call void @Perl_sv_magic(ptr noundef %752, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #9
  %753 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %754 = getelementptr inbounds %struct.gv, ptr %753, i64 0, i32 3
  %755 = load ptr, ptr %754, align 8, !tbaa !137
  %756 = getelementptr inbounds %struct.gp, ptr %755, i64 0, i32 5
  store ptr %752, ptr %756, align 8, !tbaa !170
  br label %845

757:                                              ; preds = %54
  store ptr %58, ptr @PL_comppad, align 8, !tbaa !104
  %758 = icmp eq ptr %58, null
  br i1 %758, label %762, label %759, !prof !218

759:                                              ; preds = %757
  %760 = getelementptr inbounds %struct.av, ptr %58, i64 0, i32 3
  %761 = load ptr, ptr %760, align 8, !tbaa !137
  store ptr %761, ptr @PL_curpad, align 8, !tbaa !104
  br label %845

762:                                              ; preds = %757
  store ptr null, ptr @PL_curpad, align 8, !tbaa !104
  br label %845

763:                                              ; preds = %54
  %764 = getelementptr inbounds %struct.av, ptr %57, i64 0, i32 3
  %765 = load ptr, ptr %764, align 8, !tbaa !137
  %766 = ptrtoint ptr %58 to i64
  %767 = getelementptr inbounds ptr, ptr %765, i64 %766
  %768 = load ptr, ptr %767, align 8, !tbaa !104
  %769 = tail call ptr @Perl_sv_2mortal(ptr noundef %768) #9
  store ptr %56, ptr %767, align 8, !tbaa !104
  br label %845

770:                                              ; preds = %54
  %771 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !104
  %772 = load ptr, ptr @PL_stack_base, align 8, !tbaa !104
  %773 = ptrtoint ptr %771 to i64
  %774 = ptrtoint ptr %772 to i64
  %775 = sub i64 %773, %774
  %776 = ashr exact i64 %775, 3
  %777 = load ptr, ptr %58, align 8, !tbaa !115
  %778 = getelementptr inbounds %struct.xpvav, ptr %777, i64 0, i32 2
  store i64 %776, ptr %778, align 8, !tbaa !119
  %779 = getelementptr inbounds %struct.av, ptr %57, i64 0, i32 3
  %780 = load ptr, ptr %779, align 8, !tbaa !137
  store ptr %780, ptr @PL_stack_base, align 8, !tbaa !104
  %781 = load ptr, ptr %57, align 8, !tbaa !115
  %782 = getelementptr inbounds %struct.xpvav, ptr %781, i64 0, i32 3
  %783 = load i64, ptr %782, align 8, !tbaa !219
  %784 = getelementptr inbounds ptr, ptr %780, i64 %783
  store ptr %784, ptr @PL_stack_max, align 8, !tbaa !104
  %785 = load ptr, ptr %57, align 8, !tbaa !115
  %786 = getelementptr inbounds %struct.xpvav, ptr %785, i64 0, i32 2
  %787 = load i64, ptr %786, align 8, !tbaa !119
  %788 = getelementptr inbounds ptr, ptr %780, i64 %787
  store ptr %788, ptr @PL_stack_sp, align 8, !tbaa !104
  store ptr %57, ptr @PL_curstack, align 8, !tbaa !104
  %789 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !104
  store ptr %57, ptr %789, align 8, !tbaa !109
  br label %845

790:                                              ; preds = %54
  %791 = ptrtoint ptr %57 to i64
  %792 = trunc i64 %791 to i32
  %793 = xor i32 %792, -1
  %794 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %795 = load i32, ptr %794, align 4, !tbaa !144
  %796 = and i32 %795, %793
  %797 = ptrtoint ptr %58 to i64
  %798 = trunc i64 %797 to i32
  %799 = or i32 %796, %798
  store i32 %799, ptr %794, align 4, !tbaa !144
  br label %845

800:                                              ; preds = %54
  tail call void @Perl_sv_clear(ptr noundef %58) #9
  br label %845

801:                                              ; preds = %54
  %802 = ptrtoint ptr %57 to i64
  store i64 %802, ptr %58, align 8, !tbaa !140
  br label %845

803:                                              ; preds = %54
  %804 = ptrtoint ptr %57 to i64
  store i64 %804, ptr %58, align 8, !tbaa !140
  br label %845

805:                                              ; preds = %54
  %806 = lshr i64 %29, 8
  %807 = trunc i64 %806 to i16
  store i16 %807, ptr %58, align 2, !tbaa !220
  br label %845

808:                                              ; preds = %54
  %809 = lshr i64 %29, 8
  %810 = trunc i64 %809 to i8
  store i8 %810, ptr %58, align 1, !tbaa !137
  br label %845

811:                                              ; preds = %54
  tail call void %57(ptr noundef %58) #9
  br label %845

812:                                              ; preds = %54
  %813 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8
  %814 = ptrtoint ptr %813 to i64
  switch i64 %814, label %815 [
    i64 16, label %816
    i64 8, label %816
    i64 0, label %816
  ], !prof !222

815:                                              ; preds = %812
  tail call void @free(ptr noundef %813) #9
  br label %816

816:                                              ; preds = %815, %812, %812, %812
  store ptr %58, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !223
  br label %845

817:                                              ; preds = %54
  tail call void @Perl_parser_free(ptr noundef %58) #9
  br label %845

818:                                              ; preds = %54
  %819 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 2
  %820 = load i32, ptr %819, align 4, !tbaa !144
  %821 = and i32 %820, -134283265
  store i32 %821, ptr %819, align 4, !tbaa !144
  br label %845

822:                                              ; preds = %54
  %823 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 4
  %824 = load i32, ptr %823, align 4, !tbaa !165
  %825 = icmp eq i32 %824, 1
  br i1 %825, label %826, label %835, !prof !224

826:                                              ; preds = %822
  %827 = tail call ptr @Perl_newSV_type(i32 noundef 9) #9
  %828 = tail call ptr @Perl_sv_2mortal(ptr noundef %827) #9
  %829 = getelementptr inbounds %struct.gv, ptr %828, i64 0, i32 2
  %830 = load i32, ptr %829, align 4, !tbaa !225
  %831 = or i32 %830, 32768
  store i32 %831, ptr %829, align 4, !tbaa !225
  %832 = getelementptr inbounds %struct.gv, ptr %828, i64 0, i32 3
  store ptr %58, ptr %832, align 8, !tbaa !137
  tail call void @Perl_gp_free(ptr noundef %828) #9
  %833 = load i32, ptr %829, align 4, !tbaa !225
  %834 = and i32 %833, -32769
  store i32 %834, ptr %829, align 4, !tbaa !225
  br label %845

835:                                              ; preds = %822
  %836 = add i32 %824, -1
  store i32 %836, ptr %823, align 4, !tbaa !165
  %837 = icmp ult i64 %29, 256
  %838 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 9
  %839 = load i32, ptr %838, align 8
  br i1 %837, label %842, label %840, !prof !226

840:                                              ; preds = %835
  %841 = or i32 %839, -2147483648
  store i32 %841, ptr %838, align 8
  br label %845

842:                                              ; preds = %835
  %843 = and i32 %839, 2147483647
  store i32 %843, ptr %838, align 8
  br label %845

844:                                              ; preds = %54
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i32 noundef %31) #9
  br label %845

845:                                              ; preds = %527, %844, %842, %840, %826, %818, %817, %816, %811, %808, %805, %803, %801, %800, %790, %770, %763, %762, %759, %751, %744, %685, %680, %622, %620, %615, %563, %559, %558, %557, %555, %547, %546, %368, %354, %353, %351, %350, %349, %348, %346, %340, %339, %337, %269, %268, %267, %266, %263, %260, %255, %253, %250, %247, %246, %244, %217, %215, %134, %132, %126, %111, %108, %107, %104, %103, %101, %95, %64, %59
  %846 = phi ptr [ %24, %844 ], [ %24, %818 ], [ %24, %817 ], [ %24, %816 ], [ %24, %811 ], [ %24, %808 ], [ %24, %805 ], [ %24, %803 ], [ %24, %801 ], [ %24, %800 ], [ %24, %790 ], [ %24, %770 ], [ %24, %763 ], [ %24, %759 ], [ %24, %762 ], [ %24, %744 ], [ %24, %751 ], [ %24, %685 ], [ %24, %563 ], [ %24, %559 ], [ %24, %558 ], [ %24, %546 ], [ %24, %354 ], [ %24, %353 ], [ %24, %351 ], [ %24, %350 ], [ %24, %349 ], [ %24, %269 ], [ %24, %268 ], [ %24, %267 ], [ %24, %266 ], [ %24, %263 ], [ %24, %260 ], [ %24, %253 ], [ %24, %250 ], [ %24, %247 ], [ %24, %111 ], [ %24, %108 ], [ %24, %107 ], [ %24, %104 ], [ %24, %64 ], [ %24, %59 ], [ %24, %255 ], [ %24, %840 ], [ %24, %842 ], [ %24, %826 ], [ %70, %95 ], [ %70, %101 ], [ %70, %103 ], [ %116, %126 ], [ %116, %132 ], [ %116, %134 ], [ %24, %215 ], [ %24, %217 ], [ %24, %244 ], [ %24, %246 ], [ %24, %337 ], [ %24, %339 ], [ %24, %340 ], [ %24, %346 ], [ %24, %348 ], [ %24, %547 ], [ %24, %555 ], [ %24, %557 ], [ %571, %620 ], [ %571, %622 ], [ %571, %615 ], [ %682, %680 ], [ %369, %368 ], [ %532, %527 ]
  %847 = phi ptr [ %23, %844 ], [ %23, %818 ], [ %23, %817 ], [ %23, %816 ], [ %23, %811 ], [ %23, %808 ], [ %23, %805 ], [ %23, %803 ], [ %23, %801 ], [ %23, %800 ], [ %23, %790 ], [ %23, %770 ], [ %23, %763 ], [ %23, %759 ], [ %23, %762 ], [ %23, %744 ], [ %23, %751 ], [ %23, %685 ], [ %23, %563 ], [ %23, %559 ], [ %23, %558 ], [ %23, %546 ], [ %23, %354 ], [ %23, %353 ], [ %23, %351 ], [ %23, %350 ], [ %23, %349 ], [ %23, %269 ], [ %23, %268 ], [ %23, %267 ], [ %23, %266 ], [ %23, %263 ], [ %23, %260 ], [ %23, %253 ], [ %23, %250 ], [ %23, %247 ], [ %23, %111 ], [ %23, %108 ], [ %23, %107 ], [ %23, %104 ], [ %23, %64 ], [ %23, %59 ], [ %23, %255 ], [ %23, %840 ], [ %23, %842 ], [ %23, %826 ], [ %71, %95 ], [ %71, %101 ], [ %71, %103 ], [ %23, %126 ], [ %23, %132 ], [ %23, %134 ], [ %23, %215 ], [ %23, %217 ], [ %23, %244 ], [ %23, %246 ], [ %23, %337 ], [ %23, %339 ], [ %23, %340 ], [ %23, %346 ], [ %23, %348 ], [ %23, %547 ], [ %23, %555 ], [ %23, %557 ], [ %606, %620 ], [ %606, %622 ], [ %606, %615 ], [ %683, %680 ], [ %23, %368 ], [ %23, %527 ]
  %848 = phi i8 [ %19, %844 ], [ %19, %818 ], [ %19, %817 ], [ %19, %816 ], [ %19, %811 ], [ %19, %808 ], [ %19, %805 ], [ %19, %803 ], [ %19, %801 ], [ %19, %800 ], [ %19, %790 ], [ %19, %770 ], [ %19, %763 ], [ %19, %759 ], [ %19, %762 ], [ %19, %744 ], [ %19, %751 ], [ %19, %685 ], [ %19, %563 ], [ %19, %559 ], [ %19, %558 ], [ %19, %546 ], [ %19, %354 ], [ %19, %353 ], [ %19, %351 ], [ %19, %350 ], [ %19, %349 ], [ %19, %269 ], [ %19, %268 ], [ %19, %267 ], [ %19, %266 ], [ %19, %263 ], [ %19, %260 ], [ %19, %253 ], [ %19, %250 ], [ %19, %247 ], [ %19, %111 ], [ %19, %108 ], [ %19, %107 ], [ %19, %104 ], [ %19, %64 ], [ %19, %59 ], [ %259, %255 ], [ %19, %840 ], [ %19, %842 ], [ %19, %826 ], [ %19, %95 ], [ %19, %101 ], [ %19, %103 ], [ %19, %126 ], [ %19, %132 ], [ %19, %134 ], [ %19, %215 ], [ %19, %217 ], [ %19, %244 ], [ %19, %246 ], [ %19, %337 ], [ %19, %339 ], [ %19, %340 ], [ %19, %346 ], [ %19, %348 ], [ %19, %547 ], [ %19, %555 ], [ %19, %557 ], [ %19, %620 ], [ %19, %622 ], [ %19, %615 ], [ %19, %680 ], [ %19, %368 ], [ %19, %527 ]
  %849 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %850 = icmp sgt i32 %849, %6
  br i1 %850, label %17, label %851, !prof !227, !llvm.loop !228

851:                                              ; preds = %845, %14
  %852 = phi i8 [ %10, %14 ], [ %848, %845 ]
  %853 = and i8 %852, 1
  store i8 %853, ptr @PL_tainted, align 1, !tbaa !131
  br label %854

854:                                              ; preds = %851, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_leave_scope(i32 noundef %0) local_unnamed_addr #4 !prof !229 {
  %2 = load i8, ptr @PL_tainted, align 1, !tbaa !131, !range !133, !noundef !134
  %3 = icmp slt i32 %0, -1
  br i1 %3, label %4, label %6, !prof !135

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, i64 noundef %5) #9
  br label %6

6:                                                ; preds = %1, %4
  %7 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %9, label %843, !prof !136

9:                                                ; preds = %6, %837
  %10 = phi i32 [ %841, %837 ], [ %7, %6 ]
  %11 = phi i8 [ %840, %837 ], [ %2, %6 ]
  %12 = phi ptr [ %50, %837 ], [ null, %6 ]
  %13 = phi ptr [ %49, %837 ], [ null, %6 ]
  %14 = phi ptr [ %48, %837 ], [ null, %6 ]
  %15 = phi ptr [ %839, %837 ], [ undef, %6 ]
  %16 = phi ptr [ %838, %837 ], [ undef, %6 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !131
  %17 = add nsw i32 %10, -1
  %18 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %union.any, ptr %18, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !137
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 63
  %24 = icmp ugt i32 %23, 3
  br i1 %24, label %25, label %46, !prof !138

25:                                               ; preds = %9
  %26 = getelementptr inbounds %union.any, ptr %20, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa.struct !139
  %28 = icmp ugt i32 %23, 22
  br i1 %28, label %29, label %36, !prof !141

29:                                               ; preds = %25
  %30 = getelementptr inbounds %union.any, ptr %20, i64 -2
  %31 = load ptr, ptr %30, align 8, !tbaa.struct !139
  %32 = icmp ugt i32 %23, 47
  br i1 %32, label %33, label %36, !prof !142

33:                                               ; preds = %29
  %34 = getelementptr inbounds %union.any, ptr %20, i64 -3
  %35 = load ptr, ptr %34, align 8, !tbaa.struct !139
  br label %36

36:                                               ; preds = %29, %33, %25
  %37 = phi ptr [ %34, %33 ], [ %30, %29 ], [ %26, %25 ]
  %38 = phi ptr [ %35, %33 ], [ %14, %29 ], [ %14, %25 ]
  %39 = phi ptr [ %31, %33 ], [ %31, %29 ], [ %13, %25 ]
  %40 = ptrtoint ptr %20 to i64
  %41 = ptrtoint ptr %37 to i64
  %42 = sub i64 %40, %41
  %43 = lshr exact i64 %42, 3
  %44 = trunc i64 %43 to i32
  %45 = sub i32 %17, %44
  br label %46

46:                                               ; preds = %36, %9
  %47 = phi i32 [ %45, %36 ], [ %17, %9 ]
  %48 = phi ptr [ %38, %36 ], [ %14, %9 ]
  %49 = phi ptr [ %39, %36 ], [ %13, %9 ]
  %50 = phi ptr [ %27, %36 ], [ %12, %9 ]
  store i32 %47, ptr @PL_savestack_ix, align 4, !tbaa !127
  switch i32 %23, label %836 [
    i32 35, label %51
    i32 44, label %61
    i32 43, label %58
    i32 26, label %96
    i32 40, label %100
    i32 29, label %104
    i32 27, label %107
    i32 51, label %127
    i32 23, label %181
    i32 32, label %210
    i32 15, label %239
    i32 34, label %242
    i32 42, label %245
    i32 5, label %247
    i32 13, label %252
    i32 33, label %255
    i32 41, label %258
    i32 45, label %259
    i32 38, label %259
    i32 31, label %260
    i32 47, label %261
    i32 28, label %262
    i32 11, label %332
    i32 22, label %341
    i32 8, label %342
    i32 16, label %343
    i32 9, label %345
    i32 10, label %346
    i32 1, label %347
    i32 2, label %356
    i32 53, label %526
    i32 46, label %539
    i32 25, label %550
    i32 3, label %551
    i32 0, label %551
    i32 20, label %555
    i32 52, label %561
    i32 48, label %615
    i32 18, label %677
    i32 30, label %678
    i32 7, label %749
    i32 49, label %755
    i32 39, label %762
    i32 50, label %782
    i32 17, label %792
    i32 37, label %793
    i32 36, label %795
    i32 12, label %797
    i32 14, label %800
    i32 24, label %803
    i32 6, label %804
    i32 19, label %809
    i32 21, label %810
    i32 4, label %814
  ], !prof !143

51:                                               ; preds = %46
  tail call void @Perl_sv_replace(ptr noundef %49, ptr noundef %50) #9
  %52 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !144
  %54 = and i32 %53, 4194304
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %837, label %56, !prof !146

56:                                               ; preds = %51
  store i8 2, ptr @PL_localizing, align 1, !tbaa !137
  %57 = tail call i32 @Perl_mg_set(ptr noundef %49) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %837

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !137
  br label %61

61:                                               ; preds = %672, %595, %46, %58
  %62 = phi ptr [ %674, %672 ], [ %563, %595 ], [ %60, %58 ], [ %49, %46 ]
  %63 = phi ptr [ %675, %672 ], [ %596, %595 ], [ %49, %58 ], [ null, %46 ]
  %64 = load ptr, ptr %62, align 8, !tbaa !104
  store ptr %50, ptr %62, align 8, !tbaa !104
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66, !prof !147

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !148
  %69 = icmp ugt i32 %68, 1
  br i1 %69, label %70, label %72, !prof !147

70:                                               ; preds = %66
  %71 = add i32 %68, -1
  store i32 %71, ptr %67, align 8, !tbaa !148
  br label %73

72:                                               ; preds = %66
  tail call void @Perl_sv_free2(ptr noundef nonnull %64, i32 noundef %68) #9
  br label %73

73:                                               ; preds = %61, %70, %72
  %74 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !144
  %76 = and i32 %75, 4194304
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78, !prof !149

78:                                               ; preds = %73
  store i8 2, ptr @PL_localizing, align 1, !tbaa !137
  %79 = tail call i32 @Perl_mg_set(ptr noundef %50) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %80

80:                                               ; preds = %73, %78
  %81 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !148
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %86, !prof !150

84:                                               ; preds = %80
  %85 = add i32 %82, -1
  store i32 %85, ptr %81, align 8, !tbaa !148
  br label %87

86:                                               ; preds = %80
  tail call void @Perl_sv_free2(ptr noundef %50, i32 noundef %82) #9
  br label %87

87:                                               ; preds = %84, %86
  %88 = icmp eq ptr %63, null
  br i1 %88, label %837, label %89, !prof !147

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !148
  %92 = icmp ugt i32 %91, 1
  br i1 %92, label %93, label %95, !prof !150

93:                                               ; preds = %89
  %94 = add i32 %91, -1
  store i32 %94, ptr %90, align 8, !tbaa !148
  br label %837

95:                                               ; preds = %89
  tail call void @Perl_sv_free2(ptr noundef nonnull %63, i32 noundef %91) #9
  br label %837

96:                                               ; preds = %46
  %97 = load ptr, ptr %50, align 8, !tbaa !104
  %98 = icmp eq ptr %97, %49
  br i1 %98, label %837, label %99, !prof !151

99:                                               ; preds = %96
  tail call void @Perl_safesysfree(ptr noundef %97) #9
  store ptr %49, ptr %50, align 8, !tbaa !104
  br label %837

100:                                              ; preds = %46
  %101 = load ptr, ptr %49, align 8, !tbaa !104
  %102 = icmp eq ptr %101, %50
  br i1 %102, label %837, label %103

103:                                              ; preds = %100
  tail call void @free(ptr noundef %101) #9
  store ptr %50, ptr %49, align 8, !tbaa !104
  br label %837

104:                                              ; preds = %46
  %105 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !137
  br label %107

107:                                              ; preds = %161, %127, %158, %147, %137, %132, %180, %177, %46, %104
  %108 = phi ptr [ %106, %104 ], [ %49, %46 ], [ %49, %177 ], [ %49, %180 ], [ %49, %132 ], [ %49, %137 ], [ %49, %147 ], [ %49, %158 ], [ %49, %127 ], [ %49, %161 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !104
  store ptr %50, ptr %108, align 8, !tbaa !104
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111, !prof !152

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !148
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %115, label %117, !prof !153

115:                                              ; preds = %111
  %116 = add i32 %113, -1
  store i32 %116, ptr %112, align 8, !tbaa !148
  br label %118

117:                                              ; preds = %111
  tail call void @Perl_sv_free2(ptr noundef nonnull %109, i32 noundef %113) #9
  br label %118

118:                                              ; preds = %107, %115, %117
  %119 = icmp eq ptr %50, null
  br i1 %119, label %837, label %120, !prof !154

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !148
  %123 = icmp ugt i32 %122, 1
  br i1 %123, label %124, label %126, !prof !155

124:                                              ; preds = %120
  %125 = add i32 %122, -1
  store i32 %125, ptr %121, align 8, !tbaa !148
  br label %837

126:                                              ; preds = %120
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %122) #9
  br label %837

127:                                              ; preds = %46
  %128 = load ptr, ptr %48, align 8, !tbaa !156
  %129 = getelementptr inbounds %struct.xpvgv, ptr %128, i64 0, i32 5
  %130 = load ptr, ptr %129, align 8, !tbaa !137
  %131 = icmp eq ptr %130, null
  br i1 %131, label %107, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.hv, ptr %130, i64 0, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !158
  %135 = and i32 %134, 33554432
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %107, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.hv, ptr %130, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !137
  %140 = load ptr, ptr %130, align 8, !tbaa !160
  %141 = getelementptr inbounds %struct.xpvhv, ptr %140, i64 0, i32 3
  %142 = load i64, ptr %141, align 8, !tbaa !161
  %143 = getelementptr ptr, ptr %139, i64 %142
  %144 = getelementptr ptr, ptr %143, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !137
  %146 = icmp eq ptr %145, null
  br i1 %146, label %107, label %147

147:                                              ; preds = %137
  %148 = getelementptr i8, ptr %143, i64 36
  %149 = load i32, ptr %148, align 4, !tbaa !163
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %107, label %151

151:                                              ; preds = %147
  %152 = icmp eq ptr %50, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !144
  %156 = and i32 %155, 255
  %157 = icmp eq i32 %156, 13
  br i1 %157, label %166, label %158

158:                                              ; preds = %153, %151
  %159 = load ptr, ptr %49, align 8, !tbaa !104
  %160 = icmp eq ptr %159, null
  br i1 %160, label %107, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !144
  %164 = and i32 %163, 255
  %165 = icmp eq i32 %164, 13
  br i1 %165, label %166, label %107

166:                                              ; preds = %161, %153
  %167 = getelementptr inbounds %struct.gv, ptr %48, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !137
  %169 = icmp ult ptr %49, %168
  %170 = getelementptr inbounds i8, ptr %168, i64 80
  %171 = icmp ugt ptr %49, %170
  %172 = select i1 %169, i1 true, i1 %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.gp, ptr %168, i64 0, i32 4
  %175 = load i32, ptr %174, align 4, !tbaa !165
  %176 = icmp ugt i32 %175, 2
  br i1 %176, label %177, label %180

177:                                              ; preds = %173, %166
  %178 = load i32, ptr @PL_sub_generation, align 4, !tbaa !127
  %179 = add i32 %178, 1
  store i32 %179, ptr @PL_sub_generation, align 4, !tbaa !127
  br label %107

180:                                              ; preds = %173
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %130) #9
  br label %107

181:                                              ; preds = %46
  %182 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !137
  %184 = getelementptr inbounds %struct.gp, ptr %183, i64 0, i32 6
  %185 = load ptr, ptr %184, align 8, !tbaa !167
  %186 = icmp eq ptr %185, null
  br i1 %186, label %194, label %187, !prof !168

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.sv, ptr %185, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !148
  %190 = icmp ugt i32 %189, 1
  br i1 %190, label %191, label %193, !prof !168

191:                                              ; preds = %187
  %192 = add i32 %189, -1
  store i32 %192, ptr %188, align 8, !tbaa !148
  br label %194

193:                                              ; preds = %187
  tail call void @Perl_sv_free2(ptr noundef nonnull %185, i32 noundef %189) #9
  br label %194

194:                                              ; preds = %181, %191, %193
  %195 = load ptr, ptr %182, align 8, !tbaa !137
  %196 = getelementptr inbounds %struct.gp, ptr %195, i64 0, i32 6
  store ptr %50, ptr %196, align 8, !tbaa !167
  %197 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !144
  %199 = and i32 %198, 4194304
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201, !prof !169

201:                                              ; preds = %194
  store i8 2, ptr @PL_localizing, align 1, !tbaa !137
  %202 = tail call i32 @Perl_mg_set(ptr noundef %50) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %203

203:                                              ; preds = %194, %201
  %204 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 1
  %205 = load i32, ptr %204, align 8, !tbaa !148
  %206 = icmp ugt i32 %205, 1
  br i1 %206, label %207, label %209, !prof !169

207:                                              ; preds = %203
  %208 = add i32 %205, -1
  store i32 %208, ptr %204, align 8, !tbaa !148
  br label %837

209:                                              ; preds = %203
  tail call void @Perl_sv_free2(ptr noundef %49, i32 noundef %205) #9
  br label %837

210:                                              ; preds = %46
  %211 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !137
  %213 = getelementptr inbounds %struct.gp, ptr %212, i64 0, i32 5
  %214 = load ptr, ptr %213, align 8, !tbaa !170
  %215 = icmp eq ptr %214, null
  br i1 %215, label %223, label %216, !prof !171

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.sv, ptr %214, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !148
  %219 = icmp ugt i32 %218, 1
  br i1 %219, label %220, label %222, !prof !171

220:                                              ; preds = %216
  %221 = add i32 %218, -1
  store i32 %221, ptr %217, align 8, !tbaa !148
  br label %223

222:                                              ; preds = %216
  tail call void @Perl_sv_free2(ptr noundef nonnull %214, i32 noundef %218) #9
  br label %223

223:                                              ; preds = %210, %220, %222
  %224 = load ptr, ptr %211, align 8, !tbaa !137
  %225 = getelementptr inbounds %struct.gp, ptr %224, i64 0, i32 5
  store ptr %50, ptr %225, align 8, !tbaa !170
  %226 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !144
  %228 = and i32 %227, 4194304
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230, !prof !172

230:                                              ; preds = %223
  store i8 2, ptr @PL_localizing, align 1, !tbaa !137
  %231 = tail call i32 @Perl_mg_set(ptr noundef %50) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %232

232:                                              ; preds = %223, %230
  %233 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 1
  %234 = load i32, ptr %233, align 8, !tbaa !148
  %235 = icmp ugt i32 %234, 1
  br i1 %235, label %236, label %238, !prof !172

236:                                              ; preds = %232
  %237 = add i32 %234, -1
  store i32 %237, ptr %233, align 8, !tbaa !148
  br label %837

238:                                              ; preds = %232
  tail call void @Perl_sv_free2(ptr noundef %49, i32 noundef %234) #9
  br label %837

239:                                              ; preds = %46
  %240 = lshr i64 %21, 6
  %241 = trunc i64 %240 to i32
  store i32 %241, ptr %50, align 4, !tbaa !127
  br label %837

242:                                              ; preds = %46
  %243 = ptrtoint ptr %49 to i64
  %244 = trunc i64 %243 to i32
  store i32 %244, ptr %50, align 4, !tbaa !127
  br label %837

245:                                              ; preds = %46
  %246 = ptrtoint ptr %49 to i64
  store i64 %246, ptr %50, align 8, !tbaa !140
  br label %837

247:                                              ; preds = %46
  %248 = icmp ugt i64 %21, 255
  %249 = zext i1 %248 to i8
  store i8 %249, ptr %50, align 1, !tbaa !131
  %250 = icmp eq ptr %50, @PL_tainted
  %251 = select i1 %250, i8 %249, i8 %11, !prof !173
  br label %837

252:                                              ; preds = %46
  %253 = lshr i64 %21, 6
  %254 = trunc i64 %253 to i32
  store i32 %254, ptr %50, align 4, !tbaa !127
  br label %837

255:                                              ; preds = %46
  %256 = ptrtoint ptr %49 to i64
  %257 = trunc i64 %256 to i32
  store i32 %257, ptr %50, align 4, !tbaa !127
  br label %837

258:                                              ; preds = %46
  store ptr %49, ptr %50, align 8, !tbaa !104
  br label %837

259:                                              ; preds = %46, %46
  store ptr %49, ptr %50, align 8, !tbaa !104
  br label %837

260:                                              ; preds = %46
  store ptr %49, ptr %50, align 8, !tbaa !104
  br label %837

261:                                              ; preds = %46
  store ptr %49, ptr %50, align 8, !tbaa !104
  br label %837

262:                                              ; preds = %46
  %263 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !137
  %265 = getelementptr inbounds %struct.gp, ptr %264, i64 0, i32 3
  %266 = load i32, ptr %265, align 8, !tbaa !174
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %271, !prof !175

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.gp, ptr %264, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !176
  br label %271

271:                                              ; preds = %262, %268
  %272 = phi ptr [ %270, %268 ], [ null, %262 ]
  %273 = icmp eq ptr %272, null
  tail call void @Perl_gp_free(ptr noundef %49) #9
  store ptr %50, ptr %263, align 8, !tbaa !137
  %274 = load ptr, ptr %49, align 8, !tbaa !156
  %275 = getelementptr inbounds %struct.xpvgv, ptr %274, i64 0, i32 5
  %276 = load ptr, ptr %275, align 8, !tbaa !137
  %277 = icmp eq ptr %276, null
  br i1 %277, label %325, label %278, !prof !177

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.hv, ptr %276, i64 0, i32 2
  %280 = load i32, ptr %279, align 4, !tbaa !158
  %281 = and i32 %280, 33554432
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %325, label %283, !prof !177

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.hv, ptr %276, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !137
  %286 = load ptr, ptr %276, align 8, !tbaa !160
  %287 = getelementptr inbounds %struct.xpvhv, ptr %286, i64 0, i32 3
  %288 = load i64, ptr %287, align 8, !tbaa !161
  %289 = getelementptr ptr, ptr %285, i64 %288
  %290 = getelementptr ptr, ptr %289, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !137
  %292 = icmp eq ptr %291, null
  br i1 %292, label %325, label %293, !prof !177

293:                                              ; preds = %283
  %294 = getelementptr i8, ptr %289, i64 36
  %295 = load i32, ptr %294, align 4, !tbaa !163
  %296 = icmp eq i32 %295, -1
  br i1 %296, label %325, label %297, !prof !177

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.xpvgv, ptr %274, i64 0, i32 4
  %299 = load ptr, ptr %298, align 8, !tbaa !137
  %300 = getelementptr inbounds %struct.hek, ptr %299, i64 0, i32 1
  %301 = load i32, ptr %300, align 4, !tbaa !178
  %302 = icmp eq i32 %301, 3
  br i1 %302, label %303, label %308, !prof !177

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.hek, ptr %299, i64 0, i32 2
  %305 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %304, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #10
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %303
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %276) #9
  br label %325

308:                                              ; preds = %303, %297
  br i1 %273, label %309, label %317, !prof !175

309:                                              ; preds = %308
  %310 = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 3
  %311 = load i32, ptr %310, align 8, !tbaa !174
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %325, !prof !175

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !176
  %316 = icmp eq ptr %315, null
  br i1 %316, label %325, label %317, !prof !175

317:                                              ; preds = %313, %308
  %318 = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 4
  %319 = load i32, ptr %318, align 4, !tbaa !165
  %320 = icmp ugt i32 %319, 1
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = load i32, ptr @PL_sub_generation, align 4, !tbaa !127
  %323 = add i32 %322, 1
  store i32 %323, ptr @PL_sub_generation, align 4, !tbaa !127
  br label %325

324:                                              ; preds = %317
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %276) #9
  br label %325

325:                                              ; preds = %307, %321, %324, %309, %313, %278, %283, %293, %271
  %326 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 1
  %327 = load i32, ptr %326, align 8, !tbaa !148
  %328 = icmp ugt i32 %327, 1
  br i1 %328, label %329, label %331, !prof !175

329:                                              ; preds = %325
  %330 = add i32 %327, -1
  store i32 %330, ptr %326, align 8, !tbaa !148
  br label %837

331:                                              ; preds = %325
  tail call void @Perl_sv_free2(ptr noundef %49, i32 noundef %327) #9
  br label %837

332:                                              ; preds = %46
  %333 = icmp eq ptr %50, null
  br i1 %333, label %837, label %334, !prof !180

334:                                              ; preds = %332
  %335 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %336 = load i32, ptr %335, align 8, !tbaa !148
  %337 = icmp ugt i32 %336, 1
  br i1 %337, label %338, label %340, !prof !181

338:                                              ; preds = %334
  %339 = add i32 %336, -1
  store i32 %339, ptr %335, align 8, !tbaa !148
  br label %837

340:                                              ; preds = %334
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %336) #9
  br label %837

341:                                              ; preds = %46
  tail call void @Perl_padname_free(ptr noundef %50) #9
  br label %837

342:                                              ; preds = %46
  tail call void @Perl_refcounted_he_free(ptr noundef %50) #9
  br label %837

343:                                              ; preds = %46
  %344 = tail call ptr @Perl_sv_2mortal(ptr noundef %50) #9
  br label %837

345:                                              ; preds = %46
  tail call void @Perl_op_free(ptr noundef %50) #9
  br label %837

346:                                              ; preds = %46
  tail call void @Perl_safesysfree(ptr noundef %50) #9
  br label %837

347:                                              ; preds = %46
  %348 = lshr i32 %22, 6
  %349 = and i32 %348, 127
  %350 = load ptr, ptr @PL_curpad, align 8, !tbaa !104
  %351 = lshr i64 %21, 13
  %352 = getelementptr inbounds ptr, ptr %350, i64 %351
  %353 = zext nneg i32 %349 to i64
  %354 = getelementptr inbounds ptr, ptr %352, i64 %353
  %355 = getelementptr inbounds ptr, ptr %354, i64 -1
  br label %360

356:                                              ; preds = %46
  %357 = load ptr, ptr @PL_curpad, align 8, !tbaa !104
  %358 = lshr i64 %21, 6
  %359 = getelementptr inbounds ptr, ptr %357, i64 %358
  br label %360

360:                                              ; preds = %356, %347
  %361 = phi ptr [ %359, %356 ], [ %355, %347 ]
  %362 = phi i32 [ 1, %356 ], [ %349, %347 ]
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %837, label %364, !prof !182

364:                                              ; preds = %360, %519
  %365 = phi i32 [ %523, %519 ], [ %362, %360 ]
  %366 = phi ptr [ %524, %519 ], [ %361, %360 ]
  %367 = load ptr, ptr %366, align 8, !tbaa !104
  %368 = getelementptr inbounds %struct.sv, ptr %367, i64 0, i32 1
  %369 = load i32, ptr %368, align 8, !tbaa !148
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %458, !prof !183

371:                                              ; preds = %364
  %372 = getelementptr inbounds %struct.sv, ptr %367, i64 0, i32 2
  %373 = load i32, ptr %372, align 4, !tbaa !144
  %374 = and i32 %373, 1048576
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %458, !prof !184

376:                                              ; preds = %371
  %377 = and i32 %373, 467732480
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %410, label %379, !prof !185

379:                                              ; preds = %376
  %380 = and i32 %373, 134283264
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382, !prof !186

382:                                              ; preds = %379
  %383 = and i32 %373, -135331841
  store i32 %383, ptr %372, align 4, !tbaa !144
  br label %384

384:                                              ; preds = %382, %379
  %385 = load i32, ptr %372, align 4, !tbaa !144
  %386 = and i32 %385, 33554432
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %394, label %388, !prof !187

388:                                              ; preds = %384
  %389 = and i32 %385, 255
  %390 = icmp eq i32 %389, 12
  br i1 %390, label %391, label %392, !prof !188

391:                                              ; preds = %388
  tail call void @Perl_hv_kill_backrefs(ptr noundef %367) #9
  br label %394

392:                                              ; preds = %388
  %393 = tail call i32 @Perl_sv_backoff(ptr noundef %367) #9
  br label %394

394:                                              ; preds = %391, %392, %384
  %395 = load i32, ptr %372, align 4, !tbaa !144
  %396 = and i32 %395, 14680064
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %405, label %398, !prof !189

398:                                              ; preds = %394
  %399 = tail call i32 @Perl_sv_unmagic(ptr noundef %367, i32 noundef 60) #9
  %400 = load i32, ptr %372, align 4, !tbaa !144
  %401 = and i32 %400, 255
  %402 = icmp eq i32 %401, 13
  br i1 %402, label %405, label %403, !prof !190

403:                                              ; preds = %398
  %404 = tail call i32 @Perl_mg_free(ptr noundef %367) #9
  br label %405

405:                                              ; preds = %398, %403, %394
  %406 = load i32, ptr %372, align 4, !tbaa !144
  %407 = and i32 %406, 427886592
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %410, label %409, !prof !191

409:                                              ; preds = %405
  tail call void @Perl_sv_force_normal_flags(ptr noundef %367, i32 noundef 5) #9
  br label %410

410:                                              ; preds = %405, %409, %376
  %411 = load i32, ptr %372, align 4, !tbaa !144
  %412 = trunc i32 %411 to i8
  switch i8 %412, label %453 [
    i8 0, label %455
    i8 11, label %413
    i8 12, label %414
    i8 13, label %415
  ], !prof !192

413:                                              ; preds = %410
  tail call void @Perl_av_clear(ptr noundef %367) #9
  br label %455

414:                                              ; preds = %410
  tail call void @Perl_hv_clear(ptr noundef %367) #9
  br label %455

415:                                              ; preds = %410
  %416 = load ptr, ptr %367, align 8, !tbaa !104
  %417 = getelementptr inbounds %struct.xpvcv, ptr %416, i64 0, i32 12
  %418 = load i32, ptr %417, align 4, !tbaa !193
  %419 = and i32 %418, 32768
  %420 = icmp eq i32 %419, 0
  %421 = getelementptr inbounds %struct.xpvcv, ptr %416, i64 0, i32 7
  br i1 %420, label %422, label %426

422:                                              ; preds = %415
  %423 = load ptr, ptr %421, align 8, !tbaa !137
  %424 = load ptr, ptr %423, align 8, !tbaa !156
  %425 = getelementptr inbounds %struct.xpvgv, ptr %424, i64 0, i32 4
  br label %426

426:                                              ; preds = %415, %422
  %427 = phi ptr [ %425, %422 ], [ %421, %415 ]
  %428 = load ptr, ptr %427, align 8, !tbaa !137
  %429 = getelementptr inbounds i8, ptr %428, i64 -8
  %430 = load i64, ptr %429, align 8, !tbaa !137
  %431 = add i64 %430, 1
  store i64 %431, ptr %429, align 8, !tbaa !137
  tail call void @Perl_cv_undef(ptr noundef nonnull %367) #9
  %432 = load ptr, ptr %367, align 8, !tbaa !195
  %433 = getelementptr inbounds %struct.xpvcv, ptr %432, i64 0, i32 12
  %434 = load i32, ptr %433, align 4, !tbaa !193
  %435 = and i32 %434, 32768
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %426
  %438 = getelementptr inbounds %struct.xpvcv, ptr %432, i64 0, i32 7
  %439 = load ptr, ptr %438, align 8, !tbaa !137
  br label %440

440:                                              ; preds = %426, %437
  %441 = phi ptr [ %439, %437 ], [ null, %426 ]
  %442 = icmp eq ptr %441, null
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.xpvcv, ptr %432, i64 0, i32 7
  %445 = load ptr, ptr %444, align 8, !tbaa !137
  tail call void @Perl_unshare_hek(ptr noundef %445) #9
  br label %446

446:                                              ; preds = %440, %443
  %447 = load ptr, ptr %367, align 8, !tbaa !197
  %448 = getelementptr inbounds %struct.xpvcv, ptr %447, i64 0, i32 7
  store ptr %428, ptr %448, align 8, !tbaa !137
  %449 = load ptr, ptr %367, align 8, !tbaa !197
  %450 = getelementptr inbounds %struct.xpvcv, ptr %449, i64 0, i32 12
  %451 = load i32, ptr %450, align 4, !tbaa !193
  %452 = or i32 %451, 98304
  store i32 %452, ptr %450, align 4, !tbaa !193
  br label %455

453:                                              ; preds = %410
  %454 = and i32 %411, 1610547455
  store i32 %454, ptr %372, align 4, !tbaa !144
  br label %455

455:                                              ; preds = %453, %446, %414, %413, %410
  %456 = load i32, ptr %372, align 4, !tbaa !144
  %457 = and i32 %456, -393217
  br label %519

458:                                              ; preds = %371, %364
  %459 = getelementptr inbounds %struct.sv, ptr %367, i64 0, i32 2
  %460 = load i32, ptr %459, align 4, !tbaa !144
  %461 = trunc i32 %460 to i8
  switch i8 %461, label %507 [
    i8 11, label %462
    i8 12, label %464
    i8 13, label %466
  ], !prof !198

462:                                              ; preds = %458
  %463 = tail call ptr @Perl_newSV_type(i32 noundef 11) #9
  store ptr %463, ptr %366, align 8, !tbaa !104
  br label %509

464:                                              ; preds = %458
  %465 = tail call ptr @Perl_newSV_type(i32 noundef 12) #9
  store ptr %465, ptr %366, align 8, !tbaa !104
  br label %509

466:                                              ; preds = %458
  %467 = load ptr, ptr %367, align 8, !tbaa !104
  %468 = getelementptr inbounds %struct.xpvcv, ptr %467, i64 0, i32 12
  %469 = load i32, ptr %468, align 4, !tbaa !193
  %470 = and i32 %469, 32768
  %471 = icmp eq i32 %470, 0
  %472 = getelementptr inbounds %struct.xpvcv, ptr %467, i64 0, i32 7
  br i1 %471, label %473, label %477

473:                                              ; preds = %466
  %474 = load ptr, ptr %472, align 8, !tbaa !137
  %475 = load ptr, ptr %474, align 8, !tbaa !156
  %476 = getelementptr inbounds %struct.xpvgv, ptr %475, i64 0, i32 4
  br label %477

477:                                              ; preds = %466, %473
  %478 = phi ptr [ %476, %473 ], [ %472, %466 ]
  %479 = load ptr, ptr %478, align 8, !tbaa !137
  %480 = tail call ptr @Perl_newSV_type(i32 noundef 13) #9
  store ptr %480, ptr %366, align 8, !tbaa !104
  %481 = load ptr, ptr %480, align 8, !tbaa !195
  %482 = getelementptr inbounds %struct.xpvcv, ptr %481, i64 0, i32 12
  %483 = load i32, ptr %482, align 4, !tbaa !193
  %484 = and i32 %483, 32768
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %489, label %486

486:                                              ; preds = %477
  %487 = getelementptr inbounds %struct.xpvcv, ptr %481, i64 0, i32 7
  %488 = load ptr, ptr %487, align 8, !tbaa !137
  br label %489

489:                                              ; preds = %477, %486
  %490 = phi ptr [ %488, %486 ], [ null, %477 ]
  %491 = icmp eq ptr %490, null
  br i1 %491, label %495, label %492

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.xpvcv, ptr %481, i64 0, i32 7
  %494 = load ptr, ptr %493, align 8, !tbaa !137
  tail call void @Perl_unshare_hek(ptr noundef %494) #9
  br label %495

495:                                              ; preds = %489, %492
  %496 = getelementptr inbounds i8, ptr %479, i64 -8
  %497 = load i64, ptr %496, align 8, !tbaa !137
  %498 = add i64 %497, 1
  store i64 %498, ptr %496, align 8, !tbaa !137
  %499 = load ptr, ptr %366, align 8, !tbaa !104
  %500 = load ptr, ptr %499, align 8, !tbaa !197
  %501 = getelementptr inbounds %struct.xpvcv, ptr %500, i64 0, i32 7
  store ptr %479, ptr %501, align 8, !tbaa !137
  %502 = load ptr, ptr %366, align 8, !tbaa !104
  %503 = load ptr, ptr %502, align 8, !tbaa !197
  %504 = getelementptr inbounds %struct.xpvcv, ptr %503, i64 0, i32 12
  %505 = load i32, ptr %504, align 4, !tbaa !193
  %506 = or i32 %505, 98304
  store i32 %506, ptr %504, align 4, !tbaa !193
  br label %509

507:                                              ; preds = %458
  %508 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  store ptr %508, ptr %366, align 8, !tbaa !104
  br label %509

509:                                              ; preds = %507, %495, %464, %462
  %510 = load i32, ptr %368, align 8, !tbaa !148
  %511 = icmp ugt i32 %510, 1
  br i1 %511, label %512, label %514, !prof !199

512:                                              ; preds = %509
  %513 = add i32 %510, -1
  store i32 %513, ptr %368, align 8, !tbaa !148
  br label %515

514:                                              ; preds = %509
  tail call void @Perl_sv_free2(ptr noundef %367, i32 noundef %510) #9
  br label %515

515:                                              ; preds = %512, %514
  %516 = load ptr, ptr %366, align 8, !tbaa !104
  %517 = getelementptr inbounds %struct.sv, ptr %516, i64 0, i32 2
  %518 = load i32, ptr %517, align 4, !tbaa !144
  br label %519

519:                                              ; preds = %455, %515
  %520 = phi i32 [ %457, %455 ], [ %518, %515 ]
  %521 = phi ptr [ %372, %455 ], [ %517, %515 ]
  %522 = or i32 %520, 262144
  store i32 %522, ptr %521, align 4, !tbaa !144
  %523 = add nsw i32 %365, -1
  %524 = getelementptr inbounds ptr, ptr %366, i64 -1
  %525 = icmp eq i32 %523, 0
  br i1 %525, label %837, label %364, !prof !200, !llvm.loop !201

526:                                              ; preds = %46
  %527 = ptrtoint ptr %49 to i64
  %528 = trunc i64 %527 to i32
  %529 = tail call ptr @Perl_hv_common_key_len(ptr noundef %50, ptr noundef %48, i32 noundef %528, i32 noundef 68, ptr noundef null, i32 noundef 0) #9
  %530 = icmp eq ptr %50, null
  br i1 %530, label %538, label %531, !prof !204

531:                                              ; preds = %526
  %532 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %533 = load i32, ptr %532, align 8, !tbaa !148
  %534 = icmp ugt i32 %533, 1
  br i1 %534, label %535, label %537, !prof !205

535:                                              ; preds = %531
  %536 = add i32 %533, -1
  store i32 %536, ptr %532, align 8, !tbaa !148
  br label %538

537:                                              ; preds = %531
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %533) #9
  br label %538

538:                                              ; preds = %526, %535, %537
  tail call void @Perl_safesysfree(ptr noundef %48) #9
  br label %837

539:                                              ; preds = %46
  %540 = ptrtoint ptr %49 to i64
  %541 = tail call ptr @Perl_av_delete(ptr noundef %50, i64 noundef %540, i32 noundef 4) #9
  %542 = icmp eq ptr %50, null
  br i1 %542, label %837, label %543

543:                                              ; preds = %539
  %544 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %545 = load i32, ptr %544, align 8, !tbaa !148
  %546 = icmp ugt i32 %545, 1
  br i1 %546, label %547, label %549

547:                                              ; preds = %543
  %548 = add i32 %545, -1
  store i32 %548, ptr %544, align 8, !tbaa !148
  br label %837

549:                                              ; preds = %543
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %545) #9
  br label %837

550:                                              ; preds = %46
  tail call void %49(ptr noundef %50) #9, !prof !230
  br label %837

551:                                              ; preds = %46, %46
  %552 = lshr i64 %21, 6
  %553 = trunc i64 %552 to i32
  %554 = sub i32 %47, %553
  store i32 %554, ptr @PL_savestack_ix, align 4, !tbaa !127
  br label %837

555:                                              ; preds = %46
  %556 = load ptr, ptr @PL_stack_base, align 8, !tbaa !104
  %557 = ptrtoint ptr %50 to i64
  %558 = shl i64 %557, 32
  %559 = ashr exact i64 %558, 32
  %560 = getelementptr inbounds ptr, ptr %556, i64 %559
  store ptr %560, ptr @PL_stack_sp, align 8, !tbaa !104
  br label %837

561:                                              ; preds = %46
  %562 = ptrtoint ptr %49 to i64
  %563 = tail call ptr @Perl_av_fetch(ptr noundef %48, i64 noundef %562, i32 noundef 1) #9
  %564 = getelementptr inbounds %struct.av, ptr %48, i64 0, i32 2
  %565 = load i32, ptr %564, align 4, !tbaa !112
  %566 = and i32 %565, -1073741824
  %567 = icmp ne i32 %566, -2147483648
  %568 = icmp eq ptr %50, null
  %569 = select i1 %567, i1 true, i1 %568
  br i1 %569, label %577, label %570

570:                                              ; preds = %561
  %571 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %572 = load i32, ptr %571, align 8, !tbaa !148
  %573 = icmp ugt i32 %572, 1
  br i1 %573, label %574, label %576

574:                                              ; preds = %570
  %575 = add i32 %572, -1
  store i32 %575, ptr %571, align 8, !tbaa !148
  br label %577

576:                                              ; preds = %570
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %572) #9
  br label %577

577:                                              ; preds = %576, %574, %561
  %578 = icmp eq ptr %563, null
  br i1 %578, label %597, label %579

579:                                              ; preds = %577
  %580 = load ptr, ptr %563, align 8, !tbaa !104
  %581 = icmp eq ptr %580, null
  %582 = icmp eq ptr %580, @PL_sv_undef
  %583 = or i1 %581, %582
  br i1 %583, label %595, label %584

584:                                              ; preds = %579
  %585 = load i32, ptr %564, align 4, !tbaa !144
  %586 = and i32 %585, 8388608
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %595, label %588

588:                                              ; preds = %584
  %589 = tail call ptr @Perl_mg_find(ptr noundef %48, i32 noundef 80) #9
  %590 = icmp eq ptr %589, null
  br i1 %590, label %595, label %591

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct.sv, ptr %580, i64 0, i32 1
  %593 = load i32, ptr %592, align 8, !tbaa !148
  %594 = add i32 %593, 1
  store i32 %594, ptr %592, align 8, !tbaa !148
  br label %595

595:                                              ; preds = %579, %591, %584, %588
  %596 = phi ptr [ %48, %588 ], [ %48, %584 ], [ %48, %591 ], [ %15, %579 ]
  br i1 %583, label %597, label %61

597:                                              ; preds = %595, %577
  %598 = phi ptr [ %596, %595 ], [ %15, %577 ]
  %599 = icmp eq ptr %48, null
  br i1 %599, label %607, label %600

600:                                              ; preds = %597
  %601 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 1
  %602 = load i32, ptr %601, align 8, !tbaa !148
  %603 = icmp ugt i32 %602, 1
  br i1 %603, label %604, label %606

604:                                              ; preds = %600
  %605 = add i32 %602, -1
  store i32 %605, ptr %601, align 8, !tbaa !148
  br label %607

606:                                              ; preds = %600
  tail call void @Perl_sv_free2(ptr noundef nonnull %48, i32 noundef %602) #9
  br label %607

607:                                              ; preds = %597, %604, %606
  br i1 %568, label %837, label %608

608:                                              ; preds = %607
  %609 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %610 = load i32, ptr %609, align 8, !tbaa !148
  %611 = icmp ugt i32 %610, 1
  br i1 %611, label %612, label %614

612:                                              ; preds = %608
  %613 = add i32 %610, -1
  store i32 %613, ptr %609, align 8, !tbaa !148
  br label %837

614:                                              ; preds = %608
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %610) #9
  br label %837

615:                                              ; preds = %46
  %616 = tail call ptr @Perl_hv_common(ptr noundef %48, ptr noundef %49, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #9
  %617 = icmp eq ptr %49, null
  br i1 %617, label %625, label %618

618:                                              ; preds = %615
  %619 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 1
  %620 = load i32, ptr %619, align 8, !tbaa !148
  %621 = icmp ugt i32 %620, 1
  br i1 %621, label %622, label %624

622:                                              ; preds = %618
  %623 = add i32 %620, -1
  store i32 %623, ptr %619, align 8, !tbaa !148
  br label %625

624:                                              ; preds = %618
  tail call void @Perl_sv_free2(ptr noundef nonnull %49, i32 noundef %620) #9
  br label %625

625:                                              ; preds = %615, %622, %624
  %626 = icmp eq ptr %616, null
  br i1 %626, label %652, label %627

627:                                              ; preds = %625
  %628 = getelementptr inbounds %struct.he, ptr %616, i64 0, i32 2
  %629 = load ptr, ptr %628, align 8, !tbaa !137
  %630 = icmp eq ptr %629, null
  %631 = icmp eq ptr %629, @PL_sv_undef
  %632 = or i1 %630, %631
  br i1 %632, label %648, label %633

633:                                              ; preds = %627
  %634 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %635 = load i32, ptr %634, align 4, !tbaa !144
  %636 = and i32 %635, 8388608
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %648, label %638

638:                                              ; preds = %633
  %639 = tail call ptr @Perl_mg_find(ptr noundef %48, i32 noundef 80) #9
  %640 = icmp eq ptr %639, null
  br i1 %640, label %648, label %641

641:                                              ; preds = %638
  %642 = load ptr, ptr %628, align 8, !tbaa !104
  %643 = icmp eq ptr %642, null
  br i1 %643, label %648, label %644

644:                                              ; preds = %641
  %645 = getelementptr inbounds %struct.sv, ptr %642, i64 0, i32 1
  %646 = load i32, ptr %645, align 8, !tbaa !148
  %647 = add i32 %646, 1
  store i32 %647, ptr %645, align 8, !tbaa !148
  br label %648

648:                                              ; preds = %644, %641, %627, %633, %638
  %649 = phi i32 [ 5, %638 ], [ 5, %633 ], [ 0, %627 ], [ 5, %641 ], [ 5, %644 ]
  %650 = phi ptr [ %628, %638 ], [ %628, %633 ], [ %16, %627 ], [ %628, %641 ], [ %628, %644 ]
  %651 = phi ptr [ %48, %638 ], [ %48, %633 ], [ %15, %627 ], [ %48, %641 ], [ %48, %644 ]
  br i1 %632, label %652, label %672

652:                                              ; preds = %648, %625
  %653 = phi ptr [ %650, %648 ], [ %16, %625 ]
  %654 = phi ptr [ %651, %648 ], [ %15, %625 ]
  %655 = icmp eq ptr %48, null
  br i1 %655, label %663, label %656

656:                                              ; preds = %652
  %657 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 1
  %658 = load i32, ptr %657, align 8, !tbaa !148
  %659 = icmp ugt i32 %658, 1
  br i1 %659, label %660, label %662

660:                                              ; preds = %656
  %661 = add i32 %658, -1
  store i32 %661, ptr %657, align 8, !tbaa !148
  br label %663

662:                                              ; preds = %656
  tail call void @Perl_sv_free2(ptr noundef nonnull %48, i32 noundef %658) #9
  br label %663

663:                                              ; preds = %652, %660, %662
  %664 = icmp eq ptr %50, null
  br i1 %664, label %672, label %665

665:                                              ; preds = %663
  %666 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %667 = load i32, ptr %666, align 8, !tbaa !148
  %668 = icmp ugt i32 %667, 1
  br i1 %668, label %669, label %671

669:                                              ; preds = %665
  %670 = add i32 %667, -1
  store i32 %670, ptr %666, align 8, !tbaa !148
  br label %672

671:                                              ; preds = %665
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %667) #9
  br label %672

672:                                              ; preds = %663, %671, %669, %648
  %673 = phi i32 [ %649, %648 ], [ 4, %669 ], [ 4, %671 ], [ 4, %663 ]
  %674 = phi ptr [ %650, %648 ], [ %653, %669 ], [ %653, %671 ], [ %653, %663 ]
  %675 = phi ptr [ %651, %648 ], [ %654, %669 ], [ %654, %671 ], [ %654, %663 ]
  %676 = icmp eq i32 %673, 5
  br i1 %676, label %61, label %837

677:                                              ; preds = %46
  store ptr %50, ptr @PL_op, align 8, !tbaa !104
  br label %837

678:                                              ; preds = %46
  %679 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !207
  %680 = and i32 %679, 131072
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %705, label %682, !prof !209

682:                                              ; preds = %678
  %683 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %684 = getelementptr inbounds %struct.gv, ptr %683, i64 0, i32 3
  %685 = load ptr, ptr %684, align 8, !tbaa !137
  %686 = getelementptr inbounds %struct.gp, ptr %685, i64 0, i32 5
  %687 = load ptr, ptr %686, align 8, !tbaa !170
  %688 = icmp eq ptr %687, null
  br i1 %688, label %705, label %689, !prof !210

689:                                              ; preds = %682, %698
  %690 = phi ptr [ %703, %698 ], [ %687, %682 ]
  %691 = phi ptr [ %702, %698 ], [ %686, %682 ]
  store ptr null, ptr %691, align 8, !tbaa !170
  %692 = getelementptr inbounds %struct.sv, ptr %690, i64 0, i32 1
  %693 = load i32, ptr %692, align 8, !tbaa !148
  %694 = icmp ugt i32 %693, 1
  br i1 %694, label %695, label %697, !prof !211

695:                                              ; preds = %689
  %696 = add i32 %693, -1
  store i32 %696, ptr %692, align 8, !tbaa !148
  br label %698

697:                                              ; preds = %689
  tail call void @Perl_sv_free2(ptr noundef nonnull %690, i32 noundef %693) #9
  br label %698

698:                                              ; preds = %695, %697
  %699 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %700 = getelementptr inbounds %struct.gv, ptr %699, i64 0, i32 3
  %701 = load ptr, ptr %700, align 8, !tbaa !137
  %702 = getelementptr inbounds %struct.gp, ptr %701, i64 0, i32 5
  %703 = load ptr, ptr %702, align 8, !tbaa !170
  %704 = icmp eq ptr %703, null
  br i1 %704, label %705, label %689, !prof !212, !llvm.loop !213

705:                                              ; preds = %698, %682, %678
  %706 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !214
  tail call void @Perl_refcounted_he_free(ptr noundef %706) #9
  store ptr %50, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !214
  %707 = ptrtoint ptr %49 to i64
  %708 = trunc i64 %707 to i32
  store i32 %708, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !127
  %709 = and i32 %708, 131072
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %736, label %711, !prof !215

711:                                              ; preds = %705
  %712 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %713 = getelementptr inbounds %struct.gv, ptr %712, i64 0, i32 3
  %714 = load ptr, ptr %713, align 8, !tbaa !137
  %715 = getelementptr inbounds %struct.gp, ptr %714, i64 0, i32 5
  %716 = load ptr, ptr %715, align 8, !tbaa !170
  %717 = icmp eq ptr %716, null
  br i1 %717, label %725, label %718, !prof !216

718:                                              ; preds = %711
  %719 = getelementptr inbounds %struct.sv, ptr %716, i64 0, i32 1
  %720 = load i32, ptr %719, align 8, !tbaa !148
  %721 = icmp ugt i32 %720, 1
  br i1 %721, label %722, label %724

722:                                              ; preds = %718
  %723 = add i32 %720, -1
  store i32 %723, ptr %719, align 8, !tbaa !148
  br label %725

724:                                              ; preds = %718
  tail call void @Perl_sv_free2(ptr noundef nonnull %716, i32 noundef %720) #9
  br label %725

725:                                              ; preds = %711, %722, %724
  %726 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %727 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %728 = add nsw i32 %727, -1
  store i32 %728, ptr @PL_savestack_ix, align 4, !tbaa !127
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %union.any, ptr %726, i64 %729
  %731 = load ptr, ptr %730, align 8, !tbaa !137
  %732 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %733 = getelementptr inbounds %struct.gv, ptr %732, i64 0, i32 3
  %734 = load ptr, ptr %733, align 8, !tbaa !137
  %735 = getelementptr inbounds %struct.gp, ptr %734, i64 0, i32 5
  store ptr %731, ptr %735, align 8, !tbaa !170
  br label %736

736:                                              ; preds = %725, %705
  %737 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %738 = getelementptr inbounds %struct.gv, ptr %737, i64 0, i32 3
  %739 = load ptr, ptr %738, align 8, !tbaa !137
  %740 = getelementptr inbounds %struct.gp, ptr %739, i64 0, i32 5
  %741 = load ptr, ptr %740, align 8, !tbaa !170
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %837, !prof !217

743:                                              ; preds = %736
  %744 = tail call ptr @Perl_newSV_type(i32 noundef 12) #9
  tail call void @Perl_sv_magic(ptr noundef %744, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #9
  %745 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %746 = getelementptr inbounds %struct.gv, ptr %745, i64 0, i32 3
  %747 = load ptr, ptr %746, align 8, !tbaa !137
  %748 = getelementptr inbounds %struct.gp, ptr %747, i64 0, i32 5
  store ptr %744, ptr %748, align 8, !tbaa !170
  br label %837

749:                                              ; preds = %46
  store ptr %50, ptr @PL_comppad, align 8, !tbaa !104
  %750 = icmp eq ptr %50, null
  br i1 %750, label %754, label %751, !prof !218

751:                                              ; preds = %749
  %752 = getelementptr inbounds %struct.av, ptr %50, i64 0, i32 3
  %753 = load ptr, ptr %752, align 8, !tbaa !137
  store ptr %753, ptr @PL_curpad, align 8, !tbaa !104
  br label %837

754:                                              ; preds = %749
  store ptr null, ptr @PL_curpad, align 8, !tbaa !104
  br label %837

755:                                              ; preds = %46
  %756 = getelementptr inbounds %struct.av, ptr %49, i64 0, i32 3
  %757 = load ptr, ptr %756, align 8, !tbaa !137
  %758 = ptrtoint ptr %50 to i64
  %759 = getelementptr inbounds ptr, ptr %757, i64 %758
  %760 = load ptr, ptr %759, align 8, !tbaa !104
  %761 = tail call ptr @Perl_sv_2mortal(ptr noundef %760) #9
  store ptr %48, ptr %759, align 8, !tbaa !104
  br label %837

762:                                              ; preds = %46
  %763 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !104
  %764 = load ptr, ptr @PL_stack_base, align 8, !tbaa !104
  %765 = ptrtoint ptr %763 to i64
  %766 = ptrtoint ptr %764 to i64
  %767 = sub i64 %765, %766
  %768 = ashr exact i64 %767, 3
  %769 = load ptr, ptr %50, align 8, !tbaa !115
  %770 = getelementptr inbounds %struct.xpvav, ptr %769, i64 0, i32 2
  store i64 %768, ptr %770, align 8, !tbaa !119
  %771 = getelementptr inbounds %struct.av, ptr %49, i64 0, i32 3
  %772 = load ptr, ptr %771, align 8, !tbaa !137
  store ptr %772, ptr @PL_stack_base, align 8, !tbaa !104
  %773 = load ptr, ptr %49, align 8, !tbaa !115
  %774 = getelementptr inbounds %struct.xpvav, ptr %773, i64 0, i32 3
  %775 = load i64, ptr %774, align 8, !tbaa !219
  %776 = getelementptr inbounds ptr, ptr %772, i64 %775
  store ptr %776, ptr @PL_stack_max, align 8, !tbaa !104
  %777 = load ptr, ptr %49, align 8, !tbaa !115
  %778 = getelementptr inbounds %struct.xpvav, ptr %777, i64 0, i32 2
  %779 = load i64, ptr %778, align 8, !tbaa !119
  %780 = getelementptr inbounds ptr, ptr %772, i64 %779
  store ptr %780, ptr @PL_stack_sp, align 8, !tbaa !104
  store ptr %49, ptr @PL_curstack, align 8, !tbaa !104
  %781 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !104
  store ptr %49, ptr %781, align 8, !tbaa !109
  br label %837

782:                                              ; preds = %46
  %783 = ptrtoint ptr %49 to i64
  %784 = trunc i64 %783 to i32
  %785 = xor i32 %784, -1
  %786 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %787 = load i32, ptr %786, align 4, !tbaa !144
  %788 = and i32 %787, %785
  %789 = ptrtoint ptr %50 to i64
  %790 = trunc i64 %789 to i32
  %791 = or i32 %788, %790
  store i32 %791, ptr %786, align 4, !tbaa !144
  br label %837

792:                                              ; preds = %46
  tail call void @Perl_sv_clear(ptr noundef %50) #9
  br label %837

793:                                              ; preds = %46
  %794 = ptrtoint ptr %49 to i64
  store i64 %794, ptr %50, align 8, !tbaa !140
  br label %837

795:                                              ; preds = %46
  %796 = ptrtoint ptr %49 to i64
  store i64 %796, ptr %50, align 8, !tbaa !140
  br label %837

797:                                              ; preds = %46
  %798 = lshr i64 %21, 8
  %799 = trunc i64 %798 to i16
  store i16 %799, ptr %50, align 2, !tbaa !220
  br label %837

800:                                              ; preds = %46
  %801 = lshr i64 %21, 8
  %802 = trunc i64 %801 to i8
  store i8 %802, ptr %50, align 1, !tbaa !137
  br label %837

803:                                              ; preds = %46
  tail call void %49(ptr noundef %50) #9
  br label %837

804:                                              ; preds = %46
  %805 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8
  %806 = ptrtoint ptr %805 to i64
  switch i64 %806, label %807 [
    i64 16, label %808
    i64 8, label %808
    i64 0, label %808
  ], !prof !222

807:                                              ; preds = %804
  tail call void @free(ptr noundef %805) #9
  br label %808

808:                                              ; preds = %804, %804, %804, %807
  store ptr %50, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !223
  br label %837

809:                                              ; preds = %46
  tail call void @Perl_parser_free(ptr noundef %50) #9
  br label %837

810:                                              ; preds = %46
  %811 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %812 = load i32, ptr %811, align 4, !tbaa !144
  %813 = and i32 %812, -134283265
  store i32 %813, ptr %811, align 4, !tbaa !144
  br label %837

814:                                              ; preds = %46
  %815 = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 4
  %816 = load i32, ptr %815, align 4, !tbaa !165
  %817 = icmp eq i32 %816, 1
  br i1 %817, label %818, label %827, !prof !224

818:                                              ; preds = %814
  %819 = tail call ptr @Perl_newSV_type(i32 noundef 9) #9
  %820 = tail call ptr @Perl_sv_2mortal(ptr noundef %819) #9
  %821 = getelementptr inbounds %struct.gv, ptr %820, i64 0, i32 2
  %822 = load i32, ptr %821, align 4, !tbaa !225
  %823 = or i32 %822, 32768
  store i32 %823, ptr %821, align 4, !tbaa !225
  %824 = getelementptr inbounds %struct.gv, ptr %820, i64 0, i32 3
  store ptr %50, ptr %824, align 8, !tbaa !137
  tail call void @Perl_gp_free(ptr noundef %820) #9
  %825 = load i32, ptr %821, align 4, !tbaa !225
  %826 = and i32 %825, -32769
  store i32 %826, ptr %821, align 4, !tbaa !225
  br label %837

827:                                              ; preds = %814
  %828 = add i32 %816, -1
  store i32 %828, ptr %815, align 4, !tbaa !165
  %829 = icmp ult i64 %21, 256
  %830 = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 9
  %831 = load i32, ptr %830, align 8
  br i1 %829, label %834, label %832, !prof !226

832:                                              ; preds = %827
  %833 = or i32 %831, -2147483648
  store i32 %833, ptr %830, align 8
  br label %837

834:                                              ; preds = %827
  %835 = and i32 %831, 2147483647
  store i32 %835, ptr %830, align 8
  br label %837

836:                                              ; preds = %46
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i32 noundef %23) #9
  br label %837

837:                                              ; preds = %519, %360, %672, %607, %614, %612, %549, %547, %539, %340, %338, %332, %331, %329, %238, %236, %209, %207, %126, %124, %118, %95, %93, %87, %247, %818, %834, %832, %751, %754, %736, %743, %100, %103, %96, %99, %56, %51, %836, %810, %809, %808, %803, %800, %797, %795, %793, %792, %782, %762, %755, %677, %555, %551, %550, %538, %346, %345, %343, %342, %341, %261, %260, %259, %258, %255, %252, %245, %242, %239
  %838 = phi ptr [ %16, %836 ], [ %16, %810 ], [ %16, %809 ], [ %16, %808 ], [ %16, %803 ], [ %16, %800 ], [ %16, %797 ], [ %16, %795 ], [ %16, %793 ], [ %16, %792 ], [ %16, %782 ], [ %16, %762 ], [ %16, %755 ], [ %16, %751 ], [ %16, %754 ], [ %16, %736 ], [ %16, %743 ], [ %16, %677 ], [ %16, %555 ], [ %16, %551 ], [ %16, %550 ], [ %16, %538 ], [ %16, %346 ], [ %16, %345 ], [ %16, %343 ], [ %16, %342 ], [ %16, %341 ], [ %16, %261 ], [ %16, %260 ], [ %16, %259 ], [ %16, %258 ], [ %16, %255 ], [ %16, %252 ], [ %16, %245 ], [ %16, %242 ], [ %16, %239 ], [ %16, %103 ], [ %16, %100 ], [ %16, %99 ], [ %16, %96 ], [ %16, %56 ], [ %16, %51 ], [ %16, %247 ], [ %16, %832 ], [ %16, %834 ], [ %16, %818 ], [ %62, %87 ], [ %62, %93 ], [ %62, %95 ], [ %108, %118 ], [ %108, %124 ], [ %108, %126 ], [ %16, %207 ], [ %16, %209 ], [ %16, %236 ], [ %16, %238 ], [ %16, %329 ], [ %16, %331 ], [ %16, %332 ], [ %16, %338 ], [ %16, %340 ], [ %16, %539 ], [ %16, %547 ], [ %16, %549 ], [ %563, %612 ], [ %563, %614 ], [ %563, %607 ], [ %674, %672 ], [ %361, %360 ], [ %524, %519 ]
  %839 = phi ptr [ %15, %836 ], [ %15, %810 ], [ %15, %809 ], [ %15, %808 ], [ %15, %803 ], [ %15, %800 ], [ %15, %797 ], [ %15, %795 ], [ %15, %793 ], [ %15, %792 ], [ %15, %782 ], [ %15, %762 ], [ %15, %755 ], [ %15, %751 ], [ %15, %754 ], [ %15, %736 ], [ %15, %743 ], [ %15, %677 ], [ %15, %555 ], [ %15, %551 ], [ %15, %550 ], [ %15, %538 ], [ %15, %346 ], [ %15, %345 ], [ %15, %343 ], [ %15, %342 ], [ %15, %341 ], [ %15, %261 ], [ %15, %260 ], [ %15, %259 ], [ %15, %258 ], [ %15, %255 ], [ %15, %252 ], [ %15, %245 ], [ %15, %242 ], [ %15, %239 ], [ %15, %103 ], [ %15, %100 ], [ %15, %99 ], [ %15, %96 ], [ %15, %56 ], [ %15, %51 ], [ %15, %247 ], [ %15, %832 ], [ %15, %834 ], [ %15, %818 ], [ %63, %87 ], [ %63, %93 ], [ %63, %95 ], [ %15, %118 ], [ %15, %124 ], [ %15, %126 ], [ %15, %207 ], [ %15, %209 ], [ %15, %236 ], [ %15, %238 ], [ %15, %329 ], [ %15, %331 ], [ %15, %332 ], [ %15, %338 ], [ %15, %340 ], [ %15, %539 ], [ %15, %547 ], [ %15, %549 ], [ %598, %612 ], [ %598, %614 ], [ %598, %607 ], [ %675, %672 ], [ %15, %360 ], [ %15, %519 ]
  %840 = phi i8 [ %11, %836 ], [ %11, %810 ], [ %11, %809 ], [ %11, %808 ], [ %11, %803 ], [ %11, %800 ], [ %11, %797 ], [ %11, %795 ], [ %11, %793 ], [ %11, %792 ], [ %11, %782 ], [ %11, %762 ], [ %11, %755 ], [ %11, %751 ], [ %11, %754 ], [ %11, %736 ], [ %11, %743 ], [ %11, %677 ], [ %11, %555 ], [ %11, %551 ], [ %11, %550 ], [ %11, %538 ], [ %11, %346 ], [ %11, %345 ], [ %11, %343 ], [ %11, %342 ], [ %11, %341 ], [ %11, %261 ], [ %11, %260 ], [ %11, %259 ], [ %11, %258 ], [ %11, %255 ], [ %11, %252 ], [ %11, %245 ], [ %11, %242 ], [ %11, %239 ], [ %11, %103 ], [ %11, %100 ], [ %11, %99 ], [ %11, %96 ], [ %11, %56 ], [ %11, %51 ], [ %251, %247 ], [ %11, %832 ], [ %11, %834 ], [ %11, %818 ], [ %11, %87 ], [ %11, %93 ], [ %11, %95 ], [ %11, %118 ], [ %11, %124 ], [ %11, %126 ], [ %11, %207 ], [ %11, %209 ], [ %11, %236 ], [ %11, %238 ], [ %11, %329 ], [ %11, %331 ], [ %11, %332 ], [ %11, %338 ], [ %11, %340 ], [ %11, %539 ], [ %11, %547 ], [ %11, %549 ], [ %11, %612 ], [ %11, %614 ], [ %11, %607 ], [ %11, %672 ], [ %11, %360 ], [ %11, %519 ]
  %841 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %842 = icmp sgt i32 %841, %0
  br i1 %842, label %9, label %843, !prof !227, !llvm.loop !228

843:                                              ; preds = %837, %6
  %844 = phi i8 [ %2, %6 ], [ %840, %837 ]
  %845 = and i8 %844, 1
  store i8 %845, ptr @PL_tainted, align 1, !tbaa !131
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_markstack_grow() local_unnamed_addr #0 !prof !125 {
  %1 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !104
  %2 = load ptr, ptr @PL_markstack, align 8, !tbaa !104
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %2 to i64
  %5 = sub i64 %3, %4
  %6 = lshr exact i64 %5, 2
  %7 = trunc i64 %6 to i32
  %8 = mul nsw i32 %7, 3
  %9 = sdiv i32 %8, 2
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr @Perl_safesysrealloc(ptr noundef %2, i64 noundef %11) #9
  store ptr %12, ptr @PL_markstack, align 8, !tbaa !104
  %13 = getelementptr inbounds i32, ptr %12, i64 %10
  store ptr %13, ptr @PL_markstack_max, align 8, !tbaa !104
  %14 = shl i64 %5, 30
  %15 = ashr i64 %14, 32
  %16 = getelementptr inbounds i32, ptr %12, i64 %15
  store ptr %16, ptr @PL_markstack_ptr, align 8, !tbaa !104
  ret ptr %16
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_savestack_grow() local_unnamed_addr #0 !prof !125 {
  %1 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %2 = mul nsw i32 %1, 3
  %3 = sdiv i32 %2, 2
  %4 = add nsw i32 %3, 4
  store i32 %4, ptr @PL_savestack_max, align 4, !tbaa !127
  %5 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %6 = sext i32 %4 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @Perl_safesysrealloc(ptr noundef %5, i64 noundef %7) #9
  store ptr %8, ptr @PL_savestack, align 8, !tbaa !104
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_savestack_grow_cnt(i32 noundef %0) local_unnamed_addr #0 !prof !125 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %3 = add nsw i32 %2, %0
  store i32 %3, ptr @PL_savestack_max, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %6) #9
  store ptr %7, ptr @PL_savestack, align 8, !tbaa !104
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @Perl_tmps_grow_p(i64 noundef returned %0) local_unnamed_addr #0 !prof !231 {
  %2 = load i64, ptr @PL_tmps_max, align 8, !tbaa !140
  %3 = sub nsw i64 %0, %2
  %4 = icmp slt i64 %3, 128
  %5 = icmp slt i64 %2, 512
  %6 = select i1 %5, i64 128, i64 512, !prof !232
  %7 = select i1 %4, i64 %6, i64 0, !prof !233
  %8 = add i64 %0, 1
  %9 = add i64 %8, %7
  store i64 %9, ptr @PL_tmps_max, align 8, !tbaa !140
  %10 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !104
  %11 = shl i64 %9, 3
  %12 = tail call ptr @Perl_safesysrealloc(ptr noundef %10, i64 noundef %11) #9
  store ptr %12, ptr @PL_tmps_stack, align 8, !tbaa !104
  ret i64 %0
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_free_tmps() local_unnamed_addr #4 !prof !234 {
  %1 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !140
  %2 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !140
  %3 = icmp sgt i64 %2, %1
  br i1 %3, label %4, label %26, !prof !235

4:                                                ; preds = %0, %23
  %5 = phi i64 [ %24, %23 ], [ %2, %0 ]
  %6 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !104
  %7 = add nsw i64 %5, -1
  store i64 %7, ptr @PL_tmps_ix, align 8, !tbaa !140
  %8 = getelementptr inbounds ptr, ptr %6, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %9, @PL_sv_undef
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %23, !prof !236

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !144
  %16 = and i32 %15, -524289
  store i32 %16, ptr %14, align 4, !tbaa !144
  %17 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !148
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %22, !prof !237

20:                                               ; preds = %13
  %21 = add i32 %18, -1
  store i32 %21, ptr %17, align 8, !tbaa !148
  br label %23

22:                                               ; preds = %13
  tail call void @Perl_sv_free2(ptr noundef nonnull %9, i32 noundef %18) #9
  br label %23

23:                                               ; preds = %22, %20, %4
  %24 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !140
  %25 = icmp sgt i64 %24, %1
  br i1 %25, label %4, label %26, !prof !238, !llvm.loop !239

26:                                               ; preds = %23, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_save_pushptrptr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !240 {
  %4 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %5 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %union.any, ptr %5, i64 %6
  %8 = getelementptr inbounds %union.any, ptr %7, i64 1
  store ptr %0, ptr %7, align 8, !tbaa !137
  %9 = getelementptr inbounds %union.any, ptr %7, i64 2
  store ptr %1, ptr %8, align 8, !tbaa !137
  %10 = sext i32 %2 to i64
  store i64 %10, ptr %9, align 8, !tbaa !137
  %11 = add nsw i32 %4, 3
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !127
  %12 = add nsw i32 %4, 7
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %23, !prof !241

15:                                               ; preds = %3
  %16 = mul nsw i32 %13, 3
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @Perl_safesysrealloc(ptr noundef %19, i64 noundef %21) #9
  store ptr %22, ptr @PL_savestack, align 8, !tbaa !104
  br label %23

23:                                               ; preds = %3, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_save_scalar(ptr noundef %0) local_unnamed_addr #5 !prof !242 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = load ptr, ptr %3, align 8, !tbaa !243
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !147

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ %3, %1 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !144
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !149

17:                                               ; preds = %10
  store i8 1, ptr @PL_localizing, align 1, !tbaa !137
  %18 = load ptr, ptr %11, align 8, !tbaa !104
  %19 = tail call i32 @Perl_mg_get(ptr noundef %18) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !137
  br label %20

20:                                               ; preds = %10, %17
  %21 = icmp eq ptr %0, null
  br i1 %21, label %26, label %22, !prof !147

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !148
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !148
  br label %26

26:                                               ; preds = %20, %22
  %27 = load ptr, ptr %11, align 8, !tbaa !104
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !147

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !148
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !148
  br label %33

33:                                               ; preds = %26, %29
  %34 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %35 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %union.any, ptr %35, i64 %36
  %38 = getelementptr inbounds %union.any, ptr %37, i64 1
  store ptr %0, ptr %37, align 8, !tbaa !137
  %39 = getelementptr inbounds %union.any, ptr %37, i64 2
  store ptr %27, ptr %38, align 8, !tbaa !137
  store i64 43, ptr %39, align 8, !tbaa !137
  %40 = add nsw i32 %34, 3
  store i32 %40, ptr @PL_savestack_ix, align 4, !tbaa !127
  %41 = add nsw i32 %34, 7
  %42 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %52, !prof !241

44:                                               ; preds = %33
  %45 = mul nsw i32 %42, 3
  %46 = sdiv i32 %45, 2
  %47 = add nsw i32 %46, 4
  store i32 %47, ptr @PL_savestack_max, align 4, !tbaa !127
  %48 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %49 = sext i32 %47 to i64
  %50 = shl nsw i64 %49, 3
  %51 = tail call ptr @Perl_safesysrealloc(ptr noundef %48, i64 noundef %50) #9
  store ptr %51, ptr @PL_savestack, align 8, !tbaa !104
  br label %52

52:                                               ; preds = %33, %44
  %53 = load ptr, ptr %11, align 8, !tbaa !104
  %54 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  store ptr %54, ptr %11, align 8, !tbaa !104
  %55 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !144
  %57 = and i32 %56, 255
  %58 = icmp ugt i32 %57, 6
  br i1 %58, label %59, label %72, !prof !244

59:                                               ; preds = %52
  %60 = load ptr, ptr %53, align 8, !tbaa !197
  %61 = getelementptr inbounds %struct.xpvmg, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !137
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64, !prof !245

64:                                               ; preds = %59
  %65 = and i32 %56, 2097152
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !245

67:                                               ; preds = %64
  %68 = lshr i32 %56, 4
  %69 = and i32 %68, 1792
  %70 = or i32 %69, %56
  store i32 %70, ptr %55, align 4, !tbaa !144
  br label %71

71:                                               ; preds = %67, %64
  tail call void @Perl_mg_localize(ptr noundef nonnull %53, ptr noundef %54, i1 noundef zeroext true) #9
  br label %72

72:                                               ; preds = %52, %59, %71
  ret ptr %54
}

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_save_scalar_at(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !125 !PGOFuncName !246 {
  %3 = load ptr, ptr %0, align 8, !tbaa !104
  %4 = and i32 %1, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !150

6:                                                ; preds = %2
  %7 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  store ptr %7, ptr %0, align 8, !tbaa !104
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !144
  %12 = and i32 %11, 255
  %13 = icmp ugt i32 %12, 6
  br i1 %13, label %14, label %30, !prof !244

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8, !tbaa !197
  %16 = getelementptr inbounds %struct.xpvmg, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19, !prof !245

19:                                               ; preds = %14
  %20 = and i32 %11, 2097152
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !245

22:                                               ; preds = %19
  %23 = lshr i32 %11, 4
  %24 = and i32 %23, 1792
  %25 = or i32 %24, %11
  store i32 %25, ptr %10, align 4, !tbaa !144
  br label %26

26:                                               ; preds = %22, %19
  br i1 %5, label %27, label %30, !prof !247

27:                                               ; preds = %26
  %28 = and i32 %1, 1
  %29 = icmp ne i32 %28, 0
  tail call void @Perl_mg_localize(ptr noundef nonnull %3, ptr noundef %9, i1 noundef zeroext %29) #9
  br label %30

30:                                               ; preds = %26, %27, %14, %8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_generic_svref(ptr noundef %0) local_unnamed_addr #5 !prof !248 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !249

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !148
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !148
  br label %8

8:                                                ; preds = %1, %4
  %9 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %union.any, ptr %10, i64 %11
  %13 = getelementptr inbounds %union.any, ptr %12, i64 1
  store ptr %0, ptr %12, align 8, !tbaa !137
  %14 = getelementptr inbounds %union.any, ptr %12, i64 2
  store ptr %2, ptr %13, align 8, !tbaa !137
  store i64 27, ptr %14, align 8, !tbaa !137
  %15 = add nsw i32 %9, 3
  store i32 %15, ptr @PL_savestack_ix, align 4, !tbaa !127
  %16 = add nsw i32 %9, 7
  %17 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %27, !prof !241

19:                                               ; preds = %8
  %20 = mul nsw i32 %17, 3
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %21, 4
  store i32 %22, ptr @PL_savestack_max, align 4, !tbaa !127
  %23 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %24 = sext i32 %22 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call ptr @Perl_safesysrealloc(ptr noundef %23, i64 noundef %25) #9
  store ptr %26, ptr @PL_savestack, align 8, !tbaa !104
  br label %27

27:                                               ; preds = %8, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_generic_pvref(ptr noundef %0) local_unnamed_addr #5 !prof !250 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %2, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %0, ptr %7, align 8, !tbaa !137
  store i64 26, ptr %8, align 8, !tbaa !137
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21, !prof !241

13:                                               ; preds = %1
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_shared_pvref(ptr noundef %0) local_unnamed_addr #0 !prof !125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 40)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_set_svflags(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !251 {
  %4 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %5 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %union.any, ptr %5, i64 %6
  %8 = getelementptr inbounds %union.any, ptr %7, i64 1
  store ptr %0, ptr %7, align 8, !tbaa !137
  %9 = getelementptr inbounds %union.any, ptr %7, i64 2
  store i32 %1, ptr %8, align 8, !tbaa !137
  %10 = getelementptr inbounds %union.any, ptr %7, i64 3
  store i32 %2, ptr %9, align 8, !tbaa !137
  store i64 50, ptr %10, align 8, !tbaa !137
  %11 = add nsw i32 %4, 4
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !127
  %12 = add nsw i32 %4, 8
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %23, !prof !252

15:                                               ; preds = %3
  %16 = mul nsw i32 %13, 3
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @Perl_safesysrealloc(ptr noundef %19, i64 noundef %21) #9
  store ptr %22, ptr @PL_savestack, align 8, !tbaa !104
  br label %23

23:                                               ; preds = %3, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_gp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !253 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4, !prof !177

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !148
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !148
  br label %8

8:                                                ; preds = %2, %4
  %9 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %12 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %union.any, ptr %12, i64 %13
  %15 = getelementptr inbounds %union.any, ptr %14, i64 1
  store ptr %0, ptr %14, align 8, !tbaa !137
  %16 = getelementptr inbounds %union.any, ptr %14, i64 2
  store ptr %10, ptr %15, align 8, !tbaa !137
  store i64 28, ptr %16, align 8, !tbaa !137
  %17 = add nsw i32 %11, 3
  store i32 %17, ptr @PL_savestack_ix, align 4, !tbaa !127
  %18 = add nsw i32 %11, 7
  %19 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %29, !prof !241

21:                                               ; preds = %8
  %22 = mul nsw i32 %19, 3
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %23, 4
  store i32 %24, ptr @PL_savestack_max, align 4, !tbaa !127
  %25 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %26 = sext i32 %24 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @Perl_safesysrealloc(ptr noundef %25, i64 noundef %27) #9
  store ptr %28, ptr @PL_savestack, align 8, !tbaa !104
  br label %29

29:                                               ; preds = %8, %21
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %97, label %31, !prof !254

31:                                               ; preds = %29
  %32 = tail call ptr @Perl_newGP(ptr noundef %0) #9
  %33 = load ptr, ptr %0, align 8, !tbaa !156
  %34 = getelementptr inbounds %struct.xpvgv, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !137
  %36 = icmp eq ptr %35, null
  br i1 %36, label %76, label %37, !prof !255

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !158
  %40 = and i32 %39, 33554432
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %76, label %42, !prof !255

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !137
  %45 = load ptr, ptr %35, align 8, !tbaa !160
  %46 = getelementptr inbounds %struct.xpvhv, ptr %45, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !161
  %48 = getelementptr ptr, ptr %44, i64 %47
  %49 = getelementptr ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !137
  %51 = icmp eq ptr %50, null
  br i1 %51, label %76, label %52, !prof !255

52:                                               ; preds = %42
  %53 = getelementptr i8, ptr %48, i64 36
  %54 = load i32, ptr %53, align 4, !tbaa !163
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %76, label %56, !prof !255

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.xpvgv, ptr %33, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !137
  %59 = getelementptr inbounds %struct.hek, ptr %58, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !178
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %66, !prof !255

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.hek, ptr %58, i64 0, i32 2
  %64 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %63, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %62, %56
  %67 = load ptr, ptr %9, align 8, !tbaa !137
  %68 = getelementptr inbounds %struct.gp, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !174
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76, !prof !256

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.gp, ptr %67, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !176
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75, !prof !256

75:                                               ; preds = %71
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %35) #9
  br label %76

76:                                               ; preds = %62, %66, %75, %71, %37, %42, %52, %31
  %77 = phi i1 [ false, %66 ], [ false, %75 ], [ false, %71 ], [ false, %52 ], [ false, %42 ], [ false, %37 ], [ false, %31 ], [ true, %62 ]
  %78 = load ptr, ptr %9, align 8, !tbaa !137
  %79 = getelementptr inbounds %struct.gp, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !257
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82, !prof !256

82:                                               ; preds = %76
  %83 = load ptr, ptr %80, align 8, !tbaa !258
  %84 = getelementptr inbounds %struct.xpvio, ptr %83, i64 0, i32 17
  %85 = load i8, ptr %84, align 1, !tbaa !260
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = tail call ptr @Perl_newSV_type(i32 noundef 15) #9
  %90 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 1
  store ptr %89, ptr %90, align 8, !tbaa !257
  %91 = load ptr, ptr %89, align 8, !tbaa !258
  %92 = getelementptr inbounds %struct.xpvio, ptr %91, i64 0, i32 17
  %93 = load i8, ptr %92, align 1, !tbaa !260
  %94 = or i8 %93, 3
  store i8 %94, ptr %92, align 1, !tbaa !260
  br label %95

95:                                               ; preds = %88, %82, %76
  store ptr %32, ptr %9, align 8, !tbaa !137
  br i1 %77, label %96, label %104, !prof !255

96:                                               ; preds = %95
  tail call void @Perl_mro_isa_changed_in(ptr noundef %35) #9
  br label %104

97:                                               ; preds = %29
  %98 = load ptr, ptr %9, align 8, !tbaa !137
  %99 = tail call ptr @Perl_gp_ref(ptr noundef %98) #9
  %100 = load ptr, ptr %0, align 8, !tbaa !156
  %101 = getelementptr inbounds %struct.xpvgv, ptr %100, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !262
  %103 = or i64 %102, 1
  store i64 %103, ptr %101, align 8, !tbaa !262
  br label %104

104:                                              ; preds = %95, %96, %97
  ret void
}

declare ptr @Perl_newGP(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #1

declare void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_gp_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_save_ary(ptr noundef %0) local_unnamed_addr #5 !prof !264 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13, !prof !168

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 11) #9
  %9 = getelementptr inbounds %struct.gv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !167
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi ptr [ %12, %7 ], [ %5, %1 ]
  %15 = getelementptr inbounds %struct.av, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !112
  %17 = and i32 %16, -1073741824
  %18 = icmp eq i32 %17, -2147483648
  br i1 %18, label %19, label %20, !prof !168

19:                                               ; preds = %13
  tail call void @Perl_av_reify(ptr noundef %14) #9
  br label %20

20:                                               ; preds = %13, %19
  %21 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !265
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !265
  %24 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %25 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %union.any, ptr %25, i64 %26
  %28 = getelementptr inbounds %union.any, ptr %27, i64 1
  store ptr %0, ptr %27, align 8, !tbaa !137
  %29 = getelementptr inbounds %union.any, ptr %27, i64 2
  store ptr %14, ptr %28, align 8, !tbaa !137
  store i64 23, ptr %29, align 8, !tbaa !137
  %30 = add nsw i32 %24, 3
  store i32 %30, ptr @PL_savestack_ix, align 4, !tbaa !127
  %31 = add nsw i32 %24, 7
  %32 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %42, !prof !241

34:                                               ; preds = %20
  %35 = mul nsw i32 %32, 3
  %36 = sdiv i32 %35, 2
  %37 = add nsw i32 %36, 4
  store i32 %37, ptr @PL_savestack_max, align 4, !tbaa !127
  %38 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %39 = sext i32 %37 to i64
  %40 = shl nsw i64 %39, 3
  %41 = tail call ptr @Perl_safesysrealloc(ptr noundef %38, i64 noundef %40) #9
  store ptr %41, ptr @PL_savestack, align 8, !tbaa !104
  br label %42

42:                                               ; preds = %20, %34
  %43 = load ptr, ptr %2, align 8, !tbaa !137
  %44 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 6
  store ptr null, ptr %44, align 8, !tbaa !167
  %45 = load ptr, ptr %2, align 8, !tbaa !137
  %46 = getelementptr inbounds %struct.gp, ptr %45, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !167
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %55, !prof !169

49:                                               ; preds = %42
  %50 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 11) #9
  %51 = getelementptr inbounds %struct.gv, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !137
  %53 = getelementptr inbounds %struct.gp, ptr %52, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !167
  br label %55

55:                                               ; preds = %42, %49
  %56 = phi ptr [ %54, %49 ], [ %47, %42 ]
  %57 = load ptr, ptr %14, align 8, !tbaa !115
  %58 = getelementptr inbounds %struct.xpvmg, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !137
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !169

61:                                               ; preds = %55
  tail call void @Perl_mg_localize(ptr noundef nonnull %14, ptr noundef %56, i1 noundef zeroext true) #9
  br label %62

62:                                               ; preds = %55, %61
  ret ptr %56
}

declare void @Perl_av_reify(ptr noundef) local_unnamed_addr #1

declare void @Perl_mg_localize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_save_hash(ptr noundef %0) local_unnamed_addr #5 !prof !266 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !265
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !265
  %5 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = getelementptr inbounds %struct.gp, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !171

10:                                               ; preds = %1
  %11 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 12) #9
  %12 = getelementptr inbounds %struct.gv, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  %14 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !170
  br label %16

16:                                               ; preds = %1, %10
  %17 = phi ptr [ %15, %10 ], [ %8, %1 ]
  %18 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %union.any, ptr %19, i64 %20
  %22 = getelementptr inbounds %union.any, ptr %21, i64 1
  store ptr %0, ptr %21, align 8, !tbaa !137
  %23 = getelementptr inbounds %union.any, ptr %21, i64 2
  store ptr %17, ptr %22, align 8, !tbaa !137
  store i64 32, ptr %23, align 8, !tbaa !137
  %24 = add nsw i32 %18, 3
  store i32 %24, ptr @PL_savestack_ix, align 4, !tbaa !127
  %25 = add nsw i32 %18, 7
  %26 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %36, !prof !241

28:                                               ; preds = %16
  %29 = mul nsw i32 %26, 3
  %30 = sdiv i32 %29, 2
  %31 = add nsw i32 %30, 4
  store i32 %31, ptr @PL_savestack_max, align 4, !tbaa !127
  %32 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %33 = sext i32 %31 to i64
  %34 = shl nsw i64 %33, 3
  %35 = tail call ptr @Perl_safesysrealloc(ptr noundef %32, i64 noundef %34) #9
  store ptr %35, ptr @PL_savestack, align 8, !tbaa !104
  br label %36

36:                                               ; preds = %16, %28
  %37 = load ptr, ptr %5, align 8, !tbaa !137
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 5
  store ptr null, ptr %38, align 8, !tbaa !170
  %39 = load ptr, ptr %5, align 8, !tbaa !137
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !170
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %49, !prof !172

43:                                               ; preds = %36
  %44 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 12) #9
  %45 = getelementptr inbounds %struct.gv, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !137
  %47 = getelementptr inbounds %struct.gp, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !170
  br label %49

49:                                               ; preds = %36, %43
  %50 = phi ptr [ %48, %43 ], [ %41, %36 ]
  %51 = load ptr, ptr %17, align 8, !tbaa !160
  %52 = getelementptr inbounds %struct.xpvmg, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !137
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !172

55:                                               ; preds = %49
  tail call void @Perl_mg_localize(ptr noundef nonnull %17, ptr noundef %50, i1 noundef zeroext true) #9
  br label %56

56:                                               ; preds = %49, %55
  ret ptr %50
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_item(ptr noundef %0) local_unnamed_addr #5 !prof !267 {
  %2 = tail call ptr @Perl_newSVsv(ptr noundef %0) #9
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %2, ptr %7, align 8, !tbaa !137
  store i64 35, ptr %8, align 8, !tbaa !137
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21, !prof !241

13:                                               ; preds = %1
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %1, %13
  ret void
}

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_bool(ptr noundef %0) local_unnamed_addr #5 !prof !268 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %0, ptr %5, align 8, !tbaa !137
  %7 = load i8, ptr %0, align 1, !tbaa !131, !range !133, !noundef !134
  %8 = zext nneg i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 8
  %10 = or disjoint i64 %9, 5
  store i64 %10, ptr %6, align 8, !tbaa !137
  %11 = add nsw i32 %2, 2
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !127
  %12 = add nsw i32 %2, 6
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %23, !prof !173

15:                                               ; preds = %1
  %16 = mul nsw i32 %13, 3
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @Perl_safesysrealloc(ptr noundef %19, i64 noundef %21) #9
  store ptr %22, ptr @PL_savestack, align 8, !tbaa !104
  br label %23

23:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_pushi32ptr(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !125 {
  %4 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %5 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %union.any, ptr %5, i64 %6
  %8 = getelementptr inbounds %union.any, ptr %7, i64 1
  store i32 %0, ptr %7, align 8, !tbaa !137
  %9 = getelementptr inbounds %union.any, ptr %7, i64 2
  store ptr %1, ptr %8, align 8, !tbaa !137
  %10 = sext i32 %2 to i64
  store i64 %10, ptr %9, align 8, !tbaa !137
  %11 = add nsw i32 %4, 3
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !127
  %12 = add nsw i32 %4, 7
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %23, !prof !269

15:                                               ; preds = %3
  %16 = mul nsw i32 %13, 3
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @Perl_safesysrealloc(ptr noundef %19, i64 noundef %21) #9
  store ptr %22, ptr @PL_savestack, align 8, !tbaa !104
  br label %23

23:                                               ; preds = %3, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_int(ptr noundef %0) local_unnamed_addr #5 !prof !270 {
  %2 = load i32, ptr %0, align 4, !tbaa !127
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 6
  %5 = or disjoint i64 %4, 15
  %6 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %7 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds %union.any, ptr %7, i64 %8
  %10 = getelementptr inbounds %union.any, ptr %9, i64 1
  store ptr %0, ptr %9, align 8, !tbaa !137
  store i64 %5, ptr %10, align 8, !tbaa !137
  %11 = add nsw i32 %6, 2
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !127
  %12 = add nsw i32 %6, 6
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %23, !prof !271

15:                                               ; preds = %1
  %16 = mul nsw i32 %13, 3
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @Perl_safesysrealloc(ptr noundef %19, i64 noundef %21) #9
  store ptr %22, ptr @PL_savestack, align 8, !tbaa !104
  br label %23

23:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_I8(ptr noundef %0) local_unnamed_addr #5 !prof !272 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %0, ptr %5, align 8, !tbaa !137
  %7 = load i8, ptr %0, align 1, !tbaa !137
  %8 = sext i8 %7 to i64
  %9 = shl nsw i64 %8, 8
  %10 = or disjoint i64 %9, 14
  store i64 %10, ptr %6, align 8, !tbaa !137
  %11 = add nsw i32 %2, 2
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !127
  %12 = add nsw i32 %2, 6
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %23, !prof !273

15:                                               ; preds = %1
  %16 = mul nsw i32 %13, 3
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @Perl_safesysrealloc(ptr noundef %19, i64 noundef %21) #9
  store ptr %22, ptr @PL_savestack, align 8, !tbaa !104
  br label %23

23:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_I16(ptr noundef %0) local_unnamed_addr #5 !prof !274 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %0, ptr %5, align 8, !tbaa !137
  %7 = load i16, ptr %0, align 2, !tbaa !220
  %8 = sext i16 %7 to i64
  %9 = shl nsw i64 %8, 8
  %10 = or disjoint i64 %9, 12
  store i64 %10, ptr %6, align 8, !tbaa !137
  %11 = add nsw i32 %2, 2
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !127
  %12 = add nsw i32 %2, 6
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %23, !prof !275

15:                                               ; preds = %1
  %16 = mul nsw i32 %13, 3
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr @Perl_safesysrealloc(ptr noundef %19, i64 noundef %21) #9
  store ptr %22, ptr @PL_savestack, align 8, !tbaa !104
  br label %23

23:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_I32(ptr noundef %0) local_unnamed_addr #5 !prof !276 {
  %2 = load i32, ptr %0, align 4, !tbaa !127
  %3 = shl i32 %2, 6
  %4 = or disjoint i32 %3, 13
  %5 = sext i32 %4 to i64
  %6 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %7 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds %union.any, ptr %7, i64 %8
  %10 = add i32 %2, 33554432
  %11 = icmp ult i32 %10, 67108864
  br i1 %11, label %14, label %12, !prof !277

12:                                               ; preds = %1
  %13 = getelementptr inbounds %union.any, ptr %9, i64 1
  store i32 %2, ptr %9, align 8, !tbaa !137
  br label %14

14:                                               ; preds = %1, %12
  %15 = phi i64 [ 33, %12 ], [ %5, %1 ]
  %16 = phi i32 [ 3, %12 ], [ 2, %1 ]
  %17 = phi ptr [ %13, %12 ], [ %9, %1 ]
  %18 = getelementptr inbounds %union.any, ptr %17, i64 1
  store ptr %0, ptr %17, align 8, !tbaa !137
  store i64 %15, ptr %18, align 8, !tbaa !137
  %19 = add nsw i32 %16, %6
  store i32 %19, ptr @PL_savestack_ix, align 4, !tbaa !127
  %20 = add nsw i32 %19, 4
  %21 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %31, !prof !278

23:                                               ; preds = %14
  %24 = mul nsw i32 %21, 3
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %25, 4
  store i32 %26, ptr @PL_savestack_max, align 4, !tbaa !127
  %27 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %28 = sext i32 %26 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @Perl_safesysrealloc(ptr noundef %27, i64 noundef %29) #9
  store ptr %30, ptr @PL_savestack, align 8, !tbaa !104
  br label %31

31:                                               ; preds = %14, %23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_save_strlen(ptr noundef %0) local_unnamed_addr #4 !prof !279 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = load i64, ptr %0, align 8, !tbaa !140
  %7 = getelementptr inbounds %union.any, ptr %5, i64 1
  store i64 %6, ptr %5, align 8, !tbaa !137
  %8 = getelementptr inbounds %union.any, ptr %5, i64 2
  store ptr %0, ptr %7, align 8, !tbaa !137
  store i64 42, ptr %8, align 8, !tbaa !137
  %9 = add nsw i32 %2, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %2, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21, !prof !280

13:                                               ; preds = %1
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_pptr(ptr noundef %0) local_unnamed_addr #5 !prof !281 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %2, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %0, ptr %7, align 8, !tbaa !137
  store i64 38, ptr %8, align 8, !tbaa !137
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21, !prof !241

13:                                               ; preds = %1
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_save_vptr(ptr noundef %0) local_unnamed_addr #4 !prof !282 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %2, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %0, ptr %7, align 8, !tbaa !137
  store i64 45, ptr %8, align 8, !tbaa !137
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21, !prof !241

13:                                               ; preds = %1
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_sptr(ptr noundef %0) local_unnamed_addr #5 !prof !283 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %2, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %0, ptr %7, align 8, !tbaa !137
  store i64 41, ptr %8, align 8, !tbaa !137
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21, !prof !241

13:                                               ; preds = %1
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_padsv_and_mortalize(i64 noundef %0) local_unnamed_addr #5 !prof !284 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = load ptr, ptr @PL_curpad, align 8, !tbaa !104
  %7 = getelementptr inbounds ptr, ptr %6, i64 %0
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !148
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !148
  %12 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %8, ptr %5, align 8, !tbaa !137
  %13 = load ptr, ptr @PL_comppad, align 8, !tbaa !104
  %14 = getelementptr inbounds %union.any, ptr %5, i64 2
  store ptr %13, ptr %12, align 8, !tbaa !137
  %15 = getelementptr inbounds %union.any, ptr %5, i64 3
  store i64 %0, ptr %14, align 8, !tbaa !137
  store i64 49, ptr %15, align 8, !tbaa !137
  %16 = add nsw i32 %2, 4
  store i32 %16, ptr @PL_savestack_ix, align 4, !tbaa !127
  %17 = add nsw i32 %2, 8
  %18 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %28, !prof !285

20:                                               ; preds = %1
  %21 = mul nsw i32 %18, 3
  %22 = sdiv i32 %21, 2
  %23 = add nsw i32 %22, 4
  store i32 %23, ptr @PL_savestack_max, align 4, !tbaa !127
  %24 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %25 = sext i32 %23 to i64
  %26 = shl nsw i64 %25, 3
  %27 = tail call ptr @Perl_safesysrealloc(ptr noundef %24, i64 noundef %26) #9
  store ptr %27, ptr @PL_savestack, align 8, !tbaa !104
  br label %28

28:                                               ; preds = %1, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_hptr(ptr noundef %0) local_unnamed_addr #0 !prof !125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  tail call void @Perl_save_pushptrptr(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 31)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_aptr(ptr noundef %0) local_unnamed_addr #0 !prof !125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  tail call void @Perl_save_pushptrptr(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 47)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_save_pushptr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !286 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !137
  %8 = sext i32 %1 to i64
  store i64 %8, ptr %7, align 8, !tbaa !137
  %9 = add nsw i32 %3, 2
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %3, 6
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21, !prof !287

13:                                               ; preds = %2
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_save_clearsv(ptr noundef %0) local_unnamed_addr #4 !prof !288 {
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !104
  %3 = ptrtoint ptr %0 to i64
  %4 = ptrtoint ptr %2 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  %7 = shl i64 %5, 3
  %8 = load ptr, ptr %0, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !144
  %11 = and i32 %10, -262145
  store i32 %11, ptr %9, align 4, !tbaa !144
  %12 = lshr i64 %7, 6
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %15, label %14, !prof !289

14:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i64 noundef %6, ptr noundef nonnull %0, ptr noundef %2) #9
  br label %15

15:                                               ; preds = %1, %14
  %16 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %union.any, ptr %17, i64 %18
  %20 = or disjoint i64 %7, 2
  store i64 %20, ptr %19, align 8, !tbaa !137
  %21 = add nsw i32 %16, 1
  store i32 %21, ptr @PL_savestack_ix, align 4, !tbaa !127
  %22 = add nsw i32 %16, 5
  %23 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %33, !prof !290

25:                                               ; preds = %15
  %26 = mul nsw i32 %23, 3
  %27 = sdiv i32 %26, 2
  %28 = add nsw i32 %27, 4
  store i32 %28, ptr @PL_savestack_max, align 4, !tbaa !127
  %29 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %30 = sext i32 %28 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr @Perl_safesysrealloc(ptr noundef %29, i64 noundef %31) #9
  store ptr %32, ptr @PL_savestack, align 8, !tbaa !104
  br label %33

33:                                               ; preds = %15, %25
  ret void
}

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_delete(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !291 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5, !prof !292

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !148
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !148
  br label %9

9:                                                ; preds = %3, %5
  %10 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %11 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds %union.any, ptr %11, i64 %12
  %14 = getelementptr inbounds %union.any, ptr %13, i64 1
  store ptr %1, ptr %13, align 8, !tbaa !137
  %15 = getelementptr inbounds %union.any, ptr %13, i64 2
  store i32 %2, ptr %14, align 8, !tbaa !137
  %16 = getelementptr inbounds %union.any, ptr %13, i64 3
  store ptr %0, ptr %15, align 8, !tbaa !137
  store i64 53, ptr %16, align 8, !tbaa !137
  %17 = add nsw i32 %10, 4
  store i32 %17, ptr @PL_savestack_ix, align 4, !tbaa !127
  %18 = add nsw i32 %10, 8
  %19 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %29, !prof !293

21:                                               ; preds = %9
  %22 = mul nsw i32 %19, 3
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %23, 4
  store i32 %24, ptr @PL_savestack_max, align 4, !tbaa !127
  %25 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %26 = sext i32 %24 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @Perl_safesysrealloc(ptr noundef %25, i64 noundef %27) #9
  store ptr %28, ptr @PL_savestack, align 8, !tbaa !104
  br label %29

29:                                               ; preds = %9, %21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @S_save_pushptri32ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 !prof !294 !PGOFuncName !295 {
  %5 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %6 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %union.any, ptr %6, i64 %7
  %9 = getelementptr inbounds %union.any, ptr %8, i64 1
  store ptr %0, ptr %8, align 8, !tbaa !137
  %10 = getelementptr inbounds %union.any, ptr %8, i64 2
  store i32 %1, ptr %9, align 8, !tbaa !137
  %11 = getelementptr inbounds %union.any, ptr %8, i64 3
  store ptr %2, ptr %10, align 8, !tbaa !137
  %12 = zext nneg i32 %3 to i64
  store i64 %12, ptr %11, align 8, !tbaa !137
  %13 = add nsw i32 %5, 4
  store i32 %13, ptr @PL_savestack_ix, align 4, !tbaa !127
  %14 = add nsw i32 %5, 8
  %15 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %25, !prof !293

17:                                               ; preds = %4
  %18 = mul nsw i32 %15, 3
  %19 = sdiv i32 %18, 2
  %20 = add nsw i32 %19, 4
  store i32 %20, ptr @PL_savestack_max, align 4, !tbaa !127
  %21 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %22 = sext i32 %20 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr @Perl_safesysrealloc(ptr noundef %21, i64 noundef %23) #9
  store ptr %24, ptr @PL_savestack, align 8, !tbaa !104
  br label %25

25:                                               ; preds = %4, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_hdelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !296 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !144
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14, !prof !297

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !197
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !298
  store i64 %11, ptr %3, align 8, !tbaa !140
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 34) #9
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %18 = load i32, ptr %4, align 4, !tbaa !144
  %19 = and i32 %18, 536870912
  %20 = icmp eq i32 %19, 0
  %21 = load i64, ptr %3, align 8
  %22 = trunc i64 %21 to i32
  %23 = sub nsw i32 0, %22
  %24 = select i1 %20, i32 %22, i32 %23, !prof !297
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !148
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !148
  %28 = call ptr @Perl_savepvn(ptr noundef %17, i32 noundef %22) #9
  %29 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %30 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %union.any, ptr %30, i64 %31
  %33 = getelementptr inbounds %union.any, ptr %32, i64 1
  store ptr %28, ptr %32, align 8, !tbaa !137
  %34 = getelementptr inbounds %union.any, ptr %32, i64 2
  store i32 %24, ptr %33, align 8, !tbaa !137
  %35 = getelementptr inbounds %union.any, ptr %32, i64 3
  store ptr %0, ptr %34, align 8, !tbaa !137
  store i64 53, ptr %35, align 8, !tbaa !137
  %36 = add nsw i32 %29, 4
  store i32 %36, ptr @PL_savestack_ix, align 4, !tbaa !127
  %37 = add nsw i32 %29, 8
  %38 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %48, !prof !293

40:                                               ; preds = %16
  %41 = mul nsw i32 %38, 3
  %42 = sdiv i32 %41, 2
  %43 = add nsw i32 %42, 4
  store i32 %43, ptr @PL_savestack_max, align 4, !tbaa !127
  %44 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %45 = sext i32 %43 to i64
  %46 = shl nsw i64 %45, 3
  %47 = call ptr @Perl_safesysrealloc(ptr noundef %44, i64 noundef %46) #9
  store ptr %47, ptr @PL_savestack, align 8, !tbaa !104
  br label %48

48:                                               ; preds = %16, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_adelete(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !125 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !148
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !148
  br label %12

12:                                               ; preds = %2, %8
  %13 = getelementptr inbounds %union.any, ptr %6, i64 1
  store i64 %1, ptr %6, align 8, !tbaa !137
  %14 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %0, ptr %13, align 8, !tbaa !137
  store i64 46, ptr %14, align 8, !tbaa !137
  %15 = add nsw i32 %3, 3
  store i32 %15, ptr @PL_savestack_ix, align 4, !tbaa !127
  %16 = add nsw i32 %3, 7
  %17 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = mul nsw i32 %17, 3
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %21, 4
  store i32 %22, ptr @PL_savestack_max, align 4, !tbaa !127
  %23 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %24 = sext i32 %22 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call ptr @Perl_safesysrealloc(ptr noundef %23, i64 noundef %25) #9
  store ptr %26, ptr @PL_savestack, align 8, !tbaa !104
  br label %27

27:                                               ; preds = %12, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_destructor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !125 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %1, ptr %7, align 8, !tbaa !137
  store i64 24, ptr %8, align 8, !tbaa !137
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_save_destructor_x(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !300 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %1, ptr %7, align 8, !tbaa !137
  store i64 25, ptr %8, align 8, !tbaa !137
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !127
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %21, !prof !301

13:                                               ; preds = %2
  %14 = mul nsw i32 %11, 3
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @PL_savestack_max, align 4, !tbaa !127
  %17 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %17, i64 noundef %19) #9
  store ptr %20, ptr @PL_savestack, align 8, !tbaa !104
  br label %21

21:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_hints() local_unnamed_addr #5 !prof !302 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !214
  %2 = tail call ptr @Perl_refcounted_he_inc(ptr noundef %1) #9
  %3 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !207
  %4 = and i32 %3, 131072
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6, !prof !215

6:                                                ; preds = %0
  %7 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = getelementptr inbounds %struct.gp, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  tail call fastcc void @S_save_pushptri32ptr(ptr noundef %11, i32 noundef %3, ptr noundef %2, i32 noundef 30)
  %12 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = getelementptr inbounds %struct.gp, ptr %14, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !170
  %16 = tail call ptr @Perl_hv_copy_hints_hv(ptr noundef %11) #9
  %17 = load ptr, ptr @PL_hintgv, align 8, !tbaa !104
  %18 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !137
  %20 = getelementptr inbounds %struct.gp, ptr %19, i64 0, i32 5
  store ptr %16, ptr %20, align 8, !tbaa !170
  br label %40

21:                                               ; preds = %0
  %22 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %23 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %union.any, ptr %23, i64 %24
  %26 = getelementptr inbounds %union.any, ptr %25, i64 1
  store i32 %3, ptr %25, align 8, !tbaa !137
  %27 = getelementptr inbounds %union.any, ptr %25, i64 2
  store ptr %2, ptr %26, align 8, !tbaa !137
  store i64 30, ptr %27, align 8, !tbaa !137
  %28 = add nsw i32 %22, 3
  store i32 %28, ptr @PL_savestack_ix, align 4, !tbaa !127
  %29 = add nsw i32 %22, 7
  %30 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %40, !prof !269

32:                                               ; preds = %21
  %33 = mul nsw i32 %30, 3
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %34, 4
  store i32 %35, ptr @PL_savestack_max, align 4, !tbaa !127
  %36 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %37 = sext i32 %35 to i64
  %38 = shl nsw i64 %37, 3
  %39 = tail call ptr @Perl_safesysrealloc(ptr noundef %36, i64 noundef %38) #9
  store ptr %39, ptr @PL_savestack, align 8, !tbaa !104
  br label %40

40:                                               ; preds = %32, %21, %6
  ret void
}

declare ptr @Perl_refcounted_he_inc(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_hv_copy_hints_hv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_aelem_flags(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !125 {
  %5 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %6 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %union.any, ptr %6, i64 %7
  %9 = load ptr, ptr %2, align 8, !tbaa !104
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !144
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call i32 @Perl_mg_get(ptr noundef %9) #9
  br label %16

16:                                               ; preds = %4, %14
  %17 = icmp eq ptr %0, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !148
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !148
  br label %22

22:                                               ; preds = %16, %18
  %23 = getelementptr inbounds %union.any, ptr %8, i64 1
  store ptr %0, ptr %8, align 8, !tbaa !137
  %24 = getelementptr inbounds %union.any, ptr %8, i64 2
  store i64 %1, ptr %23, align 8, !tbaa !137
  %25 = load ptr, ptr %2, align 8, !tbaa !104
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !148
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !148
  br label %31

31:                                               ; preds = %22, %27
  %32 = getelementptr inbounds %union.any, ptr %8, i64 3
  store ptr %25, ptr %24, align 8, !tbaa !137
  store i64 52, ptr %32, align 8, !tbaa !137
  %33 = add nsw i32 %5, 4
  store i32 %33, ptr @PL_savestack_ix, align 4, !tbaa !127
  %34 = add nsw i32 %5, 8
  %35 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = mul nsw i32 %35, 3
  %39 = sdiv i32 %38, 2
  %40 = add nsw i32 %39, 4
  store i32 %40, ptr @PL_savestack_max, align 4, !tbaa !127
  %41 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %42 = sext i32 %40 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call ptr @Perl_safesysrealloc(ptr noundef %41, i64 noundef %43) #9
  store ptr %44, ptr @PL_savestack, align 8, !tbaa !104
  br label %45

45:                                               ; preds = %31, %37
  %46 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !112
  %48 = and i32 %47, -1073741824
  %49 = icmp eq i32 %48, -2147483648
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @Perl_av_reify(ptr noundef %0) #9
  br label %51

51:                                               ; preds = %45, %50
  %52 = tail call fastcc ptr @S_save_scalar_at(ptr noundef nonnull %2, i32 noundef %3)
  %53 = and i32 %3, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load ptr, ptr %2, align 8, !tbaa !104
  %57 = load i32, ptr %46, align 4, !tbaa !144
  %58 = and i32 %57, 8388608
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = tail call ptr @Perl_sv_2mortal(ptr noundef %56) #9
  br label %65

65:                                               ; preds = %63, %55, %60, %51
  ret void
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_helem_flags(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !125 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !144
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @Perl_mg_get(ptr noundef %5) #9
  br label %12

12:                                               ; preds = %4, %10
  %13 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %14 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %union.any, ptr %14, i64 %15
  %17 = icmp eq ptr %0, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !148
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !148
  br label %22

22:                                               ; preds = %12, %18
  %23 = getelementptr inbounds %union.any, ptr %16, i64 1
  store ptr %0, ptr %16, align 8, !tbaa !137
  %24 = tail call ptr @Perl_newSVsv(ptr noundef %1) #9
  %25 = getelementptr inbounds %union.any, ptr %16, i64 2
  store ptr %24, ptr %23, align 8, !tbaa !137
  %26 = load ptr, ptr %2, align 8, !tbaa !104
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !148
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8, !tbaa !148
  br label %32

32:                                               ; preds = %22, %28
  %33 = getelementptr inbounds %union.any, ptr %16, i64 3
  store ptr %26, ptr %25, align 8, !tbaa !137
  store i64 48, ptr %33, align 8, !tbaa !137
  %34 = add nsw i32 %13, 4
  store i32 %34, ptr @PL_savestack_ix, align 4, !tbaa !127
  %35 = add nsw i32 %13, 8
  %36 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = mul nsw i32 %36, 3
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %40, 4
  store i32 %41, ptr @PL_savestack_max, align 4, !tbaa !127
  %42 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %43 = sext i32 %41 to i64
  %44 = shl nsw i64 %43, 3
  %45 = tail call ptr @Perl_safesysrealloc(ptr noundef %42, i64 noundef %44) #9
  store ptr %45, ptr @PL_savestack, align 8, !tbaa !104
  br label %46

46:                                               ; preds = %32, %38
  %47 = tail call fastcc ptr @S_save_scalar_at(ptr noundef nonnull %2, i32 noundef %3)
  %48 = and i32 %3, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load ptr, ptr %2, align 8, !tbaa !104
  %52 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !144
  %54 = and i32 %53, 8388608
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call ptr @Perl_sv_2mortal(ptr noundef %51) #9
  br label %61

61:                                               ; preds = %59, %50, %56, %46
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_save_svref(ptr noundef %0) local_unnamed_addr #0 !prof !125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !144
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @Perl_mg_get(ptr noundef %2) #9
  br label %9

9:                                                ; preds = %1, %7
  %10 = load ptr, ptr %0, align 8, !tbaa !104
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !148
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !148
  br label %16

16:                                               ; preds = %9, %12
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %0, ptr noundef %10, i32 noundef 44)
  %17 = tail call fastcc ptr @S_save_scalar_at(ptr noundef nonnull %0, i32 noundef 1)
  ret ptr %17
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @Perl_save_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !303 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %4 = add nsw i32 %1, %0
  %5 = add nsw i32 %4, -1
  %6 = sext i32 %5 to i64
  %7 = lshr i64 %6, 3
  %8 = add nuw nsw i64 %7, 1
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %13, label %10, !prof !304

10:                                               ; preds = %2
  %11 = sext i32 %1 to i64
  %12 = sext i32 %0 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, i64 noundef %8, i64 noundef %12, i64 noundef %11) #9
  br label %13

13:                                               ; preds = %2, %10
  %14 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %15 = ashr i32 %5, 3
  %16 = add i32 %14, %15
  %17 = add i32 %16, 6
  %18 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %27, !prof !305

20:                                               ; preds = %13
  %21 = add i32 %14, %15
  %22 = add i32 %21, 6
  store i32 %22, ptr @PL_savestack_max, align 4, !tbaa !127
  %23 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %24 = sext i32 %22 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call ptr @Perl_safesysrealloc(ptr noundef %23, i64 noundef %25) #9
  store ptr %26, ptr @PL_savestack, align 8, !tbaa !104
  br label %27

27:                                               ; preds = %13, %20
  %28 = shl i64 %8, 6
  %29 = shl i32 %3, 3
  %30 = add i32 %29, %1
  %31 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %32 = trunc i64 %8 to i32
  %33 = add i32 %31, %32
  store i32 %33, ptr @PL_savestack_ix, align 4, !tbaa !127
  %34 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %35 = add nsw i32 %33, 1
  store i32 %35, ptr @PL_savestack_ix, align 4, !tbaa !127
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds %union.any, ptr %34, i64 %36
  store i64 %28, ptr %37, align 8, !tbaa !137
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_aliased_sv(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !306 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !127
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = tail call ptr @Perl_gp_ref(ptr noundef %7) #9
  %9 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %8, ptr %5, align 8, !tbaa !137
  %10 = load ptr, ptr %6, align 8, !tbaa !137
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 23
  %14 = and i32 %13, 256
  %15 = or disjoint i32 %14, 4
  %16 = zext nneg i32 %15 to i64
  store i64 %16, ptr %9, align 8, !tbaa !137
  %17 = add nsw i32 %2, 2
  store i32 %17, ptr @PL_savestack_ix, align 4, !tbaa !127
  %18 = add nsw i32 %2, 6
  %19 = load i32, ptr @PL_savestack_max, align 4, !tbaa !127
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %29, !prof !224

21:                                               ; preds = %1
  %22 = mul nsw i32 %19, 3
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %23, 4
  store i32 %24, ptr @PL_savestack_max, align 4, !tbaa !127
  %25 = load ptr, ptr @PL_savestack, align 8, !tbaa !104
  %26 = sext i32 %24 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @Perl_safesysrealloc(ptr noundef %25, i64 noundef %27) #9
  store ptr %28, ptr @PL_savestack, align 8, !tbaa !104
  br label %29

29:                                               ; preds = %1, %21
  ret void
}

declare void @Perl_sv_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare void @Perl_gp_free(ptr noundef) local_unnamed_addr #1

declare void @Perl_padname_free(ptr noundef) local_unnamed_addr #1

declare void @Perl_refcounted_he_free(ptr noundef) local_unnamed_addr #1

declare void @Perl_op_free(ptr noundef) local_unnamed_addr #1

declare void @Perl_hv_kill_backrefs(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_mg_free(ptr noundef) local_unnamed_addr #1

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #1

declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #1

declare void @Perl_cv_undef(ptr noundef) local_unnamed_addr #1

declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_av_delete(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_clear(ptr noundef) local_unnamed_addr #1

declare void @Perl_parser_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @Perl_cx_dump(ptr nocapture noundef readnone %0) local_unnamed_addr #8 !prof !125 {
  ret void
}

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!102}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!35 = !{ptr @Perl_stack_grow, ptr @Perl_av_extend, i64 28}
!36 = !{ptr @Perl_new_stackinfo, ptr @Perl_safesysmalloc, i64 14}
!37 = !{ptr @Perl_new_stackinfo, ptr @Perl_newSV_type, i64 7}
!38 = !{ptr @Perl_new_stackinfo, ptr @Perl_av_extend, i64 7}
!39 = !{ptr @Perl_push_scope, ptr @Perl_safesysrealloc, i64 2}
!40 = !{ptr @Perl_pop_scope, ptr @Perl_sv_replace, i64 94}
!41 = !{ptr @Perl_pop_scope, ptr @Perl_sv_free2, i64 44442}
!42 = !{ptr @Perl_pop_scope, ptr @Perl_mg_set, i64 489}
!43 = !{ptr @Perl_pop_scope, ptr @Perl_safesysfree, i64 9033}
!44 = !{ptr @Perl_pop_scope, ptr @Perl_gp_free, i64 15772}
!45 = !{ptr @Perl_pop_scope, ptr @Perl_padname_free, i64 170}
!46 = !{ptr @Perl_pop_scope, ptr @Perl_sv_2mortal, i64 9456}
!47 = !{ptr @Perl_pop_scope, ptr @Perl_op_free, i64 93}
!48 = !{ptr @Perl_pop_scope, ptr @Perl_hv_kill_backrefs, i64 428}
!49 = !{ptr @Perl_pop_scope, ptr @Perl_sv_backoff, i64 438}
!50 = !{ptr @Perl_pop_scope, ptr @Perl_sv_unmagic, i64 18104}
!51 = !{ptr @Perl_pop_scope, ptr @Perl_mg_free, i64 18104}
!52 = !{ptr @Perl_pop_scope, ptr @Perl_sv_force_normal_flags, i64 456437}
!53 = !{ptr @Perl_pop_scope, ptr @Perl_av_clear, i64 16856}
!54 = !{ptr @Perl_pop_scope, ptr @Perl_hv_clear, i64 1345}
!55 = !{ptr @Perl_pop_scope, ptr @Perl_newSV_type, i64 4}
!56 = !{ptr @Perl_pop_scope, ptr @Perl_newSV, i64 9}
!57 = !{ptr @Perl_pop_scope, ptr @Perl_hv_common_key_len, i64 1086}
!58 = !{ptr @Perl_pop_scope, ptr @Perl_refcounted_he_free, i64 545}
!59 = !{ptr @Perl_pop_scope, ptr @free, i64 37}
!60 = !{ptr @Perl_pop_scope, ptr @Perl_parser_free, i64 14}
!61 = !{ptr @Perl_leave_scope, ptr @Perl_sv_replace, i64 1143}
!62 = !{ptr @Perl_leave_scope, ptr @Perl_sv_free2, i64 537982}
!63 = !{ptr @Perl_leave_scope, ptr @Perl_mg_set, i64 5915}
!64 = !{ptr @Perl_leave_scope, ptr @Perl_safesysfree, i64 109349}
!65 = !{ptr @Perl_leave_scope, ptr @Perl_gp_free, i64 190931}
!66 = !{ptr @Perl_leave_scope, ptr @Perl_padname_free, i64 2057}
!67 = !{ptr @Perl_leave_scope, ptr @Perl_sv_2mortal, i64 114472}
!68 = !{ptr @Perl_leave_scope, ptr @Perl_op_free, i64 1131}
!69 = !{ptr @Perl_leave_scope, ptr @Perl_hv_kill_backrefs, i64 5180}
!70 = !{ptr @Perl_leave_scope, ptr @Perl_sv_backoff, i64 5303}
!71 = !{ptr @Perl_leave_scope, ptr @Perl_sv_unmagic, i64 219159}
!72 = !{ptr @Perl_leave_scope, ptr @Perl_mg_free, i64 219159}
!73 = !{ptr @Perl_leave_scope, ptr @Perl_sv_force_normal_flags, i64 5525393}
!74 = !{ptr @Perl_leave_scope, ptr @Perl_av_clear, i64 204047}
!75 = !{ptr @Perl_leave_scope, ptr @Perl_hv_clear, i64 16284}
!76 = !{ptr @Perl_leave_scope, ptr @Perl_newSV_type, i64 49}
!77 = !{ptr @Perl_leave_scope, ptr @Perl_newSV, i64 107}
!78 = !{ptr @Perl_leave_scope, ptr @Perl_hv_common_key_len, i64 13143}
!79 = !{ptr @Perl_leave_scope, ptr @Perl_refcounted_he_free, i64 6596}
!80 = !{ptr @Perl_leave_scope, ptr @Perl_sv_magic, i64 4}
!81 = !{ptr @Perl_leave_scope, ptr @free, i64 443}
!82 = !{ptr @Perl_leave_scope, ptr @Perl_parser_free, i64 172}
!83 = !{ptr @Perl_tmps_grow_p, ptr @Perl_safesysrealloc, i64 27}
!84 = !{ptr @Perl_free_tmps, ptr @Perl_sv_free2, i64 34908622}
!85 = !{ptr @Perl_save_scalar, ptr @Perl_mg_get, i64 6404}
!86 = !{ptr @Perl_save_scalar, ptr @Perl_newSV, i64 139606}
!87 = !{ptr @Perl_save_scalar, ptr @Perl_mg_localize, i64 6404}
!88 = !{ptr @Perl_save_gp, ptr @Perl_newGP, i64 32}
!89 = !{ptr @Perl_save_gp, ptr @Perl_gp_ref, i64 206671}
!90 = !{ptr @Perl_save_ary, ptr @Perl_gv_add_by_type, i64 11156}
!91 = !{ptr @Perl_save_hash, ptr @Perl_gv_add_by_type, i64 64}
!92 = !{ptr @Perl_save_item, ptr @Perl_newSVsv, i64 1238}
!93 = !{ptr @Perl_save_I8, ptr @Perl_safesysrealloc, i64 1}
!94 = !{ptr @Perl_save_I32, ptr @Perl_safesysrealloc, i64 1}
!95 = !{ptr @Perl_save_vptr, ptr @Perl_safesysrealloc, i64 2}
!96 = !{ptr @Perl_save_pushptr, ptr @Perl_safesysrealloc, i64 1}
!97 = !{ptr @Perl_save_hdelete, ptr @Perl_savepvn, i64 14107}
!98 = !{ptr @Perl_save_hints, ptr @Perl_refcounted_he_inc, i64 7141}
!99 = !{ptr @Perl_save_hints, ptr @S_save_pushptri32ptr, i64 22}
!100 = !{ptr @Perl_save_hints, ptr @Perl_hv_copy_hints_hv, i64 22}
!101 = !{ptr @Perl_save_aliased_sv, ptr @Perl_gp_ref, i64 20975}
!102 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!103 = !{!"function_entry_count", i64 28}
!104 = !{!105, !105, i64 0}
!105 = !{!"any pointer", !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !{!"function_entry_count", i64 7}
!109 = !{!110, !105, i64 0}
!110 = !{!"stackinfo", !105, i64 0, !105, i64 8, !105, i64 16, !105, i64 24, !111, i64 32, !111, i64 36, !111, i64 40, !111, i64 44}
!111 = !{!"int", !106, i64 0}
!112 = !{!113, !111, i64 12}
!113 = !{!"av", !105, i64 0, !111, i64 8, !111, i64 12, !106, i64 16}
!114 = !{!"branch_weights", i32 7, i32 0}
!115 = !{!113, !105, i64 0}
!116 = !{!117, !105, i64 32}
!117 = !{!"xpvav", !105, i64 0, !106, i64 8, !118, i64 16, !118, i64 24, !105, i64 32}
!118 = !{!"long", !106, i64 0}
!119 = !{!117, !118, i64 16}
!120 = !{!110, !111, i64 36}
!121 = !{!110, !111, i64 32}
!122 = !{!110, !111, i64 40}
!123 = !{!110, !105, i64 8}
!124 = !{!"VP", i32 1, i64 7, i64 513, i64 7}
!125 = !{!"function_entry_count", i64 0}
!126 = !{!"function_entry_count", i64 115642289}
!127 = !{!111, !111, i64 0}
!128 = !{!"branch_weights", i32 2, i32 115642287}
!129 = !{!"function_entry_count", i64 114344000}
!130 = !{!"branch_weights", i32 72786503, i32 41557497}
!131 = !{!132, !132, i64 0}
!132 = !{!"_Bool", !106, i64 0}
!133 = !{i8 0, i8 2}
!134 = !{}
!135 = !{!"branch_weights", i32 0, i32 953902892}
!136 = !{!"branch_weights", i32 953902891, i32 1}
!137 = !{!106, !106, i64 0}
!138 = !{!"branch_weights", i32 964912136, i32 30748516}
!139 = !{i64 0, i64 8, !104, i64 0, i64 4, !127, i64 0, i64 4, !127, i64 0, i64 8, !140, i64 0, i64 8, !140, i64 0, i64 8, !140, i64 0, i64 1, !131, i64 0, i64 8, !104, i64 0, i64 8, !104}
!140 = !{!118, !118, i64 0}
!141 = !{!"branch_weights", i32 499231474, i32 465680662}
!142 = !{!"branch_weights", i32 144466, i32 499087008}
!143 = !{!"branch_weights", i32 0, i32 1238, i32 0, i32 139606, i32 7014, i32 0, i32 20974, i32 212071, i32 0, i32 11156, i32 64, i32 740, i32 0, i32 51213261, i32 4758, i32 63619, i32 0, i32 8135, i32 20957328, i32 16556, i32 0, i32 0, i32 206703, i32 461878699, i32 2227, i32 0, i32 184, i32 1224, i32 97139, i32 2305109, i32 27634560, i32 14228, i32 0, i32 426267215, i32 808846, i32 1, i32 0, i32 0, i32 0, i32 524964, i32 7141, i32 3064801, i32 123744, i32 18546, i32 6494, i32 0, i32 0, i32 0, i32 2338, i32 11690, i32 0, i32 7118, i32 186, i32 0, i32 20975}
!144 = !{!145, !111, i64 12}
!145 = !{!"sv", !105, i64 0, !111, i64 8, !111, i64 12, !106, i64 16}
!146 = !{!"branch_weights", i32 1238, i32 0}
!147 = !{!"branch_weights", i32 0, i32 139606}
!148 = !{!145, !111, i64 8}
!149 = !{!"branch_weights", i32 133202, i32 6404}
!150 = !{!"branch_weights", i32 139606, i32 0}
!151 = !{!"branch_weights", i32 0, i32 7014}
!152 = !{!"branch_weights", i32 4676, i32 228369}
!153 = !{!"branch_weights", i32 222222, i32 6147}
!154 = !{!"branch_weights", i32 4932, i32 228113}
!155 = !{!"branch_weights", i32 228113, i32 0}
!156 = !{!157, !105, i64 0}
!157 = !{!"gv", !105, i64 0, !111, i64 8, !111, i64 12, !106, i64 16}
!158 = !{!159, !111, i64 12}
!159 = !{!"hv", !105, i64 0, !111, i64 8, !111, i64 12, !106, i64 16}
!160 = !{!159, !105, i64 0}
!161 = !{!162, !118, i64 24}
!162 = !{!"xpvhv", !105, i64 0, !106, i64 8, !118, i64 16, !118, i64 24}
!163 = !{!164, !111, i64 28}
!164 = !{!"xpvhv_aux", !106, i64 0, !105, i64 8, !105, i64 16, !111, i64 24, !111, i64 28, !105, i64 32, !111, i64 40, !111, i64 44, !111, i64 48, !111, i64 52}
!165 = !{!166, !111, i64 28}
!166 = !{!"gp", !105, i64 0, !105, i64 8, !105, i64 16, !111, i64 24, !111, i64 28, !105, i64 32, !105, i64 40, !105, i64 48, !105, i64 56, !111, i64 64, !111, i64 67, !105, i64 72}
!167 = !{!166, !105, i64 40}
!168 = !{!"branch_weights", i32 0, i32 11156}
!169 = !{!"branch_weights", i32 11156, i32 0}
!170 = !{!166, !105, i64 32}
!171 = !{!"branch_weights", i32 0, i32 64}
!172 = !{!"branch_weights", i32 64, i32 0}
!173 = !{!"branch_weights", i32 0, i32 4758}
!174 = !{!166, !111, i64 24}
!175 = !{!"branch_weights", i32 206703, i32 0}
!176 = !{!166, !105, i64 16}
!177 = !{!"branch_weights", i32 0, i32 206703}
!178 = !{!179, !111, i64 4}
!179 = !{!"hek", !111, i64 0, !111, i64 4, !106, i64 8}
!180 = !{!"branch_weights", i32 0, i32 461878699}
!181 = !{!"branch_weights", i32 461453275, i32 425424}
!182 = !{!"branch_weights", i32 1, i32 29939668}
!183 = !{!"branch_weights", i32 36138520, i32 165}
!184 = !{!"branch_weights", i32 36138520, i32 0}
!185 = !{!"branch_weights", i32 30133126, i32 6005394}
!186 = !{!"branch_weights", i32 6005394, i32 0}
!187 = !{!"branch_weights", i32 5994045, i32 11349}
!188 = !{!"branch_weights", i32 5608, i32 5741}
!189 = !{!"branch_weights", i32 5768131, i32 237263}
!190 = !{!"branch_weights", i32 0, i32 237263}
!191 = !{!"branch_weights", i32 23564, i32 5981830}
!192 = !{!"branch_weights", i32 34480283, i32 1419705, i32 220903, i32 17629, i32 0}
!193 = !{!194, !111, i64 92}
!194 = !{!"xpvcv", !105, i64 0, !106, i64 8, !118, i64 16, !106, i64 24, !105, i64 32, !106, i64 40, !106, i64 48, !106, i64 56, !105, i64 64, !106, i64 72, !105, i64 80, !111, i64 88, !111, i64 92, !111, i64 96}
!195 = !{!196, !105, i64 0}
!196 = !{!"cv", !105, i64 0, !111, i64 8, !111, i64 12, !106, i64 16}
!197 = !{!145, !105, i64 0}
!198 = !{!"branch_weights", i32 116, i32 21, i32 28, i32 0}
!199 = !{!"branch_weights", i32 165, i32 0}
!200 = !{!"branch_weights", i32 29939668, i32 6199017}
!201 = distinct !{!201, !202, !203}
!202 = !{!"llvm.loop.mustprogress"}
!203 = !{!"llvm.loop.unroll.disable"}
!204 = !{!"branch_weights", i32 0, i32 14228}
!205 = !{!"branch_weights", i32 14228, i32 0}
!206 = !{!"VP", i32 0, i64 32525847, i64 -6855962692069817120, i64 32525833, i64 7839649839822945740, i64 14, i64 -229963269033309129, i64 0}
!207 = !{!208, !111, i64 56}
!208 = !{!"cop", !105, i64 0, !105, i64 8, !105, i64 16, !118, i64 24, !111, i64 32, !111, i64 33, !111, i64 33, !111, i64 33, !111, i64 33, !111, i64 33, !111, i64 33, !111, i64 33, !106, i64 34, !106, i64 35, !111, i64 36, !105, i64 40, !105, i64 48, !111, i64 56, !111, i64 60, !105, i64 64, !105, i64 72}
!209 = !{!"branch_weights", i32 7115, i32 26}
!210 = !{!"branch_weights", i32 1, i32 207}
!211 = !{!"branch_weights", i32 0, i32 26}
!212 = !{!"branch_weights", i32 207, i32 1}
!213 = distinct !{!213, !202, !203}
!214 = !{!208, !105, i64 72}
!215 = !{!"branch_weights", i32 7119, i32 22}
!216 = !{!"branch_weights", i32 22, i32 0}
!217 = !{!"branch_weights", i32 4, i32 7137}
!218 = !{!"branch_weights", i32 0, i32 3064801}
!219 = !{!117, !118, i64 24}
!220 = !{!221, !221, i64 0}
!221 = !{!"short", !106, i64 0}
!222 = !{!"branch_weights", i32 480, i32 0, i32 212, i32 6426}
!223 = !{!208, !105, i64 64}
!224 = !{!"branch_weights", i32 0, i32 20975}
!225 = !{!157, !111, i64 12}
!226 = !{!"branch_weights", i32 20975, i32 0}
!227 = !{!"branch_weights", i32 41757761, i32 953902891}
!228 = distinct !{!228, !202, !203}
!229 = !{!"function_entry_count", i64 881116389}
!230 = !{!"VP", i32 0, i64 393741367, i64 -6855962692069817120, i64 393741195, i64 7839649839822945740, i64 170, i64 -229963269033309129, i64 0}
!231 = !{!"function_entry_count", i64 27}
!232 = !{!"branch_weights", i32 3, i32 24}
!233 = !{!"branch_weights", i32 27, i32 0}
!234 = !{!"function_entry_count", i64 7326160}
!235 = !{!"branch_weights", i32 7326159, i32 1}
!236 = !{!"branch_weights", i32 35460324, i32 0}
!237 = !{!"branch_weights", i32 551702, i32 34908622}
!238 = !{!"branch_weights", i32 28134165, i32 7326159}
!239 = distinct !{!239, !202, !203}
!240 = !{!"function_entry_count", i64 39520}
!241 = !{!"branch_weights", i32 2, i32 21599389}
!242 = !{!"function_entry_count", i64 139606}
!243 = !{!166, !105, i64 0}
!244 = !{!"branch_weights", i32 6404, i32 133202}
!245 = !{!"branch_weights", i32 0, i32 6404}
!246 = !{!"scope.c;S_save_scalar_at"}
!247 = !{!"branch_weights", i32 6404, i32 0}
!248 = !{!"function_entry_count", i64 212071}
!249 = !{!"branch_weights", i32 4932, i32 207139}
!250 = !{!"function_entry_count", i64 7014}
!251 = !{!"function_entry_count", i64 6494}
!252 = !{!"branch_weights", i32 0, i32 6494}
!253 = !{!"function_entry_count", i64 206703}
!254 = !{!"branch_weights", i32 206671, i32 32}
!255 = !{!"branch_weights", i32 0, i32 32}
!256 = !{!"branch_weights", i32 32, i32 0}
!257 = !{!166, !105, i64 8}
!258 = !{!259, !105, i64 0}
!259 = !{!"io", !105, i64 0, !111, i64 8, !111, i64 12, !106, i64 16}
!260 = !{!261, !106, i64 129}
!261 = !{!"xpvio", !105, i64 0, !106, i64 8, !118, i64 16, !106, i64 24, !106, i64 32, !105, i64 40, !106, i64 48, !118, i64 56, !118, i64 64, !118, i64 72, !105, i64 80, !105, i64 88, !105, i64 96, !105, i64 104, !105, i64 112, !105, i64 120, !106, i64 128, !106, i64 129}
!262 = !{!263, !118, i64 16}
!263 = !{!"xpvgv", !105, i64 0, !106, i64 8, !118, i64 16, !106, i64 24, !106, i64 32, !106, i64 40}
!264 = !{!"function_entry_count", i64 11156}
!265 = !{!157, !111, i64 8}
!266 = !{!"function_entry_count", i64 64}
!267 = !{!"function_entry_count", i64 1238}
!268 = !{!"function_entry_count", i64 4758}
!269 = !{!"branch_weights", i32 0, i32 7119}
!270 = !{!"function_entry_count", i64 740}
!271 = !{!"branch_weights", i32 0, i32 740}
!272 = !{!"function_entry_count", i64 11690}
!273 = !{!"branch_weights", i32 1, i32 11689}
!274 = !{!"function_entry_count", i64 2338}
!275 = !{!"branch_weights", i32 0, i32 2338}
!276 = !{!"function_entry_count", i64 63619}
!277 = !{!"branch_weights", i32 63619, i32 0}
!278 = !{!"branch_weights", i32 1, i32 63618}
!279 = !{!"function_entry_count", i64 51213261}
!280 = !{!"branch_weights", i32 0, i32 51213261}
!281 = !{!"function_entry_count", i64 16556}
!282 = !{!"function_entry_count", i64 20957328}
!283 = !{!"function_entry_count", i64 8135}
!284 = !{!"function_entry_count", i64 123744}
!285 = !{!"branch_weights", i32 0, i32 123744}
!286 = !{!"function_entry_count", i64 465576726}
!287 = !{!"branch_weights", i32 1, i32 465576725}
!288 = !{!"function_entry_count", i64 27634560}
!289 = !{!"branch_weights", i32 27634560, i32 0}
!290 = !{!"branch_weights", i32 0, i32 27634560}
!291 = !{!"function_entry_count", i64 121}
!292 = !{!"branch_weights", i32 0, i32 121}
!293 = !{!"branch_weights", i32 0, i32 14250}
!294 = !{!"function_entry_count", i64 22}
!295 = !{!"scope.c;S_save_pushptri32ptr"}
!296 = !{!"function_entry_count", i64 14107}
!297 = !{!"branch_weights", i32 14107, i32 0}
!298 = !{!299, !118, i64 16}
!299 = !{!"xpv", !105, i64 0, !106, i64 8, !118, i64 16, !106, i64 24}
!300 = !{!"function_entry_count", i64 429579221}
!301 = !{!"branch_weights", i32 0, i32 429579221}
!302 = !{!"function_entry_count", i64 7141}
!303 = !{!"function_entry_count", i64 3312007}
!304 = !{!"branch_weights", i32 3312007, i32 0}
!305 = !{!"branch_weights", i32 0, i32 3312007}
!306 = !{!"function_entry_count", i64 20975}
