; ModuleID = 'blender/source/blender/blenlib/intern/BLI_args.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bArgs = type { %struct.ListBase, ptr, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.bAKey = type { ptr, i64, i32 }
%struct.bArgDoc = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.bArgument = type { ptr, ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"bArgs\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bArgs passes\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bArgs passes gh\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"argv[%d] = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bArgDoc\00", align 1
@NO_DOCS = internal global [27 x i8] c"NO DOCUMENTATION SPECIFIED\00", align 16
@.str.6 = private unnamed_addr constant [50 x i8] c"\09trying to add '%s' on pass %i, %scase sensitive\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"\09conflict with '%s' on pass %i, %scase sensitive\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"bArgument\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"bAKey\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s or %s\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" %s\0A\0A\00", align 1
@str = private unnamed_addr constant [30 x i8] c"WARNING: conflicting argument\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_argsInit(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef nonnull @.str) #12
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.1) #12
  %9 = getelementptr inbounds %struct.bArgs, ptr %4, i64 0, i32 4
  store ptr %8, ptr %9, align 8, !tbaa !38
  %10 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @keyhash, ptr noundef nonnull @keycmp, ptr noundef nonnull @.str.2) #12
  %11 = getelementptr inbounds %struct.bArgs, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !42
  tail call fastcc void @BLI_listbase_clear(ptr noundef %4) #13
  %12 = getelementptr inbounds %struct.bArgs, ptr %4, i64 0, i32 2
  store i32 %0, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.bArgs, ptr %4, i64 0, i32 3
  store ptr %1, ptr %13, align 8, !tbaa !44
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @keyhash(ptr nocapture noundef readonly %0) #3 !PGOFuncName !45 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = tail call fastcc i32 @case_strhash(ptr noundef %2) #13
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @keycmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !49 {
  %3 = getelementptr inbounds %struct.bAKey, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.bAKey, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i64 %4, %6
  %8 = icmp eq i64 %4, -1
  %9 = or i1 %8, %7
  %10 = icmp eq i64 %6, -1
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bAKey, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !51
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bAKey, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !51
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %12
  %21 = load ptr, ptr %0, align 8, !tbaa !46
  %22 = load ptr, ptr %1, align 8, !tbaa !46
  %23 = tail call i32 @BLI_strcasecmp(ptr noundef %21, ptr noundef %22) #12
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %36

26:                                               ; preds = %16
  %27 = load ptr, ptr %0, align 8, !tbaa !46
  %28 = load ptr, ptr %1, align 8, !tbaa !46
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %28) #14
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %36

32:                                               ; preds = %2
  %33 = inttoptr i64 %4 to ptr
  %34 = inttoptr i64 %6 to ptr
  %35 = tail call zeroext i8 @BLI_ghashutil_intcmp(ptr noundef %33, ptr noundef %34) #12
  br label %36

36:                                               ; preds = %32, %26, %20
  %37 = phi i8 [ %25, %20 ], [ %31, %26 ], [ %35, %32 ]
  ret i8 %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !52 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_argsFree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef %4, ptr noundef %4) #12
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  tail call void %5(ptr noundef %7) #12
  tail call void @BLI_freelistN(ptr noundef %0) #12
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BLI_argsPrint(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %14, %7 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = trunc i64 %8 to i32
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %12, ptr noundef %11) #13
  %14 = add nuw nsw i64 %8, 1
  %15 = load i32, ptr %2, align 8, !tbaa !43
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %7, label %18, !llvm.loop !53

18:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_argsArgv(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_argsAddCase(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = tail call fastcc ptr @internalDocs(ptr noundef %0, ptr noundef %2, ptr noundef %4, ptr noundef %6) #13
  %11 = icmp eq ptr %2, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @internalAdd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef %3, ptr noundef %7, ptr noundef %8, ptr noundef %10) #13
  br label %13

13:                                               ; preds = %12, %9
  %14 = icmp eq ptr %4, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call fastcc void @internalAdd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %10) #13
  br label %16

16:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @internalDocs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !55 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 48, ptr noundef nonnull @.str.4) #12
  %7 = icmp eq ptr %3, null
  %8 = select i1 %7, ptr @NO_DOCS, ptr %3
  %9 = getelementptr inbounds %struct.bArgDoc, ptr %6, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.bArgDoc, ptr %6, i64 0, i32 3
  store ptr %2, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.bArgDoc, ptr %6, i64 0, i32 4
  store ptr %8, ptr %11, align 8, !tbaa !59
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %6) #12
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @internalAdd(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !60 {
  %8 = tail call fastcc ptr @lookUp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %12 = icmp eq i32 %3, 1
  %13 = select i1 %12, ptr @.str.7, ptr @.str.8
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %13) #13
  %15 = load ptr, ptr %8, align 8, !tbaa !61
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.bAKey, ptr %15, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !50
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.bAKey, ptr %15, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = icmp eq i32 %21, 1
  %23 = select i1 %22, ptr @.str.7, ptr @.str.8
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %16, i32 noundef %19, ptr noundef nonnull %23) #13
  br label %25

25:                                               ; preds = %10, %7
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %27 = tail call ptr %26(i64 noundef 32, ptr noundef nonnull @.str.10) #12
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 24, ptr noundef nonnull @.str.11) #12
  store ptr %1, ptr %29, align 8, !tbaa !46
  %30 = sext i32 %2 to i64
  %31 = getelementptr inbounds %struct.bAKey, ptr %29, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.bAKey, ptr %29, i64 0, i32 2
  store i32 %3, ptr %32, align 8, !tbaa !51
  store ptr %29, ptr %27, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.bArgument, ptr %27, i64 0, i32 1
  store ptr %4, ptr %33, align 8, !tbaa !63
  %34 = getelementptr inbounds %struct.bArgument, ptr %27, i64 0, i32 2
  store ptr %5, ptr %34, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.bArgument, ptr %27, i64 0, i32 3
  store ptr %6, ptr %35, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  tail call void @BLI_ghash_insert(ptr noundef %37, ptr noundef nonnull %29, ptr noundef nonnull %27) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_argsAdd(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  tail call void @BLI_argsAddCase(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_argsPrintArgDoc(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @lookUp(ptr noundef %0, ptr noundef %1, i32 noundef -1, i32 noundef -1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bArgument, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  tail call fastcc void @internalDocPrint(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.bArgDoc, ptr %7, i64 0, i32 5
  store i8 1, ptr %8, align 8, !tbaa !66
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookUp(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !67 {
  %5 = alloca %struct.bAKey, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.bAKey, ptr %5, i64 0, i32 2
  store i32 %3, ptr %6, align 8, !tbaa !51
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.bAKey, ptr %5, i64 0, i32 1
  store i64 %7, ptr %8, align 8, !tbaa !50
  store ptr %1, ptr %5, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = call ptr @BLI_ghash_lookup(ptr noundef %10, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret ptr %11
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @internalDocPrint(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.bArgDoc, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.bArgDoc, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %4, label %13, label %8

8:                                                ; preds = %1
  br i1 %7, label %11, label %9

9:                                                ; preds = %8
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %3, ptr noundef nonnull %6) #13
  br label %16

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %3) #13
  br label %16

13:                                               ; preds = %1
  br i1 %7, label %16, label %14

14:                                               ; preds = %13
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %6) #13
  br label %16

16:                                               ; preds = %11, %14, %13, %9
  %17 = getelementptr inbounds %struct.bArgDoc, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %18) #13
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @BLI_argsPrintOtherDoc(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %11, %10 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bArgDoc, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !66
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call fastcc void @internalDocPrint(ptr noundef nonnull %5) #13
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr %5, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !69

13:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_argsParse(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %96

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %8, %91
  %12 = phi i32 [ 1, %8 ], [ %93, %91 ]
  %13 = load ptr, ptr %9, align 8, !tbaa !38
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !70
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %11
  %19 = load ptr, ptr %10, align 8, !tbaa !44
  %20 = getelementptr inbounds ptr, ptr %19, i64 %14
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = tail call fastcc ptr @lookUp(ptr noundef nonnull %0, ptr noundef %21, i32 noundef %1, i32 noundef -1) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bArgument, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.bArgument, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  br label %29

29:                                               ; preds = %18, %24
  %30 = phi ptr [ %26, %24 ], [ %2, %18 ]
  %31 = phi ptr [ %28, %24 ], [ %3, %18 ]
  %32 = icmp eq ptr %30, null
  br i1 %32, label %91, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %5, align 8, !tbaa !43
  %35 = sub nsw i32 %34, %12
  %36 = load ptr, ptr %10, align 8, !tbaa !44
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  %38 = tail call i32 %30(i32 noundef %35, ptr noundef %37, ptr noundef %31) #12
  %39 = freeze i32 %38
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %79

41:                                               ; preds = %33
  %42 = load ptr, ptr %9, align 8, !tbaa !38
  %43 = getelementptr i32, ptr %42, i64 %14
  %44 = add nuw i32 %39, 1
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %45, 3
  %47 = and i64 %46, 8589934588
  %48 = add nsw i64 %45, -1
  %49 = insertelement <4 x i64> poison, i64 %48, i64 0
  %50 = shufflevector <4 x i64> %49, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %51

51:                                               ; preds = %73, %41
  %52 = phi i64 [ 0, %41 ], [ %74, %73 ]
  %53 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %41 ], [ %75, %73 ]
  %54 = icmp ule <4 x i64> %53, %50
  %55 = extractelement <4 x i1> %54, i64 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr i32, ptr %43, i64 %52
  store i32 %1, ptr %57, align 4, !tbaa !70
  br label %58

58:                                               ; preds = %56, %51
  %59 = extractelement <4 x i1> %54, i64 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = or disjoint i64 %52, 1
  %62 = getelementptr i32, ptr %43, i64 %61
  store i32 %1, ptr %62, align 4, !tbaa !70
  br label %63

63:                                               ; preds = %60, %58
  %64 = extractelement <4 x i1> %54, i64 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = or disjoint i64 %52, 2
  %67 = getelementptr i32, ptr %43, i64 %66
  store i32 %1, ptr %67, align 4, !tbaa !70
  br label %68

68:                                               ; preds = %65, %63
  %69 = extractelement <4 x i1> %54, i64 3
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = or disjoint i64 %52, 3
  %72 = getelementptr i32, ptr %43, i64 %71
  store i32 %1, ptr %72, align 4, !tbaa !70
  br label %73

73:                                               ; preds = %70, %68
  %74 = add i64 %52, 4
  %75 = add <4 x i64> %53, <i64 4, i64 4, i64 4, i64 4>
  %76 = icmp eq i64 %74, %47
  br i1 %76, label %77, label %51, !llvm.loop !71

77:                                               ; preds = %73
  %78 = add nsw i32 %39, %12
  br label %91

79:                                               ; preds = %33
  %80 = icmp ne i32 %39, -1
  %81 = or i1 %23, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %22, align 8, !tbaa !61
  %84 = getelementptr inbounds %struct.bAKey, ptr %83, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !50
  %86 = icmp eq i64 %85, -1
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %9, align 8, !tbaa !38
  %89 = getelementptr inbounds i32, ptr %88, i64 %14
  store i32 %1, ptr %89, align 4, !tbaa !70
  br label %96

90:                                               ; preds = %79
  br i1 %80, label %91, label %96

91:                                               ; preds = %90, %77, %29, %11
  %92 = phi i32 [ %12, %11 ], [ %78, %77 ], [ %12, %29 ], [ %12, %90 ]
  %93 = add nsw i32 %92, 1
  %94 = load i32, ptr %5, align 8, !tbaa !43
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %11, label %96, !llvm.loop !74

96:                                               ; preds = %91, %90, %4, %82, %87
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @case_strhash(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !75 {
  %2 = tail call ptr @__ctype_tolower_loc() #16
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i8, ptr %0, align 1, !tbaa !76
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds i32, ptr %3, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !70
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1, %10
  %11 = phi i32 [ %21, %10 ], [ %8, %1 ]
  %12 = phi ptr [ %14, %10 ], [ %0, %1 ]
  %13 = phi i32 [ %16, %10 ], [ 0, %1 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = mul i32 %13, 37
  %16 = add i32 %11, %15
  %17 = load i8, ptr %14, align 1, !tbaa !76
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, ptr %3, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !70
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !77

23:                                               ; preds = %10, %1
  %24 = phi i32 [ 0, %1 ], [ %16, %10 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @BLI_ghashutil_intcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 40}
!39 = !{!"bArgs", !40, i64 0, !35, i64 16, !41, i64 24, !35, i64 32, !35, i64 40}
!40 = !{!"ListBase", !35, i64 0, !35, i64 8}
!41 = !{!"int", !36, i64 0}
!42 = !{!39, !35, i64 16}
!43 = !{!39, !41, i64 24}
!44 = !{!39, !35, i64 32}
!45 = !{!"BLI_args.c:keyhash"}
!46 = !{!47, !35, i64 0}
!47 = !{!"bAKey", !35, i64 0, !48, i64 8, !41, i64 16}
!48 = !{!"long", !36, i64 0}
!49 = !{!"BLI_args.c:keycmp"}
!50 = !{!47, !48, i64 8}
!51 = !{!47, !41, i64 16}
!52 = !{!"BLI_args.c:BLI_listbase_clear"}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"BLI_args.c:internalDocs"}
!56 = !{!57, !35, i64 16}
!57 = !{!"bArgDoc", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40}
!58 = !{!57, !35, i64 24}
!59 = !{!57, !35, i64 32}
!60 = !{!"BLI_args.c:internalAdd"}
!61 = !{!62, !35, i64 0}
!62 = !{!"bArgument", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!63 = !{!62, !35, i64 8}
!64 = !{!62, !35, i64 16}
!65 = !{!62, !35, i64 24}
!66 = !{!57, !36, i64 40}
!67 = !{!"BLI_args.c:lookUp"}
!68 = !{!"BLI_args.c:internalDocPrint"}
!69 = distinct !{!69, !54}
!70 = !{!41, !41, i64 0}
!71 = distinct !{!71, !54, !72, !73}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = distinct !{!74, !54}
!75 = !{!"BLI_args.c:case_strhash"}
!76 = !{!36, !36, i64 0}
!77 = distinct !{!77, !54}
