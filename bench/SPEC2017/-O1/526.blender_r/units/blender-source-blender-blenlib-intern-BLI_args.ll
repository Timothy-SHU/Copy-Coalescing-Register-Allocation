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

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_argsInit(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef nonnull @.str) #11
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.1) #11
  %9 = getelementptr inbounds %struct.bArgs, ptr %4, i64 0, i32 4
  store ptr %8, ptr %9, align 8, !tbaa !38
  %10 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @keyhash, ptr noundef nonnull @keycmp, ptr noundef nonnull @.str.2) #11
  %11 = getelementptr inbounds %struct.bArgs, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.bArgs, ptr %4, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 %0, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.bArgs, ptr %4, i64 0, i32 3
  store ptr %1, ptr %13, align 8, !tbaa !44
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @keyhash(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = tail call ptr @__ctype_tolower_loc() #12
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load i8, ptr %2, align 1, !tbaa !48
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1, %11
  %12 = phi i32 [ %22, %11 ], [ %9, %1 ]
  %13 = phi ptr [ %15, %11 ], [ %2, %1 ]
  %14 = phi i32 [ %17, %11 ], [ 0, %1 ]
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = mul i32 %14, 37
  %17 = add i32 %12, %16
  %18 = load i8, ptr %15, align 1, !tbaa !48
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i32, ptr %4, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %11, !llvm.loop !50

24:                                               ; preds = %11, %1
  %25 = phi i32 [ 0, %1 ], [ %17, %11 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @keycmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bAKey, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.bAKey, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i64 %4, %6
  %8 = icmp eq i64 %4, -1
  %9 = or i1 %8, %7
  %10 = icmp eq i64 %6, -1
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bAKey, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !54
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bAKey, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !54
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %12
  %21 = load ptr, ptr %0, align 8, !tbaa !45
  %22 = load ptr, ptr %1, align 8, !tbaa !45
  %23 = tail call i32 @BLI_strcasecmp(ptr noundef %21, ptr noundef %22) #11
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %36

26:                                               ; preds = %16
  %27 = load ptr, ptr %0, align 8, !tbaa !45
  %28 = load ptr, ptr %1, align 8, !tbaa !45
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %28) #13
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %36

32:                                               ; preds = %2
  %33 = inttoptr i64 %4 to ptr
  %34 = inttoptr i64 %6 to ptr
  %35 = tail call zeroext i8 @BLI_ghashutil_intcmp(ptr noundef %33, ptr noundef %34) #11
  br label %36

36:                                               ; preds = %32, %26, %20
  %37 = phi i8 [ %25, %20 ], [ %31, %26 ], [ %35, %32 ]
  ret i8 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_argsFree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef %4, ptr noundef %4) #11
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  tail call void %5(ptr noundef %7) #11
  tail call void @BLI_freelistN(ptr noundef %0) #11
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef %0) #11
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @BLI_argsPrint(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
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
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %12, ptr noundef %11)
  %14 = add nuw nsw i64 %8, 1
  %15 = load i32, ptr %2, align 8, !tbaa !43
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %7, label %18, !llvm.loop !55

18:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BLI_argsArgv(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_argsAddCase(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 48, ptr noundef nonnull @.str.4) #11
  %12 = icmp eq ptr %6, null
  %13 = select i1 %12, ptr @NO_DOCS, ptr %6
  %14 = getelementptr inbounds %struct.bArgDoc, ptr %11, i64 0, i32 2
  store ptr %2, ptr %14, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.bArgDoc, ptr %11, i64 0, i32 3
  store ptr %4, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.bArgDoc, ptr %11, i64 0, i32 4
  store ptr %13, ptr %16, align 8, !tbaa !59
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %11) #11
  %17 = icmp eq ptr %2, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call fastcc void @internalAdd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef %3, ptr noundef %7, ptr noundef %8, ptr noundef %11)
  br label %19

19:                                               ; preds = %18, %9
  %20 = icmp eq ptr %4, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call fastcc void @internalAdd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %11)
  br label %22

22:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @internalAdd(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.bAKey, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %9 = getelementptr inbounds %struct.bAKey, ptr %8, i64 0, i32 2
  store i32 %3, ptr %9, align 8, !tbaa !54
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.bAKey, ptr %8, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !53
  store ptr %1, ptr %8, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = call ptr @BLI_ghash_lookup(ptr noundef %13, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %7
  %17 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %18 = icmp eq i32 %3, 1
  %19 = select i1 %18, ptr @.str.7, ptr @.str.8
  %20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %19)
  %21 = load ptr, ptr %14, align 8, !tbaa !60
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.bAKey, ptr %21, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !53
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.bAKey, ptr %21, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !54
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, ptr @.str.7, ptr @.str.8
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %22, i32 noundef %25, ptr noundef nonnull %29)
  br label %31

31:                                               ; preds = %16, %7
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = call ptr %32(i64 noundef 32, ptr noundef nonnull @.str.10) #11
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %35 = call ptr %34(i64 noundef 24, ptr noundef nonnull @.str.11) #11
  store ptr %1, ptr %35, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.bAKey, ptr %35, i64 0, i32 1
  store i64 %10, ptr %36, align 8, !tbaa !53
  %37 = getelementptr inbounds %struct.bAKey, ptr %35, i64 0, i32 2
  store i32 %3, ptr %37, align 8, !tbaa !54
  store ptr %35, ptr %33, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.bArgument, ptr %33, i64 0, i32 1
  store ptr %4, ptr %38, align 8, !tbaa !62
  %39 = getelementptr inbounds %struct.bArgument, ptr %33, i64 0, i32 2
  store ptr %5, ptr %39, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.bArgument, ptr %33, i64 0, i32 3
  store ptr %6, ptr %40, align 8, !tbaa !64
  %41 = load ptr, ptr %12, align 8, !tbaa !42
  call void @BLI_ghash_insert(ptr noundef %41, ptr noundef nonnull %35, ptr noundef nonnull %33) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_argsAdd(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 48, ptr noundef nonnull @.str.4) #11
  %10 = icmp eq ptr %4, null
  %11 = select i1 %10, ptr @NO_DOCS, ptr %4
  %12 = getelementptr inbounds %struct.bArgDoc, ptr %9, i64 0, i32 2
  store ptr %2, ptr %12, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.bArgDoc, ptr %9, i64 0, i32 3
  store ptr %3, ptr %13, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.bArgDoc, ptr %9, i64 0, i32 4
  store ptr %11, ptr %14, align 8, !tbaa !59
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %9) #11
  %15 = icmp eq ptr %2, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call fastcc void @internalAdd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %9)
  br label %17

17:                                               ; preds = %16, %7
  %18 = icmp eq ptr %3, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call fastcc void @internalAdd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1, i32 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %9)
  br label %20

20:                                               ; preds = %17, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_argsPrintArgDoc(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bAKey, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.bAKey, ptr %3, i64 0, i32 2
  store i32 -1, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.bAKey, ptr %3, i64 0, i32 1
  store i64 -1, ptr %5, align 8, !tbaa !53
  store ptr %1, ptr %3, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bArgument, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.bArgDoc, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.bArgDoc, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = icmp eq ptr %17, null
  br i1 %15, label %24, label %19

19:                                               ; preds = %10
  br i1 %18, label %22, label %20

20:                                               ; preds = %19
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %14, ptr noundef nonnull %17)
  br label %27

22:                                               ; preds = %19
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %14)
  br label %27

24:                                               ; preds = %10
  br i1 %18, label %27, label %25

25:                                               ; preds = %24
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %17)
  br label %27

27:                                               ; preds = %20, %22, %24, %25
  %28 = getelementptr inbounds %struct.bArgDoc, ptr %12, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %29)
  %31 = getelementptr inbounds %struct.bArgDoc, ptr %12, i64 0, i32 5
  store i8 1, ptr %31, align 8, !tbaa !65
  br label %32

32:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @BLI_argsPrintOtherDoc(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1, %28
  %5 = phi ptr [ %29, %28 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bArgDoc, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !65
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bArgDoc, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.bArgDoc, ptr %5, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %12, label %21, label %16

16:                                               ; preds = %9
  br i1 %15, label %19, label %17

17:                                               ; preds = %16
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %11, ptr noundef nonnull %14)
  br label %24

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %11)
  br label %24

21:                                               ; preds = %9
  br i1 %15, label %24, label %22

22:                                               ; preds = %21
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %14)
  br label %24

24:                                               ; preds = %17, %19, %21, %22
  %25 = getelementptr inbounds %struct.bArgDoc, ptr %5, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %26)
  br label %28

28:                                               ; preds = %4, %24
  %29 = load ptr, ptr %5, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %4, !llvm.loop !66

31:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_argsParse(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.bAKey, align 8
  %6 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %85

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.bAKey, ptr %5, i64 0, i32 2
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.bAKey, ptr %5, i64 0, i32 1
  %15 = getelementptr inbounds %struct.bArgs, ptr %0, i64 0, i32 1
  br label %16

16:                                               ; preds = %9, %80
  %17 = phi i32 [ 1, %9 ], [ %82, %80 ]
  %18 = load ptr, ptr %10, align 8, !tbaa !38
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %16
  %24 = load ptr, ptr %11, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %24, i64 %19
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  store i32 -1, ptr %12, align 8, !tbaa !54
  store i64 %13, ptr %14, align 8, !tbaa !53
  store ptr %26, ptr %5, align 8, !tbaa !45
  %27 = load ptr, ptr %15, align 8, !tbaa !42
  %28 = call ptr @BLI_ghash_lookup(ptr noundef %27, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.bArgument, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.bArgument, ptr %28, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  br label %35

35:                                               ; preds = %23, %30
  %36 = phi ptr [ %32, %30 ], [ %2, %23 ]
  %37 = phi ptr [ %34, %30 ], [ %3, %23 ]
  %38 = icmp eq ptr %36, null
  br i1 %38, label %76, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %6, align 8, !tbaa !43
  %41 = sub nsw i32 %40, %17
  %42 = load ptr, ptr %11, align 8, !tbaa !44
  %43 = getelementptr inbounds ptr, ptr %42, i64 %19
  %44 = call i32 %36(i32 noundef %41, ptr noundef %43, ptr noundef %37) #11
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load ptr, ptr %10, align 8, !tbaa !38
  %48 = sext i32 %17 to i64
  %49 = add nuw i32 %44, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr i32, ptr %47, i64 %48
  br label %52

52:                                               ; preds = %46, %52
  %53 = phi i64 [ 0, %46 ], [ %55, %52 ]
  %54 = getelementptr i32, ptr %51, i64 %53
  store i32 %1, ptr %54, align 4, !tbaa !49
  %55 = add nuw nsw i64 %53, 1
  %56 = icmp eq i64 %55, %50
  br i1 %56, label %57, label %52, !llvm.loop !67

57:                                               ; preds = %52
  %58 = add nsw i32 %44, %17
  br label %71

59:                                               ; preds = %39
  %60 = icmp ne i32 %44, -1
  %61 = or i1 %29, %60
  %62 = select i1 %60, i32 0, i32 2
  br i1 %61, label %71, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %28, align 8, !tbaa !60
  %65 = getelementptr inbounds %struct.bAKey, ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !53
  %67 = icmp eq i64 %66, -1
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %10, align 8, !tbaa !38
  %70 = getelementptr inbounds i32, ptr %69, i64 %19
  store i32 %1, ptr %70, align 4, !tbaa !49
  br label %71

71:                                               ; preds = %59, %57, %68, %63
  %72 = phi i32 [ %17, %63 ], [ %17, %68 ], [ %58, %57 ], [ %17, %59 ]
  %73 = phi i1 [ false, %63 ], [ false, %68 ], [ true, %57 ], [ %60, %59 ]
  %74 = phi i32 [ 2, %63 ], [ 2, %68 ], [ 0, %57 ], [ %62, %59 ]
  %75 = select i1 %73, i32 0, i32 %74
  br label %76

76:                                               ; preds = %71, %35
  %77 = phi i32 [ %17, %35 ], [ %72, %71 ]
  %78 = phi i32 [ 0, %35 ], [ %75, %71 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76, %16
  %81 = phi i32 [ %77, %76 ], [ %17, %16 ]
  %82 = add nsw i32 %81, 1
  %83 = load i32, ptr %6, align 8, !tbaa !43
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %16, label %85, !llvm.loop !68

85:                                               ; preds = %80, %76, %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #7

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare zeroext i8 @BLI_ghashutil_intcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
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
!45 = !{!46, !35, i64 0}
!46 = !{!"bAKey", !35, i64 0, !47, i64 8, !41, i64 16}
!47 = !{!"long", !36, i64 0}
!48 = !{!36, !36, i64 0}
!49 = !{!41, !41, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!46, !47, i64 8}
!54 = !{!46, !41, i64 16}
!55 = distinct !{!55, !51, !52}
!56 = !{!57, !35, i64 16}
!57 = !{!"bArgDoc", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40}
!58 = !{!57, !35, i64 24}
!59 = !{!57, !35, i64 32}
!60 = !{!61, !35, i64 0}
!61 = !{!"bArgument", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!62 = !{!61, !35, i64 8}
!63 = !{!61, !35, i64 16}
!64 = !{!61, !35, i64 24}
!65 = !{!57, !36, i64 40}
!66 = distinct !{!66, !51, !52}
!67 = distinct !{!67, !51, !52}
!68 = distinct !{!68, !51, !52}
