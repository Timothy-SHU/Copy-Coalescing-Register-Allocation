; ModuleID = 'src/z29.c'
source_filename = "src/z29.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.13 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.13 = type { ptr }

@scope_top = internal unnamed_addr global i32 0, align 4
@suppress_scope = internal unnamed_addr global i1 false, align 4
@suppress_visible = internal unnamed_addr global i32 0, align 4
@symtab = internal global [1783 x %struct.anon] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"PushScope: suppress_scope!\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"scope depth limit exceeded\00", align 1
@scope = internal unnamed_addr global [300 x ptr] zeroinitializer, align 16
@npars_only = internal unnamed_addr global [300 x i32] zeroinitializer, align 16
@vis_only = internal unnamed_addr global [300 x i32] zeroinitializer, align 16
@body_ok = internal unnamed_addr global [300 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [41 x i8] c"PopScope: tried to pop empty scope stack\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"PopScope: suppress_scope!\00", align 1
@StartSym = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"LoadScopeSnapshot: type(ss)!\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"LoadScopeSnapshot: type(x)!\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"invalid symbol name %s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"@Target\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"@Optimize\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"@Key\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"@Merge\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"@Enclose\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"@Filter\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"%s must be a local definition\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"%s must lie within a symbol with a right parameter\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"a body parameter may not be named %s\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"the right parameter of a galley may not be called %s\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"symbol %s previously defined at%s\00", align 1
@AltErrorFormat = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"symbol %s previously defined here\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"symbol name %s previously defined at%s\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"@Include\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"@SysInclude\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"<nilobj>\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"SymName: !is_word(type(p))!\00", align 1
@FullSymName.buff = internal global [512 x i8] zeroinitializer, align 16
@FullSymName.sname = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [37 x i8] c"FullSymName: enclosing(x) == nilobj!\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"full name of symbol is too long\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"symbol %s has missing %s\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"symbol %s has erroneous code %c (database out of date?)\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @InitSym() local_unnamed_addr #0 {
  store i32 0, ptr @scope_top, align 4, !tbaa !5
  store i1 false, ptr @suppress_scope, align 4
  store i32 0, ptr @suppress_visible, align 4, !tbaa !5
  br label %1

1:                                                ; preds = %7, %0
  %2 = phi i64 [ 0, %0 ], [ %10, %7 ]
  %3 = getelementptr inbounds [1783 x %struct.anon], ptr @symtab, i64 0, i64 %2
  %4 = getelementptr inbounds [1783 x %struct.anon], ptr @symtab, i64 0, i64 %2, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !9
  store ptr %3, ptr %3, align 16, !tbaa !12
  %5 = or disjoint i64 %2, 1
  %6 = icmp eq i64 %5, 1783
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1783 x %struct.anon], ptr @symtab, i64 0, i64 %5
  %9 = getelementptr inbounds [1783 x %struct.anon], ptr @symtab, i64 0, i64 %5, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !9
  store ptr %8, ptr %8, align 16, !tbaa !12
  %10 = add nuw nsw i64 %2, 2
  br label %1

11:                                               ; preds = %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @PushScope(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load i1, ptr @suppress_scope, align 4
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.1) #13
  br label %8

8:                                                ; preds = %5, %3
  %9 = load i32, ptr @scope_top, align 4, !tbaa !5
  %10 = icmp sgt i32 %9, 299
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %12) #13
  %14 = load i32, ptr @scope_top, align 4, !tbaa !5
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %14, %11 ], [ %9, %8 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %17
  store ptr %0, ptr %18, align 8, !tbaa !13
  %19 = getelementptr inbounds [300 x i32], ptr @npars_only, i64 0, i64 %17
  store i32 %1, ptr %19, align 4, !tbaa !5
  %20 = getelementptr inbounds [300 x i32], ptr @vis_only, i64 0, i64 %17
  store i32 %2, ptr %20, align 4, !tbaa !5
  %21 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %17
  store i32 0, ptr %21, align 4, !tbaa !5
  %22 = add nsw i32 %16, 1
  store i32 %22, ptr @scope_top, align 4, !tbaa !5
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @PopScope() local_unnamed_addr #2 {
  %1 = load i32, ptr @scope_top, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %5 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %4, ptr noundef nonnull @.str.3) #13
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i1, ptr @suppress_scope, align 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %10 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %9, ptr noundef nonnull @.str.4) #13
  br label %11

11:                                               ; preds = %8, %6
  %12 = load i32, ptr @scope_top, align 4, !tbaa !5
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr @scope_top, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SuppressVisible() local_unnamed_addr #4 {
  store i32 1, ptr @suppress_visible, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @UnSuppressVisible() local_unnamed_addr #4 {
  store i32 0, ptr @suppress_visible, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @SuppressScope() local_unnamed_addr #4 {
  store i1 true, ptr @suppress_scope, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @UnSuppressScope() local_unnamed_addr #4 {
  store i1 false, ptr @suppress_scope, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SwitchScope(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca [300 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 2400, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @StartSym, align 8, !tbaa !13
  br i1 %3, label %7, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %4, %0
  br i1 %6, label %65, label %32

7:                                                ; preds = %1
  %8 = load i1, ptr @suppress_scope, align 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.1) #13
  br label %12

12:                                               ; preds = %9, %7
  %13 = load i32, ptr @scope_top, align 4, !tbaa !5
  %14 = icmp sgt i32 %13, 299
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.word_type, ptr %4, i64 0, i32 1
  %17 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %16) #13
  %18 = load i32, ptr @scope_top, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %12, %15
  %20 = phi i32 [ %18, %15 ], [ %13, %12 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %21
  store ptr %4, ptr %22, align 8, !tbaa !13
  %23 = getelementptr inbounds [300 x i32], ptr @npars_only, i64 0, i64 %21
  store i32 0, ptr %23, align 4, !tbaa !5
  %24 = getelementptr inbounds [300 x i32], ptr @vis_only, i64 0, i64 %21
  store i32 0, ptr %24, align 4, !tbaa !5
  %25 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %21
  store i32 0, ptr %25, align 4, !tbaa !5
  %26 = add nsw i32 %20, 1
  store i32 %26, ptr @scope_top, align 4, !tbaa !5
  br label %65

27:                                               ; preds = %32
  %28 = trunc i64 %37 to i32
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = and i64 %37, 4294967295
  br label %40

32:                                               ; preds = %5, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %5 ]
  %34 = phi ptr [ %36, %32 ], [ %0, %5 ]
  %35 = getelementptr inbounds %struct.symbol_type, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  %37 = add nuw i64 %33, 1
  %38 = getelementptr inbounds [300 x ptr], ptr %2, i64 0, i64 %33
  store ptr %36, ptr %38, align 8, !tbaa !13
  %39 = icmp eq ptr %36, %4
  br i1 %39, label %27, label %32

40:                                               ; preds = %30, %56
  %41 = phi i64 [ %31, %30 ], [ %42, %56 ]
  %42 = add nsw i64 %41, -1
  %43 = getelementptr inbounds [300 x ptr], ptr %2, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = load i1, ptr @suppress_scope, align 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %48 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %47, ptr noundef nonnull @.str.1) #13
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, ptr @scope_top, align 4, !tbaa !5
  %51 = icmp sgt i32 %50, 299
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.word_type, ptr %44, i64 0, i32 1
  %54 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %53) #13
  %55 = load i32, ptr @scope_top, align 4, !tbaa !5
  br label %56

56:                                               ; preds = %49, %52
  %57 = phi i32 [ %55, %52 ], [ %50, %49 ]
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %58
  store ptr %44, ptr %59, align 8, !tbaa !13
  %60 = getelementptr inbounds [300 x i32], ptr @npars_only, i64 0, i64 %58
  store i32 0, ptr %60, align 4, !tbaa !5
  %61 = getelementptr inbounds [300 x i32], ptr @vis_only, i64 0, i64 %58
  store i32 0, ptr %61, align 4, !tbaa !5
  %62 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %58
  store i32 0, ptr %62, align 4, !tbaa !5
  %63 = add nsw i32 %57, 1
  store i32 %63, ptr @scope_top, align 4, !tbaa !5
  %64 = icmp ugt i64 %41, 1
  br i1 %64, label %40, label %65

65:                                               ; preds = %56, %5, %27, %19
  call void @llvm.lifetime.end.p0(i64 2400, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UnSwitchScope(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @StartSym, align 8, !tbaa !13
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @scope_top, align 4, !tbaa !5
  br label %22

8:                                                ; preds = %1
  %9 = load i32, ptr @scope_top, align 4, !tbaa !5
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.3) #13
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i1, ptr @suppress_scope, align 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %18 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %17, ptr noundef nonnull @.str.4) #13
  br label %19

19:                                               ; preds = %14, %16
  %20 = load i32, ptr @scope_top, align 4, !tbaa !5
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr @scope_top, align 4, !tbaa !5
  br label %41

22:                                               ; preds = %6, %34
  %23 = phi i32 [ %36, %34 ], [ %7, %6 ]
  %24 = phi ptr [ %38, %34 ], [ %0, %6 ]
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %28 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %27, ptr noundef nonnull @.str.3) #13
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i1, ptr @suppress_scope, align 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %33 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %32, ptr noundef nonnull @.str.4) #13
  br label %34

34:                                               ; preds = %29, %31
  %35 = load i32, ptr @scope_top, align 4, !tbaa !5
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr @scope_top, align 4, !tbaa !5
  %37 = getelementptr inbounds %struct.symbol_type, ptr %24, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = load ptr, ptr @StartSym, align 8, !tbaa !13
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %22

41:                                               ; preds = %34, %3, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BodyParAllowed() local_unnamed_addr #5 {
  %1 = load i32, ptr @scope_top, align 4, !tbaa !5
  %2 = add nsw i32 %1, -1
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %3
  store i32 1, ptr %4, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @BodyParNotAllowed() local_unnamed_addr #5 {
  %1 = load i32, ptr @scope_top, align 4, !tbaa !5
  %2 = add nsw i32 %1, -1
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %3
  store i32 0, ptr %4, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @DebugScope() local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @GetScopeSnapshot() local_unnamed_addr #2 {
  %1 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !14
  %2 = zext i8 %1 to i32
  store i32 %2, ptr @zz_size, align 4, !tbaa !5
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %9 = tail call ptr @GetMemory(i32 noundef %2, ptr noundef %8) #13
  store ptr %9, ptr @zz_hold, align 8, !tbaa !13
  br label %12

10:                                               ; preds = %0
  store ptr %5, ptr @zz_hold, align 8, !tbaa !13
  %11 = load ptr, ptr %5, align 8, !tbaa !14
  store ptr %11, ptr %4, align 8, !tbaa !13
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi ptr [ %9, %7 ], [ %5, %10 ]
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  store i8 17, ptr %14, align 8, !tbaa !14
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  store ptr %13, ptr %16, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.LIST, ptr %13, i64 0, i32 1
  store ptr %13, ptr %17, align 8, !tbaa !14
  store ptr %13, ptr %13, align 8, !tbaa !14
  %18 = load i32, ptr @scope_top, align 4, !tbaa !5
  %19 = add nsw i32 %18, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = load ptr, ptr @StartSym, align 8, !tbaa !13
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %141, label %25

25:                                               ; preds = %12, %118
  %26 = phi i64 [ %136, %118 ], [ %20, %12 ]
  %27 = phi ptr [ %137, %118 ], [ %21, %12 ]
  %28 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 149), align 1, !tbaa !14
  %29 = zext i8 %28 to i32
  store i32 %29, ptr @zz_size, align 4, !tbaa !5
  %30 = zext i8 %28 to i64
  %31 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %36 = tail call ptr @GetMemory(i32 noundef %29, ptr noundef %35) #13
  store ptr %36, ptr @zz_hold, align 8, !tbaa !13
  br label %39

37:                                               ; preds = %25
  store ptr %32, ptr @zz_hold, align 8, !tbaa !13
  %38 = load ptr, ptr %32, align 8, !tbaa !14
  store ptr %38, ptr %31, align 8, !tbaa !13
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %36, %34 ], [ %32, %37 ]
  %41 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 1
  store i8 -107, ptr %41, align 8, !tbaa !14
  %42 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1
  %43 = getelementptr inbounds [2 x %struct.LIST], ptr %40, i64 0, i64 1, i32 1
  store ptr %40, ptr %43, align 8, !tbaa !14
  store ptr %40, ptr %42, align 8, !tbaa !14
  %44 = getelementptr inbounds %struct.LIST, ptr %40, i64 0, i32 1
  store ptr %40, ptr %44, align 8, !tbaa !14
  store ptr %40, ptr %40, align 8, !tbaa !14
  %45 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %46 = zext i8 %45 to i32
  store i32 %46, ptr @zz_size, align 4, !tbaa !5
  %47 = zext i8 %45 to i64
  %48 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %53 = tail call ptr @GetMemory(i32 noundef %46, ptr noundef %52) #13
  br label %56

54:                                               ; preds = %39
  store ptr %49, ptr @zz_hold, align 8, !tbaa !13
  %55 = load ptr, ptr %49, align 8, !tbaa !14
  store ptr %55, ptr %48, align 8, !tbaa !13
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi ptr [ %53, %51 ], [ %49, %54 ]
  %58 = getelementptr inbounds %struct.word_type, ptr %57, i64 0, i32 1
  store i8 0, ptr %58, align 8, !tbaa !14
  %59 = getelementptr inbounds [2 x %struct.LIST], ptr %57, i64 0, i64 1, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !14
  %60 = getelementptr inbounds [2 x %struct.LIST], ptr %57, i64 0, i64 1
  store ptr %57, ptr %60, align 8, !tbaa !14
  %61 = getelementptr inbounds %struct.LIST, ptr %57, i64 0, i32 1
  store ptr %57, ptr %61, align 8, !tbaa !14
  store ptr %57, ptr %57, align 8, !tbaa !14
  store ptr %57, ptr @xx_link, align 8, !tbaa !13
  store ptr %57, ptr @zz_res, align 8, !tbaa !13
  store ptr %13, ptr @zz_hold, align 8, !tbaa !13
  %62 = load ptr, ptr %13, align 8, !tbaa !14
  store ptr %62, ptr @zz_tmp, align 8, !tbaa !13
  %63 = load ptr, ptr %57, align 8, !tbaa !14
  store ptr %63, ptr %13, align 8, !tbaa !14
  %64 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %65 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.LIST, ptr %66, i64 0, i32 1
  store ptr %64, ptr %67, align 8, !tbaa !14
  %68 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  store ptr %68, ptr %65, align 8, !tbaa !14
  %69 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %70 = getelementptr inbounds %struct.LIST, ptr %68, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !14
  %71 = load ptr, ptr @xx_link, align 8, !tbaa !13
  store ptr %71, ptr @zz_res, align 8, !tbaa !13
  store ptr %40, ptr @zz_hold, align 8, !tbaa !13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %56
  %74 = load ptr, ptr %42, align 8, !tbaa !14
  store ptr %74, ptr @zz_tmp, align 8, !tbaa !13
  %75 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !14
  store ptr %76, ptr %42, align 8, !tbaa !14
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %76, i64 0, i64 1, i32 1
  store ptr %40, ptr %77, align 8, !tbaa !14
  store ptr %74, ptr %75, align 8, !tbaa !14
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %74, i64 0, i64 1, i32 1
  store ptr %71, ptr %78, align 8, !tbaa !14
  br label %79

79:                                               ; preds = %56, %73
  %80 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %81 = zext i8 %80 to i32
  store i32 %81, ptr @zz_size, align 4, !tbaa !5
  %82 = zext i8 %80 to i64
  %83 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %88 = tail call ptr @GetMemory(i32 noundef %81, ptr noundef %87) #13
  br label %91

89:                                               ; preds = %79
  store ptr %84, ptr @zz_hold, align 8, !tbaa !13
  %90 = load ptr, ptr %84, align 8, !tbaa !14
  store ptr %90, ptr %83, align 8, !tbaa !13
  br label %91

91:                                               ; preds = %86, %89
  %92 = phi ptr [ %88, %86 ], [ %84, %89 ]
  %93 = getelementptr inbounds %struct.word_type, ptr %92, i64 0, i32 1
  store i8 0, ptr %93, align 8, !tbaa !14
  %94 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1, i32 1
  store ptr %92, ptr %94, align 8, !tbaa !14
  %95 = getelementptr inbounds [2 x %struct.LIST], ptr %92, i64 0, i64 1
  store ptr %92, ptr %95, align 8, !tbaa !14
  %96 = getelementptr inbounds %struct.LIST, ptr %92, i64 0, i32 1
  store ptr %92, ptr %96, align 8, !tbaa !14
  store ptr %92, ptr %92, align 8, !tbaa !14
  store ptr %92, ptr @xx_link, align 8, !tbaa !13
  store ptr %92, ptr @zz_res, align 8, !tbaa !13
  store ptr %40, ptr @zz_hold, align 8, !tbaa !13
  %97 = load ptr, ptr %40, align 8, !tbaa !14
  store ptr %97, ptr @zz_tmp, align 8, !tbaa !13
  %98 = load ptr, ptr %92, align 8, !tbaa !14
  store ptr %98, ptr %40, align 8, !tbaa !14
  %99 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %100 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %101 = load ptr, ptr %100, align 8, !tbaa !14
  %102 = getelementptr inbounds %struct.LIST, ptr %101, i64 0, i32 1
  store ptr %99, ptr %102, align 8, !tbaa !14
  %103 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  store ptr %103, ptr %100, align 8, !tbaa !14
  %104 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %105 = getelementptr inbounds %struct.LIST, ptr %103, i64 0, i32 1
  store ptr %104, ptr %105, align 8, !tbaa !14
  %106 = load ptr, ptr @xx_link, align 8, !tbaa !13
  store ptr %106, ptr @zz_res, align 8, !tbaa !13
  %107 = load ptr, ptr %27, align 8, !tbaa !13
  store ptr %107, ptr @zz_hold, align 8, !tbaa !13
  %108 = icmp eq ptr %107, null
  %109 = icmp eq ptr %106, null
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %118, label %111

111:                                              ; preds = %91
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %107, i64 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !14
  store ptr %113, ptr @zz_tmp, align 8, !tbaa !13
  %114 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !14
  store ptr %115, ptr %112, align 8, !tbaa !14
  %116 = getelementptr inbounds [2 x %struct.LIST], ptr %115, i64 0, i64 1, i32 1
  store ptr %107, ptr %116, align 8, !tbaa !14
  store ptr %113, ptr %114, align 8, !tbaa !14
  %117 = getelementptr inbounds [2 x %struct.LIST], ptr %113, i64 0, i64 1, i32 1
  store ptr %106, ptr %117, align 8, !tbaa !14
  br label %118

118:                                              ; preds = %91, %111
  %119 = getelementptr inbounds [300 x i32], ptr @npars_only, i64 0, i64 %26
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = getelementptr inbounds %struct.word_type, ptr %40, i64 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %120, 4095
  %124 = and i32 %122, -8388608
  %125 = or disjoint i32 %124, %123
  %126 = getelementptr inbounds [300 x i32], ptr @vis_only, i64 0, i64 %26
  %127 = load i32, ptr %126, align 4, !tbaa !5
  %128 = shl i32 %127, 12
  %129 = and i32 %128, 4190208
  %130 = or disjoint i32 %129, %125
  %131 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %26
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = shl i32 %132, 22
  %134 = and i32 %133, 4194304
  %135 = or disjoint i32 %130, %134
  store i32 %135, ptr %121, align 8
  %136 = add i64 %26, -1
  %137 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !13
  %139 = load ptr, ptr @StartSym, align 8, !tbaa !13
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %25

141:                                              ; preds = %118, %12
  %142 = load i32, ptr @suppress_visible, align 4, !tbaa !5
  %143 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 2
  %144 = load i32, ptr %143, align 8
  %145 = shl i32 %142, 23
  %146 = and i32 %145, 528482304
  %147 = and i32 %144, -528482305
  %148 = or disjoint i32 %147, %146
  store i32 %148, ptr %143, align 8
  ret ptr %13
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @LoadScopeSnapshot(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !14
  %4 = icmp eq i8 %3, 17
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.6) #13
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @StartSym, align 8, !tbaa !13
  %10 = load i1, ptr @suppress_scope, align 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.1) #13
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, ptr @scope_top, align 4, !tbaa !5
  %16 = icmp sgt i32 %15, 299
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.word_type, ptr %9, i64 0, i32 1
  %19 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %18) #13
  %20 = load i32, ptr @scope_top, align 4, !tbaa !5
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi i32 [ %20, %17 ], [ %15, %14 ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %23
  store ptr %9, ptr %24, align 8, !tbaa !13
  %25 = getelementptr inbounds [300 x i32], ptr @npars_only, i64 0, i64 %23
  store i32 0, ptr %25, align 4, !tbaa !5
  %26 = getelementptr inbounds [300 x i32], ptr @vis_only, i64 0, i64 %23
  store i32 0, ptr %26, align 4, !tbaa !5
  %27 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %23
  store i32 0, ptr %27, align 4, !tbaa !5
  %28 = add nsw i32 %22, 1
  store i32 %28, ptr @scope_top, align 4, !tbaa !5
  %29 = load ptr, ptr %0, align 8, !tbaa !14
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %82, label %31

31:                                               ; preds = %21, %69
  %32 = phi ptr [ %80, %69 ], [ %29, %21 ]
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %36, %33 ], [ %32, %31 ]
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %34, i64 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  %37 = getelementptr inbounds %struct.word_type, ptr %36, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !14
  switch i8 %38, label %39 [
    i8 0, label %33
    i8 -107, label %42
  ]

39:                                               ; preds = %33
  %40 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %41 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %40, ptr noundef nonnull @.str.7) #13
  br label %42

42:                                               ; preds = %33, %39
  %43 = getelementptr inbounds %struct.LIST, ptr %36, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi ptr [ %44, %42 ], [ %48, %45 ]
  %47 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !tbaa !14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %45, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.word_type, ptr %48, i64 0, i32 1
  %54 = getelementptr inbounds %struct.word_type, ptr %36, i64 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 4095
  %57 = lshr i32 %55, 12
  %58 = and i32 %57, 1023
  %59 = load i1, ptr @suppress_scope, align 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %62 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %61, ptr noundef nonnull @.str.1) #13
  br label %63

63:                                               ; preds = %60, %52
  %64 = load i32, ptr @scope_top, align 4, !tbaa !5
  %65 = icmp sgt i32 %64, 299
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %53) #13
  %68 = load i32, ptr @scope_top, align 4, !tbaa !5
  br label %69

69:                                               ; preds = %63, %66
  %70 = phi i32 [ %68, %66 ], [ %64, %63 ]
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %71
  store ptr %48, ptr %72, align 8, !tbaa !13
  %73 = getelementptr inbounds [300 x i32], ptr @npars_only, i64 0, i64 %71
  store i32 %56, ptr %73, align 4, !tbaa !5
  %74 = getelementptr inbounds [300 x i32], ptr @vis_only, i64 0, i64 %71
  store i32 %58, ptr %74, align 4, !tbaa !5
  %75 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %71
  store i32 0, ptr %75, align 4, !tbaa !5
  %76 = add nsw i32 %70, 1
  store i32 %76, ptr @scope_top, align 4, !tbaa !5
  %77 = load i32, ptr %54, align 8
  %78 = lshr i32 %77, 22
  %79 = and i32 %78, 1
  store i32 %79, ptr %75, align 4, !tbaa !5
  %80 = load ptr, ptr %32, align 8, !tbaa !14
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %31

82:                                               ; preds = %69, %21
  %83 = load i32, ptr @suppress_visible, align 4, !tbaa !5
  %84 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 23
  %87 = and i32 %86, 63
  store i32 %87, ptr @suppress_visible, align 4, !tbaa !5
  %88 = shl i32 %83, 23
  %89 = and i32 %88, 528482304
  %90 = and i32 %85, -528482305
  %91 = or disjoint i32 %90, %89
  store i32 %91, ptr %84, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @ClearScopeSnapshot(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr @StartSym, align 8, !tbaa !13
  %3 = load i32, ptr @scope_top, align 4, !tbaa !5
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = sext i32 %3 to i64
  %11 = add nsw i64 %10, -1
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %14, %12 ]
  %14 = add i64 %13, -1
  %15 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %18, label %12

18:                                               ; preds = %12
  %19 = trunc i64 %14 to i32
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %19, %18 ], [ %4, %1 ]
  store i32 %21, ptr @scope_top, align 4, !tbaa !5
  %22 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 23
  %25 = and i32 %24, 63
  store i32 %25, ptr @suppress_visible, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @InsertSym(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #2 {
  %10 = tail call i32 @LexLegalName(ptr noundef %0) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef 2, ptr noundef %2, ptr noundef %0) #13
  br label %14

14:                                               ; preds = %12, %9
  %15 = zext i8 %1 to i64
  %16 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %18 = zext i8 %17 to i32
  store i32 %18, ptr @zz_size, align 4, !tbaa !5
  %19 = zext i8 %17 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %25 = tail call ptr @GetMemory(i32 noundef %18, ptr noundef %24) #13
  store ptr %25, ptr @zz_hold, align 8, !tbaa !13
  br label %28

26:                                               ; preds = %14
  store ptr %21, ptr @zz_hold, align 8, !tbaa !13
  %27 = load ptr, ptr %21, align 8, !tbaa !14
  store ptr %27, ptr %20, align 8, !tbaa !13
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi ptr [ %25, %23 ], [ %21, %26 ]
  %30 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 1
  store i8 %1, ptr %30, align 8, !tbaa !14
  %31 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %29, i64 0, i64 1, i32 1
  store ptr %29, ptr %32, align 8, !tbaa !14
  store ptr %29, ptr %31, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  store ptr %29, ptr %33, align 8, !tbaa !14
  store ptr %29, ptr %29, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.FILE_POS, ptr %2, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !15
  %36 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 1, i32 0, i32 2
  store i16 %35, ptr %36, align 2, !tbaa !14
  %37 = getelementptr inbounds %struct.FILE_POS, ptr %2, i64 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1048575
  %40 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 1, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -1048576
  %43 = or disjoint i32 %42, %39
  store i32 %43, ptr %40, align 4
  %44 = load i32, ptr %37, align 4
  %45 = and i32 %44, -1048576
  %46 = or disjoint i32 %45, %39
  store i32 %46, ptr %40, align 4
  %47 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 2
  %48 = getelementptr inbounds i8, ptr %29, i64 41
  %49 = load i24, ptr %48, align 1
  %50 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  store i8 %3, ptr %47, align 8, !tbaa !14
  %51 = trunc i32 %4 to i24
  %52 = shl i24 %51, 9
  %53 = and i24 %52, 512
  %54 = and i24 %49, -7446289
  %55 = trunc i32 %5 to i24
  %56 = shl i24 %55, 10
  %57 = and i24 %56, 1024
  %58 = trunc i32 %6 to i16
  %59 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 12
  store i16 %58, ptr %59, align 8, !tbaa !14
  %60 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 3
  store ptr %7, ptr %60, align 8, !tbaa !14
  %61 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 4
  store ptr %8, ptr %61, align 8, !tbaa !14
  %62 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 5
  %63 = or disjoint i24 %53, %57
  %64 = or disjoint i24 %54, %63
  %65 = or disjoint i24 %64, 2097168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %62, i8 0, i64 32, i1 false)
  %66 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 13
  store i16 0, ptr %66, align 2, !tbaa !14
  %67 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 16
  %68 = load i8, ptr %67, align 2
  %69 = and i8 %68, -65
  store i8 %69, ptr %67, align 2
  %70 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 14
  store i8 0, ptr %70, align 4, !tbaa !14
  store i24 %65, ptr %48, align 1
  %71 = icmp eq ptr %7, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %28
  %73 = getelementptr inbounds %struct.word_type, ptr %7, i64 0, i32 1
  %74 = load i8, ptr %73, align 8, !tbaa !14
  %75 = icmp eq i8 %74, -111
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %7, i64 41
  %78 = load i24, ptr %77, align 1
  %79 = or i24 %78, 32768
  store i24 %79, ptr %77, align 1
  %80 = load i24, ptr %48, align 1
  %81 = or i24 %80, 32768
  %82 = load i8, ptr %30, align 8, !tbaa !14
  br label %83

83:                                               ; preds = %76, %72, %28
  %84 = phi i8 [ %82, %76 ], [ %1, %72 ], [ %1, %28 ]
  %85 = phi i24 [ %81, %76 ], [ %65, %72 ], [ %65, %28 ]
  %86 = and i24 %85, -524301
  store i24 %86, ptr %48, align 1
  %87 = add i8 %84, 112
  %88 = icmp ult i8 %87, 3
  br i1 %88, label %89, label %132

89:                                               ; preds = %83
  %90 = load ptr, ptr %60, align 8, !tbaa !14
  %91 = getelementptr inbounds i8, ptr %90, i64 41
  %92 = load i24, ptr %91, align 1
  %93 = or i24 %92, 524288
  store i24 %93, ptr %91, align 1
  %94 = load i8, ptr %30, align 8, !tbaa !14
  %95 = icmp eq i8 %94, -112
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load ptr, ptr %60, align 8, !tbaa !14
  %98 = getelementptr inbounds i8, ptr %97, i64 41
  %99 = load i24, ptr %98, align 1
  %100 = or i24 %99, 4
  store i24 %100, ptr %98, align 1
  %101 = load i8, ptr %30, align 8, !tbaa !14
  br label %102

102:                                              ; preds = %96, %89
  %103 = phi i8 [ %101, %96 ], [ %94, %89 ]
  %104 = icmp eq i8 %103, -110
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load ptr, ptr %60, align 8, !tbaa !14
  %107 = getelementptr inbounds i8, ptr %106, i64 41
  %108 = load i24, ptr %107, align 1
  %109 = or i24 %108, 8
  store i24 %109, ptr %107, align 1
  %110 = load i8, ptr %30, align 8, !tbaa !14
  br label %111

111:                                              ; preds = %105, %102
  %112 = phi i8 [ %110, %105 ], [ %103, %102 ]
  %113 = icmp eq i8 %112, -111
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load ptr, ptr %60, align 8, !tbaa !14
  %116 = load ptr, ptr %115, align 8, !tbaa !14
  %117 = icmp eq ptr %116, %115
  br i1 %117, label %129, label %118

118:                                              ; preds = %114, %118
  %119 = phi ptr [ %121, %118 ], [ %116, %114 ]
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %119, i64 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !14
  %122 = getelementptr inbounds %struct.word_type, ptr %121, i64 0, i32 1
  %123 = load i8, ptr %122, align 8, !tbaa !14
  switch i8 %123, label %129 [
    i8 0, label %118
    i8 -111, label %124
  ]

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.symbol_type, ptr %121, i64 0, i32 15
  %126 = load i8, ptr %125, align 1, !tbaa !14
  switch i8 %126, label %127 [
    i8 122, label %129
    i8 32, label %129
  ]

127:                                              ; preds = %124
  %128 = add i8 %126, 1
  br label %129

129:                                              ; preds = %118, %114, %124, %124, %127
  %130 = phi i8 [ %128, %127 ], [ 32, %124 ], [ 32, %124 ], [ 97, %114 ], [ 97, %118 ]
  %131 = getelementptr inbounds %struct.symbol_type, ptr %29, i64 0, i32 15
  store i8 %130, ptr %131, align 1, !tbaa !14
  br label %132

132:                                              ; preds = %129, %83, %111
  %133 = load i24, ptr %48, align 1
  %134 = and i24 %133, -193
  store i24 %134, ptr %48, align 1
  %135 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.9) #14
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %132
  %138 = and i24 %133, -225
  br label %180

139:                                              ; preds = %132
  %140 = load ptr, ptr %60, align 8, !tbaa !14
  %141 = getelementptr inbounds i8, ptr %140, i64 41
  %142 = load i24, ptr %141, align 1
  %143 = or i24 %142, 64
  store i24 %143, ptr %141, align 1
  %144 = load i24, ptr %48, align 1
  %145 = or i24 %144, 32
  store i24 %145, ptr %48, align 1
  %146 = load ptr, ptr %60, align 8, !tbaa !14
  %147 = getelementptr inbounds i8, ptr %146, i64 41
  %148 = load i24, ptr %147, align 1
  %149 = and i24 %148, 16384
  %150 = icmp ne i24 %149, 0
  %151 = icmp ne ptr %8, null
  %152 = and i1 %151, %150
  br i1 %152, label %153, label %180

153:                                              ; preds = %139
  %154 = getelementptr inbounds %struct.word_type, ptr %8, i64 0, i32 1
  %155 = load i8, ptr %154, align 8, !tbaa !14
  %156 = and i8 %155, -2
  %157 = icmp eq i8 %156, 6
  br i1 %157, label %158, label %180

158:                                              ; preds = %153
  %159 = load ptr, ptr %8, align 8, !tbaa !14
  %160 = getelementptr inbounds %struct.LIST, ptr %8, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !14
  %162 = icmp eq ptr %159, %161
  br i1 %162, label %180, label %163

163:                                              ; preds = %158, %163
  %164 = phi ptr [ %166, %163 ], [ %161, %158 ]
  %165 = getelementptr inbounds [2 x %struct.LIST], ptr %164, i64 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !14
  %167 = getelementptr inbounds %struct.word_type, ptr %166, i64 0, i32 1
  %168 = load i8, ptr %167, align 8, !tbaa !14
  switch i8 %168, label %180 [
    i8 0, label %163
    i8 2, label %169
  ]

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.closure_type, ptr %166, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !14
  %172 = getelementptr inbounds i8, ptr %171, i64 41
  %173 = load i24, ptr %172, align 1
  %174 = or i24 %173, 4096
  store i24 %174, ptr %172, align 1
  %175 = load ptr, ptr %170, align 8, !tbaa !14
  %176 = getelementptr inbounds i8, ptr %175, i64 41
  %177 = load i24, ptr %176, align 1
  %178 = or i24 %177, 2048
  store i24 %178, ptr %176, align 1
  %179 = load i24, ptr %48, align 1
  br label %180

180:                                              ; preds = %163, %153, %169, %139, %158, %137
  %181 = phi i24 [ %145, %153 ], [ %179, %169 ], [ %145, %139 ], [ %145, %158 ], [ %138, %137 ], [ %145, %163 ]
  %182 = and i24 %181, -24580
  store i24 %182, ptr %48, align 1
  %183 = load i8, ptr %67, align 2
  %184 = and i8 %183, -64
  store i8 %184, ptr %67, align 2
  %185 = load ptr, ptr %60, align 8, !tbaa !14
  %186 = icmp eq ptr %185, null
  br i1 %186, label %301, label %187

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.word_type, ptr %185, i64 0, i32 1
  %189 = load i8, ptr %188, align 8, !tbaa !14
  %190 = icmp eq i8 %189, -113
  br i1 %190, label %191, label %301

191:                                              ; preds = %187
  %192 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.10) #14
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %185, i64 41
  %196 = load i24, ptr %195, align 1
  %197 = or i24 %196, 32768
  store i24 %197, ptr %195, align 1
  %198 = load ptr, ptr %60, align 8, !tbaa !14
  %199 = getelementptr inbounds i8, ptr %198, i64 41
  %200 = load i24, ptr %199, align 1
  %201 = or i24 %200, 2
  store i24 %201, ptr %199, align 1
  %202 = load i24, ptr %48, align 1
  %203 = or i24 %202, 1
  store i24 %203, ptr %48, align 1
  br label %204

204:                                              ; preds = %194, %191
  %205 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.11) #14
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load ptr, ptr %60, align 8, !tbaa !14
  %209 = getelementptr inbounds %struct.symbol_type, ptr %208, i64 0, i32 16
  %210 = load i8, ptr %209, align 2
  %211 = or i8 %210, 2
  store i8 %211, ptr %209, align 2
  %212 = load i8, ptr %67, align 2
  %213 = or i8 %212, 1
  store i8 %213, ptr %67, align 2
  br label %214

214:                                              ; preds = %207, %204
  %215 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.12) #14
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %281

217:                                              ; preds = %214
  %218 = load ptr, ptr %60, align 8, !tbaa !14
  %219 = getelementptr inbounds i8, ptr %218, i64 41
  %220 = load i24, ptr %219, align 1
  %221 = or i24 %220, 32768
  store i24 %221, ptr %219, align 1
  %222 = load ptr, ptr %60, align 8, !tbaa !14
  %223 = getelementptr inbounds i8, ptr %222, i64 41
  %224 = load i24, ptr %223, align 1
  %225 = or i24 %224, 16384
  store i24 %225, ptr %223, align 1
  %226 = load i24, ptr %48, align 1
  %227 = or i24 %226, 8192
  store i24 %227, ptr %48, align 1
  %228 = load ptr, ptr %60, align 8, !tbaa !14
  %229 = getelementptr inbounds %struct.LIST, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !14
  %231 = icmp eq ptr %230, %228
  br i1 %231, label %281, label %232

232:                                              ; preds = %217, %276
  %233 = phi ptr [ %277, %276 ], [ %228, %217 ]
  %234 = phi ptr [ %279, %276 ], [ %230, %217 ]
  br label %235

235:                                              ; preds = %232, %235
  %236 = phi ptr [ %238, %235 ], [ %234, %232 ]
  %237 = getelementptr inbounds [2 x %struct.LIST], ptr %236, i64 0, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !14
  %239 = getelementptr inbounds %struct.word_type, ptr %238, i64 0, i32 1
  %240 = load i8, ptr %239, align 8, !tbaa !14
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %235, label %242

242:                                              ; preds = %235
  %243 = getelementptr inbounds i8, ptr %238, i64 41
  %244 = load i24, ptr %243, align 1
  %245 = and i24 %244, 32
  %246 = icmp eq i24 %245, 0
  br i1 %246, label %276, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.symbol_type, ptr %238, i64 0, i32 4
  %249 = load ptr, ptr %248, align 8, !tbaa !14
  %250 = icmp eq ptr %249, null
  br i1 %250, label %276, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.word_type, ptr %249, i64 0, i32 1
  %253 = load i8, ptr %252, align 8, !tbaa !14
  %254 = and i8 %253, -2
  %255 = icmp eq i8 %254, 6
  br i1 %255, label %256, label %276

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.LIST, ptr %249, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !14
  br label %259

259:                                              ; preds = %259, %256
  %260 = phi ptr [ %258, %256 ], [ %262, %259 ]
  %261 = getelementptr inbounds [2 x %struct.LIST], ptr %260, i64 0, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !14
  %263 = getelementptr inbounds %struct.word_type, ptr %262, i64 0, i32 1
  %264 = load i8, ptr %263, align 8, !tbaa !14
  switch i8 %264, label %276 [
    i8 0, label %259
    i8 2, label %265
  ]

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.closure_type, ptr %262, i64 0, i32 5
  %267 = load ptr, ptr %266, align 8, !tbaa !14
  %268 = getelementptr inbounds i8, ptr %267, i64 41
  %269 = load i24, ptr %268, align 1
  %270 = or i24 %269, 4096
  store i24 %270, ptr %268, align 1
  %271 = load ptr, ptr %266, align 8, !tbaa !14
  %272 = getelementptr inbounds i8, ptr %271, i64 41
  %273 = load i24, ptr %272, align 1
  %274 = or i24 %273, 2048
  store i24 %274, ptr %272, align 1
  %275 = load ptr, ptr %60, align 8, !tbaa !14
  br label %276

276:                                              ; preds = %259, %251, %265, %242, %247
  %277 = phi ptr [ %233, %251 ], [ %275, %265 ], [ %233, %242 ], [ %233, %247 ], [ %233, %259 ]
  %278 = getelementptr inbounds %struct.LIST, ptr %234, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !14
  %280 = icmp eq ptr %279, %277
  br i1 %280, label %281, label %232

281:                                              ; preds = %276, %217, %214
  %282 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.13) #14
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %281
  %285 = load ptr, ptr %60, align 8, !tbaa !14
  %286 = getelementptr inbounds %struct.symbol_type, ptr %285, i64 0, i32 16
  %287 = load i8, ptr %286, align 2
  %288 = or i8 %287, 8
  store i8 %288, ptr %286, align 2
  %289 = load i8, ptr %67, align 2
  %290 = or i8 %289, 4
  store i8 %290, ptr %67, align 2
  br label %291

291:                                              ; preds = %284, %281
  %292 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.14) #14
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = load ptr, ptr %60, align 8, !tbaa !14
  %296 = getelementptr inbounds %struct.symbol_type, ptr %295, i64 0, i32 16
  %297 = load i8, ptr %296, align 2
  %298 = or i8 %297, 32
  store i8 %298, ptr %296, align 2
  %299 = load i8, ptr %67, align 2
  %300 = or i8 %299, 16
  store i8 %300, ptr %67, align 2
  br label %301

301:                                              ; preds = %291, %294, %187, %180
  %302 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.15) #14
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %324

304:                                              ; preds = %301
  %305 = load i8, ptr %30, align 8, !tbaa !14
  %306 = icmp eq i8 %305, -113
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load ptr, ptr %60, align 8, !tbaa !14
  %309 = load ptr, ptr @StartSym, align 8, !tbaa !13
  %310 = icmp eq ptr %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %307, %304
  %312 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull %30, ptr noundef %0) #13
  br label %324

313:                                              ; preds = %307
  %314 = getelementptr inbounds i8, ptr %308, i64 41
  %315 = load i24, ptr %314, align 1
  %316 = and i24 %315, 8
  %317 = icmp eq i24 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 14, ptr noundef nonnull @.str.17, i32 noundef 2, ptr noundef nonnull %30, ptr noundef nonnull @.str.15) #13
  br label %324

320:                                              ; preds = %313
  %321 = getelementptr inbounds %struct.symbol_type, ptr %308, i64 0, i32 10
  store ptr %29, ptr %321, align 8, !tbaa !14
  %322 = load ptr, ptr %60, align 8, !tbaa !14
  %323 = getelementptr inbounds %struct.word_type, ptr %322, i64 0, i32 2
  store i8 104, ptr %323, align 8, !tbaa !14
  br label %324

324:                                              ; preds = %311, %320, %318, %301
  %325 = load i8, ptr %30, align 8, !tbaa !14
  %326 = icmp eq i8 %325, -110
  br i1 %326, label %327, label %361

327:                                              ; preds = %324
  %328 = load ptr, ptr %60, align 8, !tbaa !14
  %329 = getelementptr inbounds i8, ptr %328, i64 41
  %330 = load i24, ptr %329, align 1
  %331 = and i24 %330, 256
  %332 = icmp eq i24 %331, 0
  br i1 %332, label %345, label %333

333:                                              ; preds = %327
  %334 = load i24, ptr %48, align 1
  %335 = and i24 %334, 8193
  %336 = icmp eq i24 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %333
  %338 = load i8, ptr %67, align 2
  %339 = and i8 %338, 1
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %333, %337
  %342 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 5, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %30, ptr noundef %0) #13
  %343 = load i8, ptr %30, align 8, !tbaa !14
  %344 = icmp eq i8 %343, -110
  br i1 %344, label %345, label %361

345:                                              ; preds = %327, %337, %341
  %346 = load ptr, ptr %60, align 8, !tbaa !14
  %347 = getelementptr inbounds i8, ptr %346, i64 41
  %348 = load i24, ptr %347, align 1
  %349 = and i24 %348, 64
  %350 = icmp eq i24 %349, 0
  br i1 %350, label %361, label %351

351:                                              ; preds = %345
  %352 = load i24, ptr %48, align 1
  %353 = and i24 %352, 8193
  %354 = icmp eq i24 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %351
  %356 = load i8, ptr %67, align 2
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %355, %351
  %360 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 6, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %30, ptr noundef %0) #13
  br label %361

361:                                              ; preds = %324, %359, %355, %345, %341
  %362 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %363 = trunc i64 %362 to i32
  %364 = load i8, ptr %0, align 1, !tbaa !14
  %365 = zext i8 %364 to i32
  %366 = add nsw i32 %363, -1
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %410, label %368

368:                                              ; preds = %361
  %369 = zext i32 %366 to i64
  %370 = icmp ult i32 %366, 8
  br i1 %370, label %396, label %371

371:                                              ; preds = %368
  %372 = and i64 %369, 4294967288
  %373 = trunc i64 %372 to i32
  %374 = sub i32 %366, %373
  %375 = getelementptr i8, ptr %0, i64 %372
  %376 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %365, i64 0
  br label %377

377:                                              ; preds = %377, %371
  %378 = phi i64 [ 0, %371 ], [ %390, %377 ]
  %379 = phi <4 x i32> [ %376, %371 ], [ %388, %377 ]
  %380 = phi <4 x i32> [ zeroinitializer, %371 ], [ %389, %377 ]
  %381 = getelementptr i8, ptr %0, i64 %378
  %382 = getelementptr inbounds i8, ptr %381, i64 1
  %383 = getelementptr inbounds i8, ptr %381, i64 5
  %384 = load <4 x i8>, ptr %382, align 1, !tbaa !14
  %385 = load <4 x i8>, ptr %383, align 1, !tbaa !14
  %386 = zext <4 x i8> %384 to <4 x i32>
  %387 = zext <4 x i8> %385 to <4 x i32>
  %388 = add <4 x i32> %379, %386
  %389 = add <4 x i32> %380, %387
  %390 = add nuw i64 %378, 8
  %391 = icmp eq i64 %390, %372
  br i1 %391, label %392, label %377, !llvm.loop !18

392:                                              ; preds = %377
  %393 = add <4 x i32> %389, %388
  %394 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %393)
  %395 = icmp eq i64 %372, %369
  br i1 %395, label %410, label %396

396:                                              ; preds = %368, %392
  %397 = phi i32 [ %366, %368 ], [ %374, %392 ]
  %398 = phi i32 [ %365, %368 ], [ %394, %392 ]
  %399 = phi ptr [ %0, %368 ], [ %375, %392 ]
  br label %400

400:                                              ; preds = %396, %400
  %401 = phi i32 [ %408, %400 ], [ %397, %396 ]
  %402 = phi i32 [ %407, %400 ], [ %398, %396 ]
  %403 = phi ptr [ %404, %400 ], [ %399, %396 ]
  %404 = getelementptr inbounds i8, ptr %403, i64 1
  %405 = load i8, ptr %404, align 1, !tbaa !14
  %406 = zext i8 %405 to i32
  %407 = add nuw nsw i32 %402, %406
  %408 = add nsw i32 %401, -1
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %400, !llvm.loop !21

410:                                              ; preds = %400, %392, %361
  %411 = phi i32 [ %365, %361 ], [ %394, %392 ], [ %407, %400 ]
  %412 = urem i32 %411, 1783
  %413 = zext nneg i32 %412 to i64
  %414 = getelementptr inbounds [1783 x %struct.anon], ptr @symtab, i64 0, i64 %413
  %415 = getelementptr inbounds %struct.LIST, ptr %414, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !14
  %417 = icmp eq ptr %416, %414
  br i1 %417, label %465, label %418

418:                                              ; preds = %410, %461
  %419 = phi ptr [ %463, %461 ], [ %416, %410 ]
  br label %420

420:                                              ; preds = %418, %420
  %421 = phi ptr [ %423, %420 ], [ %419, %418 ]
  %422 = getelementptr inbounds [2 x %struct.LIST], ptr %421, i64 0, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !14
  %424 = getelementptr inbounds %struct.word_type, ptr %423, i64 0, i32 1
  %425 = load i8, ptr %424, align 8, !tbaa !14
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %420, label %427

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.word_type, ptr %423, i64 0, i32 2
  %429 = load i32, ptr %428, align 8
  %430 = and i32 %429, 4095
  %431 = icmp eq i32 %430, %363
  br i1 %431, label %432, label %461

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.word_type, ptr %423, i64 0, i32 4
  %434 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %433) #14
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %461

436:                                              ; preds = %432, %448
  %437 = phi ptr [ %439, %448 ], [ %423, %432 ]
  %438 = getelementptr inbounds %struct.LIST, ptr %437, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !14
  %440 = icmp eq ptr %439, %423
  br i1 %440, label %532, label %441

441:                                              ; preds = %436, %441
  %442 = phi ptr [ %444, %441 ], [ %439, %436 ]
  %443 = getelementptr inbounds [2 x %struct.LIST], ptr %442, i64 0, i64 1
  %444 = load ptr, ptr %443, align 8, !tbaa !14
  %445 = getelementptr inbounds %struct.word_type, ptr %444, i64 0, i32 1
  %446 = load i8, ptr %445, align 8, !tbaa !14
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %441, label %448

448:                                              ; preds = %441
  %449 = load ptr, ptr %60, align 8, !tbaa !14
  %450 = getelementptr inbounds %struct.symbol_type, ptr %444, i64 0, i32 3
  %451 = load ptr, ptr %450, align 8, !tbaa !14
  %452 = icmp eq ptr %449, %451
  br i1 %452, label %453, label %436

453:                                              ; preds = %448
  %454 = getelementptr inbounds %struct.word_type, ptr %444, i64 0, i32 1
  %455 = tail call ptr @EchoFilePos(ptr noundef nonnull %454) #13
  %456 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 7, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %30, ptr noundef nonnull %0, ptr noundef %455) #13
  %457 = load i32, ptr @AltErrorFormat, align 4, !tbaa !5
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %532, label %459

459:                                              ; preds = %453
  %460 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 13, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef nonnull %454, ptr noundef nonnull %0) #13
  br label %532

461:                                              ; preds = %427, %432
  %462 = getelementptr inbounds %struct.LIST, ptr %419, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !14
  %464 = icmp eq ptr %463, %414
  br i1 %464, label %465, label %418

465:                                              ; preds = %461, %410
  %466 = shl i64 %362, 32
  %467 = add i64 %466, 292057776128
  %468 = ashr exact i64 %467, 32
  %469 = lshr i64 %468, 3
  %470 = trunc i64 %469 to i32
  %471 = add i32 %470, 1
  store i32 %471, ptr @zz_size, align 4, !tbaa !5
  %472 = icmp ugt i32 %471, 264
  br i1 %472, label %473, label %476

473:                                              ; preds = %465
  %474 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %2) #13
  %475 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  br label %485

476:                                              ; preds = %465
  %477 = zext nneg i32 %471 to i64
  %478 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %477
  %479 = load ptr, ptr %478, align 8, !tbaa !13
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %483

481:                                              ; preds = %476
  %482 = tail call ptr @GetMemory(i32 noundef %471, ptr noundef %2) #13
  store ptr %482, ptr @zz_hold, align 8, !tbaa !13
  br label %485

483:                                              ; preds = %476
  store ptr %479, ptr @zz_hold, align 8, !tbaa !13
  %484 = load ptr, ptr %479, align 8, !tbaa !14
  store ptr %484, ptr %478, align 8, !tbaa !13
  br label %485

485:                                              ; preds = %481, %483, %473
  %486 = phi ptr [ %482, %481 ], [ %479, %483 ], [ %475, %473 ]
  %487 = load i32, ptr @zz_size, align 4, !tbaa !5
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.word_type, ptr %486, i64 0, i32 1, i32 0, i32 1
  store i8 %488, ptr %489, align 1, !tbaa !14
  %490 = getelementptr inbounds %struct.word_type, ptr %486, i64 0, i32 1
  store i8 11, ptr %490, align 8, !tbaa !14
  %491 = getelementptr inbounds [2 x %struct.LIST], ptr %486, i64 0, i64 1
  %492 = getelementptr inbounds [2 x %struct.LIST], ptr %486, i64 0, i64 1, i32 1
  store ptr %486, ptr %492, align 8, !tbaa !14
  store ptr %486, ptr %491, align 8, !tbaa !14
  %493 = getelementptr inbounds %struct.LIST, ptr %486, i64 0, i32 1
  store ptr %486, ptr %493, align 8, !tbaa !14
  store ptr %486, ptr %486, align 8, !tbaa !14
  %494 = getelementptr inbounds %struct.word_type, ptr %486, i64 0, i32 2
  %495 = load i32, ptr %494, align 8
  %496 = and i32 %363, 4095
  %497 = and i32 %495, -4096
  %498 = or disjoint i32 %497, %496
  store i32 %498, ptr %494, align 8
  %499 = getelementptr inbounds %struct.word_type, ptr %486, i64 0, i32 4
  %500 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %499, ptr noundef nonnull dereferenceable(1) %0) #13
  %501 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %502 = zext i8 %501 to i32
  store i32 %502, ptr @zz_size, align 4, !tbaa !5
  %503 = zext i8 %501 to i64
  %504 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !13
  %506 = icmp eq ptr %505, null
  br i1 %506, label %507, label %510

507:                                              ; preds = %485
  %508 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %509 = tail call ptr @GetMemory(i32 noundef %502, ptr noundef %508) #13
  br label %512

510:                                              ; preds = %485
  store ptr %505, ptr @zz_hold, align 8, !tbaa !13
  %511 = load ptr, ptr %505, align 8, !tbaa !14
  store ptr %511, ptr %504, align 8, !tbaa !13
  br label %512

512:                                              ; preds = %510, %507
  %513 = phi ptr [ %505, %510 ], [ %509, %507 ]
  %514 = getelementptr inbounds %struct.word_type, ptr %513, i64 0, i32 1
  store i8 0, ptr %514, align 8, !tbaa !14
  %515 = getelementptr inbounds [2 x %struct.LIST], ptr %513, i64 0, i64 1, i32 1
  store ptr %513, ptr %515, align 8, !tbaa !14
  %516 = getelementptr inbounds [2 x %struct.LIST], ptr %513, i64 0, i64 1
  store ptr %513, ptr %516, align 8, !tbaa !14
  %517 = getelementptr inbounds %struct.LIST, ptr %513, i64 0, i32 1
  store ptr %513, ptr %517, align 8, !tbaa !14
  store ptr %513, ptr %513, align 8, !tbaa !14
  store ptr %513, ptr @xx_link, align 8, !tbaa !13
  store ptr %513, ptr @zz_res, align 8, !tbaa !13
  store ptr %414, ptr @zz_hold, align 8, !tbaa !13
  %518 = load ptr, ptr %414, align 16, !tbaa !14
  store ptr %518, ptr @zz_tmp, align 8, !tbaa !13
  %519 = load ptr, ptr %513, align 8, !tbaa !14
  store ptr %519, ptr %414, align 16, !tbaa !14
  %520 = getelementptr inbounds %struct.LIST, ptr %519, i64 0, i32 1
  store ptr %414, ptr %520, align 8, !tbaa !14
  store ptr %518, ptr %513, align 8, !tbaa !14
  %521 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %522 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  %523 = getelementptr inbounds %struct.LIST, ptr %522, i64 0, i32 1
  store ptr %521, ptr %523, align 8, !tbaa !14
  %524 = load ptr, ptr @xx_link, align 8, !tbaa !13
  store ptr %524, ptr @zz_res, align 8, !tbaa !13
  store ptr %486, ptr @zz_hold, align 8, !tbaa !13
  %525 = icmp eq ptr %524, null
  br i1 %525, label %532, label %526

526:                                              ; preds = %512
  %527 = load ptr, ptr %491, align 8, !tbaa !14
  store ptr %527, ptr @zz_tmp, align 8, !tbaa !13
  %528 = getelementptr inbounds [2 x %struct.LIST], ptr %524, i64 0, i64 1
  %529 = load ptr, ptr %528, align 8, !tbaa !14
  store ptr %529, ptr %491, align 8, !tbaa !14
  %530 = getelementptr inbounds [2 x %struct.LIST], ptr %529, i64 0, i64 1, i32 1
  store ptr %486, ptr %530, align 8, !tbaa !14
  store ptr %527, ptr %528, align 8, !tbaa !14
  %531 = getelementptr inbounds [2 x %struct.LIST], ptr %527, i64 0, i64 1, i32 1
  store ptr %524, ptr %531, align 8, !tbaa !14
  br label %532

532:                                              ; preds = %436, %512, %526, %459, %453
  %533 = phi ptr [ %423, %459 ], [ %423, %453 ], [ %486, %526 ], [ %486, %512 ], [ %423, %436 ]
  %534 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %535 = zext i8 %534 to i32
  store i32 %535, ptr @zz_size, align 4, !tbaa !5
  %536 = zext i8 %534 to i64
  %537 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %536
  %538 = load ptr, ptr %537, align 8, !tbaa !13
  %539 = icmp eq ptr %538, null
  br i1 %539, label %540, label %543

540:                                              ; preds = %532
  %541 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %542 = tail call ptr @GetMemory(i32 noundef %535, ptr noundef %541) #13
  br label %545

543:                                              ; preds = %532
  store ptr %538, ptr @zz_hold, align 8, !tbaa !13
  %544 = load ptr, ptr %538, align 8, !tbaa !14
  store ptr %544, ptr %537, align 8, !tbaa !13
  br label %545

545:                                              ; preds = %540, %543
  %546 = phi ptr [ %542, %540 ], [ %538, %543 ]
  %547 = getelementptr inbounds %struct.word_type, ptr %546, i64 0, i32 1
  store i8 0, ptr %547, align 8, !tbaa !14
  %548 = getelementptr inbounds [2 x %struct.LIST], ptr %546, i64 0, i64 1, i32 1
  store ptr %546, ptr %548, align 8, !tbaa !14
  %549 = getelementptr inbounds [2 x %struct.LIST], ptr %546, i64 0, i64 1
  store ptr %546, ptr %549, align 8, !tbaa !14
  %550 = getelementptr inbounds %struct.LIST, ptr %546, i64 0, i32 1
  store ptr %546, ptr %550, align 8, !tbaa !14
  store ptr %546, ptr %546, align 8, !tbaa !14
  store ptr %546, ptr @xx_link, align 8, !tbaa !13
  store ptr %546, ptr @zz_res, align 8, !tbaa !13
  store ptr %533, ptr @zz_hold, align 8, !tbaa !13
  %551 = icmp eq ptr %533, null
  br i1 %551, label %552, label %553

552:                                              ; preds = %545
  store ptr %29, ptr @zz_hold, align 8, !tbaa !13
  br label %568

553:                                              ; preds = %545
  %554 = load ptr, ptr %533, align 8, !tbaa !14
  store ptr %554, ptr @zz_tmp, align 8, !tbaa !13
  %555 = load ptr, ptr %546, align 8, !tbaa !14
  store ptr %555, ptr %533, align 8, !tbaa !14
  %556 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %557 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %558 = load ptr, ptr %557, align 8, !tbaa !14
  %559 = getelementptr inbounds %struct.LIST, ptr %558, i64 0, i32 1
  store ptr %556, ptr %559, align 8, !tbaa !14
  %560 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  store ptr %560, ptr %557, align 8, !tbaa !14
  %561 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %562 = getelementptr inbounds %struct.LIST, ptr %560, i64 0, i32 1
  store ptr %561, ptr %562, align 8, !tbaa !14
  %563 = load ptr, ptr @xx_link, align 8, !tbaa !13
  store ptr %563, ptr @zz_res, align 8, !tbaa !13
  store ptr %29, ptr @zz_hold, align 8, !tbaa !13
  %564 = icmp eq ptr %563, null
  br i1 %564, label %576, label %565

565:                                              ; preds = %553
  %566 = getelementptr inbounds [2 x %struct.LIST], ptr %563, i64 0, i64 1
  %567 = load ptr, ptr %566, align 8, !tbaa !14
  br label %568

568:                                              ; preds = %565, %552
  %569 = phi ptr [ %546, %552 ], [ %567, %565 ]
  %570 = phi ptr [ %546, %552 ], [ %563, %565 ]
  %571 = load ptr, ptr %31, align 8, !tbaa !14
  store ptr %571, ptr @zz_tmp, align 8, !tbaa !13
  %572 = getelementptr inbounds [2 x %struct.LIST], ptr %570, i64 0, i64 1
  store ptr %569, ptr %31, align 8, !tbaa !14
  %573 = load ptr, ptr %572, align 8, !tbaa !14
  %574 = getelementptr inbounds [2 x %struct.LIST], ptr %573, i64 0, i64 1, i32 1
  store ptr %29, ptr %574, align 8, !tbaa !14
  store ptr %571, ptr %572, align 8, !tbaa !14
  %575 = getelementptr inbounds [2 x %struct.LIST], ptr %571, i64 0, i64 1, i32 1
  store ptr %570, ptr %575, align 8, !tbaa !14
  br label %576

576:                                              ; preds = %553, %568
  %577 = load ptr, ptr %60, align 8, !tbaa !14
  %578 = icmp eq ptr %577, null
  br i1 %578, label %623, label %579

579:                                              ; preds = %576
  %580 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %581 = zext i8 %580 to i32
  store i32 %581, ptr @zz_size, align 4, !tbaa !5
  %582 = zext i8 %580 to i64
  %583 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %582
  %584 = load ptr, ptr %583, align 8, !tbaa !13
  %585 = icmp eq ptr %584, null
  br i1 %585, label %586, label %589

586:                                              ; preds = %579
  %587 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %588 = tail call ptr @GetMemory(i32 noundef %581, ptr noundef %587) #13
  br label %591

589:                                              ; preds = %579
  store ptr %584, ptr @zz_hold, align 8, !tbaa !13
  %590 = load ptr, ptr %584, align 8, !tbaa !14
  store ptr %590, ptr %583, align 8, !tbaa !13
  br label %591

591:                                              ; preds = %586, %589
  %592 = phi ptr [ %588, %586 ], [ %584, %589 ]
  %593 = getelementptr inbounds %struct.word_type, ptr %592, i64 0, i32 1
  store i8 0, ptr %593, align 8, !tbaa !14
  %594 = getelementptr inbounds [2 x %struct.LIST], ptr %592, i64 0, i64 1, i32 1
  store ptr %592, ptr %594, align 8, !tbaa !14
  %595 = getelementptr inbounds [2 x %struct.LIST], ptr %592, i64 0, i64 1
  store ptr %592, ptr %595, align 8, !tbaa !14
  %596 = getelementptr inbounds %struct.LIST, ptr %592, i64 0, i32 1
  store ptr %592, ptr %596, align 8, !tbaa !14
  store ptr %592, ptr %592, align 8, !tbaa !14
  store ptr %592, ptr @xx_link, align 8, !tbaa !13
  store ptr %592, ptr @zz_res, align 8, !tbaa !13
  %597 = load ptr, ptr %60, align 8, !tbaa !14
  store ptr %597, ptr @zz_hold, align 8, !tbaa !13
  %598 = icmp eq ptr %597, null
  br i1 %598, label %599, label %600

599:                                              ; preds = %591
  store ptr %29, ptr @zz_hold, align 8, !tbaa !13
  br label %615

600:                                              ; preds = %591
  %601 = load ptr, ptr %597, align 8, !tbaa !14
  store ptr %601, ptr @zz_tmp, align 8, !tbaa !13
  %602 = load ptr, ptr %592, align 8, !tbaa !14
  store ptr %602, ptr %597, align 8, !tbaa !14
  %603 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %604 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %605 = load ptr, ptr %604, align 8, !tbaa !14
  %606 = getelementptr inbounds %struct.LIST, ptr %605, i64 0, i32 1
  store ptr %603, ptr %606, align 8, !tbaa !14
  %607 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  store ptr %607, ptr %604, align 8, !tbaa !14
  %608 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %609 = getelementptr inbounds %struct.LIST, ptr %607, i64 0, i32 1
  store ptr %608, ptr %609, align 8, !tbaa !14
  %610 = load ptr, ptr @xx_link, align 8, !tbaa !13
  store ptr %610, ptr @zz_res, align 8, !tbaa !13
  store ptr %29, ptr @zz_hold, align 8, !tbaa !13
  %611 = icmp eq ptr %610, null
  br i1 %611, label %623, label %612

612:                                              ; preds = %600
  %613 = getelementptr inbounds [2 x %struct.LIST], ptr %610, i64 0, i64 1
  %614 = load ptr, ptr %613, align 8, !tbaa !14
  br label %615

615:                                              ; preds = %612, %599
  %616 = phi ptr [ %592, %599 ], [ %614, %612 ]
  %617 = phi ptr [ %592, %599 ], [ %610, %612 ]
  %618 = load ptr, ptr %31, align 8, !tbaa !14
  store ptr %618, ptr @zz_tmp, align 8, !tbaa !13
  %619 = getelementptr inbounds [2 x %struct.LIST], ptr %617, i64 0, i64 1
  store ptr %616, ptr %31, align 8, !tbaa !14
  %620 = load ptr, ptr %619, align 8, !tbaa !14
  %621 = getelementptr inbounds [2 x %struct.LIST], ptr %620, i64 0, i64 1, i32 1
  store ptr %29, ptr %621, align 8, !tbaa !14
  store ptr %618, ptr %619, align 8, !tbaa !14
  %622 = getelementptr inbounds [2 x %struct.LIST], ptr %618, i64 0, i64 1, i32 1
  store ptr %617, ptr %622, align 8, !tbaa !14
  br label %623

623:                                              ; preds = %600, %615, %576
  ret ptr %29
}

declare i32 @LexLegalName(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare ptr @EchoFilePos(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @InsertAlternativeName(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %5 = trunc i64 %4 to i32
  %6 = load i8, ptr %0, align 1, !tbaa !14
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %5, -1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %3
  %11 = zext i32 %8 to i64
  %12 = icmp ult i32 %8, 8
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = and i64 %11, 4294967288
  %15 = trunc i64 %14 to i32
  %16 = sub i32 %8, %15
  %17 = getelementptr i8, ptr %0, i64 %14
  %18 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %7, i64 0
  br label %19

19:                                               ; preds = %19, %13
  %20 = phi i64 [ 0, %13 ], [ %32, %19 ]
  %21 = phi <4 x i32> [ %18, %13 ], [ %30, %19 ]
  %22 = phi <4 x i32> [ zeroinitializer, %13 ], [ %31, %19 ]
  %23 = getelementptr i8, ptr %0, i64 %20
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = getelementptr inbounds i8, ptr %23, i64 5
  %26 = load <4 x i8>, ptr %24, align 1, !tbaa !14
  %27 = load <4 x i8>, ptr %25, align 1, !tbaa !14
  %28 = zext <4 x i8> %26 to <4 x i32>
  %29 = zext <4 x i8> %27 to <4 x i32>
  %30 = add <4 x i32> %21, %28
  %31 = add <4 x i32> %22, %29
  %32 = add nuw i64 %20, 8
  %33 = icmp eq i64 %32, %14
  br i1 %33, label %34, label %19, !llvm.loop !22

34:                                               ; preds = %19
  %35 = add <4 x i32> %31, %30
  %36 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %35)
  %37 = icmp eq i64 %14, %11
  br i1 %37, label %52, label %38

38:                                               ; preds = %10, %34
  %39 = phi i32 [ %8, %10 ], [ %16, %34 ]
  %40 = phi i32 [ %7, %10 ], [ %36, %34 ]
  %41 = phi ptr [ %0, %10 ], [ %17, %34 ]
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i32 [ %50, %42 ], [ %39, %38 ]
  %44 = phi i32 [ %49, %42 ], [ %40, %38 ]
  %45 = phi ptr [ %46, %42 ], [ %41, %38 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !14
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %44, %48
  %50 = add nsw i32 %43, -1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %42, !llvm.loop !23

52:                                               ; preds = %42, %34
  %53 = phi i32 [ %36, %34 ], [ %49, %42 ]
  %54 = urem i32 %53, 1783
  br label %55

55:                                               ; preds = %52, %3
  %56 = phi i32 [ %7, %3 ], [ %54, %52 ]
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [1783 x %struct.anon], ptr @symtab, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.LIST, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !14
  %61 = icmp eq ptr %60, %58
  br i1 %61, label %108, label %62

62:                                               ; preds = %55, %104
  %63 = phi ptr [ %106, %104 ], [ %60, %55 ]
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi ptr [ %67, %64 ], [ %63, %62 ]
  %66 = getelementptr inbounds [2 x %struct.LIST], ptr %65, i64 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !14
  %68 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 1
  %69 = load i8, ptr %68, align 8, !tbaa !14
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %64, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 4095
  %75 = icmp eq i32 %74, %5
  br i1 %75, label %76, label %104

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.word_type, ptr %67, i64 0, i32 4
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %77) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.symbol_type, ptr %1, i64 0, i32 3
  br label %82

82:                                               ; preds = %80, %94
  %83 = phi ptr [ %85, %94 ], [ %67, %80 ]
  %84 = getelementptr inbounds %struct.LIST, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !14
  %86 = icmp eq ptr %85, %67
  br i1 %86, label %175, label %87

87:                                               ; preds = %82, %87
  %88 = phi ptr [ %90, %87 ], [ %85, %82 ]
  %89 = getelementptr inbounds [2 x %struct.LIST], ptr %88, i64 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !14
  %91 = getelementptr inbounds %struct.word_type, ptr %90, i64 0, i32 1
  %92 = load i8, ptr %91, align 8, !tbaa !14
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %87, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr %81, align 8, !tbaa !14
  %96 = getelementptr inbounds %struct.symbol_type, ptr %90, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !14
  %98 = icmp eq ptr %95, %97
  br i1 %98, label %99, label %82

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.word_type, ptr %90, i64 0, i32 1
  %101 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 1
  %102 = tail call ptr @EchoFilePos(ptr noundef nonnull %100) #13
  %103 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 12, ptr noundef nonnull @.str.22, i32 noundef 2, ptr noundef nonnull %101, ptr noundef nonnull %0, ptr noundef %102) #13
  br label %175

104:                                              ; preds = %71, %76
  %105 = getelementptr inbounds %struct.LIST, ptr %63, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !14
  %107 = icmp eq ptr %106, %58
  br i1 %107, label %108, label %62

108:                                              ; preds = %104, %55
  %109 = shl i64 %4, 32
  %110 = add i64 %109, 292057776128
  %111 = ashr exact i64 %110, 32
  %112 = lshr i64 %111, 3
  %113 = trunc i64 %112 to i32
  %114 = add i32 %113, 1
  store i32 %114, ptr @zz_size, align 4, !tbaa !5
  %115 = icmp ugt i32 %114, 264
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %2) #13
  %118 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  br label %128

119:                                              ; preds = %108
  %120 = zext nneg i32 %114 to i64
  %121 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !13
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = tail call ptr @GetMemory(i32 noundef %114, ptr noundef %2) #13
  store ptr %125, ptr @zz_hold, align 8, !tbaa !13
  br label %128

126:                                              ; preds = %119
  store ptr %122, ptr @zz_hold, align 8, !tbaa !13
  %127 = load ptr, ptr %122, align 8, !tbaa !14
  store ptr %127, ptr %121, align 8, !tbaa !13
  br label %128

128:                                              ; preds = %124, %126, %116
  %129 = phi ptr [ %125, %124 ], [ %122, %126 ], [ %118, %116 ]
  %130 = load i32, ptr @zz_size, align 4, !tbaa !5
  %131 = trunc i32 %130 to i8
  %132 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1, i32 0, i32 1
  store i8 %131, ptr %132, align 1, !tbaa !14
  %133 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1
  store i8 11, ptr %133, align 8, !tbaa !14
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %129, i64 0, i64 1
  %135 = getelementptr inbounds [2 x %struct.LIST], ptr %129, i64 0, i64 1, i32 1
  store ptr %129, ptr %135, align 8, !tbaa !14
  store ptr %129, ptr %134, align 8, !tbaa !14
  %136 = getelementptr inbounds %struct.LIST, ptr %129, i64 0, i32 1
  store ptr %129, ptr %136, align 8, !tbaa !14
  store ptr %129, ptr %129, align 8, !tbaa !14
  %137 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %5, 4095
  %140 = and i32 %138, -4096
  %141 = or disjoint i32 %140, %139
  store i32 %141, ptr %137, align 8
  %142 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 4
  %143 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(1) %0) #13
  %144 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %145 = zext i8 %144 to i32
  store i32 %145, ptr @zz_size, align 4, !tbaa !5
  %146 = zext i8 %144 to i64
  %147 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !13
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %128
  %151 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %152 = tail call ptr @GetMemory(i32 noundef %145, ptr noundef %151) #13
  br label %155

153:                                              ; preds = %128
  store ptr %148, ptr @zz_hold, align 8, !tbaa !13
  %154 = load ptr, ptr %148, align 8, !tbaa !14
  store ptr %154, ptr %147, align 8, !tbaa !13
  br label %155

155:                                              ; preds = %153, %150
  %156 = phi ptr [ %148, %153 ], [ %152, %150 ]
  %157 = getelementptr inbounds %struct.word_type, ptr %156, i64 0, i32 1
  store i8 0, ptr %157, align 8, !tbaa !14
  %158 = getelementptr inbounds [2 x %struct.LIST], ptr %156, i64 0, i64 1, i32 1
  store ptr %156, ptr %158, align 8, !tbaa !14
  %159 = getelementptr inbounds [2 x %struct.LIST], ptr %156, i64 0, i64 1
  store ptr %156, ptr %159, align 8, !tbaa !14
  %160 = getelementptr inbounds %struct.LIST, ptr %156, i64 0, i32 1
  store ptr %156, ptr %160, align 8, !tbaa !14
  store ptr %156, ptr %156, align 8, !tbaa !14
  store ptr %156, ptr @xx_link, align 8, !tbaa !13
  store ptr %156, ptr @zz_res, align 8, !tbaa !13
  store ptr %58, ptr @zz_hold, align 8, !tbaa !13
  %161 = load ptr, ptr %58, align 16, !tbaa !14
  store ptr %161, ptr @zz_tmp, align 8, !tbaa !13
  %162 = load ptr, ptr %156, align 8, !tbaa !14
  store ptr %162, ptr %58, align 16, !tbaa !14
  %163 = getelementptr inbounds %struct.LIST, ptr %162, i64 0, i32 1
  store ptr %58, ptr %163, align 8, !tbaa !14
  store ptr %161, ptr %156, align 8, !tbaa !14
  %164 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %165 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  %166 = getelementptr inbounds %struct.LIST, ptr %165, i64 0, i32 1
  store ptr %164, ptr %166, align 8, !tbaa !14
  %167 = load ptr, ptr @xx_link, align 8, !tbaa !13
  store ptr %167, ptr @zz_res, align 8, !tbaa !13
  store ptr %129, ptr @zz_hold, align 8, !tbaa !13
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %155
  %170 = load ptr, ptr %134, align 8, !tbaa !14
  store ptr %170, ptr @zz_tmp, align 8, !tbaa !13
  %171 = getelementptr inbounds [2 x %struct.LIST], ptr %167, i64 0, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !14
  store ptr %172, ptr %134, align 8, !tbaa !14
  %173 = getelementptr inbounds [2 x %struct.LIST], ptr %172, i64 0, i64 1, i32 1
  store ptr %129, ptr %173, align 8, !tbaa !14
  store ptr %170, ptr %171, align 8, !tbaa !14
  %174 = getelementptr inbounds [2 x %struct.LIST], ptr %170, i64 0, i64 1, i32 1
  store ptr %167, ptr %174, align 8, !tbaa !14
  br label %175

175:                                              ; preds = %82, %155, %169, %99
  %176 = phi ptr [ %67, %99 ], [ %129, %169 ], [ %129, %155 ], [ %67, %82 ]
  %177 = load i8, ptr @zz_lengths, align 1, !tbaa !14
  %178 = zext i8 %177 to i32
  store i32 %178, ptr @zz_size, align 4, !tbaa !5
  %179 = zext i8 %177 to i64
  %180 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !13
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %185 = tail call ptr @GetMemory(i32 noundef %178, ptr noundef %184) #13
  br label %188

186:                                              ; preds = %175
  store ptr %181, ptr @zz_hold, align 8, !tbaa !13
  %187 = load ptr, ptr %181, align 8, !tbaa !14
  store ptr %187, ptr %180, align 8, !tbaa !13
  br label %188

188:                                              ; preds = %183, %186
  %189 = phi ptr [ %185, %183 ], [ %181, %186 ]
  %190 = getelementptr inbounds %struct.word_type, ptr %189, i64 0, i32 1
  store i8 0, ptr %190, align 8, !tbaa !14
  %191 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1, i32 1
  store ptr %189, ptr %191, align 8, !tbaa !14
  %192 = getelementptr inbounds [2 x %struct.LIST], ptr %189, i64 0, i64 1
  store ptr %189, ptr %192, align 8, !tbaa !14
  %193 = getelementptr inbounds %struct.LIST, ptr %189, i64 0, i32 1
  store ptr %189, ptr %193, align 8, !tbaa !14
  store ptr %189, ptr %189, align 8, !tbaa !14
  store ptr %189, ptr @xx_link, align 8, !tbaa !13
  store ptr %189, ptr @zz_res, align 8, !tbaa !13
  store ptr %176, ptr @zz_hold, align 8, !tbaa !13
  %194 = icmp eq ptr %176, null
  br i1 %194, label %206, label %195

195:                                              ; preds = %188
  %196 = load ptr, ptr %176, align 8, !tbaa !14
  store ptr %196, ptr @zz_tmp, align 8, !tbaa !13
  %197 = load ptr, ptr %189, align 8, !tbaa !14
  store ptr %197, ptr %176, align 8, !tbaa !14
  %198 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %199 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %200 = load ptr, ptr %199, align 8, !tbaa !14
  %201 = getelementptr inbounds %struct.LIST, ptr %200, i64 0, i32 1
  store ptr %198, ptr %201, align 8, !tbaa !14
  %202 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  store ptr %202, ptr %199, align 8, !tbaa !14
  %203 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %204 = getelementptr inbounds %struct.LIST, ptr %202, i64 0, i32 1
  store ptr %203, ptr %204, align 8, !tbaa !14
  %205 = load ptr, ptr @xx_link, align 8, !tbaa !13
  br label %206

206:                                              ; preds = %188, %195
  %207 = phi ptr [ %189, %188 ], [ %205, %195 ]
  store ptr %207, ptr @zz_res, align 8, !tbaa !13
  store ptr %1, ptr @zz_hold, align 8, !tbaa !13
  %208 = icmp eq ptr %1, null
  %209 = icmp eq ptr %207, null
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %218, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !14
  store ptr %213, ptr @zz_tmp, align 8, !tbaa !13
  %214 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !14
  store ptr %215, ptr %212, align 8, !tbaa !14
  %216 = getelementptr inbounds [2 x %struct.LIST], ptr %215, i64 0, i64 1, i32 1
  store ptr %1, ptr %216, align 8, !tbaa !14
  store ptr %213, ptr %214, align 8, !tbaa !14
  %217 = getelementptr inbounds [2 x %struct.LIST], ptr %213, i64 0, i64 1, i32 1
  store ptr %207, ptr %217, align 8, !tbaa !14
  br label %218

218:                                              ; preds = %206, %211
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @SearchSym(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = load i8, ptr %0, align 1, !tbaa !14
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %1, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  %8 = zext i32 %5 to i64
  %9 = icmp ult i32 %5, 8
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = and i64 %8, 4294967288
  %12 = trunc i64 %11 to i32
  %13 = sub i32 %5, %12
  %14 = getelementptr i8, ptr %0, i64 %11
  %15 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %4, i64 0
  br label %16

16:                                               ; preds = %16, %10
  %17 = phi i64 [ 0, %10 ], [ %29, %16 ]
  %18 = phi <4 x i32> [ %15, %10 ], [ %27, %16 ]
  %19 = phi <4 x i32> [ zeroinitializer, %10 ], [ %28, %16 ]
  %20 = getelementptr i8, ptr %0, i64 %17
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = getelementptr inbounds i8, ptr %20, i64 5
  %23 = load <4 x i8>, ptr %21, align 1, !tbaa !14
  %24 = load <4 x i8>, ptr %22, align 1, !tbaa !14
  %25 = zext <4 x i8> %23 to <4 x i32>
  %26 = zext <4 x i8> %24 to <4 x i32>
  %27 = add <4 x i32> %18, %25
  %28 = add <4 x i32> %19, %26
  %29 = add nuw i64 %17, 8
  %30 = icmp eq i64 %29, %11
  br i1 %30, label %31, label %16, !llvm.loop !24

31:                                               ; preds = %16
  %32 = add <4 x i32> %28, %27
  %33 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %32)
  %34 = icmp eq i64 %11, %8
  br i1 %34, label %49, label %35

35:                                               ; preds = %7, %31
  %36 = phi i32 [ %5, %7 ], [ %13, %31 ]
  %37 = phi ptr [ %0, %7 ], [ %14, %31 ]
  %38 = phi i32 [ %4, %7 ], [ %33, %31 ]
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ %47, %39 ], [ %36, %35 ]
  %41 = phi ptr [ %43, %39 ], [ %37, %35 ]
  %42 = phi i32 [ %46, %39 ], [ %38, %35 ]
  %43 = getelementptr inbounds i8, ptr %41, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !14
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %42, %45
  %47 = add nsw i32 %40, -1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %39, !llvm.loop !25

49:                                               ; preds = %39, %31
  %50 = phi i32 [ %33, %31 ], [ %46, %39 ]
  %51 = urem i32 %50, 1783
  br label %52

52:                                               ; preds = %49, %2
  %53 = phi i32 [ %4, %2 ], [ %51, %49 ]
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [1783 x %struct.anon], ptr @symtab, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.LIST, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = icmp eq ptr %57, %55
  br i1 %58, label %210, label %59

59:                                               ; preds = %52
  %60 = load i32, ptr @scope_top, align 4
  %61 = load i32, ptr @suppress_visible, align 4
  %62 = icmp ne i32 %61, 0
  %63 = load i1, ptr @suppress_scope, align 4
  %64 = freeze i1 %63
  %65 = load ptr, ptr @StartSym, align 8
  %66 = sext i32 %60 to i64
  br label %67

67:                                               ; preds = %59, %206
  %68 = phi ptr [ %57, %59 ], [ %208, %206 ]
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi ptr [ %72, %69 ], [ %68, %67 ]
  %71 = getelementptr inbounds [2 x %struct.LIST], ptr %70, i64 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !14
  %73 = getelementptr inbounds %struct.word_type, ptr %72, i64 0, i32 1
  %74 = load i8, ptr %73, align 8, !tbaa !14
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %69, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.word_type, ptr %72, i64 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 4095
  %80 = icmp eq i32 %79, %1
  br i1 %80, label %81, label %206

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.word_type, ptr %72, i64 0, i32 4
  br label %83

83:                                               ; preds = %90, %81
  %84 = phi i32 [ %1, %81 ], [ %93, %90 ]
  %85 = phi ptr [ %0, %81 ], [ %92, %90 ]
  %86 = phi ptr [ %82, %81 ], [ %91, %90 ]
  %87 = load i8, ptr %85, align 1, !tbaa !14
  %88 = load i8, ptr %86, align 1, !tbaa !14
  %89 = icmp eq i8 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = getelementptr inbounds i8, ptr %86, i64 1
  %92 = getelementptr inbounds i8, ptr %85, i64 1
  %93 = add nsw i32 %84, -1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %83

95:                                               ; preds = %83
  %96 = icmp eq i32 %84, 0
  br i1 %96, label %97, label %206

97:                                               ; preds = %90, %95
  %98 = getelementptr inbounds %struct.LIST, ptr %72, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !14
  %100 = icmp eq ptr %99, %72
  br i1 %100, label %101, label %107

101:                                              ; preds = %97, %101
  %102 = phi i64 [ %103, %101 ], [ %66, %97 ]
  %103 = add i64 %102, -1
  %104 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !13
  %106 = icmp eq ptr %105, %65
  br i1 %106, label %206, label %101

107:                                              ; preds = %97, %204
  %108 = phi i64 [ %109, %204 ], [ %66, %97 ]
  %109 = add i64 %108, -1
  %110 = getelementptr inbounds [300 x ptr], ptr @scope, i64 0, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !13
  %112 = getelementptr inbounds [300 x i32], ptr @npars_only, i64 0, i64 %109
  %113 = getelementptr inbounds [300 x i32], ptr @vis_only, i64 0, i64 %109
  %114 = getelementptr inbounds [300 x i32], ptr @body_ok, i64 0, i64 %109
  %115 = getelementptr inbounds i8, ptr %111, i64 41
  br i1 %64, label %116, label %163

116:                                              ; preds = %107, %159
  %117 = phi ptr [ %161, %159 ], [ %99, %107 ]
  br label %118

118:                                              ; preds = %118, %116
  %119 = phi ptr [ %121, %118 ], [ %117, %116 ]
  %120 = getelementptr inbounds [2 x %struct.LIST], ptr %119, i64 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !14
  %122 = getelementptr inbounds %struct.word_type, ptr %121, i64 0, i32 1
  %123 = load i8, ptr %122, align 8, !tbaa !14
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %118, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.symbol_type, ptr %121, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !14
  %128 = icmp eq ptr %127, %111
  br i1 %128, label %129, label %159

129:                                              ; preds = %125
  %130 = load i32, ptr %112, align 4, !tbaa !5
  %131 = icmp eq i32 %130, 0
  %132 = icmp eq i8 %123, -111
  %133 = or i1 %132, %131
  br i1 %133, label %134, label %159

134:                                              ; preds = %129
  %135 = load i32, ptr %113, align 4, !tbaa !5
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds i8, ptr %121, i64 41
  %139 = load i24, ptr %138, align 1
  %140 = and i24 %139, 65536
  %141 = icmp ne i24 %140, 0
  %142 = select i1 %141, i1 true, i1 %62
  br i1 %142, label %143, label %159

143:                                              ; preds = %137, %134
  %144 = load i32, ptr %114, align 4, !tbaa !5
  %145 = icmp eq i32 %144, 0
  %146 = icmp eq i8 %123, -110
  %147 = and i1 %146, %145
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i24, ptr %115, align 1
  %150 = and i24 %149, 256
  %151 = icmp eq i24 %150, 0
  %152 = select i1 %151, i1 true, i1 %62
  br i1 %152, label %153, label %159

153:                                              ; preds = %148, %143
  %154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %82, ptr noundef nonnull dereferenceable(9) @.str.23) #14
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %210, label %156

156:                                              ; preds = %153
  %157 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %82, ptr noundef nonnull dereferenceable(12) @.str.24) #14
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %210, label %159

159:                                              ; preds = %156, %148, %137, %129, %125
  %160 = getelementptr inbounds %struct.LIST, ptr %117, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !14
  %162 = icmp eq ptr %161, %72
  br i1 %162, label %204, label %116

163:                                              ; preds = %107, %200
  %164 = phi ptr [ %202, %200 ], [ %99, %107 ]
  br label %165

165:                                              ; preds = %163, %165
  %166 = phi ptr [ %168, %165 ], [ %164, %163 ]
  %167 = getelementptr inbounds [2 x %struct.LIST], ptr %166, i64 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !14
  %169 = getelementptr inbounds %struct.word_type, ptr %168, i64 0, i32 1
  %170 = load i8, ptr %169, align 8, !tbaa !14
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %165, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.symbol_type, ptr %168, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !14
  %175 = icmp eq ptr %174, %111
  br i1 %175, label %176, label %200

176:                                              ; preds = %172
  %177 = load i32, ptr %112, align 4, !tbaa !5
  %178 = icmp eq i32 %177, 0
  %179 = icmp eq i8 %170, -111
  %180 = or i1 %179, %178
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load i32, ptr %113, align 4, !tbaa !5
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, ptr %168, i64 41
  %186 = load i24, ptr %185, align 1
  %187 = and i24 %186, 65536
  %188 = icmp ne i24 %187, 0
  %189 = select i1 %188, i1 true, i1 %62
  br i1 %189, label %190, label %200

190:                                              ; preds = %184, %181
  %191 = load i32, ptr %114, align 4, !tbaa !5
  %192 = icmp eq i32 %191, 0
  %193 = icmp eq i8 %170, -110
  %194 = and i1 %193, %192
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = load i24, ptr %115, align 1
  %197 = and i24 %196, 256
  %198 = icmp eq i24 %197, 0
  %199 = select i1 %198, i1 true, i1 %62
  br i1 %199, label %210, label %200

200:                                              ; preds = %176, %172, %184, %195
  %201 = getelementptr inbounds %struct.LIST, ptr %164, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !14
  %203 = icmp eq ptr %202, %72
  br i1 %203, label %204, label %163

204:                                              ; preds = %200, %159
  %205 = icmp eq ptr %111, %65
  br i1 %205, label %206, label %107

206:                                              ; preds = %204, %101, %95, %76
  %207 = getelementptr inbounds %struct.LIST, ptr %68, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !14
  %209 = icmp eq ptr %208, %55
  br i1 %209, label %210, label %67

210:                                              ; preds = %206, %190, %195, %156, %153, %52
  %211 = phi ptr [ null, %52 ], [ %121, %153 ], [ %121, %156 ], [ %168, %195 ], [ %168, %190 ], [ null, %206 ]
  ret ptr %211
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @SymName(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.word_type, ptr %8, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !14
  switch i8 %10, label %11 [
    i8 0, label %6
    i8 11, label %14
    i8 12, label %14
  ]

11:                                               ; preds = %6
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.26) #13
  br label %14

14:                                               ; preds = %6, %6, %11
  %15 = getelementptr inbounds %struct.word_type, ptr %8, i64 0, i32 4
  br label %16

16:                                               ; preds = %1, %14
  %17 = phi ptr [ %15, %14 ], [ @.str.25, %1 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @FullSymName(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [20 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #13
  %4 = icmp eq ptr %0, null
  br i1 %4, label %99, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.symbol_type, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %11 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.27) #13
  %12 = load ptr, ptr %6, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5, %9
  %15 = phi ptr [ %12, %9 ], [ %7, %5 ]
  br label %17

16:                                               ; preds = %9
  store i8 0, ptr @FullSymName.buff, align 16
  br label %69

17:                                               ; preds = %14, %17
  %18 = phi i64 [ %22, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %24, %17 ], [ %15, %14 ]
  %20 = phi ptr [ %19, %17 ], [ %0, %14 ]
  %21 = getelementptr inbounds [20 x ptr], ptr %3, i64 0, i64 %18
  store ptr %20, ptr %21, align 8, !tbaa !13
  %22 = add nuw nsw i64 %18, 1
  %23 = getelementptr inbounds %struct.symbol_type, ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = icmp ne ptr %24, null
  %26 = icmp ult i64 %18, 19
  %27 = and i1 %25, %26
  br i1 %27, label %17, label %28

28:                                               ; preds = %17
  store i8 0, ptr @FullSymName.buff, align 16
  %29 = and i64 %22, 4294967294
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.word_type, ptr %19, i64 0, i32 1
  %33 = and i64 %22, 4294967295
  br label %34

34:                                               ; preds = %31, %64
  %35 = phi i64 [ %33, %31 ], [ %36, %64 ]
  %36 = add nsw i64 %35, -1
  %37 = getelementptr inbounds [20 x ptr], ptr %3, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds [2 x %struct.LIST], ptr %38, i64 0, i64 1, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !14
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %42, %40 ], [ %45, %43 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !14
  switch i8 %47, label %48 [
    i8 0, label %43
    i8 11, label %51
    i8 12, label %51
  ]

48:                                               ; preds = %43
  %49 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %50 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %49, ptr noundef nonnull @.str.26) #13
  br label %51

51:                                               ; preds = %43, %43, %48
  %52 = getelementptr inbounds %struct.word_type, ptr %45, i64 0, i32 4
  br label %53

53:                                               ; preds = %34, %51
  %54 = phi ptr [ %52, %51 ], [ @.str.25, %34 ]
  store ptr %54, ptr @FullSymName.sname, align 8, !tbaa !13
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #14
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %57 = add i64 %56, %55
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @FullSymName.buff) #14
  %59 = add i64 %57, %58
  %60 = icmp ugt i64 %59, 511
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 8, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %32) #13
  %63 = load ptr, ptr @FullSymName.sname, align 8, !tbaa !13
  br label %64

64:                                               ; preds = %61, %53
  %65 = phi ptr [ %63, %61 ], [ %54, %53 ]
  %66 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @FullSymName.buff, ptr noundef nonnull dereferenceable(1) %65) #13
  %67 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @FullSymName.buff, ptr noundef nonnull dereferenceable(1) %1) #13
  %68 = icmp sgt i64 %35, 2
  br i1 %68, label %34, label %69

69:                                               ; preds = %64, %16, %28
  %70 = phi ptr [ %0, %16 ], [ %19, %28 ], [ %19, %64 ]
  %71 = load ptr, ptr %3, align 16, !tbaa !13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds [2 x %struct.LIST], ptr %71, i64 0, i64 1, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !14
  br label %76

76:                                               ; preds = %76, %73
  %77 = phi ptr [ %75, %73 ], [ %78, %76 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !14
  %79 = getelementptr inbounds %struct.word_type, ptr %78, i64 0, i32 1
  %80 = load i8, ptr %79, align 8, !tbaa !14
  switch i8 %80, label %81 [
    i8 0, label %76
    i8 11, label %84
    i8 12, label %84
  ]

81:                                               ; preds = %76
  %82 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %83 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %82, ptr noundef nonnull @.str.26) #13
  br label %84

84:                                               ; preds = %76, %76, %81
  %85 = getelementptr inbounds %struct.word_type, ptr %78, i64 0, i32 4
  br label %86

86:                                               ; preds = %69, %84
  %87 = phi ptr [ %85, %84 ], [ @.str.25, %69 ]
  store ptr %87, ptr @FullSymName.sname, align 8, !tbaa !13
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87) #14
  %89 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @FullSymName.buff) #14
  %90 = add i64 %89, %88
  %91 = icmp ugt i64 %90, 511
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.word_type, ptr %70, i64 0, i32 1
  %94 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %93) #13
  %95 = load ptr, ptr @FullSymName.sname, align 8, !tbaa !13
  br label %96

96:                                               ; preds = %92, %86
  %97 = phi ptr [ %95, %92 ], [ %87, %86 ]
  %98 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @FullSymName.buff, ptr noundef nonnull dereferenceable(1) %97) #13
  br label %99

99:                                               ; preds = %2, %96
  %100 = phi ptr [ @FullSymName.buff, %96 ], [ @.str.25, %2 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #13
  ret ptr %100
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @ChildSym(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  br label %31

8:                                                ; preds = %2, %24
  %9 = phi ptr [ %26, %24 ], [ %4, %2 ]
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %13, %10 ], [ %9, %8 ]
  %12 = getelementptr inbounds [2 x %struct.LIST], ptr %11, i64 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.word_type, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %10, label %17

17:                                               ; preds = %10
  %18 = zext i8 %15 to i32
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.symbol_type, ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %50, label %24

24:                                               ; preds = %17, %20
  %25 = getelementptr inbounds %struct.LIST, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %8

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %30 = icmp eq ptr %0, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %6, %28
  %32 = phi ptr [ %7, %6 ], [ %29, %28 ]
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %34, %31 ], [ %37, %35 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct.word_type, ptr %37, i64 0, i32 1
  %39 = load i8, ptr %38, align 8, !tbaa !14
  switch i8 %39, label %40 [
    i8 0, label %35
    i8 11, label %43
    i8 12, label %43
  ]

40:                                               ; preds = %35
  %41 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %42 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %41, ptr noundef nonnull @.str.26) #13
  br label %43

43:                                               ; preds = %35, %35, %40
  %44 = getelementptr inbounds %struct.word_type, ptr %37, i64 0, i32 4
  br label %45

45:                                               ; preds = %28, %43
  %46 = phi ptr [ %32, %43 ], [ %29, %28 ]
  %47 = phi ptr [ %44, %43 ], [ @.str.25, %28 ]
  %48 = tail call ptr @Image(i32 noundef %1) #13
  %49 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 10, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef %48) #13
  br label %50

50:                                               ; preds = %20, %45
  %51 = phi ptr [ null, %45 ], [ %13, %20 ]
  ret ptr %51
}

declare ptr @Image(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ChildSymWithCode(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.LIST, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  br label %33

10:                                               ; preds = %2, %26
  %11 = phi ptr [ %28, %26 ], [ %6, %2 ]
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %15, %12 ], [ %11, %10 ]
  %14 = getelementptr inbounds [2 x %struct.LIST], ptr %13, i64 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.word_type, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !14
  switch i8 %17, label %26 [
    i8 0, label %12
    i8 -111, label %18
  ]

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.symbol_type, ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.symbol_type, ptr %15, i64 0, i32 15
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %25 = icmp eq i8 %24, %1
  br i1 %25, label %52, label %26

26:                                               ; preds = %12, %18, %22
  %27 = getelementptr inbounds %struct.LIST, ptr %11, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %10

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %32 = icmp eq ptr %4, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %8, %30
  %34 = phi ptr [ %9, %8 ], [ %31, %30 ]
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %4, i64 0, i64 1, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  br label %37

37:                                               ; preds = %37, %33
  %38 = phi ptr [ %36, %33 ], [ %39, %37 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !14
  switch i8 %41, label %42 [
    i8 0, label %37
    i8 11, label %45
    i8 12, label %45
  ]

42:                                               ; preds = %37
  %43 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %44 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %43, ptr noundef nonnull @.str.26) #13
  br label %45

45:                                               ; preds = %37, %37, %42
  %46 = getelementptr inbounds %struct.word_type, ptr %39, i64 0, i32 4
  br label %47

47:                                               ; preds = %30, %45
  %48 = phi ptr [ %34, %45 ], [ %31, %30 ]
  %49 = phi ptr [ %46, %45 ], [ @.str.25, %30 ]
  %50 = sext i8 %1 to i32
  %51 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 29, i32 noundef 11, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull %48, ptr noundef nonnull %49, i32 noundef %50) #13
  br label %52

52:                                               ; preds = %22, %47
  %53 = phi ptr [ null, %47 ], [ %15, %22 ]
  ret ptr %53
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"", !11, i64 0, !11, i64 8}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !17, i64 2}
!16 = !{!"", !7, i64 0, !7, i64 1, !17, i64 2, !6, i64 4, !6, i64 6}
!17 = !{!"short", !7, i64 0}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !20, !19}
!22 = distinct !{!22, !19, !20}
!23 = distinct !{!23, !20, !19}
!24 = distinct !{!24, !19, !20}
!25 = distinct !{!25, !20, !19}
