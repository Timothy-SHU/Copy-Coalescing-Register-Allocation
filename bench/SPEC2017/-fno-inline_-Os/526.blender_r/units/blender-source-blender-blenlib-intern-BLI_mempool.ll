; ModuleID = 'blender/source/blender/blenlib/intern/BLI_mempool.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_mempool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BLI_mempool = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32 }
%struct.BLI_mempool_chunk = type { ptr }
%struct.BLI_freenode = type { ptr, i32 }
%struct.BLI_mempool_iter = type { ptr, ptr, i32 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"memory pool\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"BLI_Mempool Chunk\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_mempool_create(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 48, ptr noundef nonnull @.str) #12
  %7 = tail call i32 @llvm.umax.i32(i32 %0, i32 16)
  %8 = tail call fastcc i32 @mempool_maxchunks(i32 noundef %1, i32 noundef %2) #13
  %9 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 %7, ptr %9, align 8, !tbaa !38
  %10 = mul i32 %7, %2
  %11 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 3
  %12 = tail call fastcc i32 @power_of_2_max_u(i32 noundef %10) #13
  %13 = add i32 %12, -8
  store i32 %13, ptr %11, align 4, !tbaa !41
  %14 = udiv i32 %13, %7
  %15 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 5
  store i32 %3, ptr %16, align 4, !tbaa !43
  %17 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 6
  store ptr null, ptr %17, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 7
  store i32 %8, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.BLI_mempool, ptr %6, i64 0, i32 8
  store i32 0, ptr %19, align 4, !tbaa !46
  %20 = icmp ne i32 %1, 0
  %21 = icmp ne i32 %8, 0
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4, %23
  %24 = phi i32 [ %28, %23 ], [ 0, %4 ]
  %25 = phi ptr [ %27, %23 ], [ null, %4 ]
  %26 = tail call fastcc ptr @mempool_chunk_alloc(ptr noundef nonnull %6) #13
  %27 = tail call fastcc ptr @mempool_chunk_add(ptr noundef nonnull %6, ptr noundef %26, ptr noundef %25) #13
  %28 = add nuw i32 %24, 1
  %29 = icmp eq i32 %28, %8
  br i1 %29, label %30, label %23, !llvm.loop !47

30:                                               ; preds = %23, %4
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @mempool_maxchunks(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !49 {
  %3 = icmp ugt i32 %0, %1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = udiv i32 %0, %1
  %6 = add i32 %5, 1
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ 1, %2 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @power_of_2_max_u(i32 noundef %0) unnamed_addr #2 !PGOFuncName !50 {
  %2 = add i32 %0, -1
  %3 = lshr i32 %2, 1
  %4 = or i32 %3, %2
  %5 = lshr i32 %4, 2
  %6 = or i32 %5, %4
  %7 = lshr i32 %6, 4
  %8 = or i32 %7, %6
  %9 = lshr i32 %8, 8
  %10 = or i32 %9, %8
  %11 = lshr i32 %10, 16
  %12 = or i32 %11, %10
  %13 = add i32 %12, 1
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mempool_chunk_alloc(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !51 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 8
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @.str.1) #12
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef nonnull ptr @mempool_chunk_add(ptr nocapture noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #3 !PGOFuncName !52 {
  %4 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %1, i64 1
  %7 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  store ptr %1, ptr %10, align 8, !tbaa !34
  store ptr null, ptr %1, align 8, !tbaa !54
  store ptr %1, ptr %7, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store ptr %6, ptr %11, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %14, %3
  %16 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !43
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = icmp eq i32 %17, 0
  br i1 %21, label %26, label %23

23:                                               ; preds = %15
  br i1 %22, label %42, label %24

24:                                               ; preds = %23
  %25 = zext i32 %5 to i64
  br label %29

26:                                               ; preds = %15
  br i1 %22, label %42, label %27

27:                                               ; preds = %26
  %28 = zext i32 %5 to i64
  br label %36

29:                                               ; preds = %24, %29
  %30 = phi i32 [ %17, %24 ], [ %32, %29 ]
  %31 = phi ptr [ %6, %24 ], [ %33, %29 ]
  %32 = add i32 %30, -1
  %33 = getelementptr inbounds i8, ptr %31, i64 %25
  store ptr %33, ptr %31, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.BLI_freenode, ptr %31, i64 0, i32 1
  store i32 1701147238, ptr %34, align 8, !tbaa !58
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %42, label %29, !llvm.loop !59

36:                                               ; preds = %27, %36
  %37 = phi i32 [ %17, %27 ], [ %39, %36 ]
  %38 = phi ptr [ %6, %27 ], [ %40, %36 ]
  %39 = add i32 %37, -1
  %40 = getelementptr inbounds i8, ptr %38, i64 %28
  store ptr %40, ptr %38, align 8, !tbaa !56
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %36, !llvm.loop !60

42:                                               ; preds = %29, %36, %23, %26
  %43 = phi ptr [ %6, %26 ], [ %6, %23 ], [ %40, %36 ], [ %33, %29 ]
  %44 = zext i32 %5 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  store ptr null, ptr %46, align 8, !tbaa !56
  %47 = icmp eq ptr %2, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store ptr %6, ptr %2, align 8, !tbaa !56
  br label %49

49:                                               ; preds = %48, %42
  ret ptr %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_mempool_alloc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @mempool_chunk_alloc(ptr noundef nonnull %0) #13
  %7 = tail call fastcc ptr @mempool_chunk_add(ptr noundef nonnull %0, ptr noundef %6, ptr noundef null) #13
  %8 = load ptr, ptr %2, align 8, !tbaa !44
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BLI_freenode, ptr %10, i64 0, i32 1
  store i32 1684370293, ptr %16, align 8, !tbaa !58
  br label %17

17:                                               ; preds = %15, %9
  %18 = load ptr, ptr %10, align 8, !tbaa !56
  store ptr %18, ptr %2, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !46
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_mempool_calloc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_mempool_alloc(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !38
  %5 = zext i32 %4 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %5, i1 false)
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_mempool_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BLI_freenode, ptr %1, i64 0, i32 1
  store i32 1701147238, ptr %8, align 8, !tbaa !58
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  store ptr %11, ptr %1, align 8, !tbaa !56
  store ptr %1, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !46
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 8, !tbaa !61
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !38
  tail call fastcc void @mempool_chunk_free_all(ptr noundef nonnull %18) #13
  store ptr null, ptr %17, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 1
  store ptr %17, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %17, i64 1
  store ptr %24, ptr %10, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !42
  %27 = icmp eq i32 %26, 0
  %28 = zext i32 %22 to i64
  br i1 %27, label %35, label %29

29:                                               ; preds = %20, %29
  %30 = phi ptr [ %33, %29 ], [ %24, %20 ]
  %31 = phi i32 [ %32, %29 ], [ %26, %20 ]
  %32 = add i32 %31, -1
  %33 = getelementptr inbounds i8, ptr %30, i64 %28
  store ptr %33, ptr %30, align 8, !tbaa !56
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %29, !llvm.loop !62

35:                                               ; preds = %29, %20
  %36 = phi ptr [ %24, %20 ], [ %33, %29 ]
  %37 = sub nsw i64 0, %28
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  store ptr null, ptr %38, align 8, !tbaa !56
  br label %39

39:                                               ; preds = %35, %16, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mempool_chunk_free_all(ptr noundef %0) unnamed_addr #0 !PGOFuncName !63 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call fastcc void @mempool_chunk_free(ptr noundef nonnull %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !64

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_mempool_count(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !46
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_mempool_findelem(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.BLI_mempool_iter, align 8
  %4 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @BLI_mempool_iternew(ptr noundef nonnull %0, ptr noundef nonnull %3) #13
  %8 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #13
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %12, %10 ], [ %1, %7 ]
  %12 = add i32 %11, -1
  %13 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #13
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %10, !llvm.loop !65

15:                                               ; preds = %10, %7
  %16 = phi ptr [ %8, %7 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %17

17:                                               ; preds = %2, %15
  %18 = phi ptr [ %16, %15 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_mempool_iternew(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  store ptr %0, ptr %1, align 8, !tbaa !66
  %3 = load ptr, ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.BLI_mempool_iter, ptr %1, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.BLI_mempool_iter, ptr %1, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !69
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @BLI_mempool_iterstep(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BLI_mempool_iter, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.BLI_mempool_iter, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %23, %1
  %6 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BLI_mempool_chunk, ptr %6, i64 1
  %10 = load ptr, ptr %0, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.BLI_mempool, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = load i32, ptr %4, align 8, !tbaa !69
  %14 = mul i32 %13, %12
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %9, i64 %15
  %17 = add i32 %13, 1
  store i32 %17, ptr %4, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.BLI_mempool, ptr %10, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  store i32 0, ptr %4, align 8, !tbaa !69
  %22 = load ptr, ptr %6, align 8, !tbaa !54
  store ptr %22, ptr %2, align 8, !tbaa !68
  br label %23

23:                                               ; preds = %8, %21
  %24 = phi ptr [ %6, %8 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.BLI_freenode, ptr %16, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !58
  %27 = icmp eq i32 %26, 1701147238
  br i1 %27, label %5, label %28, !llvm.loop !70

28:                                               ; preds = %23, %5
  %29 = phi ptr [ null, %5 ], [ %16, %23 ]
  ret ptr %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_mempool_as_table(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = alloca %struct.BLI_mempool_iter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @BLI_mempool_iternew(ptr noundef %0, ptr noundef nonnull %3) #13
  %4 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = phi ptr [ %9, %6 ], [ %1, %2 ]
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  store ptr %7, ptr %8, align 8, !tbaa !34
  %10 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !71

12:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_mempool_as_tableN(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = tail call ptr %3(i64 noundef %7, ptr noundef %1) #12
  tail call void @BLI_mempool_as_table(ptr noundef %0, ptr noundef %8) #13
  ret ptr %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_mempool_as_array(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = alloca %struct.BLI_mempool_iter, align 8
  %4 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @BLI_mempool_iternew(ptr noundef %0, ptr noundef nonnull %3) #13
  %6 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = zext i32 %5 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %6, %8 ], [ %14, %10 ]
  %12 = phi ptr [ %1, %8 ], [ %13, %10 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr nonnull align 1 %11, i64 %9, i1 false)
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %3) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !72

16:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_mempool_as_arrayN(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = mul i32 %7, %5
  %9 = zext i32 %8 to i64
  %10 = tail call ptr %3(i64 noundef %9, ptr noundef %1) #12
  tail call void @BLI_mempool_as_array(ptr noundef %0, ptr noundef %10) #13
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_mempool_clear_ex(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !45
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = tail call fastcc i32 @mempool_maxchunks(i32 noundef %1, i32 noundef %9) #13
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %6, %4 ], [ %10, %7 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !61
  %14 = add i32 %12, -1
  %15 = tail call fastcc ptr @mempool_chunk_find(ptr noundef %13, i32 noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  store ptr null, ptr %15, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %21, %20
  %22 = phi ptr [ %18, %20 ], [ %23, %21 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  tail call fastcc void @mempool_chunk_free(ptr noundef nonnull %22) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !73

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8, !tbaa !61
  br label %27

27:                                               ; preds = %25, %17, %11
  %28 = phi ptr [ %26, %25 ], [ %13, %17 ], [ %13, %11 ]
  %29 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 6
  store ptr null, ptr %29, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.BLI_mempool, ptr %0, i64 0, i32 8
  store i32 0, ptr %30, align 4, !tbaa !46
  %31 = icmp eq ptr %28, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %31, label %38, label %32

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %36, %32 ], [ null, %27 ]
  %34 = phi ptr [ %35, %32 ], [ %28, %27 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  %36 = tail call fastcc ptr @mempool_chunk_add(ptr noundef nonnull %0, ptr noundef nonnull %34, ptr noundef %33) #13
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %32, !llvm.loop !74

38:                                               ; preds = %32, %27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @mempool_chunk_find(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !75 {
  %3 = icmp ne i32 %1, 0
  %4 = icmp ne ptr %0, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %8 = phi ptr [ %10, %6 ], [ %0, %2 ]
  %9 = add i32 %7, -1
  %10 = load ptr, ptr %8, align 8, !tbaa !54
  %11 = icmp ne i32 %9, 0
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %6, label %14, !llvm.loop !76

14:                                               ; preds = %6, %2
  %15 = phi ptr [ %0, %2 ], [ %10, %6 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mempool_chunk_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !77 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_mempool_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_mempool_clear_ex(ptr noundef %0, i32 noundef -1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_mempool_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  tail call fastcc void @mempool_chunk_free_all(ptr noundef %2) #13
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %3(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

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
!38 = !{!39, !40, i64 16}
!39 = !{!"BLI_mempool", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32, !40, i64 40, !40, i64 44}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 20}
!42 = !{!39, !40, i64 24}
!43 = !{!39, !40, i64 28}
!44 = !{!39, !35, i64 32}
!45 = !{!39, !40, i64 40}
!46 = !{!39, !40, i64 44}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"BLI_mempool.c:mempool_maxchunks"}
!50 = !{!"BLI_mempool.c:power_of_2_max_u"}
!51 = !{!"BLI_mempool.c:mempool_chunk_alloc"}
!52 = !{!"BLI_mempool.c:mempool_chunk_add"}
!53 = !{!39, !35, i64 8}
!54 = !{!55, !35, i64 0}
!55 = !{!"BLI_mempool_chunk", !35, i64 0}
!56 = !{!57, !35, i64 0}
!57 = !{!"BLI_freenode", !35, i64 0, !40, i64 8}
!58 = !{!57, !40, i64 8}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = !{!39, !35, i64 0}
!62 = distinct !{!62, !48}
!63 = !{!"BLI_mempool.c:mempool_chunk_free_all"}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = !{!67, !35, i64 0}
!67 = !{!"BLI_mempool_iter", !35, i64 0, !35, i64 8, !40, i64 16}
!68 = !{!67, !35, i64 8}
!69 = !{!67, !40, i64 16}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !48}
!75 = !{!"BLI_mempool.c:mempool_chunk_find"}
!76 = distinct !{!76, !48}
!77 = !{!"BLI_mempool.c:mempool_chunk_free"}
