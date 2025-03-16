; ModuleID = 'src/jmemmgr.c'
source_filename = "src/jmemmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_memory_mgr = type { %struct.jpeg_memory_mgr, [2 x ptr], [2 x ptr], ptr, ptr, i64, i32 }
%struct.anon = type { ptr, i64, i64 }
%union.small_pool_struct = type { %struct.anon }
%struct.anon.0 = type { ptr, i64, i64 }
%union.large_pool_struct = type { %struct.anon.0 }
%struct.jvirt_sarray_control = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.backing_store_struct }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.jvirt_barray_control = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.backing_store_struct }

@.str = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@first_pool_slop = internal unnamed_addr constant [2 x i64] [i64 1600, i64 16000], align 16
@extra_pool_slop = internal unnamed_addr constant [2 x i64] [i64 0, i64 5000], align 16

; Function Attrs: nounwind uwtable
define dso_local void @jinit_memory_mgr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %4 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !5
  %5 = tail call i64 @jpeg_mem_init(ptr noundef %0) #7
  store i64 %5, ptr %2, align 8, !tbaa !11
  %6 = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef 160) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  tail call void @jpeg_mem_term(ptr noundef %0) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 53, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 0, ptr %11, align 4, !tbaa !16
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  tail call void %13(ptr noundef nonnull %0) #7
  br label %14

14:                                               ; preds = %8, %1
  store ptr @alloc_small, ptr %6, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 1
  store ptr @alloc_large, ptr %15, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 2
  store ptr @alloc_sarray, ptr %16, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 3
  store ptr @alloc_barray, ptr %17, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 4
  store ptr @request_virt_sarray, ptr %18, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 5
  store ptr @request_virt_barray, ptr %19, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 6
  store ptr @realize_virt_arrays, ptr %20, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 7
  store ptr @access_virt_sarray, ptr %21, align 8, !tbaa !27
  %22 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 8
  store ptr @access_virt_barray, ptr %22, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 9
  store ptr @free_pool, ptr %23, align 8, !tbaa !29
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 10
  store ptr @self_destruct, ptr %24, align 8, !tbaa !30
  %25 = load i64, ptr %2, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %6, i64 0, i32 11
  store i64 %25, ptr %26, align 8, !tbaa !31
  %27 = getelementptr i8, ptr %6, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, i8 0, i64 32, i1 false)
  %28 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 3
  %29 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store i64 160, ptr %29, align 8, !tbaa !32
  store ptr %6, ptr %4, align 8, !tbaa !5
  %30 = tail call ptr @getenv(ptr noundef nonnull @.str) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 120, ptr %3, align 1, !tbaa !16
  %33 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %30, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i8, ptr %3, align 1
  %37 = and i8 %36, -33
  %38 = icmp eq i8 %37, 77
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, ptr %2, align 8, !tbaa !11
  %41 = mul nsw i64 %40, 1000
  store i64 %41, ptr %2, align 8, !tbaa !11
  br label %42

42:                                               ; preds = %35, %39
  %43 = load i64, ptr %2, align 8, !tbaa !11
  %44 = mul nsw i64 %43, 1000
  store i64 %44, ptr %26, align 8, !tbaa !31
  br label %45

45:                                               ; preds = %42, %32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %46

46:                                               ; preds = %45, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @jpeg_mem_init(ptr noundef) local_unnamed_addr #2

declare ptr @jpeg_get_small(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_mem_term(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp ugt i64 %2, 999999976
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 53, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 1, ptr %10, align 4, !tbaa !16
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  tail call void %12(ptr noundef nonnull %0) #7
  br label %13

13:                                               ; preds = %7, %3
  %14 = add i64 %2, 7
  %15 = and i64 %14, -8
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 12, ptr %19, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %1, ptr %20, align 4, !tbaa !16
  %21 = load ptr, ptr %0, align 8, !tbaa !13
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  tail call void %22(ptr noundef nonnull %0) #7
  br label %23

23:                                               ; preds = %13, %17
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %31

28:                                               ; preds = %31
  %29 = load ptr, ptr %32, align 8, !tbaa !16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !llvm.loop !33

31:                                               ; preds = %23, %28
  %32 = phi ptr [ %29, %28 ], [ %26, %23 ]
  %33 = getelementptr inbounds %struct.anon, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !16
  %35 = icmp ult i64 %34, %15
  br i1 %35, label %28, label %72, !llvm.loop !33

36:                                               ; preds = %28, %23
  %37 = phi ptr [ null, %23 ], [ %32, %28 ]
  %38 = add i64 %15, 24
  %39 = icmp eq ptr %37, null
  %40 = select i1 %39, ptr @first_pool_slop, ptr @extra_pool_slop
  %41 = getelementptr inbounds [2 x i64], ptr %40, i64 0, i64 %24
  %42 = load i64, ptr %41, align 8, !tbaa !11
  %43 = sub i64 999999976, %15
  %44 = tail call i64 @llvm.umin.i64(i64 %42, i64 %43)
  %45 = add i64 %38, %44
  %46 = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef %45) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %36, %58
  %49 = phi i64 [ %50, %58 ], [ %44, %36 ]
  %50 = lshr i64 %49, 1
  %51 = icmp ult i64 %49, 100
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 8, !tbaa !13
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 5
  store i32 53, ptr %54, align 8, !tbaa !14
  %55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 6
  store i32 2, ptr %55, align 4, !tbaa !16
  %56 = load ptr, ptr %0, align 8, !tbaa !13
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  tail call void %57(ptr noundef nonnull %0) #7
  br label %58

58:                                               ; preds = %52, %48
  %59 = add i64 %38, %50
  %60 = tail call ptr @jpeg_get_small(ptr noundef %0, i64 noundef %59) #7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %48, label %62, !llvm.loop !35

62:                                               ; preds = %58, %36
  %63 = phi i64 [ %44, %36 ], [ %50, %58 ]
  %64 = phi i64 [ %45, %36 ], [ %59, %58 ]
  %65 = phi ptr [ %46, %36 ], [ %60, %58 ]
  %66 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 5
  %67 = load i64, ptr %66, align 8, !tbaa !32
  %68 = add i64 %67, %64
  store i64 %68, ptr %66, align 8, !tbaa !32
  %69 = add i64 %63, %15
  %70 = getelementptr inbounds %struct.anon, ptr %65, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  store i64 %69, ptr %70, align 8, !tbaa !16
  %71 = select i1 %39, ptr %25, ptr %37
  store ptr %65, ptr %71, align 8, !tbaa !16
  br label %72

72:                                               ; preds = %31, %62
  %73 = phi ptr [ %65, %62 ], [ %32, %31 ]
  %74 = getelementptr inbounds %union.small_pool_struct, ptr %73, i64 1
  %75 = getelementptr inbounds %struct.anon, ptr %73, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !16
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  %78 = add i64 %76, %15
  store i64 %78, ptr %75, align 8, !tbaa !16
  %79 = getelementptr inbounds %struct.anon, ptr %73, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !16
  %81 = sub i64 %80, %15
  store i64 %81, ptr %79, align 8, !tbaa !16
  ret ptr %77
}

; Function Attrs: nounwind uwtable
define internal ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp ugt i64 %2, 999999976
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 53, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 3, ptr %10, align 4, !tbaa !16
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  tail call void %12(ptr noundef nonnull %0) #7
  br label %13

13:                                               ; preds = %7, %3
  %14 = add i64 %2, 7
  %15 = and i64 %14, -8
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 12, ptr %19, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %1, ptr %20, align 4, !tbaa !16
  %21 = load ptr, ptr %0, align 8, !tbaa !13
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  tail call void %22(ptr noundef nonnull %0) #7
  br label %23

23:                                               ; preds = %13, %17
  %24 = add i64 %15, 24
  %25 = tail call ptr @jpeg_get_large(ptr noundef %0, i64 noundef %24) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 53, ptr %29, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6
  store i32 4, ptr %30, align 4, !tbaa !16
  %31 = load ptr, ptr %0, align 8, !tbaa !13
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  tail call void %32(ptr noundef nonnull %0) #7
  br label %33

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !32
  %36 = add i64 %35, %24
  store i64 %36, ptr %34, align 8, !tbaa !32
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !36
  store ptr %39, ptr %25, align 8, !tbaa !16
  %40 = getelementptr inbounds %struct.anon.0, ptr %25, i64 0, i32 1
  store i64 %15, ptr %40, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.anon.0, ptr %25, i64 0, i32 2
  store i64 0, ptr %41, align 8, !tbaa !16
  store ptr %25, ptr %38, align 8, !tbaa !36
  %42 = getelementptr inbounds %union.large_pool_struct, ptr %25, i64 1
  ret ptr %42
}

; Function Attrs: nounwind uwtable
define internal ptr @alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = zext i32 %2 to i64
  %8 = udiv i64 999999976, %7
  %9 = icmp ugt i32 %2, 999999976
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 69, ptr %12, align 8, !tbaa !14
  %13 = load ptr, ptr %11, align 8, !tbaa !17
  tail call void %13(ptr noundef nonnull %0) #7
  br label %14

14:                                               ; preds = %10, %4
  %15 = zext i32 %3 to i64
  %16 = icmp ult i64 %8, %15
  %17 = trunc i64 %8 to i32
  %18 = select i1 %16, i32 %17, i32 %3
  %19 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 6
  store i32 %18, ptr %19, align 8, !tbaa !37
  %20 = shl nuw nsw i64 %15, 3
  %21 = tail call ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef %20)
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %84, label %23

23:                                               ; preds = %14
  %24 = icmp ugt i32 %1, 1
  %25 = sext i32 %1 to i64
  br label %29

26:                                               ; preds = %74, %63
  %27 = phi i32 [ %30, %63 ], [ %78, %74 ]
  %28 = icmp ult i32 %27, %3
  br i1 %28, label %29, label %84, !llvm.loop !38

29:                                               ; preds = %23, %26
  %30 = phi i32 [ 0, %23 ], [ %27, %26 ]
  %31 = phi i32 [ %18, %23 ], [ %33, %26 ]
  %32 = sub i32 %3, %30
  %33 = tail call i32 @llvm.umin.i32(i32 %31, i32 %32)
  %34 = zext i32 %33 to i64
  %35 = mul nuw i64 %34, %7
  %36 = load ptr, ptr %5, align 8, !tbaa !5
  %37 = icmp ugt i64 %35, 999999976
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load ptr, ptr %0, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 5
  store i32 53, ptr %40, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 6
  store i32 3, ptr %41, align 4, !tbaa !16
  %42 = load ptr, ptr %0, align 8, !tbaa !13
  %43 = load ptr, ptr %42, align 8, !tbaa !17
  tail call void %43(ptr noundef nonnull %0) #7
  br label %44

44:                                               ; preds = %38, %29
  %45 = add nuw i64 %35, 7
  %46 = and i64 %45, -8
  br i1 %24, label %47, label %53

47:                                               ; preds = %44
  %48 = load ptr, ptr %0, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 5
  store i32 12, ptr %49, align 8, !tbaa !14
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 6
  store i32 %1, ptr %50, align 4, !tbaa !16
  %51 = load ptr, ptr %0, align 8, !tbaa !13
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  tail call void %52(ptr noundef nonnull %0) #7
  br label %53

53:                                               ; preds = %47, %44
  %54 = add nuw i64 %46, 24
  %55 = tail call ptr @jpeg_get_large(ptr noundef %0, i64 noundef %54) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 8, !tbaa !13
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 53, ptr %59, align 8, !tbaa !14
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 6
  store i32 4, ptr %60, align 4, !tbaa !16
  %61 = load ptr, ptr %0, align 8, !tbaa !13
  %62 = load ptr, ptr %61, align 8, !tbaa !17
  tail call void %62(ptr noundef nonnull %0) #7
  br label %63

63:                                               ; preds = %53, %57
  %64 = getelementptr inbounds %struct.my_memory_mgr, ptr %36, i64 0, i32 5
  %65 = load i64, ptr %64, align 8, !tbaa !32
  %66 = add i64 %65, %54
  store i64 %66, ptr %64, align 8, !tbaa !32
  %67 = getelementptr inbounds %struct.my_memory_mgr, ptr %36, i64 0, i32 2, i64 %25
  %68 = load ptr, ptr %67, align 8, !tbaa !36
  store ptr %68, ptr %55, align 8, !tbaa !16
  %69 = getelementptr inbounds %struct.anon.0, ptr %55, i64 0, i32 1
  store i64 %46, ptr %69, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.anon.0, ptr %55, i64 0, i32 2
  store i64 0, ptr %70, align 8, !tbaa !16
  store ptr %55, ptr %67, align 8, !tbaa !36
  %71 = icmp eq i32 %33, 0
  br i1 %71, label %26, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %union.large_pool_struct, ptr %55, i64 1
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi ptr [ %81, %74 ], [ %73, %72 ]
  %76 = phi i32 [ %82, %74 ], [ %33, %72 ]
  %77 = phi i32 [ %78, %74 ], [ %30, %72 ]
  %78 = add i32 %77, 1
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds ptr, ptr %21, i64 %79
  store ptr %75, ptr %80, align 8, !tbaa !36
  %81 = getelementptr inbounds i8, ptr %75, i64 %7
  %82 = add i32 %76, -1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %26, label %74, !llvm.loop !39

84:                                               ; preds = %26, %14
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal ptr @alloc_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = zext i32 %2 to i64
  %8 = shl nuw nsw i64 %7, 7
  %9 = udiv i64 999999976, %8
  %10 = icmp ugt i32 %2, 7812499
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 69, ptr %13, align 8, !tbaa !14
  %14 = load ptr, ptr %12, align 8, !tbaa !17
  tail call void %14(ptr noundef nonnull %0) #7
  br label %15

15:                                               ; preds = %11, %4
  %16 = zext i32 %3 to i64
  %17 = icmp ult i64 %9, %16
  %18 = trunc i64 %9 to i32
  %19 = select i1 %17, i32 %18, i32 %3
  %20 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 6
  store i32 %19, ptr %20, align 8, !tbaa !37
  %21 = shl nuw nsw i64 %16, 3
  %22 = tail call ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef %21)
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %84, label %24

24:                                               ; preds = %15
  %25 = shl nuw nsw i64 %7, 7
  %26 = icmp ugt i32 %1, 1
  %27 = sext i32 %1 to i64
  br label %31

28:                                               ; preds = %74, %63
  %29 = phi i32 [ %32, %63 ], [ %78, %74 ]
  %30 = icmp ult i32 %29, %3
  br i1 %30, label %31, label %84, !llvm.loop !40

31:                                               ; preds = %24, %28
  %32 = phi i32 [ 0, %24 ], [ %29, %28 ]
  %33 = phi i32 [ %19, %24 ], [ %35, %28 ]
  %34 = sub i32 %3, %32
  %35 = tail call i32 @llvm.umin.i32(i32 %33, i32 %34)
  %36 = zext i32 %35 to i64
  %37 = mul i64 %25, %36
  %38 = load ptr, ptr %5, align 8, !tbaa !5
  %39 = icmp ugt i64 %37, 999999976
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load ptr, ptr %0, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 5
  store i32 53, ptr %42, align 8, !tbaa !14
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 6
  store i32 3, ptr %43, align 4, !tbaa !16
  %44 = load ptr, ptr %0, align 8, !tbaa !13
  %45 = load ptr, ptr %44, align 8, !tbaa !17
  tail call void %45(ptr noundef nonnull %0) #7
  br label %46

46:                                               ; preds = %40, %31
  br i1 %26, label %47, label %53

47:                                               ; preds = %46
  %48 = load ptr, ptr %0, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 5
  store i32 12, ptr %49, align 8, !tbaa !14
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 6
  store i32 %1, ptr %50, align 4, !tbaa !16
  %51 = load ptr, ptr %0, align 8, !tbaa !13
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  tail call void %52(ptr noundef nonnull %0) #7
  br label %53

53:                                               ; preds = %47, %46
  %54 = or disjoint i64 %37, 24
  %55 = tail call ptr @jpeg_get_large(ptr noundef %0, i64 noundef %54) #7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 8, !tbaa !13
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 53, ptr %59, align 8, !tbaa !14
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 6
  store i32 4, ptr %60, align 4, !tbaa !16
  %61 = load ptr, ptr %0, align 8, !tbaa !13
  %62 = load ptr, ptr %61, align 8, !tbaa !17
  tail call void %62(ptr noundef nonnull %0) #7
  br label %63

63:                                               ; preds = %53, %57
  %64 = getelementptr inbounds %struct.my_memory_mgr, ptr %38, i64 0, i32 5
  %65 = load i64, ptr %64, align 8, !tbaa !32
  %66 = add i64 %65, %54
  store i64 %66, ptr %64, align 8, !tbaa !32
  %67 = getelementptr inbounds %struct.my_memory_mgr, ptr %38, i64 0, i32 2, i64 %27
  %68 = load ptr, ptr %67, align 8, !tbaa !36
  store ptr %68, ptr %55, align 8, !tbaa !16
  %69 = getelementptr inbounds %struct.anon.0, ptr %55, i64 0, i32 1
  store i64 %37, ptr %69, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.anon.0, ptr %55, i64 0, i32 2
  store i64 0, ptr %70, align 8, !tbaa !16
  store ptr %55, ptr %67, align 8, !tbaa !36
  %71 = icmp eq i32 %35, 0
  br i1 %71, label %28, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %union.large_pool_struct, ptr %55, i64 1
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi ptr [ %81, %74 ], [ %73, %72 ]
  %76 = phi i32 [ %82, %74 ], [ %35, %72 ]
  %77 = phi i32 [ %78, %74 ], [ %32, %72 ]
  %78 = add i32 %77, 1
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds ptr, ptr %22, i64 %79
  store ptr %75, ptr %80, align 8, !tbaa !36
  %81 = getelementptr inbounds [64 x i16], ptr %75, i64 %7
  %82 = add i32 %76, -1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %28, label %74, !llvm.loop !41

84:                                               ; preds = %28, %15
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @request_virt_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 12, ptr %12, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %1, ptr %13, align 4, !tbaa !16
  %14 = load ptr, ptr %0, align 8, !tbaa !13
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  tail call void %15(ptr noundef nonnull %0) #7
  br label %16

16:                                               ; preds = %10, %6
  %17 = tail call ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef 152)
  store ptr null, ptr %17, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 1
  store i32 %4, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 2
  store i32 %3, ptr %19, align 4, !tbaa !46
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 3
  store i32 %5, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 8
  store i32 %2, ptr %21, align 4, !tbaa !48
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 10
  store i32 0, ptr %22, align 4, !tbaa !49
  %23 = getelementptr inbounds %struct.my_memory_mgr, ptr %8, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 11
  store ptr %24, ptr %25, align 8, !tbaa !51
  store ptr %17, ptr %23, align 8, !tbaa !50
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @request_virt_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 12, ptr %12, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %1, ptr %13, align 4, !tbaa !16
  %14 = load ptr, ptr %0, align 8, !tbaa !13
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  tail call void %15(ptr noundef nonnull %0) #7
  br label %16

16:                                               ; preds = %10, %6
  %17 = tail call ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef 152)
  store ptr null, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.jvirt_barray_control, ptr %17, i64 0, i32 1
  store i32 %4, ptr %18, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.jvirt_barray_control, ptr %17, i64 0, i32 2
  store i32 %3, ptr %19, align 4, !tbaa !55
  %20 = getelementptr inbounds %struct.jvirt_barray_control, ptr %17, i64 0, i32 3
  store i32 %5, ptr %20, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.jvirt_barray_control, ptr %17, i64 0, i32 8
  store i32 %2, ptr %21, align 4, !tbaa !57
  %22 = getelementptr inbounds %struct.jvirt_barray_control, ptr %17, i64 0, i32 10
  store i32 0, ptr %22, align 4, !tbaa !58
  %23 = getelementptr inbounds %struct.my_memory_mgr, ptr %8, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.jvirt_barray_control, ptr %17, i64 0, i32 11
  store ptr %24, ptr %25, align 8, !tbaa !60
  store ptr %17, ptr %23, align 8, !tbaa !59
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal void @realize_virt_arrays(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1, %27
  %8 = phi ptr [ %31, %27 ], [ %5, %1 ]
  %9 = phi i64 [ %29, %27 ], [ 0, %1 ]
  %10 = phi i64 [ %28, %27 ], [ 0, %1 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = zext i32 %18 to i64
  %20 = mul nuw nsw i64 %19, %16
  %21 = add i64 %20, %9
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %24, %19
  %26 = add i64 %25, %10
  br label %27

27:                                               ; preds = %7, %13
  %28 = phi i64 [ %26, %13 ], [ %10, %7 ]
  %29 = phi i64 [ %21, %13 ], [ %9, %7 ]
  %30 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !61

33:                                               ; preds = %27, %1
  %34 = phi i64 [ 0, %1 ], [ %28, %27 ]
  %35 = phi i64 [ 0, %1 ], [ %29, %27 ]
  %36 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39

39:                                               ; preds = %33, %61
  %40 = phi ptr [ %65, %61 ], [ %37, %33 ]
  %41 = phi i64 [ %63, %61 ], [ %35, %33 ]
  %42 = phi i64 [ %62, %61 ], [ %34, %33 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !52
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.jvirt_barray_control, ptr %40, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !56
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.jvirt_barray_control, ptr %40, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !55
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %48, 7
  %53 = mul i64 %52, %51
  %54 = add i64 %53, %41
  %55 = getelementptr inbounds %struct.jvirt_barray_control, ptr %40, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !54
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %51, 7
  %59 = mul i64 %58, %57
  %60 = add i64 %59, %42
  br label %61

61:                                               ; preds = %39, %45
  %62 = phi i64 [ %60, %45 ], [ %42, %39 ]
  %63 = phi i64 [ %54, %45 ], [ %41, %39 ]
  %64 = getelementptr inbounds %struct.jvirt_barray_control, ptr %40, i64 0, i32 11
  %65 = load ptr, ptr %64, align 8, !tbaa !36
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %39, !llvm.loop !62

67:                                               ; preds = %61, %33
  %68 = phi i64 [ %34, %33 ], [ %62, %61 ]
  %69 = phi i64 [ %35, %33 ], [ %63, %61 ]
  %70 = icmp slt i64 %69, 1
  br i1 %70, label %173, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 5
  %73 = load i64, ptr %72, align 8, !tbaa !32
  %74 = tail call i64 @jpeg_mem_available(ptr noundef %0, i64 noundef %69, i64 noundef %68, i64 noundef %73) #7
  %75 = icmp slt i64 %74, %68
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = sdiv i64 %74, %69
  %78 = tail call i64 @llvm.smax.i64(i64 %77, i64 1)
  br label %79

79:                                               ; preds = %71, %76
  %80 = phi i64 [ %78, %76 ], [ 1000000000, %71 ]
  %81 = load ptr, ptr %4, align 8, !tbaa !36
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = trunc i64 %80 to i32
  %85 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 6
  br label %92

86:                                               ; preds = %128, %79
  %87 = load ptr, ptr %36, align 8, !tbaa !36
  %88 = icmp eq ptr %87, null
  br i1 %88, label %173, label %89

89:                                               ; preds = %86
  %90 = trunc i64 %80 to i32
  %91 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 6
  br label %132

92:                                               ; preds = %83, %128
  %93 = phi ptr [ %81, %83 ], [ %130, %128 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !42
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %128

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !45
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %99, -1
  %101 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !47
  %103 = zext i32 %102 to i64
  %104 = sdiv i64 %100, %103
  %105 = icmp slt i64 %104, %80
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 4
  store i32 %98, ptr %107, align 4, !tbaa !63
  br label %117

108:                                              ; preds = %96
  %109 = mul i32 %102, %84
  %110 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 4
  store i32 %109, ptr %110, align 4, !tbaa !63
  %111 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 12
  %112 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !46
  %114 = zext i32 %113 to i64
  %115 = mul nuw nsw i64 %114, %99
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %111, i64 noundef %115) #7
  %116 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 10
  store i32 1, ptr %116, align 4, !tbaa !49
  br label %117

117:                                              ; preds = %108, %106
  %118 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !46
  %120 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 4
  %121 = load i32, ptr %120, align 4, !tbaa !63
  %122 = tail call ptr @alloc_sarray(ptr noundef %0, i32 noundef 1, i32 noundef %119, i32 noundef %121)
  store ptr %122, ptr %93, align 8, !tbaa !42
  %123 = load i32, ptr %85, align 8, !tbaa !37
  %124 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 5
  store i32 %123, ptr %124, align 8, !tbaa !64
  %125 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 6
  store i32 0, ptr %125, align 4, !tbaa !65
  %126 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 7
  store i32 0, ptr %126, align 8, !tbaa !66
  %127 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 9
  store i32 0, ptr %127, align 8, !tbaa !67
  br label %128

128:                                              ; preds = %92, %117
  %129 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %93, i64 0, i32 11
  %130 = load ptr, ptr %129, align 8, !tbaa !36
  %131 = icmp eq ptr %130, null
  br i1 %131, label %86, label %92, !llvm.loop !68

132:                                              ; preds = %89, %169
  %133 = phi ptr [ %87, %89 ], [ %171, %169 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !52
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %169

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !54
  %139 = zext i32 %138 to i64
  %140 = add nsw i64 %139, -1
  %141 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 3
  %142 = load i32, ptr %141, align 8, !tbaa !56
  %143 = zext i32 %142 to i64
  %144 = sdiv i64 %140, %143
  %145 = icmp slt i64 %144, %80
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 4
  store i32 %138, ptr %147, align 4, !tbaa !69
  br label %158

148:                                              ; preds = %136
  %149 = mul i32 %142, %90
  %150 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 4
  store i32 %149, ptr %150, align 4, !tbaa !69
  %151 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 12
  %152 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !55
  %154 = zext i32 %153 to i64
  %155 = shl nuw nsw i64 %139, 7
  %156 = mul i64 %155, %154
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %151, i64 noundef %156) #7
  %157 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 10
  store i32 1, ptr %157, align 4, !tbaa !58
  br label %158

158:                                              ; preds = %148, %146
  %159 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !55
  %161 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 4
  %162 = load i32, ptr %161, align 4, !tbaa !69
  %163 = tail call ptr @alloc_barray(ptr noundef %0, i32 noundef 1, i32 noundef %160, i32 noundef %162)
  store ptr %163, ptr %133, align 8, !tbaa !52
  %164 = load i32, ptr %91, align 8, !tbaa !37
  %165 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 5
  store i32 %164, ptr %165, align 8, !tbaa !70
  %166 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 6
  store i32 0, ptr %166, align 4, !tbaa !71
  %167 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 7
  store i32 0, ptr %167, align 8, !tbaa !72
  %168 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 9
  store i32 0, ptr %168, align 8, !tbaa !73
  br label %169

169:                                              ; preds = %132, %158
  %170 = getelementptr inbounds %struct.jvirt_barray_control, ptr %133, i64 0, i32 11
  %171 = load ptr, ptr %170, align 8, !tbaa !36
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %132, !llvm.loop !74

173:                                              ; preds = %169, %86, %67
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @access_virt_sarray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = add i32 %3, %2
  %7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10, %5
  %18 = load ptr, ptr %0, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 20, ptr %19, align 8, !tbaa !14
  %20 = load ptr, ptr %18, align 8, !tbaa !17
  tail call void %20(ptr noundef nonnull %0) #7
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !65
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !63
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %6, %28
  br i1 %29, label %30, label %151

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !49
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 68, ptr %36, align 8, !tbaa !14
  %37 = load ptr, ptr %35, align 8, !tbaa !17
  tail call void %37(ptr noundef nonnull %0) #7
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !67
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %92, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !46
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 5
  %47 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !63
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %91, label %50

50:                                               ; preds = %42
  %51 = zext i32 %48 to i64
  %52 = load i32, ptr %22, align 4, !tbaa !65
  %53 = zext i32 %52 to i64
  %54 = mul nuw nsw i64 %53, %45
  %55 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %56 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12
  %57 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12, i32 1
  br label %58

58:                                               ; preds = %78, %50
  %59 = phi i64 [ %51, %50 ], [ %89, %78 ]
  %60 = phi i64 [ 0, %50 ], [ %87, %78 ]
  %61 = phi i64 [ %54, %50 ], [ %84, %78 ]
  %62 = load i32, ptr %46, align 8, !tbaa !64
  %63 = zext i32 %62 to i64
  %64 = sub nsw i64 %59, %60
  %65 = tail call i64 @llvm.smin.i64(i64 %64, i64 %63)
  %66 = load i32, ptr %22, align 4, !tbaa !65
  %67 = zext i32 %66 to i64
  %68 = add nuw nsw i64 %60, %67
  %69 = load i32, ptr %55, align 8, !tbaa !66
  %70 = zext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = tail call i64 @llvm.smin.i64(i64 %65, i64 %71)
  %73 = load i32, ptr %7, align 8, !tbaa !45
  %74 = zext i32 %73 to i64
  %75 = sub nsw i64 %74, %68
  %76 = tail call i64 @llvm.smin.i64(i64 %72, i64 %75)
  %77 = icmp slt i64 %76, 1
  br i1 %77, label %91, label %78

78:                                               ; preds = %58
  %79 = mul nuw nsw i64 %76, %45
  %80 = load ptr, ptr %57, align 8, !tbaa !75
  %81 = load ptr, ptr %1, align 8, !tbaa !42
  %82 = getelementptr inbounds ptr, ptr %81, i64 %60
  %83 = load ptr, ptr %82, align 8, !tbaa !36
  tail call void %80(ptr noundef %0, ptr noundef nonnull %56, ptr noundef %83, i64 noundef %61, i64 noundef %79) #7
  %84 = add nuw nsw i64 %79, %61
  %85 = load i32, ptr %46, align 8, !tbaa !64
  %86 = zext i32 %85 to i64
  %87 = add nuw nsw i64 %60, %86
  %88 = load i32, ptr %47, align 4, !tbaa !63
  %89 = zext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %58, label %91, !llvm.loop !76

91:                                               ; preds = %58, %78, %42
  store i32 0, ptr %39, align 8, !tbaa !67
  br label %92

92:                                               ; preds = %91, %38
  %93 = load i32, ptr %22, align 4, !tbaa !65
  %94 = icmp ult i32 %93, %2
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = zext i32 %6 to i64
  %97 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !63
  %99 = zext i32 %98 to i64
  %100 = sub nsw i64 %96, %99
  %101 = tail call i64 @llvm.smax.i64(i64 %100, i64 0)
  %102 = trunc i64 %101 to i32
  br label %103

103:                                              ; preds = %92, %95
  %104 = phi i32 [ %102, %95 ], [ %2, %92 ]
  store i32 %104, ptr %22, align 4, !tbaa !65
  %105 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !46
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 5
  %109 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %110 = load i32, ptr %109, align 4, !tbaa !63
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %151, label %112

112:                                              ; preds = %103
  %113 = zext i32 %110 to i64
  %114 = zext i32 %104 to i64
  %115 = mul nuw nsw i64 %107, %114
  %116 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %117 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12
  br label %118

118:                                              ; preds = %138, %112
  %119 = phi i64 [ %113, %112 ], [ %149, %138 ]
  %120 = phi i64 [ 0, %112 ], [ %147, %138 ]
  %121 = phi i64 [ %115, %112 ], [ %144, %138 ]
  %122 = load i32, ptr %108, align 8, !tbaa !64
  %123 = zext i32 %122 to i64
  %124 = sub nsw i64 %119, %120
  %125 = tail call i64 @llvm.smin.i64(i64 %124, i64 %123)
  %126 = load i32, ptr %22, align 4, !tbaa !65
  %127 = zext i32 %126 to i64
  %128 = add nuw nsw i64 %120, %127
  %129 = load i32, ptr %116, align 8, !tbaa !66
  %130 = zext i32 %129 to i64
  %131 = sub nsw i64 %130, %128
  %132 = tail call i64 @llvm.smin.i64(i64 %125, i64 %131)
  %133 = load i32, ptr %7, align 8, !tbaa !45
  %134 = zext i32 %133 to i64
  %135 = sub nsw i64 %134, %128
  %136 = tail call i64 @llvm.smin.i64(i64 %132, i64 %135)
  %137 = icmp slt i64 %136, 1
  br i1 %137, label %151, label %138

138:                                              ; preds = %118
  %139 = mul nuw nsw i64 %136, %107
  %140 = load ptr, ptr %117, align 8, !tbaa !77
  %141 = load ptr, ptr %1, align 8, !tbaa !42
  %142 = getelementptr inbounds ptr, ptr %141, i64 %120
  %143 = load ptr, ptr %142, align 8, !tbaa !36
  tail call void %140(ptr noundef %0, ptr noundef nonnull %117, ptr noundef %143, i64 noundef %121, i64 noundef %139) #7
  %144 = add nuw nsw i64 %139, %121
  %145 = load i32, ptr %108, align 8, !tbaa !64
  %146 = zext i32 %145 to i64
  %147 = add nuw nsw i64 %120, %146
  %148 = load i32, ptr %109, align 4, !tbaa !63
  %149 = zext i32 %148 to i64
  %150 = icmp ult i64 %147, %149
  br i1 %150, label %118, label %151, !llvm.loop !76

151:                                              ; preds = %138, %118, %103, %25
  %152 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %153 = load i32, ptr %152, align 8, !tbaa !66
  %154 = icmp ult i32 %153, %6
  br i1 %154, label %155, label %194

155:                                              ; preds = %151
  %156 = icmp ult i32 %153, %2
  br i1 %156, label %157, label %163

157:                                              ; preds = %155
  %158 = icmp eq i32 %4, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %157
  %160 = load ptr, ptr %0, align 8, !tbaa !13
  %161 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %160, i64 0, i32 5
  store i32 20, ptr %161, align 8, !tbaa !14
  %162 = load ptr, ptr %160, align 8, !tbaa !17
  tail call void %162(ptr noundef nonnull %0) #7
  br label %163

163:                                              ; preds = %155, %157, %159
  %164 = phi i32 [ %2, %159 ], [ %2, %157 ], [ %153, %155 ]
  %165 = icmp eq i32 %4, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  store i32 %6, ptr %152, align 8, !tbaa !66
  br label %167

167:                                              ; preds = %166, %163
  %168 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %169 = load i32, ptr %168, align 4, !tbaa !48
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %189, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %173 = load i32, ptr %172, align 4, !tbaa !46
  %174 = zext i32 %173 to i64
  %175 = load i32, ptr %22, align 4, !tbaa !65
  %176 = sub i32 %164, %175
  %177 = sub i32 %6, %175
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %171
  %180 = zext i32 %176 to i64
  %181 = zext i32 %177 to i64
  br label %182

182:                                              ; preds = %179, %182
  %183 = phi i64 [ %180, %179 ], [ %187, %182 ]
  %184 = load ptr, ptr %1, align 8, !tbaa !42
  %185 = getelementptr inbounds ptr, ptr %184, i64 %183
  %186 = load ptr, ptr %185, align 8, !tbaa !36
  tail call void @jzero_far(ptr noundef %186, i64 noundef %174) #7
  %187 = add nuw nsw i64 %183, 1
  %188 = icmp eq i64 %187, %181
  br i1 %188, label %194, label %182, !llvm.loop !78

189:                                              ; preds = %167
  br i1 %165, label %190, label %194

190:                                              ; preds = %189
  %191 = load ptr, ptr %0, align 8, !tbaa !13
  %192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %191, i64 0, i32 5
  store i32 20, ptr %192, align 8, !tbaa !14
  %193 = load ptr, ptr %191, align 8, !tbaa !17
  tail call void %193(ptr noundef nonnull %0) #7
  br label %194

194:                                              ; preds = %182, %171, %190, %189, %151
  %195 = icmp eq i32 %4, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  store i32 1, ptr %197, align 8, !tbaa !67
  br label %198

198:                                              ; preds = %196, %194
  %199 = load ptr, ptr %1, align 8, !tbaa !42
  %200 = load i32, ptr %22, align 4, !tbaa !65
  %201 = sub i32 %2, %200
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %199, i64 %202
  ret ptr %203
}

; Function Attrs: nounwind uwtable
define internal ptr @access_virt_barray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = add i32 %3, %2
  %7 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10, %5
  %18 = load ptr, ptr %0, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 20, ptr %19, align 8, !tbaa !14
  %20 = load ptr, ptr %18, align 8, !tbaa !17
  tail call void %20(ptr noundef nonnull %0) #7
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !71
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !69
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %6, %28
  br i1 %29, label %30, label %153

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !58
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 68, ptr %36, align 8, !tbaa !14
  %37 = load ptr, ptr %35, align 8, !tbaa !17
  tail call void %37(ptr noundef nonnull %0) #7
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !73
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %93, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !55
  %45 = zext i32 %44 to i64
  %46 = shl nuw nsw i64 %45, 7
  %47 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 5
  %48 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !69
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %92, label %51

51:                                               ; preds = %42
  %52 = zext i32 %49 to i64
  %53 = load i32, ptr %22, align 4, !tbaa !71
  %54 = zext i32 %53 to i64
  %55 = mul nsw i64 %46, %54
  %56 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 7
  %57 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 12
  %58 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 12, i32 1
  br label %59

59:                                               ; preds = %79, %51
  %60 = phi i64 [ %52, %51 ], [ %90, %79 ]
  %61 = phi i64 [ 0, %51 ], [ %88, %79 ]
  %62 = phi i64 [ %55, %51 ], [ %85, %79 ]
  %63 = load i32, ptr %47, align 8, !tbaa !70
  %64 = zext i32 %63 to i64
  %65 = sub nsw i64 %60, %61
  %66 = tail call i64 @llvm.smin.i64(i64 %65, i64 %64)
  %67 = load i32, ptr %22, align 4, !tbaa !71
  %68 = zext i32 %67 to i64
  %69 = add nuw nsw i64 %61, %68
  %70 = load i32, ptr %56, align 8, !tbaa !72
  %71 = zext i32 %70 to i64
  %72 = sub nsw i64 %71, %69
  %73 = tail call i64 @llvm.smin.i64(i64 %66, i64 %72)
  %74 = load i32, ptr %7, align 8, !tbaa !54
  %75 = zext i32 %74 to i64
  %76 = sub nsw i64 %75, %69
  %77 = tail call i64 @llvm.smin.i64(i64 %73, i64 %76)
  %78 = icmp slt i64 %77, 1
  br i1 %78, label %92, label %79

79:                                               ; preds = %59
  %80 = mul nsw i64 %77, %46
  %81 = load ptr, ptr %58, align 8, !tbaa !79
  %82 = load ptr, ptr %1, align 8, !tbaa !52
  %83 = getelementptr inbounds ptr, ptr %82, i64 %61
  %84 = load ptr, ptr %83, align 8, !tbaa !36
  tail call void %81(ptr noundef %0, ptr noundef nonnull %57, ptr noundef %84, i64 noundef %62, i64 noundef %80) #7
  %85 = add nuw nsw i64 %80, %62
  %86 = load i32, ptr %47, align 8, !tbaa !70
  %87 = zext i32 %86 to i64
  %88 = add nuw nsw i64 %61, %87
  %89 = load i32, ptr %48, align 4, !tbaa !69
  %90 = zext i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %59, label %92, !llvm.loop !80

92:                                               ; preds = %59, %79, %42
  store i32 0, ptr %39, align 8, !tbaa !73
  br label %93

93:                                               ; preds = %92, %38
  %94 = load i32, ptr %22, align 4, !tbaa !71
  %95 = icmp ult i32 %94, %2
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = zext i32 %6 to i64
  %98 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !69
  %100 = zext i32 %99 to i64
  %101 = sub nsw i64 %97, %100
  %102 = tail call i64 @llvm.smax.i64(i64 %101, i64 0)
  %103 = trunc i64 %102 to i32
  br label %104

104:                                              ; preds = %93, %96
  %105 = phi i32 [ %103, %96 ], [ %2, %93 ]
  store i32 %105, ptr %22, align 4, !tbaa !71
  %106 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !55
  %108 = zext i32 %107 to i64
  %109 = shl nuw nsw i64 %108, 7
  %110 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 5
  %111 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 4
  %112 = load i32, ptr %111, align 4, !tbaa !69
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %153, label %114

114:                                              ; preds = %104
  %115 = zext i32 %112 to i64
  %116 = zext i32 %105 to i64
  %117 = mul nsw i64 %109, %116
  %118 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 7
  %119 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 12
  br label %120

120:                                              ; preds = %140, %114
  %121 = phi i64 [ %115, %114 ], [ %151, %140 ]
  %122 = phi i64 [ 0, %114 ], [ %149, %140 ]
  %123 = phi i64 [ %117, %114 ], [ %146, %140 ]
  %124 = load i32, ptr %110, align 8, !tbaa !70
  %125 = zext i32 %124 to i64
  %126 = sub nsw i64 %121, %122
  %127 = tail call i64 @llvm.smin.i64(i64 %126, i64 %125)
  %128 = load i32, ptr %22, align 4, !tbaa !71
  %129 = zext i32 %128 to i64
  %130 = add nuw nsw i64 %122, %129
  %131 = load i32, ptr %118, align 8, !tbaa !72
  %132 = zext i32 %131 to i64
  %133 = sub nsw i64 %132, %130
  %134 = tail call i64 @llvm.smin.i64(i64 %127, i64 %133)
  %135 = load i32, ptr %7, align 8, !tbaa !54
  %136 = zext i32 %135 to i64
  %137 = sub nsw i64 %136, %130
  %138 = tail call i64 @llvm.smin.i64(i64 %134, i64 %137)
  %139 = icmp slt i64 %138, 1
  br i1 %139, label %153, label %140

140:                                              ; preds = %120
  %141 = mul nsw i64 %138, %109
  %142 = load ptr, ptr %119, align 8, !tbaa !81
  %143 = load ptr, ptr %1, align 8, !tbaa !52
  %144 = getelementptr inbounds ptr, ptr %143, i64 %122
  %145 = load ptr, ptr %144, align 8, !tbaa !36
  tail call void %142(ptr noundef %0, ptr noundef nonnull %119, ptr noundef %145, i64 noundef %123, i64 noundef %141) #7
  %146 = add nuw nsw i64 %141, %123
  %147 = load i32, ptr %110, align 8, !tbaa !70
  %148 = zext i32 %147 to i64
  %149 = add nuw nsw i64 %122, %148
  %150 = load i32, ptr %111, align 4, !tbaa !69
  %151 = zext i32 %150 to i64
  %152 = icmp ult i64 %149, %151
  br i1 %152, label %120, label %153, !llvm.loop !80

153:                                              ; preds = %140, %120, %104, %25
  %154 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !72
  %156 = icmp ult i32 %155, %6
  br i1 %156, label %157, label %197

157:                                              ; preds = %153
  %158 = icmp ult i32 %155, %2
  br i1 %158, label %159, label %165

159:                                              ; preds = %157
  %160 = icmp eq i32 %4, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %159
  %162 = load ptr, ptr %0, align 8, !tbaa !13
  %163 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %162, i64 0, i32 5
  store i32 20, ptr %163, align 8, !tbaa !14
  %164 = load ptr, ptr %162, align 8, !tbaa !17
  tail call void %164(ptr noundef nonnull %0) #7
  br label %165

165:                                              ; preds = %157, %159, %161
  %166 = phi i32 [ %2, %161 ], [ %2, %159 ], [ %155, %157 ]
  %167 = icmp eq i32 %4, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  store i32 %6, ptr %154, align 8, !tbaa !72
  br label %169

169:                                              ; preds = %168, %165
  %170 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 8
  %171 = load i32, ptr %170, align 4, !tbaa !57
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %192, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 2
  %175 = load i32, ptr %174, align 4, !tbaa !55
  %176 = zext i32 %175 to i64
  %177 = shl nuw nsw i64 %176, 7
  %178 = load i32, ptr %22, align 4, !tbaa !71
  %179 = sub i32 %166, %178
  %180 = sub i32 %6, %178
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %173
  %183 = zext i32 %179 to i64
  %184 = zext i32 %180 to i64
  br label %185

185:                                              ; preds = %182, %185
  %186 = phi i64 [ %183, %182 ], [ %190, %185 ]
  %187 = load ptr, ptr %1, align 8, !tbaa !52
  %188 = getelementptr inbounds ptr, ptr %187, i64 %186
  %189 = load ptr, ptr %188, align 8, !tbaa !36
  tail call void @jzero_far(ptr noundef %189, i64 noundef %177) #7
  %190 = add nuw nsw i64 %186, 1
  %191 = icmp eq i64 %190, %184
  br i1 %191, label %197, label %185, !llvm.loop !82

192:                                              ; preds = %169
  br i1 %167, label %193, label %197

193:                                              ; preds = %192
  %194 = load ptr, ptr %0, align 8, !tbaa !13
  %195 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %194, i64 0, i32 5
  store i32 20, ptr %195, align 8, !tbaa !14
  %196 = load ptr, ptr %194, align 8, !tbaa !17
  tail call void %196(ptr noundef nonnull %0) #7
  br label %197

197:                                              ; preds = %185, %173, %193, %192, %153
  %198 = icmp eq i32 %4, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.jvirt_barray_control, ptr %1, i64 0, i32 9
  store i32 1, ptr %200, align 8, !tbaa !73
  br label %201

201:                                              ; preds = %199, %197
  %202 = load ptr, ptr %1, align 8, !tbaa !52
  %203 = load i32, ptr %22, align 4, !tbaa !71
  %204 = sub i32 %2, %203
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %202, i64 %205
  ret ptr %206
}

; Function Attrs: nounwind uwtable
define internal void @free_pool(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp ugt i32 %1, 1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 12, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %1, ptr %9, align 4, !tbaa !16
  %10 = load ptr, ptr %0, align 8, !tbaa !13
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  tail call void %11(ptr noundef nonnull %0) #7
  br label %12

12:                                               ; preds = %2, %6
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %49

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  store i32 0, ptr %20, align 4, !tbaa !49
  %24 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 12
  %25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 12, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  tail call void %26(ptr noundef %0, ptr noundef nonnull %24) #7
  br label %27

27:                                               ; preds = %18, %23
  %28 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !84

31:                                               ; preds = %27, %14
  store ptr null, ptr %15, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %31, %44
  %36 = phi ptr [ %46, %44 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.jvirt_barray_control, ptr %36, i64 0, i32 10
  %38 = load i32, ptr %37, align 4, !tbaa !58
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  store i32 0, ptr %37, align 4, !tbaa !58
  %41 = getelementptr inbounds %struct.jvirt_barray_control, ptr %36, i64 0, i32 12
  %42 = getelementptr inbounds %struct.jvirt_barray_control, ptr %36, i64 0, i32 12, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  tail call void %43(ptr noundef %0, ptr noundef nonnull %41) #7
  br label %44

44:                                               ; preds = %35, %40
  %45 = getelementptr inbounds %struct.jvirt_barray_control, ptr %36, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !36
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %35, !llvm.loop !86

48:                                               ; preds = %44, %31
  store ptr null, ptr %32, align 8, !tbaa !59
  br label %49

49:                                               ; preds = %48, %12
  %50 = sext i32 %1 to i64
  %51 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  store ptr null, ptr %51, align 8, !tbaa !36
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 5
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %52, %54 ], [ %58, %56 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct.anon.0, ptr %57, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.anon.0, ptr %57, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !16
  %63 = add i64 %60, 24
  %64 = add i64 %63, %62
  tail call void @jpeg_free_large(ptr noundef %0, ptr noundef nonnull %57, i64 noundef %64) #7
  %65 = load i64, ptr %55, align 8, !tbaa !32
  %66 = sub i64 %65, %64
  store i64 %66, ptr %55, align 8, !tbaa !32
  %67 = icmp eq ptr %58, null
  br i1 %67, label %68, label %56, !llvm.loop !87

68:                                               ; preds = %56, %49
  %69 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 1, i64 %50
  %70 = load ptr, ptr %69, align 8, !tbaa !36
  store ptr null, ptr %69, align 8, !tbaa !36
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 5
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi ptr [ %70, %72 ], [ %76, %74 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !16
  %77 = getelementptr inbounds %struct.anon, ptr %75, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !16
  %79 = getelementptr inbounds %struct.anon, ptr %75, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !16
  %81 = add i64 %78, 24
  %82 = add i64 %81, %80
  tail call void @jpeg_free_small(ptr noundef %0, ptr noundef nonnull %75, i64 noundef %82) #7
  %83 = load i64, ptr %73, align 8, !tbaa !32
  %84 = sub i64 %83, %82
  store i64 %84, ptr %73, align 8, !tbaa !32
  %85 = icmp eq ptr %76, null
  br i1 %85, label %86, label %74, !llvm.loop !88

86:                                               ; preds = %74, %68
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @self_destruct(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 1, %1 ], [ %4, %2 ]
  tail call void @free_pool(ptr noundef %0, i32 noundef %3)
  %4 = add nsw i32 %3, -1
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %2, !llvm.loop !89

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_common_struct, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  tail call void @jpeg_free_small(ptr noundef %0, ptr noundef %8, i64 noundef 160) #7
  store ptr null, ptr %7, align 8, !tbaa !5
  tail call void @jpeg_mem_term(ptr noundef %0) #7
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @jpeg_get_large(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @jpeg_mem_available(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_open_backing_store(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_free_large(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_free_small(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_common_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!6, !7, i64 0}
!14 = !{!15, !10, i64 40}
!15 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !12, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!16 = !{!8, !8, i64 0}
!17 = !{!15, !7, i64 0}
!18 = !{!19, !7, i64 0}
!19 = !{!"", !20, i64 0, !8, i64 96, !8, i64 112, !7, i64 128, !7, i64 136, !12, i64 144, !10, i64 152}
!20 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !12, i64 88}
!21 = !{!19, !7, i64 8}
!22 = !{!19, !7, i64 16}
!23 = !{!19, !7, i64 24}
!24 = !{!19, !7, i64 32}
!25 = !{!19, !7, i64 40}
!26 = !{!19, !7, i64 48}
!27 = !{!19, !7, i64 56}
!28 = !{!19, !7, i64 64}
!29 = !{!19, !7, i64 72}
!30 = !{!19, !7, i64 80}
!31 = !{!19, !12, i64 88}
!32 = !{!19, !12, i64 144}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !34}
!36 = !{!7, !7, i64 0}
!37 = !{!19, !10, i64 152}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !34}
!40 = distinct !{!40, !34}
!41 = distinct !{!41, !34}
!42 = !{!43, !7, i64 0}
!43 = !{!"jvirt_sarray_control", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !7, i64 48, !44, i64 56}
!44 = !{!"backing_store_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32}
!45 = !{!43, !10, i64 8}
!46 = !{!43, !10, i64 12}
!47 = !{!43, !10, i64 16}
!48 = !{!43, !10, i64 36}
!49 = !{!43, !10, i64 44}
!50 = !{!19, !7, i64 128}
!51 = !{!43, !7, i64 48}
!52 = !{!53, !7, i64 0}
!53 = !{!"jvirt_barray_control", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !7, i64 48, !44, i64 56}
!54 = !{!53, !10, i64 8}
!55 = !{!53, !10, i64 12}
!56 = !{!53, !10, i64 16}
!57 = !{!53, !10, i64 36}
!58 = !{!53, !10, i64 44}
!59 = !{!19, !7, i64 136}
!60 = !{!53, !7, i64 48}
!61 = distinct !{!61, !34}
!62 = distinct !{!62, !34}
!63 = !{!43, !10, i64 20}
!64 = !{!43, !10, i64 24}
!65 = !{!43, !10, i64 28}
!66 = !{!43, !10, i64 32}
!67 = !{!43, !10, i64 40}
!68 = distinct !{!68, !34}
!69 = !{!53, !10, i64 20}
!70 = !{!53, !10, i64 24}
!71 = !{!53, !10, i64 28}
!72 = !{!53, !10, i64 32}
!73 = !{!53, !10, i64 40}
!74 = distinct !{!74, !34}
!75 = !{!43, !7, i64 64}
!76 = distinct !{!76, !34}
!77 = !{!43, !7, i64 56}
!78 = distinct !{!78, !34}
!79 = !{!53, !7, i64 64}
!80 = distinct !{!80, !34}
!81 = !{!53, !7, i64 56}
!82 = distinct !{!82, !34}
!83 = !{!43, !7, i64 72}
!84 = distinct !{!84, !34}
!85 = !{!53, !7, i64 72}
!86 = distinct !{!86, !34}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !34}
