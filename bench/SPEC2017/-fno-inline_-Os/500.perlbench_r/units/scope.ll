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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_stack_grow(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !130 {
  store ptr %0, ptr @PL_stack_sp, align 8, !tbaa !131
  %4 = load ptr, ptr @PL_curstack, align 8, !tbaa !131
  %5 = load ptr, ptr @PL_stack_base, align 8, !tbaa !131
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = add i64 %2, 128
  %11 = add i64 %10, %9
  tail call void @Perl_av_extend(ptr noundef %4, i64 noundef %11) #9
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !131
  ret ptr %12
}

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_new_stackinfo(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !135 {
  %3 = tail call ptr @Perl_safesysmalloc(i64 noundef 48) #9
  %4 = tail call ptr @Perl_newSV_type(i32 noundef 11) #9
  store ptr %4, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.av, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !139
  %7 = and i32 %6, -1073741825
  store i32 %7, ptr %5, align 4, !tbaa !139
  %8 = icmp sgt i32 %0, 0
  %9 = add nsw i32 %0, -1
  %10 = select i1 %8, i32 %9, i32 0, !prof !141
  %11 = zext nneg i32 %10 to i64
  tail call void @Perl_av_extend(ptr noundef %4, i64 noundef %11) #9
  %12 = load ptr, ptr %3, align 8, !tbaa !136
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  %14 = getelementptr inbounds %struct.xpvav, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  store ptr @PL_sv_undef, ptr %15, align 8, !tbaa !131
  %16 = load ptr, ptr %3, align 8, !tbaa !136
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = getelementptr inbounds %struct.xpvav, ptr %17, i64 0, i32 2
  store i64 0, ptr %18, align 8, !tbaa !146
  %19 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 2
  %20 = add nsw i32 %1, -1
  %21 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i32 %20, ptr %21, align 4, !tbaa !147
  %22 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 4
  store i32 -1, ptr %22, align 8, !tbaa !148
  %23 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 6
  store i32 0, ptr %23, align 8, !tbaa !149
  %24 = sext i32 %1 to i64
  %25 = mul nsw i64 %24, 88
  %26 = tail call ptr @Perl_safesysmalloc(i64 noundef %25) #9
  %27 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !150
  tail call void @llvm.memset.p0.i64(ptr align 1 %26, i8 -85, i64 %25, i1 false)
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_cxinc() local_unnamed_addr #0 !prof !151 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !131
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = sext i32 %3 to i64
  %5 = mul nsw i32 %3, 3
  %6 = sdiv i32 %5, 2
  store i32 %6, ptr %2, align 4, !tbaa !147
  %7 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 88
  %12 = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %11) #9
  %13 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !150
  %15 = getelementptr inbounds %struct.context, ptr %12, i64 %4
  %16 = getelementptr inbounds %struct.context, ptr %15, i64 1
  %17 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !147
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %4
  %21 = mul nsw i64 %20, 88
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 -85, i64 %21, i1 false)
  %22 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !131
  %23 = getelementptr inbounds %struct.stackinfo, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !148
  %25 = add nsw i32 %24, 1
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_push_scope() local_unnamed_addr #0 !prof !152 {
  %1 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !153
  %2 = load i32, ptr @PL_scopestack_max, align 4, !tbaa !153
  %3 = icmp eq i32 %1, %2
  %4 = load ptr, ptr @PL_scopestack, align 8, !tbaa !131
  br i1 %3, label %5, label %12, !prof !154

5:                                                ; preds = %0
  %6 = mul nsw i32 %1, 3
  %7 = sdiv i32 %6, 2
  store i32 %7, ptr @PL_scopestack_max, align 4, !tbaa !153
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %9) #9
  store ptr %10, ptr @PL_scopestack, align 8, !tbaa !131
  %11 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !153
  br label %12

12:                                               ; preds = %0, %5
  %13 = phi i32 [ %1, %0 ], [ %11, %5 ]
  %14 = phi ptr [ %4, %0 ], [ %10, %5 ]
  %15 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %16 = add nsw i32 %13, 1
  store i32 %16, ptr @PL_scopestack_ix, align 4, !tbaa !153
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds i32, ptr %14, i64 %17
  store i32 %15, ptr %18, align 4, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pop_scope() local_unnamed_addr #0 !prof !155 {
  %1 = load ptr, ptr @PL_scopestack, align 8, !tbaa !131
  %2 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !153
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr @PL_scopestack_ix, align 4, !tbaa !153
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !153
  %7 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %8 = icmp sgt i32 %7, %6
  br i1 %8, label %9, label %10, !prof !156

9:                                                ; preds = %0
  tail call void @Perl_leave_scope(i32 noundef %6) #10
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_leave_scope(i32 noundef %0) local_unnamed_addr #0 !prof !157 {
  %2 = load i8, ptr @PL_tainted, align 1, !tbaa !158, !range !160, !noundef !161
  %3 = icmp slt i32 %0, -1
  br i1 %3, label %4, label %6, !prof !162

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, i64 noundef %5) #9
  br label %6

6:                                                ; preds = %1, %4
  %7 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %9, label %630, !prof !163

9:                                                ; preds = %6, %626
  %10 = phi i32 [ %628, %626 ], [ %7, %6 ]
  %11 = phi i8 [ %627, %626 ], [ %2, %6 ]
  %12 = phi ptr [ %48, %626 ], [ null, %6 ]
  %13 = phi ptr [ %47, %626 ], [ null, %6 ]
  %14 = phi ptr [ %46, %626 ], [ null, %6 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !158
  %15 = add nsw i32 %10, -1
  %16 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %union.any, ptr %16, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !164
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 63
  %22 = icmp ugt i32 %21, 3
  br i1 %22, label %23, label %44, !prof !165

23:                                               ; preds = %9
  %24 = getelementptr inbounds %union.any, ptr %18, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa.struct !166
  %26 = icmp ugt i32 %21, 22
  br i1 %26, label %27, label %34, !prof !168

27:                                               ; preds = %23
  %28 = getelementptr inbounds %union.any, ptr %18, i64 -2
  %29 = load ptr, ptr %28, align 8, !tbaa.struct !166
  %30 = icmp ugt i32 %21, 47
  br i1 %30, label %31, label %34, !prof !169

31:                                               ; preds = %27
  %32 = getelementptr inbounds %union.any, ptr %18, i64 -3
  %33 = load ptr, ptr %32, align 8, !tbaa.struct !166
  br label %34

34:                                               ; preds = %27, %31, %23
  %35 = phi ptr [ %32, %31 ], [ %28, %27 ], [ %24, %23 ]
  %36 = phi ptr [ %33, %31 ], [ %14, %27 ], [ %14, %23 ]
  %37 = phi ptr [ %29, %31 ], [ %29, %27 ], [ %13, %23 ]
  %38 = ptrtoint ptr %18 to i64
  %39 = ptrtoint ptr %35 to i64
  %40 = sub i64 %38, %39
  %41 = lshr exact i64 %40, 3
  %42 = trunc i64 %41 to i32
  %43 = sub i32 %15, %42
  br label %44

44:                                               ; preds = %34, %9
  %45 = phi i32 [ %43, %34 ], [ %15, %9 ]
  %46 = phi ptr [ %36, %34 ], [ %14, %9 ]
  %47 = phi ptr [ %37, %34 ], [ %13, %9 ]
  %48 = phi ptr [ %25, %34 ], [ %12, %9 ]
  store i32 %45, ptr @PL_savestack_ix, align 4, !tbaa !153
  switch i32 %21, label %625 [
    i32 35, label %49
    i32 44, label %59
    i32 43, label %56
    i32 26, label %70
    i32 40, label %74
    i32 29, label %78
    i32 27, label %81
    i32 51, label %84
    i32 23, label %138
    i32 32, label %152
    i32 15, label %166
    i32 34, label %169
    i32 42, label %172
    i32 5, label %174
    i32 13, label %179
    i32 33, label %182
    i32 41, label %185
    i32 45, label %186
    i32 38, label %186
    i32 31, label %187
    i32 47, label %188
    i32 28, label %189
    i32 11, label %253
    i32 22, label %254
    i32 8, label %255
    i32 16, label %256
    i32 9, label %258
    i32 10, label %259
    i32 1, label %264
    i32 2, label %260
    i32 53, label %417
    i32 46, label %421
    i32 25, label %424
    i32 3, label %425
    i32 0, label %425
    i32 20, label %429
    i32 52, label %435
    i32 48, label %462
    i32 18, label %482
    i32 30, label %483
    i32 7, label %538
    i32 49, label %544
    i32 39, label %551
    i32 50, label %571
    i32 17, label %581
    i32 37, label %582
    i32 36, label %584
    i32 12, label %586
    i32 14, label %589
    i32 24, label %592
    i32 6, label %593
    i32 19, label %598
    i32 21, label %599
    i32 4, label %603
  ], !prof !170

49:                                               ; preds = %44
  tail call void @Perl_sv_replace(ptr noundef %47, ptr noundef %48) #9
  %50 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !171
  %52 = and i32 %51, 4194304
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %626, label %54, !prof !173

54:                                               ; preds = %49
  store i8 2, ptr @PL_localizing, align 1, !tbaa !164
  %55 = tail call i32 @Perl_mg_set(ptr noundef nonnull %47) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !164
  br label %626

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !164
  br label %59

59:                                               ; preds = %479, %471, %476, %457, %450, %454, %44, %56
  %60 = phi ptr [ %58, %56 ], [ %47, %44 ], [ %437, %454 ], [ %437, %450 ], [ %437, %457 ], [ %466, %476 ], [ %466, %471 ], [ %466, %479 ]
  %61 = phi ptr [ %47, %56 ], [ null, %44 ], [ %46, %454 ], [ %46, %450 ], [ %46, %457 ], [ %46, %476 ], [ %46, %471 ], [ %46, %479 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !131
  store ptr %48, ptr %60, align 8, !tbaa !131
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %62) #10
  %63 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !171
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67, !prof !174

67:                                               ; preds = %59
  store i8 2, ptr @PL_localizing, align 1, !tbaa !164
  %68 = tail call i32 @Perl_mg_set(ptr noundef nonnull %48) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !164
  br label %69

69:                                               ; preds = %59, %67
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %48) #10
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %61) #10
  br label %626

70:                                               ; preds = %44
  %71 = load ptr, ptr %48, align 8, !tbaa !131
  %72 = icmp eq ptr %71, %47
  br i1 %72, label %626, label %73, !prof !175

73:                                               ; preds = %70
  tail call void @Perl_safesysfree(ptr noundef %71) #9
  store ptr %47, ptr %48, align 8, !tbaa !131
  br label %626

74:                                               ; preds = %44
  %75 = load ptr, ptr %47, align 8, !tbaa !131
  %76 = icmp eq ptr %75, %48
  br i1 %76, label %626, label %77

77:                                               ; preds = %74
  tail call void @free(ptr noundef %75) #9
  store ptr %48, ptr %47, align 8, !tbaa !131
  br label %626

78:                                               ; preds = %44
  %79 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !164
  br label %81

81:                                               ; preds = %84, %115, %118, %104, %94, %89, %137, %134, %44, %78
  %82 = phi ptr [ %80, %78 ], [ %47, %44 ], [ %47, %134 ], [ %47, %137 ], [ %47, %89 ], [ %47, %94 ], [ %47, %104 ], [ %47, %118 ], [ %47, %115 ], [ %47, %84 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !131
  store ptr %48, ptr %82, align 8, !tbaa !131
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %83) #10
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %48) #10
  br label %626

84:                                               ; preds = %44
  %85 = load ptr, ptr %46, align 8, !tbaa !176
  %86 = getelementptr inbounds %struct.xpvgv, ptr %85, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !164
  %88 = icmp eq ptr %87, null
  br i1 %88, label %81, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.hv, ptr %87, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !178
  %92 = and i32 %91, 33554432
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %81, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.hv, ptr %87, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !164
  %97 = load ptr, ptr %87, align 8, !tbaa !180
  %98 = getelementptr inbounds %struct.xpvhv, ptr %97, i64 0, i32 3
  %99 = load i64, ptr %98, align 8, !tbaa !181
  %100 = getelementptr ptr, ptr %96, i64 %99
  %101 = getelementptr ptr, ptr %100, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !164
  %103 = icmp eq ptr %102, null
  br i1 %103, label %81, label %104

104:                                              ; preds = %94
  %105 = getelementptr i8, ptr %100, i64 36
  %106 = load i32, ptr %105, align 4, !tbaa !183
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %81, label %108

108:                                              ; preds = %104
  %109 = icmp eq ptr %48, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !171
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, 13
  br i1 %114, label %123, label %115

115:                                              ; preds = %110, %108
  %116 = load ptr, ptr %47, align 8, !tbaa !131
  %117 = icmp eq ptr %116, null
  br i1 %117, label %81, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.sv, ptr %116, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !171
  %121 = and i32 %120, 255
  %122 = icmp eq i32 %121, 13
  br i1 %122, label %123, label %81

123:                                              ; preds = %118, %110
  %124 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !164
  %126 = icmp ult ptr %47, %125
  %127 = getelementptr inbounds i8, ptr %125, i64 80
  %128 = icmp ugt ptr %47, %127
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.gp, ptr %125, i64 0, i32 4
  %132 = load i32, ptr %131, align 4, !tbaa !185
  %133 = icmp ugt i32 %132, 2
  br i1 %133, label %134, label %137

134:                                              ; preds = %130, %123
  %135 = load i32, ptr @PL_sub_generation, align 4, !tbaa !153
  %136 = add i32 %135, 1
  store i32 %136, ptr @PL_sub_generation, align 4, !tbaa !153
  br label %81

137:                                              ; preds = %130
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %87) #9
  br label %81

138:                                              ; preds = %44
  %139 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !164
  %141 = getelementptr inbounds %struct.gp, ptr %140, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !187
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %142) #10
  %143 = load ptr, ptr %139, align 8, !tbaa !164
  %144 = getelementptr inbounds %struct.gp, ptr %143, i64 0, i32 6
  store ptr %48, ptr %144, align 8, !tbaa !187
  %145 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !171
  %147 = and i32 %146, 4194304
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149, !prof !188

149:                                              ; preds = %138
  store i8 2, ptr @PL_localizing, align 1, !tbaa !164
  %150 = tail call i32 @Perl_mg_set(ptr noundef nonnull %48) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !164
  br label %151

151:                                              ; preds = %138, %149
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %47) #10
  br label %626

152:                                              ; preds = %44
  %153 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !164
  %155 = getelementptr inbounds %struct.gp, ptr %154, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !189
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %156) #10
  %157 = load ptr, ptr %153, align 8, !tbaa !164
  %158 = getelementptr inbounds %struct.gp, ptr %157, i64 0, i32 5
  store ptr %48, ptr %158, align 8, !tbaa !189
  %159 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !171
  %161 = and i32 %160, 4194304
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163, !prof !190

163:                                              ; preds = %152
  store i8 2, ptr @PL_localizing, align 1, !tbaa !164
  %164 = tail call i32 @Perl_mg_set(ptr noundef nonnull %48) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !164
  br label %165

165:                                              ; preds = %152, %163
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %47) #10
  br label %626

166:                                              ; preds = %44
  %167 = lshr i64 %19, 6
  %168 = trunc i64 %167 to i32
  store i32 %168, ptr %48, align 4, !tbaa !153
  br label %626

169:                                              ; preds = %44
  %170 = ptrtoint ptr %47 to i64
  %171 = trunc i64 %170 to i32
  store i32 %171, ptr %48, align 4, !tbaa !153
  br label %626

172:                                              ; preds = %44
  %173 = ptrtoint ptr %47 to i64
  store i64 %173, ptr %48, align 8, !tbaa !167
  br label %626

174:                                              ; preds = %44
  %175 = icmp ugt i64 %19, 255
  %176 = zext i1 %175 to i8
  store i8 %176, ptr %48, align 1, !tbaa !158
  %177 = icmp eq ptr %48, @PL_tainted
  br i1 %177, label %178, label %626, !prof !191

178:                                              ; preds = %174
  br label %626

179:                                              ; preds = %44
  %180 = lshr i64 %19, 6
  %181 = trunc i64 %180 to i32
  store i32 %181, ptr %48, align 4, !tbaa !153
  br label %626

182:                                              ; preds = %44
  %183 = ptrtoint ptr %47 to i64
  %184 = trunc i64 %183 to i32
  store i32 %184, ptr %48, align 4, !tbaa !153
  br label %626

185:                                              ; preds = %44
  store ptr %47, ptr %48, align 8, !tbaa !131
  br label %626

186:                                              ; preds = %44, %44
  store ptr %47, ptr %48, align 8, !tbaa !131
  br label %626

187:                                              ; preds = %44
  store ptr %47, ptr %48, align 8, !tbaa !131
  br label %626

188:                                              ; preds = %44
  store ptr %47, ptr %48, align 8, !tbaa !131
  br label %626

189:                                              ; preds = %44
  %190 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !164
  %192 = getelementptr inbounds %struct.gp, ptr %191, i64 0, i32 3
  %193 = load i32, ptr %192, align 8, !tbaa !192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198, !prof !193

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.gp, ptr %191, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !194
  br label %198

198:                                              ; preds = %189, %195
  %199 = phi ptr [ %197, %195 ], [ null, %189 ]
  %200 = icmp eq ptr %199, null
  tail call void @Perl_gp_free(ptr noundef nonnull %47) #9
  store ptr %48, ptr %190, align 8, !tbaa !164
  %201 = load ptr, ptr %47, align 8, !tbaa !176
  %202 = getelementptr inbounds %struct.xpvgv, ptr %201, i64 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !164
  %204 = icmp eq ptr %203, null
  br i1 %204, label %252, label %205, !prof !195

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.hv, ptr %203, i64 0, i32 2
  %207 = load i32, ptr %206, align 4, !tbaa !178
  %208 = and i32 %207, 33554432
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %252, label %210, !prof !195

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.hv, ptr %203, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !164
  %213 = load ptr, ptr %203, align 8, !tbaa !180
  %214 = getelementptr inbounds %struct.xpvhv, ptr %213, i64 0, i32 3
  %215 = load i64, ptr %214, align 8, !tbaa !181
  %216 = getelementptr ptr, ptr %212, i64 %215
  %217 = getelementptr ptr, ptr %216, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !164
  %219 = icmp eq ptr %218, null
  br i1 %219, label %252, label %220, !prof !195

220:                                              ; preds = %210
  %221 = getelementptr i8, ptr %216, i64 36
  %222 = load i32, ptr %221, align 4, !tbaa !183
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %252, label %224, !prof !193

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.xpvgv, ptr %201, i64 0, i32 4
  %226 = load ptr, ptr %225, align 8, !tbaa !164
  %227 = getelementptr inbounds %struct.hek, ptr %226, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !196
  %229 = icmp eq i32 %228, 3
  br i1 %229, label %230, label %235, !prof !195

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.hek, ptr %226, i64 0, i32 2
  %232 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %231, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #11
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %203) #9
  br label %252

235:                                              ; preds = %230, %224
  br i1 %200, label %236, label %244, !prof !193

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 3
  %238 = load i32, ptr %237, align 8, !tbaa !192
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %252, !prof !193

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !194
  %243 = icmp eq ptr %242, null
  br i1 %243, label %252, label %244, !prof !193

244:                                              ; preds = %240, %235
  %245 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 4
  %246 = load i32, ptr %245, align 4, !tbaa !185
  %247 = icmp ugt i32 %246, 1
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i32, ptr @PL_sub_generation, align 4, !tbaa !153
  %250 = add i32 %249, 1
  store i32 %250, ptr @PL_sub_generation, align 4, !tbaa !153
  br label %252

251:                                              ; preds = %244
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %203) #9
  br label %252

252:                                              ; preds = %234, %248, %251, %236, %240, %205, %210, %220, %198
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %47) #10
  br label %626

253:                                              ; preds = %44
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %48) #10
  br label %626

254:                                              ; preds = %44
  tail call void @Perl_padname_free(ptr noundef %48) #9
  br label %626

255:                                              ; preds = %44
  tail call void @Perl_refcounted_he_free(ptr noundef %48) #9
  br label %626

256:                                              ; preds = %44
  %257 = tail call ptr @Perl_sv_2mortal(ptr noundef %48) #9
  br label %626

258:                                              ; preds = %44
  tail call void @Perl_op_free(ptr noundef %48) #9
  br label %626

259:                                              ; preds = %44
  tail call void @Perl_safesysfree(ptr noundef %48) #9
  br label %626

260:                                              ; preds = %44
  %261 = load ptr, ptr @PL_curpad, align 8, !tbaa !131
  %262 = lshr i64 %19, 6
  %263 = getelementptr inbounds ptr, ptr %261, i64 %262
  br label %274

264:                                              ; preds = %44
  %265 = lshr i32 %20, 6
  %266 = and i32 %265, 127
  %267 = load ptr, ptr @PL_curpad, align 8, !tbaa !131
  %268 = lshr i64 %19, 13
  %269 = getelementptr inbounds ptr, ptr %267, i64 %268
  %270 = zext nneg i32 %266 to i64
  %271 = getelementptr inbounds ptr, ptr %269, i64 %270
  %272 = getelementptr inbounds ptr, ptr %271, i64 -1
  %273 = icmp eq i32 %266, 0
  br i1 %273, label %626, label %274, !prof !198

274:                                              ; preds = %260, %264
  %275 = phi i32 [ %266, %264 ], [ 1, %260 ]
  %276 = phi ptr [ %272, %264 ], [ %263, %260 ]
  br label %277

277:                                              ; preds = %274, %413
  %278 = phi i32 [ %414, %413 ], [ %275, %274 ]
  %279 = phi ptr [ %415, %413 ], [ %276, %274 ]
  %280 = load ptr, ptr %279, align 8, !tbaa !131
  %281 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 1
  %282 = load i32, ptr %281, align 8, !tbaa !199
  %283 = icmp eq i32 %282, 1
  %284 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 2
  %285 = load i32, ptr %284, align 4, !tbaa !171
  %286 = and i32 %285, 1048576
  %287 = icmp eq i32 %286, 0
  %288 = select i1 %283, i1 %287, i1 false
  br i1 %288, label %289, label %366, !prof !200

289:                                              ; preds = %277
  %290 = and i32 %285, 467732480
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %325, label %292, !prof !201

292:                                              ; preds = %289
  %293 = and i32 %285, 134283264
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295, !prof !202

295:                                              ; preds = %292
  %296 = and i32 %285, -135331841
  store i32 %296, ptr %284, align 4, !tbaa !171
  br label %297

297:                                              ; preds = %295, %292
  %298 = phi i32 [ %296, %295 ], [ %285, %292 ]
  %299 = and i32 %298, 33554432
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %307, label %301, !prof !203

301:                                              ; preds = %297
  %302 = and i32 %298, 255
  %303 = icmp eq i32 %302, 12
  br i1 %303, label %304, label %305, !prof !204

304:                                              ; preds = %301
  tail call void @Perl_hv_kill_backrefs(ptr noundef nonnull %280) #9
  br label %307

305:                                              ; preds = %301
  %306 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %280) #9
  br label %307

307:                                              ; preds = %304, %305, %297
  %308 = load i32, ptr %284, align 4, !tbaa !171
  %309 = and i32 %308, 14680064
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %319, label %311, !prof !205

311:                                              ; preds = %307
  %312 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %280, i32 noundef 60) #9
  %313 = load i32, ptr %284, align 4, !tbaa !171
  %314 = and i32 %313, 255
  %315 = icmp eq i32 %314, 13
  br i1 %315, label %319, label %316, !prof !206

316:                                              ; preds = %311
  %317 = tail call i32 @Perl_mg_free(ptr noundef nonnull %280) #9
  %318 = load i32, ptr %284, align 4, !tbaa !171
  br label %319

319:                                              ; preds = %311, %316, %307
  %320 = phi i32 [ %313, %311 ], [ %318, %316 ], [ %308, %307 ]
  %321 = and i32 %320, 427886592
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %325, label %323, !prof !207

323:                                              ; preds = %319
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %280, i32 noundef 5) #9
  %324 = load i32, ptr %284, align 4, !tbaa !171
  br label %325

325:                                              ; preds = %319, %323, %289
  %326 = phi i32 [ %320, %319 ], [ %324, %323 ], [ %285, %289 ]
  %327 = trunc i32 %326 to i8
  switch i8 %327, label %361 [
    i8 0, label %363
    i8 11, label %328
    i8 12, label %329
    i8 13, label %330
  ], !prof !208

328:                                              ; preds = %325
  tail call void @Perl_av_clear(ptr noundef nonnull %280) #9
  br label %363

329:                                              ; preds = %325
  tail call void @Perl_hv_clear(ptr noundef nonnull %280) #9
  br label %363

330:                                              ; preds = %325
  %331 = load ptr, ptr %280, align 8, !tbaa !209
  %332 = getelementptr inbounds %struct.xpvcv, ptr %331, i64 0, i32 12
  %333 = load i32, ptr %332, align 4, !tbaa !210
  %334 = and i32 %333, 32768
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %330
  %337 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %280) #10
  br label %343

338:                                              ; preds = %330
  %339 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %280) #10
  %340 = load ptr, ptr %339, align 8, !tbaa !176
  %341 = getelementptr inbounds %struct.xpvgv, ptr %340, i64 0, i32 4
  %342 = load ptr, ptr %341, align 8, !tbaa !164
  br label %343

343:                                              ; preds = %338, %336
  %344 = phi ptr [ %337, %336 ], [ %342, %338 ]
  %345 = getelementptr inbounds i8, ptr %344, i64 -8
  %346 = load i64, ptr %345, align 8, !tbaa !164
  %347 = add i64 %346, 1
  store i64 %347, ptr %345, align 8, !tbaa !164
  tail call void @Perl_cv_undef(ptr noundef nonnull %280) #9
  %348 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %280) #10
  %349 = icmp eq ptr %348, null
  br i1 %349, label %354, label %350

350:                                              ; preds = %343
  %351 = load ptr, ptr %280, align 8, !tbaa !212
  %352 = getelementptr inbounds %struct.xpvcv, ptr %351, i64 0, i32 7
  %353 = load ptr, ptr %352, align 8, !tbaa !164
  tail call void @Perl_unshare_hek(ptr noundef %353) #9
  br label %354

354:                                              ; preds = %343, %350
  %355 = load ptr, ptr %280, align 8, !tbaa !209
  %356 = getelementptr inbounds %struct.xpvcv, ptr %355, i64 0, i32 7
  store ptr %344, ptr %356, align 8, !tbaa !164
  %357 = load ptr, ptr %280, align 8, !tbaa !209
  %358 = getelementptr inbounds %struct.xpvcv, ptr %357, i64 0, i32 12
  %359 = load i32, ptr %358, align 4, !tbaa !210
  %360 = or i32 %359, 98304
  store i32 %360, ptr %358, align 4, !tbaa !210
  br label %363

361:                                              ; preds = %325
  %362 = and i32 %326, 1610547455
  store i32 %362, ptr %284, align 4, !tbaa !171
  br label %363

363:                                              ; preds = %361, %354, %329, %328, %325
  %364 = load i32, ptr %284, align 4, !tbaa !171
  %365 = and i32 %364, -131073
  store i32 %365, ptr %284, align 4, !tbaa !171
  tail call fastcc void @S_SvPADSTALE_on(ptr noundef nonnull %280) #10
  br label %413

366:                                              ; preds = %277
  %367 = trunc i32 %285 to i8
  switch i8 %367, label %406 [
    i8 11, label %368
    i8 12, label %370
    i8 13, label %372
  ], !prof !214

368:                                              ; preds = %366
  %369 = tail call ptr @Perl_newSV_type(i32 noundef 11) #9
  store ptr %369, ptr %279, align 8, !tbaa !131
  br label %408

370:                                              ; preds = %366
  %371 = tail call ptr @Perl_newSV_type(i32 noundef 12) #9
  store ptr %371, ptr %279, align 8, !tbaa !131
  br label %408

372:                                              ; preds = %366
  %373 = load ptr, ptr %280, align 8, !tbaa !209
  %374 = getelementptr inbounds %struct.xpvcv, ptr %373, i64 0, i32 12
  %375 = load i32, ptr %374, align 4, !tbaa !210
  %376 = and i32 %375, 32768
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %372
  %379 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %280) #10
  br label %385

380:                                              ; preds = %372
  %381 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %280) #10
  %382 = load ptr, ptr %381, align 8, !tbaa !176
  %383 = getelementptr inbounds %struct.xpvgv, ptr %382, i64 0, i32 4
  %384 = load ptr, ptr %383, align 8, !tbaa !164
  br label %385

385:                                              ; preds = %380, %378
  %386 = phi ptr [ %379, %378 ], [ %384, %380 ]
  %387 = tail call ptr @Perl_newSV_type(i32 noundef 13) #9
  store ptr %387, ptr %279, align 8, !tbaa !131
  %388 = tail call fastcc ptr @CvNAME_HEK(ptr noundef %387) #10
  %389 = icmp eq ptr %388, null
  br i1 %389, label %394, label %390

390:                                              ; preds = %385
  %391 = load ptr, ptr %387, align 8, !tbaa !212
  %392 = getelementptr inbounds %struct.xpvcv, ptr %391, i64 0, i32 7
  %393 = load ptr, ptr %392, align 8, !tbaa !164
  tail call void @Perl_unshare_hek(ptr noundef %393) #9
  br label %394

394:                                              ; preds = %385, %390
  %395 = getelementptr inbounds i8, ptr %386, i64 -8
  %396 = load i64, ptr %395, align 8, !tbaa !164
  %397 = add i64 %396, 1
  store i64 %397, ptr %395, align 8, !tbaa !164
  %398 = load ptr, ptr %279, align 8, !tbaa !131
  %399 = load ptr, ptr %398, align 8, !tbaa !209
  %400 = getelementptr inbounds %struct.xpvcv, ptr %399, i64 0, i32 7
  store ptr %386, ptr %400, align 8, !tbaa !164
  %401 = load ptr, ptr %279, align 8, !tbaa !131
  %402 = load ptr, ptr %401, align 8, !tbaa !209
  %403 = getelementptr inbounds %struct.xpvcv, ptr %402, i64 0, i32 12
  %404 = load i32, ptr %403, align 4, !tbaa !210
  %405 = or i32 %404, 98304
  store i32 %405, ptr %403, align 4, !tbaa !210
  br label %408

406:                                              ; preds = %366
  %407 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  store ptr %407, ptr %279, align 8, !tbaa !131
  br label %408

408:                                              ; preds = %406, %394, %370, %368
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %280) #10
  %409 = load ptr, ptr %279, align 8, !tbaa !131
  %410 = getelementptr inbounds %struct.sv, ptr %409, i64 0, i32 2
  %411 = load i32, ptr %410, align 4, !tbaa !171
  %412 = or i32 %411, 262144
  store i32 %412, ptr %410, align 4, !tbaa !171
  br label %413

413:                                              ; preds = %363, %408
  %414 = add nsw i32 %278, -1
  %415 = getelementptr inbounds ptr, ptr %279, i64 -1
  %416 = icmp eq i32 %414, 0
  br i1 %416, label %626, label %277, !prof !215, !llvm.loop !216

417:                                              ; preds = %44
  %418 = ptrtoint ptr %47 to i64
  %419 = trunc i64 %418 to i32
  %420 = tail call ptr @Perl_hv_common_key_len(ptr noundef %48, ptr noundef %46, i32 noundef %419, i32 noundef 68, ptr noundef null, i32 noundef 0) #9
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %48) #10
  tail call void @Perl_safesysfree(ptr noundef %46) #9
  br label %626

421:                                              ; preds = %44
  %422 = ptrtoint ptr %47 to i64
  %423 = tail call ptr @Perl_av_delete(ptr noundef %48, i64 noundef %422, i32 noundef 4) #9
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %48) #10
  br label %626

424:                                              ; preds = %44
  tail call void %47(ptr noundef %48) #9
  br label %626

425:                                              ; preds = %44, %44
  %426 = lshr i64 %19, 6
  %427 = trunc i64 %426 to i32
  %428 = sub i32 %45, %427
  store i32 %428, ptr @PL_savestack_ix, align 4, !tbaa !153
  br label %626

429:                                              ; preds = %44
  %430 = load ptr, ptr @PL_stack_base, align 8, !tbaa !131
  %431 = ptrtoint ptr %48 to i64
  %432 = shl i64 %431, 32
  %433 = ashr exact i64 %432, 32
  %434 = getelementptr inbounds ptr, ptr %430, i64 %433
  store ptr %434, ptr @PL_stack_sp, align 8, !tbaa !131
  br label %626

435:                                              ; preds = %44
  %436 = ptrtoint ptr %47 to i64
  %437 = tail call ptr @Perl_av_fetch(ptr noundef %46, i64 noundef %436, i32 noundef 1) #9
  %438 = getelementptr inbounds %struct.av, ptr %46, i64 0, i32 2
  %439 = load i32, ptr %438, align 4, !tbaa !139
  %440 = and i32 %439, -1073741824
  %441 = icmp eq i32 %440, -2147483648
  br i1 %441, label %442, label %443

442:                                              ; preds = %435
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %48) #10
  br label %443

443:                                              ; preds = %435, %442
  %444 = icmp eq ptr %437, null
  br i1 %444, label %461, label %445

445:                                              ; preds = %443
  %446 = load ptr, ptr %437, align 8, !tbaa !131
  %447 = icmp ne ptr %446, null
  %448 = icmp ne ptr %446, @PL_sv_undef
  %449 = and i1 %447, %448
  br i1 %449, label %450, label %461

450:                                              ; preds = %445
  %451 = load i32, ptr %438, align 4, !tbaa !171
  %452 = and i32 %451, 8388608
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %59, label %454

454:                                              ; preds = %450
  %455 = tail call ptr @Perl_mg_find(ptr noundef nonnull %46, i32 noundef 80) #9
  %456 = icmp eq ptr %455, null
  br i1 %456, label %59, label %457

457:                                              ; preds = %454
  %458 = getelementptr inbounds %struct.sv, ptr %446, i64 0, i32 1
  %459 = load i32, ptr %458, align 8, !tbaa !199
  %460 = add i32 %459, 1
  store i32 %460, ptr %458, align 8, !tbaa !199
  br label %59

461:                                              ; preds = %445, %443
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %46) #10
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %48) #10
  br label %626

462:                                              ; preds = %44
  %463 = tail call ptr @Perl_hv_common(ptr noundef %46, ptr noundef %47, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #9
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %47) #10
  %464 = icmp eq ptr %463, null
  br i1 %464, label %481, label %465

465:                                              ; preds = %462
  %466 = getelementptr inbounds %struct.he, ptr %463, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !164
  %468 = icmp eq ptr %467, null
  %469 = icmp eq ptr %467, @PL_sv_undef
  %470 = or i1 %468, %469
  br i1 %470, label %481, label %471

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %473 = load i32, ptr %472, align 4, !tbaa !171
  %474 = and i32 %473, 8388608
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %59, label %476

476:                                              ; preds = %471
  %477 = tail call ptr @Perl_mg_find(ptr noundef nonnull %46, i32 noundef 80) #9
  %478 = icmp eq ptr %477, null
  br i1 %478, label %59, label %479

479:                                              ; preds = %476
  %480 = load ptr, ptr %466, align 8, !tbaa !131
  tail call fastcc void @S_SvREFCNT_inc_void(ptr noundef %480) #10
  br label %59

481:                                              ; preds = %462, %465
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %46) #10
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %48) #10
  br label %626

482:                                              ; preds = %44
  store ptr %48, ptr @PL_op, align 8, !tbaa !131
  br label %626

483:                                              ; preds = %44
  %484 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !218
  %485 = and i32 %484, 131072
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %503, label %487, !prof !220

487:                                              ; preds = %483
  %488 = load ptr, ptr @PL_hintgv, align 8, !tbaa !131
  %489 = getelementptr inbounds %struct.gv, ptr %488, i64 0, i32 3
  %490 = load ptr, ptr %489, align 8, !tbaa !164
  %491 = getelementptr inbounds %struct.gp, ptr %490, i64 0, i32 5
  %492 = load ptr, ptr %491, align 8, !tbaa !189
  %493 = icmp eq ptr %492, null
  br i1 %493, label %503, label %494, !prof !221

494:                                              ; preds = %487, %494
  %495 = phi ptr [ %501, %494 ], [ %492, %487 ]
  %496 = phi ptr [ %500, %494 ], [ %491, %487 ]
  store ptr null, ptr %496, align 8, !tbaa !189
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %495) #10
  %497 = load ptr, ptr @PL_hintgv, align 8, !tbaa !131
  %498 = getelementptr inbounds %struct.gv, ptr %497, i64 0, i32 3
  %499 = load ptr, ptr %498, align 8, !tbaa !164
  %500 = getelementptr inbounds %struct.gp, ptr %499, i64 0, i32 5
  %501 = load ptr, ptr %500, align 8, !tbaa !189
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %494, !prof !222, !llvm.loop !223

503:                                              ; preds = %494, %487, %483
  %504 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !224
  tail call void @Perl_refcounted_he_free(ptr noundef %504) #9
  store ptr %48, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !224
  %505 = ptrtoint ptr %47 to i64
  %506 = trunc i64 %505 to i32
  store i32 %506, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !153
  %507 = and i32 %506, 131072
  %508 = icmp eq i32 %507, 0
  %509 = load ptr, ptr @PL_hintgv, align 8, !tbaa !131
  br i1 %508, label %525, label %510, !prof !225

510:                                              ; preds = %503
  %511 = getelementptr inbounds %struct.gv, ptr %509, i64 0, i32 3
  %512 = load ptr, ptr %511, align 8, !tbaa !164
  %513 = getelementptr inbounds %struct.gp, ptr %512, i64 0, i32 5
  %514 = load ptr, ptr %513, align 8, !tbaa !189
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %514) #10
  %515 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %516 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %517 = add nsw i32 %516, -1
  store i32 %517, ptr @PL_savestack_ix, align 4, !tbaa !153
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %union.any, ptr %515, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !164
  %521 = load ptr, ptr @PL_hintgv, align 8, !tbaa !131
  %522 = getelementptr inbounds %struct.gv, ptr %521, i64 0, i32 3
  %523 = load ptr, ptr %522, align 8, !tbaa !164
  %524 = getelementptr inbounds %struct.gp, ptr %523, i64 0, i32 5
  store ptr %520, ptr %524, align 8, !tbaa !189
  br label %525

525:                                              ; preds = %510, %503
  %526 = phi ptr [ %521, %510 ], [ %509, %503 ]
  %527 = getelementptr inbounds %struct.gv, ptr %526, i64 0, i32 3
  %528 = load ptr, ptr %527, align 8, !tbaa !164
  %529 = getelementptr inbounds %struct.gp, ptr %528, i64 0, i32 5
  %530 = load ptr, ptr %529, align 8, !tbaa !189
  %531 = icmp eq ptr %530, null
  br i1 %531, label %532, label %626, !prof !226

532:                                              ; preds = %525
  %533 = tail call ptr @Perl_newSV_type(i32 noundef 12) #9
  tail call void @Perl_sv_magic(ptr noundef %533, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #9
  %534 = load ptr, ptr @PL_hintgv, align 8, !tbaa !131
  %535 = getelementptr inbounds %struct.gv, ptr %534, i64 0, i32 3
  %536 = load ptr, ptr %535, align 8, !tbaa !164
  %537 = getelementptr inbounds %struct.gp, ptr %536, i64 0, i32 5
  store ptr %533, ptr %537, align 8, !tbaa !189
  br label %626

538:                                              ; preds = %44
  store ptr %48, ptr @PL_comppad, align 8, !tbaa !131
  %539 = icmp eq ptr %48, null
  br i1 %539, label %543, label %540, !prof !227

540:                                              ; preds = %538
  %541 = getelementptr inbounds %struct.av, ptr %48, i64 0, i32 3
  %542 = load ptr, ptr %541, align 8, !tbaa !164
  store ptr %542, ptr @PL_curpad, align 8, !tbaa !131
  br label %626

543:                                              ; preds = %538
  store ptr null, ptr @PL_curpad, align 8, !tbaa !131
  br label %626

544:                                              ; preds = %44
  %545 = getelementptr inbounds %struct.av, ptr %47, i64 0, i32 3
  %546 = load ptr, ptr %545, align 8, !tbaa !164
  %547 = ptrtoint ptr %48 to i64
  %548 = getelementptr inbounds ptr, ptr %546, i64 %547
  %549 = load ptr, ptr %548, align 8, !tbaa !131
  %550 = tail call ptr @Perl_sv_2mortal(ptr noundef %549) #9
  store ptr %46, ptr %548, align 8, !tbaa !131
  br label %626

551:                                              ; preds = %44
  %552 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !131
  %553 = load ptr, ptr @PL_stack_base, align 8, !tbaa !131
  %554 = ptrtoint ptr %552 to i64
  %555 = ptrtoint ptr %553 to i64
  %556 = sub i64 %554, %555
  %557 = ashr exact i64 %556, 3
  %558 = load ptr, ptr %48, align 8, !tbaa !142
  %559 = getelementptr inbounds %struct.xpvav, ptr %558, i64 0, i32 2
  store i64 %557, ptr %559, align 8, !tbaa !146
  %560 = getelementptr inbounds %struct.av, ptr %47, i64 0, i32 3
  %561 = load ptr, ptr %560, align 8, !tbaa !164
  store ptr %561, ptr @PL_stack_base, align 8, !tbaa !131
  %562 = load ptr, ptr %47, align 8, !tbaa !142
  %563 = getelementptr inbounds %struct.xpvav, ptr %562, i64 0, i32 3
  %564 = load i64, ptr %563, align 8, !tbaa !228
  %565 = getelementptr inbounds ptr, ptr %561, i64 %564
  store ptr %565, ptr @PL_stack_max, align 8, !tbaa !131
  %566 = load ptr, ptr %47, align 8, !tbaa !142
  %567 = getelementptr inbounds %struct.xpvav, ptr %566, i64 0, i32 2
  %568 = load i64, ptr %567, align 8, !tbaa !146
  %569 = getelementptr inbounds ptr, ptr %561, i64 %568
  store ptr %569, ptr @PL_stack_sp, align 8, !tbaa !131
  store ptr %47, ptr @PL_curstack, align 8, !tbaa !131
  %570 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !131
  store ptr %47, ptr %570, align 8, !tbaa !136
  br label %626

571:                                              ; preds = %44
  %572 = ptrtoint ptr %47 to i64
  %573 = trunc i64 %572 to i32
  %574 = xor i32 %573, -1
  %575 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %576 = load i32, ptr %575, align 4, !tbaa !171
  %577 = and i32 %576, %574
  %578 = ptrtoint ptr %48 to i64
  %579 = trunc i64 %578 to i32
  %580 = or i32 %577, %579
  store i32 %580, ptr %575, align 4, !tbaa !171
  br label %626

581:                                              ; preds = %44
  tail call void @Perl_sv_clear(ptr noundef %48) #9
  br label %626

582:                                              ; preds = %44
  %583 = ptrtoint ptr %47 to i64
  store i64 %583, ptr %48, align 8, !tbaa !167
  br label %626

584:                                              ; preds = %44
  %585 = ptrtoint ptr %47 to i64
  store i64 %585, ptr %48, align 8, !tbaa !167
  br label %626

586:                                              ; preds = %44
  %587 = lshr i64 %19, 8
  %588 = trunc i64 %587 to i16
  store i16 %588, ptr %48, align 2, !tbaa !229
  br label %626

589:                                              ; preds = %44
  %590 = lshr i64 %19, 8
  %591 = trunc i64 %590 to i8
  store i8 %591, ptr %48, align 1, !tbaa !164
  br label %626

592:                                              ; preds = %44
  tail call void %47(ptr noundef %48) #9
  br label %626

593:                                              ; preds = %44
  %594 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8
  %595 = ptrtoint ptr %594 to i64
  switch i64 %595, label %596 [
    i64 16, label %597
    i64 8, label %597
    i64 0, label %597
  ]

596:                                              ; preds = %593
  tail call void @free(ptr noundef %594) #9
  br label %597

597:                                              ; preds = %593, %593, %593, %596
  store ptr %48, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !231
  br label %626

598:                                              ; preds = %44
  tail call void @Perl_parser_free(ptr noundef %48) #9
  br label %626

599:                                              ; preds = %44
  %600 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %601 = load i32, ptr %600, align 4, !tbaa !171
  %602 = and i32 %601, -134283265
  store i32 %602, ptr %600, align 4, !tbaa !171
  br label %626

603:                                              ; preds = %44
  %604 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 4
  %605 = load i32, ptr %604, align 4, !tbaa !185
  %606 = icmp eq i32 %605, 1
  br i1 %606, label %607, label %616, !prof !232

607:                                              ; preds = %603
  %608 = tail call ptr @Perl_newSV_type(i32 noundef 9) #9
  %609 = tail call ptr @Perl_sv_2mortal(ptr noundef %608) #9
  %610 = getelementptr inbounds %struct.gv, ptr %609, i64 0, i32 2
  %611 = load i32, ptr %610, align 4, !tbaa !233
  %612 = or i32 %611, 32768
  store i32 %612, ptr %610, align 4, !tbaa !233
  %613 = getelementptr inbounds %struct.gv, ptr %609, i64 0, i32 3
  store ptr %48, ptr %613, align 8, !tbaa !164
  tail call void @Perl_gp_free(ptr noundef %609) #9
  %614 = load i32, ptr %610, align 4, !tbaa !233
  %615 = and i32 %614, -32769
  store i32 %615, ptr %610, align 4, !tbaa !233
  br label %626

616:                                              ; preds = %603
  %617 = add i32 %605, -1
  store i32 %617, ptr %604, align 4, !tbaa !185
  %618 = icmp ult i64 %19, 256
  %619 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 9
  %620 = load i32, ptr %619, align 8
  br i1 %618, label %623, label %621, !prof !234

621:                                              ; preds = %616
  %622 = or i32 %620, -2147483648
  store i32 %622, ptr %619, align 8
  br label %626

623:                                              ; preds = %616
  %624 = and i32 %620, 2147483647
  store i32 %624, ptr %619, align 8
  br label %626

625:                                              ; preds = %44
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i32 noundef %21) #9
  br label %626

626:                                              ; preds = %413, %264, %481, %607, %623, %621, %540, %543, %525, %532, %178, %174, %74, %77, %70, %73, %54, %49, %625, %599, %598, %597, %592, %589, %586, %584, %582, %581, %571, %551, %544, %482, %461, %429, %425, %424, %421, %417, %259, %258, %256, %255, %254, %253, %252, %188, %187, %186, %185, %182, %179, %172, %169, %166, %165, %151, %81, %69
  %627 = phi i8 [ %11, %625 ], [ %11, %599 ], [ %11, %598 ], [ %11, %597 ], [ %11, %592 ], [ %11, %589 ], [ %11, %586 ], [ %11, %584 ], [ %11, %582 ], [ %11, %581 ], [ %11, %571 ], [ %11, %551 ], [ %11, %544 ], [ %11, %540 ], [ %11, %543 ], [ %11, %525 ], [ %11, %532 ], [ %11, %482 ], [ %11, %481 ], [ %11, %69 ], [ %11, %461 ], [ %11, %429 ], [ %11, %425 ], [ %11, %424 ], [ %11, %421 ], [ %11, %417 ], [ %11, %259 ], [ %11, %258 ], [ %11, %256 ], [ %11, %255 ], [ %11, %254 ], [ %11, %253 ], [ %11, %252 ], [ %11, %188 ], [ %11, %187 ], [ %11, %186 ], [ %11, %185 ], [ %11, %182 ], [ %11, %179 ], [ %176, %178 ], [ %11, %174 ], [ %11, %172 ], [ %11, %169 ], [ %11, %166 ], [ %11, %165 ], [ %11, %151 ], [ %11, %81 ], [ %11, %77 ], [ %11, %74 ], [ %11, %73 ], [ %11, %70 ], [ %11, %54 ], [ %11, %49 ], [ %11, %621 ], [ %11, %623 ], [ %11, %607 ], [ %11, %264 ], [ %11, %413 ]
  %628 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %629 = icmp sgt i32 %628, %0
  br i1 %629, label %9, label %630, !prof !235, !llvm.loop !236

630:                                              ; preds = %626, %6
  %631 = phi i8 [ %2, %6 ], [ %627, %626 ]
  %632 = and i8 %631, 1
  store i8 %632, ptr @PL_tainted, align 1, !tbaa !158
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_markstack_grow() local_unnamed_addr #0 !prof !151 {
  %1 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !131
  %2 = load ptr, ptr @PL_markstack, align 8, !tbaa !131
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
  store ptr %12, ptr @PL_markstack, align 8, !tbaa !131
  %13 = getelementptr inbounds i32, ptr %12, i64 %10
  store ptr %13, ptr @PL_markstack_max, align 8, !tbaa !131
  %14 = shl i64 %5, 30
  %15 = ashr i64 %14, 32
  %16 = getelementptr inbounds i32, ptr %12, i64 %15
  store ptr %16, ptr @PL_markstack_ptr, align 8, !tbaa !131
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_savestack_grow() local_unnamed_addr #0 !prof !237 {
  %1 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %2 = mul nsw i32 %1, 3
  %3 = sdiv i32 %2, 2
  %4 = add nsw i32 %3, 4
  store i32 %4, ptr @PL_savestack_max, align 4, !tbaa !153
  %5 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %6 = sext i32 %4 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @Perl_safesysrealloc(ptr noundef %5, i64 noundef %7) #9
  store ptr %8, ptr @PL_savestack, align 8, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_savestack_grow_cnt(i32 noundef %0) local_unnamed_addr #0 !prof !151 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %3 = add nsw i32 %2, %0
  store i32 %3, ptr @PL_savestack_max, align 4, !tbaa !153
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %6) #9
  store ptr %7, ptr @PL_savestack, align 8, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @Perl_tmps_grow_p(i64 noundef returned %0) local_unnamed_addr #0 !prof !238 {
  %2 = load i64, ptr @PL_tmps_max, align 8, !tbaa !167
  %3 = sub nsw i64 %0, %2
  %4 = icmp slt i64 %3, 128
  %5 = icmp slt i64 %2, 512
  %6 = select i1 %5, i64 128, i64 512
  %7 = select i1 %4, i64 %6, i64 0, !prof !239
  %8 = add i64 %0, 1
  %9 = add i64 %8, %7
  store i64 %9, ptr @PL_tmps_max, align 8, !tbaa !167
  %10 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !131
  %11 = shl i64 %9, 3
  %12 = tail call ptr @Perl_safesysrealloc(ptr noundef %10, i64 noundef %11) #9
  store ptr %12, ptr @PL_tmps_stack, align 8, !tbaa !131
  ret i64 %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_free_tmps() local_unnamed_addr #0 !prof !240 {
  %1 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !167
  %2 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !167
  %3 = icmp sgt i64 %2, %1
  br i1 %3, label %4, label %25, !prof !241

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !131
  br label %6

6:                                                ; preds = %4, %21
  %7 = phi ptr [ %23, %21 ], [ %5, %4 ]
  %8 = phi i64 [ %22, %21 ], [ %2, %4 ]
  %9 = add nsw i64 %8, -1
  store i64 %9, ptr @PL_tmps_ix, align 8, !tbaa !167
  %10 = getelementptr inbounds ptr, ptr %7, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %11, @PL_sv_undef
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21, !prof !242

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !171
  %18 = and i32 %17, -524289
  store i32 %18, ptr %16, align 4, !tbaa !171
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %11) #10
  %19 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !131
  %20 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !167
  br label %21

21:                                               ; preds = %6, %15
  %22 = phi i64 [ %9, %6 ], [ %20, %15 ]
  %23 = phi ptr [ %7, %6 ], [ %19, %15 ]
  %24 = icmp sgt i64 %22, %1
  br i1 %24, label %6, label %25, !prof !243, !llvm.loop !244

25:                                               ; preds = %21, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 !prof !245 !PGOFuncName !246 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !199
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7, !prof !247

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !199
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #9
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_pushptrptr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !248 {
  %4 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %5 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %union.any, ptr %5, i64 %6
  %8 = getelementptr inbounds %union.any, ptr %7, i64 1
  store ptr %0, ptr %7, align 8, !tbaa !164
  %9 = getelementptr inbounds %union.any, ptr %7, i64 2
  store ptr %1, ptr %8, align 8, !tbaa !164
  %10 = sext i32 %2 to i64
  store i64 %10, ptr %9, align 8, !tbaa !164
  %11 = add nsw i32 %4, 3
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !153
  %12 = add nsw i32 %4, 7
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16, !prof !249

15:                                               ; preds = %3
  tail call void @Perl_savestack_grow() #10
  br label %16

16:                                               ; preds = %3, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_save_scalar(ptr noundef %0) local_unnamed_addr #0 !prof !250 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11, !prof !251

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %13 = phi ptr [ %9, %6 ], [ %3, %1 ]
  %14 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !171
  %16 = and i32 %15, 2097152
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18, !prof !174

18:                                               ; preds = %11
  store i8 1, ptr @PL_localizing, align 1, !tbaa !164
  %19 = load ptr, ptr %13, align 8, !tbaa !131
  %20 = tail call i32 @Perl_mg_get(ptr noundef %19) #9
  store i8 0, ptr @PL_localizing, align 1, !tbaa !164
  br label %21

21:                                               ; preds = %11, %18
  %22 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %0) #10
  %23 = load ptr, ptr %13, align 8, !tbaa !131
  %24 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %23) #10
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %0, ptr noundef %23, i32 noundef 43) #10
  %25 = tail call fastcc ptr @S_save_scalar_at(ptr noundef nonnull %13, i32 noundef 1) #10
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 !prof !252 !PGOFuncName !253 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !254

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !199
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !199
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_save_scalar_at(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !250 !PGOFuncName !255 {
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  %4 = and i32 %1, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !174

6:                                                ; preds = %2
  %7 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  store ptr %7, ptr %0, align 8, !tbaa !131
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !171
  %12 = and i32 %11, 255
  %13 = icmp ugt i32 %12, 6
  br i1 %13, label %14, label %30, !prof !256

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8, !tbaa !209
  %16 = getelementptr inbounds %struct.xpvmg, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19, !prof !257

19:                                               ; preds = %14
  %20 = and i32 %11, 2097152
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !257

22:                                               ; preds = %19
  %23 = lshr i32 %11, 4
  %24 = and i32 %23, 1792
  %25 = or i32 %24, %11
  store i32 %25, ptr %10, align 4, !tbaa !171
  br label %26

26:                                               ; preds = %22, %19
  br i1 %5, label %27, label %30, !prof !258

27:                                               ; preds = %26
  %28 = and i32 %1, 1
  %29 = icmp ne i32 %28, 0
  tail call void @Perl_mg_localize(ptr noundef nonnull %3, ptr noundef %9, i1 noundef zeroext %29) #9
  br label %30

30:                                               ; preds = %26, %27, %14, %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_generic_svref(ptr noundef %0) local_unnamed_addr #0 !prof !259 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %2) #10
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 27) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_generic_pvref(ptr noundef %0) local_unnamed_addr #0 !prof !260 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  tail call void @Perl_save_pushptrptr(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 26) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_shared_pvref(ptr noundef %0) local_unnamed_addr #0 !prof !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 40) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_set_svflags(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !261 {
  %4 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %5 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %union.any, ptr %5, i64 %6
  %8 = getelementptr inbounds %union.any, ptr %7, i64 1
  store ptr %0, ptr %7, align 8, !tbaa !164
  %9 = getelementptr inbounds %union.any, ptr %7, i64 2
  store i32 %1, ptr %8, align 8, !tbaa !164
  %10 = getelementptr inbounds %union.any, ptr %7, i64 3
  store i32 %2, ptr %9, align 8, !tbaa !164
  store i64 50, ptr %10, align 8, !tbaa !164
  %11 = add nsw i32 %4, 4
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !153
  %12 = add nsw i32 %4, 8
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16, !prof !262

15:                                               ; preds = %3
  tail call void @Perl_savestack_grow() #10
  br label %16

16:                                               ; preds = %3, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_gp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !263 {
  %3 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  tail call void @Perl_save_pushptrptr(ptr noundef %0, ptr noundef %5, i32 noundef 28) #10
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %73, label %7, !prof !264

7:                                                ; preds = %2
  %8 = tail call ptr @Perl_newGP(ptr noundef nonnull %0) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !176
  %10 = getelementptr inbounds %struct.xpvgv, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13, !prof !265

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !178
  %16 = and i32 %15, 33554432
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %52, label %18, !prof !265

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = load ptr, ptr %11, align 8, !tbaa !180
  %22 = getelementptr inbounds %struct.xpvhv, ptr %21, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !181
  %24 = getelementptr ptr, ptr %20, i64 %23
  %25 = getelementptr ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !164
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28, !prof !265

28:                                               ; preds = %18
  %29 = getelementptr i8, ptr %24, i64 36
  %30 = load i32, ptr %29, align 4, !tbaa !183
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %52, label %32, !prof !266

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.xpvgv, ptr %9, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = getelementptr inbounds %struct.hek, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !196
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %42, !prof !265

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.hek, ptr %34, i64 0, i32 2
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38, %32
  %43 = load ptr, ptr %4, align 8, !tbaa !164
  %44 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !192
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52, !prof !266

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !194
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !266

51:                                               ; preds = %47
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %11) #9
  br label %52

52:                                               ; preds = %38, %42, %51, %47, %13, %18, %28, %7
  %53 = phi i1 [ false, %42 ], [ false, %51 ], [ false, %47 ], [ false, %28 ], [ false, %18 ], [ false, %13 ], [ false, %7 ], [ true, %38 ]
  %54 = load ptr, ptr %4, align 8, !tbaa !164
  %55 = getelementptr inbounds %struct.gp, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !267
  %57 = icmp eq ptr %56, null
  br i1 %57, label %71, label %58, !prof !266

58:                                               ; preds = %52
  %59 = load ptr, ptr %56, align 8, !tbaa !268
  %60 = getelementptr inbounds %struct.xpvio, ptr %59, i64 0, i32 17
  %61 = load i8, ptr %60, align 1, !tbaa !270
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @Perl_newSV_type(i32 noundef 15) #9
  %66 = getelementptr inbounds %struct.gp, ptr %8, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !267
  %67 = load ptr, ptr %65, align 8, !tbaa !268
  %68 = getelementptr inbounds %struct.xpvio, ptr %67, i64 0, i32 17
  %69 = load i8, ptr %68, align 1, !tbaa !270
  %70 = or i8 %69, 3
  store i8 %70, ptr %68, align 1, !tbaa !270
  br label %71

71:                                               ; preds = %64, %58, %52
  store ptr %8, ptr %4, align 8, !tbaa !164
  br i1 %53, label %72, label %80, !prof !265

72:                                               ; preds = %71
  tail call void @Perl_mro_isa_changed_in(ptr noundef %11) #9
  br label %80

73:                                               ; preds = %2
  %74 = load ptr, ptr %4, align 8, !tbaa !164
  %75 = tail call ptr @Perl_gp_ref(ptr noundef %74) #9
  %76 = load ptr, ptr %0, align 8, !tbaa !176
  %77 = getelementptr inbounds %struct.xpvgv, ptr %76, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !272
  %79 = or i64 %78, 1
  store i64 %79, ptr %77, align 8, !tbaa !272
  br label %80

80:                                               ; preds = %71, %72, %73
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newGP(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_gp_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_save_ary(ptr noundef %0) local_unnamed_addr #0 !prof !274 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !187
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13, !prof !275

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 11) #9
  %9 = getelementptr inbounds %struct.gv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !187
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi ptr [ %12, %7 ], [ %5, %1 ]
  %15 = getelementptr inbounds %struct.av, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !139
  %17 = and i32 %16, 1073741824
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22, !prof !275

19:                                               ; preds = %13
  %20 = icmp sgt i32 %16, -1
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @Perl_av_reify(ptr noundef nonnull %14) #9
  br label %22

22:                                               ; preds = %13, %19, %21
  %23 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !276
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !276
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 23) #10
  %26 = load ptr, ptr %2, align 8, !tbaa !164
  %27 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 6
  store ptr null, ptr %27, align 8, !tbaa !187
  %28 = load ptr, ptr %2, align 8, !tbaa !164
  %29 = getelementptr inbounds %struct.gp, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !187
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38, !prof !188

32:                                               ; preds = %22
  %33 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 11) #9
  %34 = getelementptr inbounds %struct.gv, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !164
  %36 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !187
  br label %38

38:                                               ; preds = %22, %32
  %39 = phi ptr [ %37, %32 ], [ %30, %22 ]
  %40 = load ptr, ptr %14, align 8, !tbaa !142
  %41 = getelementptr inbounds %struct.xpvmg, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !164
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !188

44:                                               ; preds = %38
  tail call void @Perl_mg_localize(ptr noundef nonnull %14, ptr noundef %39, i1 noundef zeroext true) #9
  br label %45

45:                                               ; preds = %38, %44
  ret ptr %39
}

; Function Attrs: optsize
declare void @Perl_av_reify(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_mg_localize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_save_hash(ptr noundef %0) local_unnamed_addr #0 !prof !277 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !276
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !276
  %5 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = getelementptr inbounds %struct.gp, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !278

10:                                               ; preds = %1
  %11 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 12) #9
  %12 = getelementptr inbounds %struct.gv, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  %14 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !189
  br label %16

16:                                               ; preds = %1, %10
  %17 = phi ptr [ %15, %10 ], [ %8, %1 ]
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %0, ptr noundef %17, i32 noundef 32) #10
  %18 = load ptr, ptr %5, align 8, !tbaa !164
  %19 = getelementptr inbounds %struct.gp, ptr %18, i64 0, i32 5
  store ptr null, ptr %19, align 8, !tbaa !189
  %20 = load ptr, ptr %5, align 8, !tbaa !164
  %21 = getelementptr inbounds %struct.gp, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !189
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30, !prof !190

24:                                               ; preds = %16
  %25 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 12) #9
  %26 = getelementptr inbounds %struct.gv, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !164
  %28 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !189
  br label %30

30:                                               ; preds = %16, %24
  %31 = phi ptr [ %29, %24 ], [ %22, %16 ]
  %32 = load ptr, ptr %17, align 8, !tbaa !180
  %33 = getelementptr inbounds %struct.xpvmg, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !190

36:                                               ; preds = %30
  tail call void @Perl_mg_localize(ptr noundef nonnull %17, ptr noundef %31, i1 noundef zeroext true) #9
  br label %37

37:                                               ; preds = %30, %36
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_item(ptr noundef %0) local_unnamed_addr #0 !prof !279 {
  %2 = tail call ptr @Perl_newSVsv(ptr noundef %0) #9
  tail call void @Perl_save_pushptrptr(ptr noundef %0, ptr noundef %2, i32 noundef 35) #10
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_bool(ptr noundef %0) local_unnamed_addr #0 !prof !280 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %0, ptr %5, align 8, !tbaa !164
  %7 = load i8, ptr %0, align 1, !tbaa !158, !range !160, !noundef !161
  %8 = zext nneg i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 8
  %10 = or disjoint i64 %9, 5
  store i64 %10, ptr %6, align 8, !tbaa !164
  %11 = add nsw i32 %2, 2
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !153
  %12 = add nsw i32 %2, 6
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16, !prof !191

15:                                               ; preds = %1
  tail call void @Perl_savestack_grow() #10
  br label %16

16:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_pushi32ptr(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !281 {
  %4 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %5 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %union.any, ptr %5, i64 %6
  %8 = getelementptr inbounds %union.any, ptr %7, i64 1
  store i32 %0, ptr %7, align 8, !tbaa !164
  %9 = getelementptr inbounds %union.any, ptr %7, i64 2
  store ptr %1, ptr %8, align 8, !tbaa !164
  %10 = sext i32 %2 to i64
  store i64 %10, ptr %9, align 8, !tbaa !164
  %11 = add nsw i32 %4, 3
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !153
  %12 = add nsw i32 %4, 7
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16, !prof !282

15:                                               ; preds = %3
  tail call void @Perl_savestack_grow() #10
  br label %16

16:                                               ; preds = %3, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_int(ptr noundef %0) local_unnamed_addr #0 !prof !283 {
  %2 = load i32, ptr %0, align 4, !tbaa !153
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 6
  %5 = or disjoint i64 %4, 15
  %6 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %7 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds %union.any, ptr %7, i64 %8
  %10 = getelementptr inbounds %union.any, ptr %9, i64 1
  store ptr %0, ptr %9, align 8, !tbaa !164
  store i64 %5, ptr %10, align 8, !tbaa !164
  %11 = add nsw i32 %6, 2
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !153
  %12 = add nsw i32 %6, 6
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16, !prof !284

15:                                               ; preds = %1
  tail call void @Perl_savestack_grow() #10
  br label %16

16:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_I8(ptr noundef %0) local_unnamed_addr #0 !prof !285 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %0, ptr %5, align 8, !tbaa !164
  %7 = load i8, ptr %0, align 1, !tbaa !164
  %8 = sext i8 %7 to i64
  %9 = shl nsw i64 %8, 8
  %10 = or disjoint i64 %9, 14
  store i64 %10, ptr %6, align 8, !tbaa !164
  %11 = add nsw i32 %2, 2
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !153
  %12 = add nsw i32 %2, 6
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16, !prof !286

15:                                               ; preds = %1
  tail call void @Perl_savestack_grow() #10
  br label %16

16:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_I16(ptr noundef %0) local_unnamed_addr #0 !prof !287 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %0, ptr %5, align 8, !tbaa !164
  %7 = load i16, ptr %0, align 2, !tbaa !229
  %8 = sext i16 %7 to i64
  %9 = shl nsw i64 %8, 8
  %10 = or disjoint i64 %9, 12
  store i64 %10, ptr %6, align 8, !tbaa !164
  %11 = add nsw i32 %2, 2
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !153
  %12 = add nsw i32 %2, 6
  %13 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16, !prof !288

15:                                               ; preds = %1
  tail call void @Perl_savestack_grow() #10
  br label %16

16:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_I32(ptr noundef %0) local_unnamed_addr #0 !prof !289 {
  %2 = load i32, ptr %0, align 4, !tbaa !153
  %3 = shl i32 %2, 6
  %4 = or disjoint i32 %3, 13
  %5 = sext i32 %4 to i64
  %6 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %7 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds %union.any, ptr %7, i64 %8
  %10 = add i32 %2, 33554432
  %11 = icmp ult i32 %10, 67108864
  br i1 %11, label %14, label %12, !prof !290

12:                                               ; preds = %1
  %13 = getelementptr inbounds %union.any, ptr %9, i64 1
  store i32 %2, ptr %9, align 8, !tbaa !164
  br label %14

14:                                               ; preds = %1, %12
  %15 = phi i64 [ 33, %12 ], [ %5, %1 ]
  %16 = phi i32 [ 3, %12 ], [ 2, %1 ]
  %17 = phi ptr [ %13, %12 ], [ %9, %1 ]
  %18 = getelementptr inbounds %union.any, ptr %17, i64 1
  store ptr %0, ptr %17, align 8, !tbaa !164
  store i64 %15, ptr %18, align 8, !tbaa !164
  %19 = add nsw i32 %16, %6
  store i32 %19, ptr @PL_savestack_ix, align 4, !tbaa !153
  %20 = add nsw i32 %19, 4
  %21 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24, !prof !291

23:                                               ; preds = %14
  tail call void @Perl_savestack_grow() #10
  br label %24

24:                                               ; preds = %14, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_strlen(ptr noundef %0) local_unnamed_addr #0 !prof !292 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = load i64, ptr %0, align 8, !tbaa !167
  %7 = getelementptr inbounds %union.any, ptr %5, i64 1
  store i64 %6, ptr %5, align 8, !tbaa !164
  %8 = getelementptr inbounds %union.any, ptr %5, i64 2
  store ptr %0, ptr %7, align 8, !tbaa !164
  store i64 42, ptr %8, align 8, !tbaa !164
  %9 = add nsw i32 %2, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !153
  %10 = add nsw i32 %2, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14, !prof !293

13:                                               ; preds = %1
  tail call void @Perl_savestack_grow() #10
  br label %14

14:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_pptr(ptr noundef %0) local_unnamed_addr #0 !prof !294 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  tail call void @Perl_save_pushptrptr(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 38) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_vptr(ptr noundef %0) local_unnamed_addr #0 !prof !295 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  tail call void @Perl_save_pushptrptr(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 45) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_sptr(ptr noundef %0) local_unnamed_addr #0 !prof !296 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  tail call void @Perl_save_pushptrptr(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 41) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_padsv_and_mortalize(i64 noundef %0) local_unnamed_addr #0 !prof !297 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = load ptr, ptr @PL_curpad, align 8, !tbaa !131
  %7 = getelementptr inbounds ptr, ptr %6, i64 %0
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !199
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !199
  %12 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %8, ptr %5, align 8, !tbaa !164
  %13 = load ptr, ptr @PL_comppad, align 8, !tbaa !131
  %14 = getelementptr inbounds %union.any, ptr %5, i64 2
  store ptr %13, ptr %12, align 8, !tbaa !164
  %15 = getelementptr inbounds %union.any, ptr %5, i64 3
  store i64 %0, ptr %14, align 8, !tbaa !164
  store i64 49, ptr %15, align 8, !tbaa !164
  %16 = add nsw i32 %2, 4
  store i32 %16, ptr @PL_savestack_ix, align 4, !tbaa !153
  %17 = add nsw i32 %2, 8
  %18 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21, !prof !298

20:                                               ; preds = %1
  tail call void @Perl_savestack_grow() #10
  br label %21

21:                                               ; preds = %1, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_hptr(ptr noundef %0) local_unnamed_addr #0 !prof !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  tail call void @Perl_save_pushptrptr(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 31) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_aptr(ptr noundef %0) local_unnamed_addr #0 !prof !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  tail call void @Perl_save_pushptrptr(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 47) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_pushptr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !299 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !164
  %8 = sext i32 %1 to i64
  store i64 %8, ptr %7, align 8, !tbaa !164
  %9 = add nsw i32 %3, 2
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !153
  %10 = add nsw i32 %3, 6
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14, !prof !300

13:                                               ; preds = %2
  tail call void @Perl_savestack_grow() #10
  br label %14

14:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_clearsv(ptr noundef %0) local_unnamed_addr #0 !prof !301 {
  %2 = load ptr, ptr @PL_curpad, align 8, !tbaa !131
  %3 = ptrtoint ptr %0 to i64
  %4 = ptrtoint ptr %2 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  %7 = shl i64 %5, 3
  %8 = load ptr, ptr %0, align 8, !tbaa !131
  tail call fastcc void @S_SvPADSTALE_off(ptr noundef %8) #10
  %9 = lshr i64 %7, 6
  %10 = icmp eq i64 %9, %6
  br i1 %10, label %13, label %11, !prof !302

11:                                               ; preds = %1
  %12 = load ptr, ptr @PL_curpad, align 8, !tbaa !131
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i64 noundef %6, ptr noundef nonnull %0, ptr noundef %12) #9
  br label %13

13:                                               ; preds = %1, %11
  %14 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %15 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %union.any, ptr %15, i64 %16
  %18 = or disjoint i64 %7, 2
  store i64 %18, ptr %17, align 8, !tbaa !164
  %19 = add nsw i32 %14, 1
  store i32 %19, ptr @PL_savestack_ix, align 4, !tbaa !153
  %20 = add nsw i32 %14, 5
  %21 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24, !prof !303

23:                                               ; preds = %13
  tail call void @Perl_savestack_grow() #10
  br label %24

24:                                               ; preds = %13, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvPADSTALE_off(ptr nocapture noundef %0) unnamed_addr #4 !prof !301 !PGOFuncName !304 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !171
  %4 = and i32 %3, -262145
  store i32 %4, ptr %2, align 4, !tbaa !171
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_delete(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !305 {
  %4 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %0) #10
  tail call fastcc void @S_save_pushptri32ptr(ptr noundef %1, i32 noundef %2, ptr noundef %0, i32 noundef 53) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_save_pushptri32ptr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !306 !PGOFuncName !307 {
  %5 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %6 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %union.any, ptr %6, i64 %7
  %9 = getelementptr inbounds %union.any, ptr %8, i64 1
  store ptr %0, ptr %8, align 8, !tbaa !164
  %10 = getelementptr inbounds %union.any, ptr %8, i64 2
  store i32 %1, ptr %9, align 8, !tbaa !164
  %11 = getelementptr inbounds %union.any, ptr %8, i64 3
  store ptr %2, ptr %10, align 8, !tbaa !164
  %12 = zext nneg i32 %3 to i64
  store i64 %12, ptr %11, align 8, !tbaa !164
  %13 = add nsw i32 %5, 4
  store i32 %13, ptr @PL_savestack_ix, align 4, !tbaa !153
  %14 = add nsw i32 %5, 8
  %15 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18, !prof !308

17:                                               ; preds = %4
  tail call void @Perl_savestack_grow() #10
  br label %18

18:                                               ; preds = %4, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_hdelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !309 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !171
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14, !prof !310

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !209
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !311
  store i64 %11, ptr %3, align 8, !tbaa !167
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  br label %17

14:                                               ; preds = %2
  %15 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 34) #9
  %16 = load i32, ptr %4, align 4, !tbaa !171
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i32 [ %5, %8 ], [ %16, %14 ]
  %19 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %20 = and i32 %18, 536870912
  %21 = icmp eq i32 %20, 0
  %22 = load i64, ptr %3, align 8, !tbaa !167
  %23 = trunc i64 %22 to i32
  br i1 %21, label %26, label %24, !prof !310

24:                                               ; preds = %17
  %25 = sub nsw i32 0, %23
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi i32 [ %25, %24 ], [ %23, %17 ]
  %28 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !199
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !199
  %31 = call ptr @Perl_savepvn(ptr noundef %19, i32 noundef %23) #9
  call fastcc void @S_save_pushptri32ptr(ptr noundef %31, i32 noundef %27, ptr noundef %0, i32 noundef 53) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_adelete(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !151 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  tail call fastcc void @S_SvREFCNT_inc_void(ptr noundef %0) #10
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store i64 %1, ptr %6, align 8, !tbaa !164
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %0, ptr %7, align 8, !tbaa !164
  store i64 46, ptr %8, align 8, !tbaa !164
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !153
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @Perl_savestack_grow() #10
  br label %14

14:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvREFCNT_inc_void(ptr noundef %0) unnamed_addr #4 !prof !151 !PGOFuncName !313 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !199
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !199
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_destructor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !151 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !164
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %1, ptr %7, align 8, !tbaa !164
  store i64 24, ptr %8, align 8, !tbaa !164
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !153
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @Perl_savestack_grow() #10
  br label %14

14:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_destructor_x(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !314 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %4 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds %union.any, ptr %4, i64 %5
  %7 = getelementptr inbounds %union.any, ptr %6, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !164
  %8 = getelementptr inbounds %union.any, ptr %6, i64 2
  store ptr %1, ptr %7, align 8, !tbaa !164
  store i64 25, ptr %8, align 8, !tbaa !164
  %9 = add nsw i32 %3, 3
  store i32 %9, ptr @PL_savestack_ix, align 4, !tbaa !153
  %10 = add nsw i32 %3, 7
  %11 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14, !prof !315

13:                                               ; preds = %2
  tail call void @Perl_savestack_grow() #10
  br label %14

14:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_hints() local_unnamed_addr #0 !prof !316 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !224
  %2 = tail call ptr @Perl_refcounted_he_inc(ptr noundef %1) #9
  %3 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !218
  %4 = and i32 %3, 131072
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6, !prof !225

6:                                                ; preds = %0
  %7 = load ptr, ptr @PL_hintgv, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  %10 = getelementptr inbounds %struct.gp, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  tail call fastcc void @S_save_pushptri32ptr(ptr noundef %11, i32 noundef %3, ptr noundef %2, i32 noundef 30) #10
  %12 = load ptr, ptr @PL_hintgv, align 8, !tbaa !131
  %13 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  %15 = getelementptr inbounds %struct.gp, ptr %14, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !189
  %16 = tail call ptr @Perl_hv_copy_hints_hv(ptr noundef %11) #9
  %17 = load ptr, ptr @PL_hintgv, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  %20 = getelementptr inbounds %struct.gp, ptr %19, i64 0, i32 5
  store ptr %16, ptr %20, align 8, !tbaa !189
  br label %22

21:                                               ; preds = %0
  tail call void @Perl_save_pushi32ptr(i32 noundef %3, ptr noundef %2, i32 noundef 30) #10
  br label %22

22:                                               ; preds = %21, %6
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_inc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_hv_copy_hints_hv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_aelem_flags(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !151 {
  %5 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %6 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %union.any, ptr %6, i64 %7
  %9 = load ptr, ptr %2, align 8, !tbaa !131
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !171
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call i32 @Perl_mg_get(ptr noundef nonnull %9) #9
  br label %16

16:                                               ; preds = %4, %14
  %17 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %0) #10
  %18 = getelementptr inbounds %union.any, ptr %8, i64 1
  store ptr %0, ptr %8, align 8, !tbaa !164
  %19 = getelementptr inbounds %union.any, ptr %8, i64 2
  store i64 %1, ptr %18, align 8, !tbaa !164
  %20 = load ptr, ptr %2, align 8, !tbaa !131
  %21 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %20) #10
  %22 = getelementptr inbounds %union.any, ptr %8, i64 3
  store ptr %20, ptr %19, align 8, !tbaa !164
  store i64 52, ptr %22, align 8, !tbaa !164
  %23 = add nsw i32 %5, 4
  store i32 %23, ptr @PL_savestack_ix, align 4, !tbaa !153
  %24 = add nsw i32 %5, 8
  %25 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  tail call void @Perl_savestack_grow() #10
  br label %28

28:                                               ; preds = %16, %27
  %29 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !139
  %31 = and i32 %30, -1073741824
  %32 = icmp eq i32 %31, -2147483648
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void @Perl_av_reify(ptr noundef nonnull %0) #9
  br label %34

34:                                               ; preds = %28, %33
  %35 = tail call fastcc ptr @S_save_scalar_at(ptr noundef nonnull %2, i32 noundef %3) #10
  %36 = and i32 %3, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 8, !tbaa !131
  %40 = load i32, ptr %29, align 4, !tbaa !171
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @Perl_sv_2mortal(ptr noundef %39) #9
  br label %48

48:                                               ; preds = %46, %38, %43, %34
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_helem_flags(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !151 {
  %5 = load ptr, ptr %2, align 8, !tbaa !131
  %6 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !171
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @Perl_mg_get(ptr noundef nonnull %5) #9
  br label %12

12:                                               ; preds = %4, %10
  %13 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %14 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %union.any, ptr %14, i64 %15
  %17 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %0) #10
  %18 = getelementptr inbounds %union.any, ptr %16, i64 1
  store ptr %0, ptr %16, align 8, !tbaa !164
  %19 = tail call ptr @Perl_newSVsv(ptr noundef %1) #9
  %20 = getelementptr inbounds %union.any, ptr %16, i64 2
  store ptr %19, ptr %18, align 8, !tbaa !164
  %21 = load ptr, ptr %2, align 8, !tbaa !131
  %22 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %21) #10
  %23 = getelementptr inbounds %union.any, ptr %16, i64 3
  store ptr %21, ptr %20, align 8, !tbaa !164
  store i64 48, ptr %23, align 8, !tbaa !164
  %24 = add nsw i32 %13, 4
  store i32 %24, ptr @PL_savestack_ix, align 4, !tbaa !153
  %25 = add nsw i32 %13, 8
  %26 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  tail call void @Perl_savestack_grow() #10
  br label %29

29:                                               ; preds = %12, %28
  %30 = tail call fastcc ptr @S_save_scalar_at(ptr noundef nonnull %2, i32 noundef %3) #10
  %31 = and i32 %3, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load ptr, ptr %2, align 8, !tbaa !131
  %35 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !171
  %37 = and i32 %36, 8388608
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @Perl_sv_2mortal(ptr noundef %34) #9
  br label %44

44:                                               ; preds = %42, %33, %39, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_save_svref(ptr noundef %0) local_unnamed_addr #0 !prof !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !171
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @Perl_mg_get(ptr noundef nonnull %2) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !131
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %2, %1 ], [ %9, %7 ]
  %12 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %11) #10
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %0, ptr noundef %11, i32 noundef 44) #10
  %13 = tail call fastcc ptr @S_save_scalar_at(ptr noundef nonnull %0, i32 noundef 1) #10
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_save_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !317 {
  %3 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %4 = add nsw i32 %1, %0
  %5 = add nsw i32 %4, -1
  %6 = sext i32 %5 to i64
  %7 = lshr i64 %6, 3
  %8 = add nuw nsw i64 %7, 1
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %14, label %10, !prof !318

10:                                               ; preds = %2
  %11 = sext i32 %1 to i64
  %12 = sext i32 %0 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, i64 noundef %8, i64 noundef %12, i64 noundef %11) #9
  %13 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi i32 [ %3, %2 ], [ %13, %10 ]
  %16 = ashr i32 %5, 3
  %17 = add nsw i32 %16, 6
  %18 = add i32 %17, %15
  %19 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23, !prof !319

21:                                               ; preds = %14
  tail call void @Perl_savestack_grow_cnt(i32 noundef %17) #10
  %22 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i32 [ %15, %14 ], [ %22, %21 ]
  %25 = shl i64 %8, 6
  %26 = shl i32 %3, 3
  %27 = add i32 %26, %1
  %28 = trunc i64 %8 to i32
  %29 = add i32 %24, %28
  %30 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %31 = add nsw i32 %29, 1
  store i32 %31, ptr @PL_savestack_ix, align 4, !tbaa !153
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds %union.any, ptr %30, i64 %32
  store i64 %25, ptr %33, align 8, !tbaa !164
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_save_aliased_sv(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !320 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !153
  %3 = load ptr, ptr @PL_savestack, align 8, !tbaa !131
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %union.any, ptr %3, i64 %4
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = tail call ptr @Perl_gp_ref(ptr noundef %7) #9
  %9 = getelementptr inbounds %union.any, ptr %5, i64 1
  store ptr %8, ptr %5, align 8, !tbaa !164
  %10 = load ptr, ptr %6, align 8, !tbaa !164
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 23
  %14 = and i32 %13, 256
  %15 = or disjoint i32 %14, 4
  %16 = zext nneg i32 %15 to i64
  store i64 %16, ptr %9, align 8, !tbaa !164
  %17 = add nsw i32 %2, 2
  store i32 %17, ptr @PL_savestack_ix, align 4, !tbaa !153
  %18 = add nsw i32 %2, 6
  %19 = load i32, ptr @PL_savestack_max, align 4, !tbaa !153
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22, !prof !232

21:                                               ; preds = %1
  tail call void @Perl_savestack_grow() #10
  br label %22

22:                                               ; preds = %1, %21
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !321 !PGOFuncName !322 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !323

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !199
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !324

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !199
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #9
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @Perl_gp_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_padname_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_refcounted_he_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_op_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_hv_kill_backrefs(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CvNAME_HEK(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !151 !PGOFuncName !325 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !210
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !151 !PGOFuncName !326 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !210
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #9
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @Perl_cv_undef(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvPADSTALE_on(ptr nocapture noundef %0) unnamed_addr #4 !prof !327 !PGOFuncName !328 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !171
  %4 = or i32 %3, 262144
  store i32 %4, ptr %2, align 4, !tbaa !171
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_av_delete(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_parser_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_cx_dump(ptr nocapture noundef readnone %0) local_unnamed_addr #8 !prof !151 {
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!129}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
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
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!35 = !{ptr @Perl_stack_grow, ptr @Perl_av_extend, i64 28}
!36 = !{ptr @Perl_new_stackinfo, ptr @Perl_safesysmalloc, i64 14}
!37 = !{ptr @Perl_new_stackinfo, ptr @Perl_newSV_type, i64 7}
!38 = !{ptr @Perl_new_stackinfo, ptr @Perl_av_extend, i64 7}
!39 = !{ptr @Perl_push_scope, ptr @Perl_safesysrealloc, i64 1}
!40 = !{ptr @Perl_pop_scope, ptr @Perl_leave_scope, i64 72786503}
!41 = !{ptr @Perl_leave_scope, ptr @Perl_croak, i64 2}
!42 = !{ptr @Perl_leave_scope, ptr @Perl_sv_replace, i64 1239}
!43 = !{ptr @Perl_leave_scope, ptr @Perl_mg_set, i64 4}
!44 = !{ptr @Perl_leave_scope, ptr @S_SvREFCNT_dec, i64 462649494}
!45 = !{ptr @Perl_leave_scope, ptr @S_SvREFCNT_dec_NN, i64 357701}
!46 = !{ptr @Perl_leave_scope, ptr @Perl_safesysfree, i64 118383}
!47 = !{ptr @Perl_leave_scope, ptr @free, i64 1781}
!48 = !{ptr @Perl_leave_scope, ptr @Perl_gp_free, i64 206705}
!49 = !{ptr @Perl_leave_scope, ptr @Perl_padname_free, i64 2228}
!50 = !{ptr @Perl_leave_scope, ptr @Perl_refcounted_he_free, i64 7143}
!51 = !{ptr @Perl_leave_scope, ptr @Perl_sv_2mortal, i64 123931}
!52 = !{ptr @Perl_leave_scope, ptr @Perl_op_free, i64 1225}
!53 = !{ptr @Perl_leave_scope, ptr @Perl_sv_force_normal_flags, i64 1}
!54 = !{ptr @Perl_leave_scope, ptr @Perl_av_clear, i64 220904}
!55 = !{ptr @Perl_leave_scope, ptr @Perl_hv_clear, i64 17630}
!56 = !{ptr @Perl_leave_scope, ptr @Perl_cv_undef, i64 1}
!57 = !{ptr @Perl_leave_scope, ptr @CvNAME_HEK, i64 2}
!58 = !{ptr @Perl_leave_scope, ptr @Perl_unshare_hek, i64 2}
!59 = !{ptr @Perl_leave_scope, ptr @S_SvPADSTALE_on, i64 36138519}
!60 = !{ptr @Perl_leave_scope, ptr @Perl_newSV_type, i64 58}
!61 = !{ptr @Perl_leave_scope, ptr @Perl_newSV, i64 116}
!62 = !{ptr @Perl_leave_scope, ptr @Perl_hv_common_key_len, i64 14229}
!63 = !{ptr @Perl_leave_scope, ptr @Perl_av_delete, i64 1}
!64 = !{ptr @Perl_leave_scope, ptr @Perl_av_fetch, i64 1}
!65 = !{ptr @Perl_leave_scope, ptr @Perl_hv_common, i64 1}
!66 = !{ptr @Perl_leave_scope, ptr @Perl_sv_magic, i64 5}
!67 = !{ptr @Perl_leave_scope, ptr @Perl_sv_clear, i64 1}
!68 = !{ptr @Perl_leave_scope, ptr @Perl_parser_free, i64 187}
!69 = !{ptr @Perl_savestack_grow, ptr @Perl_safesysrealloc, i64 5}
!70 = !{ptr @Perl_tmps_grow_p, ptr @Perl_safesysrealloc, i64 27}
!71 = !{ptr @Perl_free_tmps, ptr @S_SvREFCNT_dec_NN, i64 1}
!72 = !{ptr @S_SvREFCNT_dec_NN, ptr @Perl_sv_free2, i64 35818017}
!73 = !{ptr @Perl_save_pushptrptr, ptr @Perl_savestack_grow, i64 1}
!74 = !{ptr @Perl_save_scalar, ptr @Perl_gv_add_by_type, i64 1}
!75 = !{ptr @Perl_save_scalar, ptr @Perl_mg_get, i64 1}
!76 = !{ptr @Perl_save_scalar, ptr @S_SvREFCNT_inc, i64 279212}
!77 = !{ptr @Perl_save_scalar, ptr @Perl_save_pushptrptr, i64 139606}
!78 = !{ptr @Perl_save_scalar, ptr @S_save_scalar_at, i64 139606}
!79 = !{ptr @S_save_scalar_at, ptr @Perl_newSV, i64 139605}
!80 = !{ptr @S_save_scalar_at, ptr @Perl_mg_localize, i64 6403}
!81 = !{ptr @Perl_save_generic_svref, ptr @S_SvREFCNT_inc, i64 212071}
!82 = !{ptr @Perl_save_generic_svref, ptr @Perl_save_pushptrptr, i64 212071}
!83 = !{ptr @Perl_save_generic_pvref, ptr @Perl_save_pushptrptr, i64 7014}
!84 = !{ptr @Perl_save_set_svflags, ptr @Perl_savestack_grow, i64 1}
!85 = !{ptr @Perl_save_gp, ptr @S_SvREFCNT_inc, i64 206703}
!86 = !{ptr @Perl_save_gp, ptr @Perl_save_pushptrptr, i64 206703}
!87 = !{ptr @Perl_save_gp, ptr @Perl_newGP, i64 33}
!88 = !{ptr @Perl_save_gp, ptr @Perl_mro_isa_changed_in, i64 1}
!89 = !{ptr @Perl_save_gp, ptr @Perl_gp_ref, i64 206670}
!90 = !{ptr @Perl_save_ary, ptr @Perl_gv_add_by_type, i64 11156}
!91 = !{ptr @Perl_save_ary, ptr @Perl_save_pushptrptr, i64 11156}
!92 = !{ptr @Perl_save_ary, ptr @Perl_mg_localize, i64 1}
!93 = !{ptr @Perl_save_hash, ptr @Perl_gv_add_by_type, i64 64}
!94 = !{ptr @Perl_save_hash, ptr @Perl_save_pushptrptr, i64 64}
!95 = !{ptr @Perl_save_hash, ptr @Perl_mg_localize, i64 1}
!96 = !{ptr @Perl_save_item, ptr @Perl_newSVsv, i64 1238}
!97 = !{ptr @Perl_save_item, ptr @Perl_save_pushptrptr, i64 1238}
!98 = !{ptr @Perl_save_bool, ptr @Perl_savestack_grow, i64 1}
!99 = !{ptr @Perl_save_pushi32ptr, ptr @Perl_savestack_grow, i64 1}
!100 = !{ptr @Perl_save_int, ptr @Perl_savestack_grow, i64 1}
!101 = !{ptr @Perl_save_I8, ptr @Perl_savestack_grow, i64 1}
!102 = !{ptr @Perl_save_I16, ptr @Perl_savestack_grow, i64 1}
!103 = !{ptr @Perl_save_I32, ptr @Perl_savestack_grow, i64 1}
!104 = !{ptr @Perl_save_strlen, ptr @Perl_savestack_grow, i64 1}
!105 = !{ptr @Perl_save_pptr, ptr @Perl_save_pushptrptr, i64 16556}
!106 = !{ptr @Perl_save_vptr, ptr @Perl_save_pushptrptr, i64 20957328}
!107 = !{ptr @Perl_save_sptr, ptr @Perl_save_pushptrptr, i64 8135}
!108 = !{ptr @Perl_save_padsv_and_mortalize, ptr @Perl_savestack_grow, i64 1}
!109 = !{ptr @Perl_save_pushptr, ptr @Perl_savestack_grow, i64 1}
!110 = !{ptr @Perl_save_clearsv, ptr @S_SvPADSTALE_off, i64 27634560}
!111 = !{ptr @Perl_save_clearsv, ptr @Perl_croak, i64 1}
!112 = !{ptr @Perl_save_clearsv, ptr @Perl_savestack_grow, i64 1}
!113 = !{ptr @Perl_save_delete, ptr @S_SvREFCNT_inc, i64 121}
!114 = !{ptr @Perl_save_delete, ptr @S_save_pushptri32ptr, i64 121}
!115 = !{ptr @S_save_pushptri32ptr, ptr @Perl_savestack_grow, i64 1}
!116 = !{ptr @Perl_save_hdelete, ptr @Perl_sv_2pv_flags, i64 1}
!117 = !{ptr @Perl_save_hdelete, ptr @Perl_savepvn, i64 14107}
!118 = !{ptr @Perl_save_hdelete, ptr @S_save_pushptri32ptr, i64 14107}
!119 = !{ptr @Perl_save_destructor_x, ptr @Perl_savestack_grow, i64 1}
!120 = !{ptr @Perl_save_hints, ptr @Perl_refcounted_he_inc, i64 7141}
!121 = !{ptr @Perl_save_hints, ptr @S_save_pushptri32ptr, i64 23}
!122 = !{ptr @Perl_save_hints, ptr @Perl_hv_copy_hints_hv, i64 23}
!123 = !{ptr @Perl_save_hints, ptr @Perl_save_pushi32ptr, i64 7118}
!124 = !{ptr @Perl_save_alloc, ptr @Perl_croak, i64 1}
!125 = !{ptr @Perl_save_alloc, ptr @Perl_savestack_grow_cnt, i64 1}
!126 = !{ptr @Perl_save_aliased_sv, ptr @Perl_gp_ref, i64 20975}
!127 = !{ptr @Perl_save_aliased_sv, ptr @Perl_savestack_grow, i64 1}
!128 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!129 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!130 = !{!"function_entry_count", i64 28}
!131 = !{!132, !132, i64 0}
!132 = !{!"any pointer", !133, i64 0}
!133 = !{!"omnipotent char", !134, i64 0}
!134 = !{!"Simple C/C++ TBAA"}
!135 = !{!"function_entry_count", i64 7}
!136 = !{!137, !132, i64 0}
!137 = !{!"stackinfo", !132, i64 0, !132, i64 8, !132, i64 16, !132, i64 24, !138, i64 32, !138, i64 36, !138, i64 40, !138, i64 44}
!138 = !{!"int", !133, i64 0}
!139 = !{!140, !138, i64 12}
!140 = !{!"av", !132, i64 0, !138, i64 8, !138, i64 12, !133, i64 16}
!141 = !{!"branch_weights", i32 8, i32 1}
!142 = !{!140, !132, i64 0}
!143 = !{!144, !132, i64 32}
!144 = !{!"xpvav", !132, i64 0, !133, i64 8, !145, i64 16, !145, i64 24, !132, i64 32}
!145 = !{!"long", !133, i64 0}
!146 = !{!144, !145, i64 16}
!147 = !{!137, !138, i64 36}
!148 = !{!137, !138, i64 32}
!149 = !{!137, !138, i64 40}
!150 = !{!137, !132, i64 8}
!151 = !{!"function_entry_count", i64 0}
!152 = !{!"function_entry_count", i64 115642289}
!153 = !{!138, !138, i64 0}
!154 = !{!"branch_weights", i32 1, i32 115642290}
!155 = !{!"function_entry_count", i64 114344000}
!156 = !{!"branch_weights", i32 72786504, i32 41557498}
!157 = !{!"function_entry_count", i64 953902892}
!158 = !{!159, !159, i64 0}
!159 = !{!"_Bool", !133, i64 0}
!160 = !{i8 0, i8 2}
!161 = !{}
!162 = !{!"branch_weights", i32 1, i32 953902893}
!163 = !{!"branch_weights", i32 953902892, i32 1}
!164 = !{!133, !133, i64 0}
!165 = !{!"branch_weights", i32 964912137, i32 30748517}
!166 = !{i64 0, i64 8, !131, i64 0, i64 4, !153, i64 0, i64 4, !153, i64 0, i64 8, !167, i64 0, i64 8, !167, i64 0, i64 8, !167, i64 0, i64 1, !158, i64 0, i64 8, !131, i64 0, i64 8, !131}
!167 = !{!145, !145, i64 0}
!168 = !{!"branch_weights", i32 499231475, i32 465680663}
!169 = !{!"branch_weights", i32 144467, i32 499087009}
!170 = !{!"branch_weights", i32 1, i32 1239, i32 1, i32 139607, i32 7015, i32 1, i32 20975, i32 212072, i32 1, i32 11157, i32 65, i32 741, i32 1, i32 51213262, i32 4759, i32 63620, i32 1, i32 8136, i32 20957329, i32 16557, i32 1, i32 1, i32 206704, i32 461878700, i32 2228, i32 1, i32 185, i32 1225, i32 97140, i32 2305110, i32 27634561, i32 14229, i32 1, i32 426267216, i32 808847, i32 2, i32 1, i32 1, i32 1, i32 524965, i32 7142, i32 3064802, i32 123745, i32 18547, i32 6495, i32 1, i32 1, i32 1, i32 2339, i32 11691, i32 1, i32 7119, i32 187, i32 1, i32 20976}
!171 = !{!172, !138, i64 12}
!172 = !{!"sv", !132, i64 0, !138, i64 8, !138, i64 12, !133, i64 16}
!173 = !{!"branch_weights", i32 1239, i32 1}
!174 = !{!"branch_weights", i32 139607, i32 1}
!175 = !{!"branch_weights", i32 1, i32 7015}
!176 = !{!177, !132, i64 0}
!177 = !{!"gv", !132, i64 0, !138, i64 8, !138, i64 12, !133, i64 16}
!178 = !{!179, !138, i64 12}
!179 = !{!"hv", !132, i64 0, !138, i64 8, !138, i64 12, !133, i64 16}
!180 = !{!179, !132, i64 0}
!181 = !{!182, !145, i64 24}
!182 = !{!"xpvhv", !132, i64 0, !133, i64 8, !145, i64 16, !145, i64 24}
!183 = !{!184, !138, i64 28}
!184 = !{!"xpvhv_aux", !133, i64 0, !132, i64 8, !132, i64 16, !138, i64 24, !138, i64 28, !132, i64 32, !138, i64 40, !138, i64 44, !138, i64 48, !138, i64 52}
!185 = !{!186, !138, i64 28}
!186 = !{!"gp", !132, i64 0, !132, i64 8, !132, i64 16, !138, i64 24, !138, i64 28, !132, i64 32, !132, i64 40, !132, i64 48, !132, i64 56, !138, i64 64, !138, i64 67, !132, i64 72}
!187 = !{!186, !132, i64 40}
!188 = !{!"branch_weights", i32 11157, i32 1}
!189 = !{!186, !132, i64 32}
!190 = !{!"branch_weights", i32 65, i32 1}
!191 = !{!"branch_weights", i32 1, i32 4759}
!192 = !{!186, !138, i64 24}
!193 = !{!"branch_weights", i32 206704, i32 1}
!194 = !{!186, !132, i64 16}
!195 = !{!"branch_weights", i32 1, i32 206704}
!196 = !{!197, !138, i64 4}
!197 = !{!"hek", !138, i64 0, !138, i64 4, !133, i64 8}
!198 = !{!"branch_weights", i32 935, i32 2147482713}
!199 = !{!172, !138, i64 8}
!200 = !{!"branch_weights", i32 -1803983906, i32 11511}
!201 = !{!"branch_weights", i32 36138521, i32 1}
!202 = !{!"branch_weights", i32 6005395, i32 1}
!203 = !{!"branch_weights", i32 5994046, i32 11350}
!204 = !{!"branch_weights", i32 5609, i32 5742}
!205 = !{!"branch_weights", i32 5768132, i32 237264}
!206 = !{!"branch_weights", i32 1, i32 237264}
!207 = !{!"branch_weights", i32 23565, i32 5981831}
!208 = !{!"branch_weights", i32 34480284, i32 1419706, i32 220904, i32 17630, i32 1}
!209 = !{!172, !132, i64 0}
!210 = !{!211, !138, i64 92}
!211 = !{!"xpvcv", !132, i64 0, !133, i64 8, !145, i64 16, !133, i64 24, !132, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !132, i64 64, !133, i64 72, !132, i64 80, !138, i64 88, !138, i64 92, !138, i64 96}
!212 = !{!213, !132, i64 0}
!213 = !{!"cv", !132, i64 0, !138, i64 8, !138, i64 12, !133, i64 16}
!214 = !{!"branch_weights", i32 117, i32 22, i32 29, i32 1}
!215 = !{!"branch_weights", i32 29939669, i32 6199017}
!216 = distinct !{!216, !217}
!217 = !{!"llvm.loop.mustprogress"}
!218 = !{!219, !138, i64 56}
!219 = !{!"cop", !132, i64 0, !132, i64 8, !132, i64 16, !145, i64 24, !138, i64 32, !138, i64 33, !138, i64 33, !138, i64 33, !138, i64 33, !138, i64 33, !138, i64 33, !138, i64 33, !133, i64 34, !133, i64 35, !138, i64 36, !132, i64 40, !132, i64 48, !138, i64 56, !138, i64 60, !132, i64 64, !132, i64 72}
!220 = !{!"branch_weights", i32 7116, i32 27}
!221 = !{!"branch_weights", i32 1, i32 215}
!222 = !{!"branch_weights", i32 215, i32 1}
!223 = distinct !{!223, !217}
!224 = !{!219, !132, i64 72}
!225 = !{!"branch_weights", i32 7120, i32 23}
!226 = !{!"branch_weights", i32 5, i32 7138}
!227 = !{!"branch_weights", i32 3064802, i32 1}
!228 = !{!144, !145, i64 24}
!229 = !{!230, !230, i64 0}
!230 = !{!"short", !133, i64 0}
!231 = !{!219, !132, i64 64}
!232 = !{!"branch_weights", i32 1, i32 20976}
!233 = !{!177, !138, i64 12}
!234 = !{!"branch_weights", i32 20976, i32 1}
!235 = !{!"branch_weights", i32 41757761, i32 953902892}
!236 = distinct !{!236, !217}
!237 = !{!"function_entry_count", i64 5}
!238 = !{!"function_entry_count", i64 27}
!239 = !{!"branch_weights", i32 28, i32 1}
!240 = !{!"function_entry_count", i64 7326160}
!241 = !{!"branch_weights", i32 7326160, i32 1}
!242 = !{!"branch_weights", i32 67, i32 -1896600970}
!243 = !{!"branch_weights", i32 28134165, i32 7326160}
!244 = distinct !{!244, !217}
!245 = !{!"function_entry_count", i64 35818018}
!246 = !{!"scope.c:S_SvREFCNT_dec_NN"}
!247 = !{!"branch_weights", i32 1, i32 35818019}
!248 = !{!"function_entry_count", i64 21599391}
!249 = !{!"branch_weights", i32 1, i32 21599392}
!250 = !{!"function_entry_count", i64 139606}
!251 = !{!"branch_weights", i32 1, i32 139607}
!252 = !{!"function_entry_count", i64 698107}
!253 = !{!"scope.c:S_SvREFCNT_inc"}
!254 = !{!"branch_weights", i32 698108, i32 1}
!255 = !{!"scope.c:S_save_scalar_at"}
!256 = !{!"branch_weights", i32 6405, i32 133203}
!257 = !{!"branch_weights", i32 1, i32 6405}
!258 = !{!"branch_weights", i32 6405, i32 1}
!259 = !{!"function_entry_count", i64 212071}
!260 = !{!"function_entry_count", i64 7014}
!261 = !{!"function_entry_count", i64 6494}
!262 = !{!"branch_weights", i32 1, i32 6495}
!263 = !{!"function_entry_count", i64 206703}
!264 = !{!"branch_weights", i32 206672, i32 33}
!265 = !{!"branch_weights", i32 1, i32 33}
!266 = !{!"branch_weights", i32 33, i32 1}
!267 = !{!186, !132, i64 8}
!268 = !{!269, !132, i64 0}
!269 = !{!"io", !132, i64 0, !138, i64 8, !138, i64 12, !133, i64 16}
!270 = !{!271, !133, i64 129}
!271 = !{!"xpvio", !132, i64 0, !133, i64 8, !145, i64 16, !133, i64 24, !133, i64 32, !132, i64 40, !133, i64 48, !145, i64 56, !145, i64 64, !145, i64 72, !132, i64 80, !132, i64 88, !132, i64 96, !132, i64 104, !132, i64 112, !132, i64 120, !133, i64 128, !133, i64 129}
!272 = !{!273, !145, i64 16}
!273 = !{!"xpvgv", !132, i64 0, !133, i64 8, !145, i64 16, !133, i64 24, !133, i64 32, !133, i64 40}
!274 = !{!"function_entry_count", i64 11156}
!275 = !{!"branch_weights", i32 1, i32 11157}
!276 = !{!177, !138, i64 8}
!277 = !{!"function_entry_count", i64 64}
!278 = !{!"branch_weights", i32 1, i32 65}
!279 = !{!"function_entry_count", i64 1238}
!280 = !{!"function_entry_count", i64 4758}
!281 = !{!"function_entry_count", i64 7119}
!282 = !{!"branch_weights", i32 1, i32 7120}
!283 = !{!"function_entry_count", i64 740}
!284 = !{!"branch_weights", i32 1, i32 741}
!285 = !{!"function_entry_count", i64 11690}
!286 = !{!"branch_weights", i32 1, i32 11691}
!287 = !{!"function_entry_count", i64 2338}
!288 = !{!"branch_weights", i32 1, i32 2339}
!289 = !{!"function_entry_count", i64 63619}
!290 = !{!"branch_weights", i32 63620, i32 1}
!291 = !{!"branch_weights", i32 1, i32 63620}
!292 = !{!"function_entry_count", i64 51213261}
!293 = !{!"branch_weights", i32 1, i32 51213262}
!294 = !{!"function_entry_count", i64 16556}
!295 = !{!"function_entry_count", i64 20957328}
!296 = !{!"function_entry_count", i64 8135}
!297 = !{!"function_entry_count", i64 123744}
!298 = !{!"branch_weights", i32 1, i32 123745}
!299 = !{!"function_entry_count", i64 465576726}
!300 = !{!"branch_weights", i32 1, i32 465576727}
!301 = !{!"function_entry_count", i64 27634560}
!302 = !{!"branch_weights", i32 27634561, i32 1}
!303 = !{!"branch_weights", i32 1, i32 27634561}
!304 = !{!"scope.c:S_SvPADSTALE_off"}
!305 = !{!"function_entry_count", i64 121}
!306 = !{!"function_entry_count", i64 14250}
!307 = !{!"scope.c:S_save_pushptri32ptr"}
!308 = !{!"branch_weights", i32 1, i32 14251}
!309 = !{!"function_entry_count", i64 14107}
!310 = !{!"branch_weights", i32 14108, i32 1}
!311 = !{!312, !145, i64 16}
!312 = !{!"xpv", !132, i64 0, !133, i64 8, !145, i64 16, !133, i64 24}
!313 = !{!"scope.c:S_SvREFCNT_inc_void"}
!314 = !{!"function_entry_count", i64 429579221}
!315 = !{!"branch_weights", i32 1, i32 429579222}
!316 = !{!"function_entry_count", i64 7141}
!317 = !{!"function_entry_count", i64 3312007}
!318 = !{!"branch_weights", i32 3312008, i32 1}
!319 = !{!"branch_weights", i32 1, i32 3312008}
!320 = !{!"function_entry_count", i64 20975}
!321 = !{!"function_entry_count", i64 462649497}
!322 = !{!"scope.c:S_SvREFCNT_dec"}
!323 = !{!"branch_weights", i32 462649498, i32 1}
!324 = !{!"branch_weights", i32 1, i32 462639868}
!325 = !{!"scope.c:CvNAME_HEK"}
!326 = !{!"scope.c:S_CvGV"}
!327 = !{!"function_entry_count", i64 36138520}
!328 = !{!"scope.c:S_SvPADSTALE_on"}
