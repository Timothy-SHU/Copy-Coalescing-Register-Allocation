; ModuleID = 'blender/source/blender/blenkernel/intern/world.c'
source_filename = "blender/source/blender/blenkernel/intern/world.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"BKE_world_copy\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"localize_world\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BKE_world_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ne i8 %1, 0
  br label %4

4:                                                ; preds = %2, %21
  %5 = phi i64 [ 0, %2 ], [ %22, %21 ]
  %6 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp ne ptr %7, null
  %9 = select i1 %3, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4, !tbaa !42
  br label %18

18:                                               ; preds = %14, %10, %4
  br i1 %8, label %19, label %21

19:                                               ; preds = %18
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %7) #3
  br label %21

21:                                               ; preds = %18, %19
  %22 = add nuw nsw i64 %5, 1
  %23 = icmp eq i64 %22, 18
  br i1 %23, label %24, label %4, !llvm.loop !47

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 74
  tail call void @BKE_previewimg_free(ptr noundef nonnull %25) #3
  tail call void @BKE_free_animdata(ptr noundef %0) #3
  %26 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %27, i8 noundef zeroext %1) #3
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %31 = load ptr, ptr %26, align 8, !tbaa !50
  tail call void %30(ptr noundef %31) #3
  br label %32

32:                                               ; preds = %29, %24
  tail call void @BKE_icon_delete(ptr noundef %0) #3
  %33 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %33, align 8, !tbaa !52
  ret void
}

declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #1

declare void @ntreeFreeTree_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_world_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_world_free_ex(ptr noundef %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @add_world(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 20311, ptr noundef %1) #3
  %4 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 6
  store float 0x3FA99999A0000000, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 7
  store float 0x3FA99999A0000000, ptr %5, align 4, !tbaa !54
  %6 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 8
  store float 0x3FA99999A0000000, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 9
  store float 0x3F847AE140000000, ptr %7, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 10
  store float 0x3F847AE140000000, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 11
  store float 0x3F847AE140000000, ptr %9, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 22
  store i16 0, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 16
  store float 0.000000e+00, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 17
  store float 1.000000e+00, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 15
  store float 1.000000e+00, ptr %13, align 4, !tbaa !62
  %14 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 46
  store float 1.000000e+01, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 51
  store i16 5, ptr %15, align 2, !tbaa !64
  %16 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 48
  store float 1.000000e+00, ptr %16, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 59
  store float 1.000000e+00, ptr %17, align 4, !tbaa !66
  %18 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 58
  store float 1.000000e+00, ptr %18, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 61
  store i16 1, ptr %19, align 4, !tbaa !68
  %20 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 49
  store float 0x3FA99999A0000000, ptr %20, align 4, !tbaa !69
  %21 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 63
  store i16 2, ptr %21, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 56
  store float 2.500000e-01, ptr %22, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 74
  store ptr null, ptr %23, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 31
  store float 5.000000e+00, ptr %24, align 4, !tbaa !73
  %25 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 32
  store float 2.500000e+01, ptr %25, align 8, !tbaa !74
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_world_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #3
  br label %3

3:                                                ; preds = %1, %16
  %4 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %5 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 312, ptr noundef nonnull @.str) #3
  %11 = getelementptr inbounds %struct.World, ptr %2, i64 0, i32 70, i64 %4
  store ptr %10, ptr %11, align 8, !tbaa !34
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 312, i1 false)
  %13 = load ptr, ptr %11, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  tail call void @id_us_plus(ptr noundef %15) #3
  br label %16

16:                                               ; preds = %3, %8
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 18
  br i1 %18, label %19, label %3, !llvm.loop !75

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %21) #3
  %25 = getelementptr inbounds %struct.World, ptr %2, i64 0, i32 75
  store ptr %24, ptr %25, align 8, !tbaa !50
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 74
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @BKE_previewimg_copy(ptr noundef nonnull %28) #3
  %32 = getelementptr inbounds %struct.World, ptr %2, i64 0, i32 74
  store ptr %31, ptr %32, align 8, !tbaa !72
  br label %33

33:                                               ; preds = %30, %26
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_previewimg_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @localize_world(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %3

3:                                                ; preds = %1, %16
  %4 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %5 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 312, ptr noundef nonnull @.str.1) #3
  %11 = getelementptr inbounds %struct.World, ptr %2, i64 0, i32 70, i64 %4
  store ptr %10, ptr %11, align 8, !tbaa !34
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %10, ptr noundef nonnull align 8 dereferenceable(312) %12, i64 312, i1 false)
  %13 = load ptr, ptr %11, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  tail call void @id_us_plus(ptr noundef %15) #3
  br label %16

16:                                               ; preds = %3, %8
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 18
  br i1 %18, label %19, label %3, !llvm.loop !76

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @ntreeLocalize(ptr noundef nonnull %21) #3
  %25 = getelementptr inbounds %struct.World, ptr %2, i64 0, i32 75
  store ptr %24, ptr %25, align 8, !tbaa !50
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.World, ptr %2, i64 0, i32 74
  store ptr null, ptr %27, align 8, !tbaa !72
  ret ptr %2
}

declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_world_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !77
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = icmp eq ptr %4, null
  br i1 %5, label %103, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !81
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %102, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %10, %31
  %15 = phi ptr [ %34, %31 ], [ %12, %10 ]
  %16 = phi i8 [ %33, %31 ], [ 0, %10 ]
  %17 = phi i8 [ %32, %31 ], [ 0, %10 ]
  %18 = icmp eq i8 %16, 0
  %19 = icmp eq i8 %17, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i8 1, i8 %17
  %30 = select i1 %28, i8 %16, i8 1
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i8 [ %17, %21 ], [ %29, %25 ]
  %33 = phi i8 [ %16, %21 ], [ %30, %25 ]
  %34 = load ptr, ptr %15, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %14, !llvm.loop !103

36:                                               ; preds = %31, %14
  %37 = phi i8 [ %17, %14 ], [ %32, %31 ]
  %38 = phi i8 [ %16, %14 ], [ %33, %31 ]
  %39 = icmp ne i8 %37, 0
  br label %40

40:                                               ; preds = %36, %10
  %41 = phi i1 [ false, %10 ], [ %39, %36 ]
  %42 = phi i8 [ 0, %10 ], [ %38, %36 ]
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %102, label %45

45:                                               ; preds = %40
  %46 = icmp ne i8 %42, 0
  %47 = select i1 %41, i1 %46, i1 false
  br i1 %47, label %48, label %103

48:                                               ; preds = %45
  %49 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #3
  br label %50

50:                                               ; preds = %63, %48
  %51 = phi i64 [ 0, %48 ], [ %64, %63 ]
  %52 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %57 = tail call ptr %56(i64 noundef 312, ptr noundef nonnull @.str) #3
  %58 = getelementptr inbounds %struct.World, ptr %49, i64 0, i32 70, i64 %51
  store ptr %57, ptr %58, align 8, !tbaa !34
  %59 = load ptr, ptr %52, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %57, ptr noundef nonnull align 8 dereferenceable(312) %59, i64 312, i1 false)
  %60 = load ptr, ptr %58, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.MTex, ptr %60, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  tail call void @id_us_plus(ptr noundef %62) #3
  br label %63

63:                                               ; preds = %55, %50
  %64 = add nuw nsw i64 %51, 1
  %65 = icmp eq i64 %64, 18
  br i1 %65, label %66, label %50, !llvm.loop !75

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %68) #3
  %72 = getelementptr inbounds %struct.World, ptr %49, i64 0, i32 75
  store ptr %71, ptr %72, align 8, !tbaa !50
  br label %73

73:                                               ; preds = %70, %66
  %74 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 74
  %75 = load ptr, ptr %74, align 8, !tbaa !72
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = tail call ptr @BKE_previewimg_copy(ptr noundef nonnull %75) #3
  %79 = getelementptr inbounds %struct.World, ptr %49, i64 0, i32 74
  store ptr %78, ptr %79, align 8, !tbaa !72
  br label %80

80:                                               ; preds = %73, %77
  %81 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 6
  store i32 0, ptr %81, align 4, !tbaa !81
  %82 = load ptr, ptr %3, align 8, !tbaa !80
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %82, ptr noundef %49) #3
  %83 = load ptr, ptr %11, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %103, label %85

85:                                               ; preds = %80, %99
  %86 = phi ptr [ %100, %99 ], [ %83, %80 ]
  %87 = getelementptr inbounds %struct.Scene, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !82
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.ID, ptr %86, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !102
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  store ptr %49, ptr %87, align 8, !tbaa !82
  %95 = load i32, ptr %81, align 4, !tbaa !81
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %81, align 4, !tbaa !81
  %97 = load i32, ptr %7, align 4, !tbaa !81
  %98 = add nsw i32 %97, -1
  store i32 %98, ptr %7, align 4, !tbaa !81
  br label %99

99:                                               ; preds = %85, %94, %90
  %100 = load ptr, ptr %86, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %85, !llvm.loop !104

102:                                              ; preds = %40, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #3
  br label %103

103:                                              ; preds = %99, %102, %80, %45, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!38 = !{!39, !35, i64 16}
!39 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !41, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !36, i64 132, !36, i64 133, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308}
!40 = !{!"short", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!43, !45, i64 100}
!43 = !{!"Tex", !44, i64 0, !35, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !45, i64 252, !45, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !46, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!44 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !35, i64 112}
!45 = !{!"int", !36, i64 0}
!46 = !{!"ImageUser", !35, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !45, i64 36}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !35, i64 520}
!51 = !{!"World", !44, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !40, i64 504, !40, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!52 = !{!51, !45, i64 104}
!53 = !{!51, !41, i64 136}
!54 = !{!51, !41, i64 140}
!55 = !{!51, !41, i64 144}
!56 = !{!51, !41, i64 148}
!57 = !{!51, !41, i64 152}
!58 = !{!51, !41, i64 156}
!59 = !{!51, !40, i64 200}
!60 = !{!51, !41, i64 176}
!61 = !{!51, !41, i64 180}
!62 = !{!51, !41, i64 172}
!63 = !{!51, !41, i64 272}
!64 = !{!51, !40, i64 290}
!65 = !{!51, !41, i64 280}
!66 = !{!51, !41, i64 316}
!67 = !{!51, !41, i64 312}
!68 = !{!51, !40, i64 324}
!69 = !{!51, !41, i64 284}
!70 = !{!51, !40, i64 328}
!71 = !{!51, !41, i64 304}
!72 = !{!51, !35, i64 512}
!73 = !{!51, !41, i64 220}
!74 = !{!51, !41, i64 224}
!75 = distinct !{!75, !48, !49}
!76 = distinct !{!76, !48, !49}
!77 = !{!78, !35, i64 0}
!78 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !79, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !45, i64 2096, !45, i64 2100, !36, i64 2104, !45, i64 2108, !45, i64 2112, !36, i64 2116}
!79 = !{!"ListBase", !35, i64 0, !35, i64 8}
!80 = !{!51, !35, i64 24}
!81 = !{!51, !45, i64 100}
!82 = !{!83, !35, i64 136}
!83 = !{!"Scene", !44, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !79, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !45, i64 232, !45, i64 236, !45, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !84, i64 280, !93, i64 4264, !79, i64 4296, !79, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !45, i64 4380, !79, i64 4384, !94, i64 4400, !95, i64 4416, !98, i64 4600, !35, i64 4608, !99, i64 4616, !35, i64 4640, !100, i64 4648, !100, i64 4656, !86, i64 4664, !87, i64 4824, !101, i64 4888, !35, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !35, i64 248, !35, i64 256, !88, i64 264, !89, i64 328, !45, i64 400, !45, i64 404, !45, i64 408, !41, i64 412, !45, i64 416, !45, i64 420, !45, i64 424, !45, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !45, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !45, i64 484, !45, i64 488, !40, i64 492, !40, i64 494, !45, i64 496, !45, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !45, i64 516, !45, i64 520, !45, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !90, i64 544, !90, i64 560, !91, i64 576, !79, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !45, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !36, i64 680, !45, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !45, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !45, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !35, i64 2568, !45, i64 2576, !41, i64 2580, !36, i64 2584, !92, i64 2616, !45, i64 3976, !45, i64 3980}
!85 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !45, i64 0, !45, i64 4, !36, i64 8, !36, i64 72, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!88 = !{!"QuicktimeCodecSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !40, i64 48, !40, i64 50, !45, i64 52, !45, i64 56, !45, i64 60}
!89 = !{!"FFMpegCodecData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !41, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !35, i64 64}
!90 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!91 = !{!"rcti", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!92 = !{!"BakeData", !85, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!93 = !{!"AudioData", !45, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !45, i64 16, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28}
!94 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!95 = !{!"GameData", !94, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !96, i64 40, !40, i64 64, !40, i64 66, !41, i64 68, !97, i64 72, !41, i64 128, !41, i64 132, !45, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!96 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !41, i64 8, !41, i64 12, !35, i64 16}
!97 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !45, i64 40, !41, i64 44, !41, i64 48, !40, i64 52, !40, i64 54}
!98 = !{!"UnitSettings", !41, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!99 = !{!"PhysicsSettings", !36, i64 0, !45, i64 12, !45, i64 16, !45, i64 20}
!100 = !{!"long", !36, i64 0}
!101 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!102 = !{!83, !35, i64 24}
!103 = distinct !{!103, !48, !49}
!104 = distinct !{!104, !48, !49}
