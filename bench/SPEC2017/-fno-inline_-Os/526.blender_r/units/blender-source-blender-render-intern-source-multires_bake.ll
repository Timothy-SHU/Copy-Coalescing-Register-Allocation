; ModuleID = 'blender/source/blender/render/intern/source/multires_bake.c'
source_filename = "blender/source/blender/render/intern/source/multires_bake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MultiresBakeResult = type { float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MultiresBakeRender = type { ptr, ptr, i8, i32, i32, i32, i16, i8, i32, float, i32, i32, %struct.ListBase, i32, i32, i32, i32, i32, float, ptr, ptr, ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.BakeImBufuserData = type { ptr, ptr }
%struct.MultiresBakeQueue = type { i32, i32, i32 }
%struct.MultiresBakeThread = type { ptr, ptr, ptr, ptr, %struct.MBakeRast, %struct.MResolvePixelData, float, float }
%struct.MBakeRast = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.MResolvePixelData = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MNormalBakeData = type { ptr, ptr }
%struct.MHeightBakeData = type { ptr, ptr, ptr, ptr, ptr }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MAOBakeData = type { i32, float, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.RayFace = type { [4 x float], [4 x float], [4 x float], [3 x float], i32, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"MultiresBake userdata\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"MultiresBake imbuf mask\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"do_multires_bake handles\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@__const.apply_tangmat_callback.tmp = private unnamed_addr constant [3 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01], align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"MultiresBake normalData\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MultiresBake heights\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"MultiresBake heightData\00", align 1
@ao_random_table_2 = internal unnamed_addr global [1024 x i16] zeroinitializer, align 16
@ao_random_table_1 = internal unnamed_addr global [1024 x i16] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [20 x i8] c"MultiresBake aoData\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"multires AO baker perm1\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"multires AO baker perm2\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"multires AO baker temp perm\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ObjectRen faces\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_multires_bake_images(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.MultiresBakeResult, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  tail call fastcc void @count_images(ptr noundef %0) #19
  call fastcc void @bake_images(ptr noundef %0, ptr noundef nonnull %2) #19
  call fastcc void @finish_images(ptr noundef %0, ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @count_images(ptr noundef %0) unnamed_addr #0 !PGOFuncName !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %4 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %3, i32 noundef 5) #20
  %5 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 12
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #19
  %6 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 11
  store i32 0, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call i32 %8(ptr noundef %2) #20
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = zext nneg i32 %9 to i64
  br label %16

13:                                               ; preds = %16
  br i1 %10, label %14, label %54

14:                                               ; preds = %13
  %15 = zext nneg i32 %9 to i64
  br label %28

16:                                               ; preds = %11, %16
  %17 = phi i64 [ 0, %11 ], [ %23, %16 ]
  %18 = getelementptr inbounds %struct.MTFace, ptr %4, i64 %17, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 5
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = and i16 %21, -1025
  store i16 %22, ptr %20, align 2, !tbaa !50
  %23 = add nuw nsw i64 %17, 1
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %13, label %16, !llvm.loop !54

25:                                               ; preds = %42
  br i1 %10, label %26, label %54

26:                                               ; preds = %25
  %27 = zext nneg i32 %9 to i64
  br label %45

28:                                               ; preds = %14, %42
  %29 = phi i64 [ 0, %14 ], [ %43, %42 ]
  %30 = getelementptr inbounds %struct.MTFace, ptr %4, i64 %29, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 5
  %33 = load i16, ptr %32, align 2, !tbaa !50
  %34 = and i16 %33, 1024
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = tail call ptr @BLI_genericNodeN(ptr noundef nonnull %31) #20
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %37) #20
  %38 = load i32, ptr %6, align 8, !tbaa !44
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %6, align 8, !tbaa !44
  %40 = load i16, ptr %32, align 2, !tbaa !50
  %41 = or i16 %40, 1024
  store i16 %41, ptr %32, align 2, !tbaa !50
  br label %42

42:                                               ; preds = %36, %28
  %43 = add nuw nsw i64 %29, 1
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %25, label %28, !llvm.loop !56

45:                                               ; preds = %26, %45
  %46 = phi i64 [ 0, %26 ], [ %52, %45 ]
  %47 = getelementptr inbounds %struct.MTFace, ptr %4, i64 %46, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 5
  %50 = load i16, ptr %49, align 2, !tbaa !50
  %51 = and i16 %50, -1025
  store i16 %51, ptr %49, align 2, !tbaa !50
  %52 = add nuw nsw i64 %46, 1
  %53 = icmp eq i64 %52, %27
  br i1 %53, label %54, label %45, !llvm.loop !57

54:                                               ; preds = %45, %1, %13, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_images(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !58 {
  %3 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %6, %35
  %9 = phi ptr [ %4, %6 ], [ %39, %35 ]
  %10 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %11, ptr noundef null, ptr noundef null) #20
  %13 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !66
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %22 = tail call ptr %21(i64 noundef 16, ptr noundef nonnull @.str) #20
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %24 = load i32, ptr %17, align 4, !tbaa !66
  %25 = load i32, ptr %13, align 8, !tbaa !62
  %26 = mul nsw i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = tail call ptr %23(i64 noundef %27, ptr noundef nonnull @.str.1) #20
  %29 = getelementptr inbounds %struct.BakeImBufuserData, ptr %22, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.ImBuf, ptr %12, i64 0, i32 25
  store ptr %22, ptr %30, align 8, !tbaa !69
  %31 = load i16, ptr %7, align 8, !tbaa !70
  switch i16 %31, label %35 [
    i16 3, label %32
    i16 5, label %33
    i16 13, label %33
    i16 2, label %34
  ]

32:                                               ; preds = %20
  tail call fastcc void @do_multires_bake(ptr noundef nonnull %0, ptr noundef %11, i8 noundef zeroext 1, ptr noundef nonnull @apply_tangmat_callback, ptr noundef nonnull @init_normal_data, ptr noundef nonnull @free_normal_data, ptr noundef %1) #19
  br label %35

33:                                               ; preds = %20, %20
  tail call fastcc void @do_multires_bake(ptr noundef nonnull %0, ptr noundef %11, i8 noundef zeroext 0, ptr noundef nonnull @apply_heights_callback, ptr noundef nonnull @init_heights_data, ptr noundef nonnull @free_heights_data, ptr noundef %1) #19
  br label %35

34:                                               ; preds = %20
  tail call fastcc void @do_multires_bake(ptr noundef nonnull %0, ptr noundef %11, i8 noundef zeroext 0, ptr noundef nonnull @apply_ao_callback, ptr noundef nonnull @init_ao_data, ptr noundef nonnull @free_ao_data, ptr noundef %1) #19
  br label %35

35:                                               ; preds = %32, %33, %34, %20, %16, %8
  tail call void @BKE_image_release_ibuf(ptr noundef %11, ptr noundef nonnull %12, ptr noundef null) #20
  %36 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 5
  %37 = load i16, ptr %36, align 2, !tbaa !50
  %38 = or i16 %37, 1024
  store i16 %38, ptr %36, align 2, !tbaa !50
  %39 = load ptr, ptr %9, align 8, !tbaa !59
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %8, !llvm.loop !71

41:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_images(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 6
  %4 = load i16, ptr %3, align 8, !tbaa !70
  %5 = and i16 %4, -9
  %6 = icmp eq i16 %5, 5
  %7 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %76, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.MultiresBakeResult, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 18
  %13 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 3
  br label %14

14:                                               ; preds = %10, %73
  %15 = phi ptr [ %8, %10 ], [ %74, %73 ]
  %16 = getelementptr inbounds %struct.LinkData, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %17, ptr noundef null, ptr noundef null) #20
  %19 = getelementptr inbounds %struct.ImBuf, ptr %18, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.ImBuf, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !62
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %73, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.ImBuf, ptr %18, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %73, label %28

28:                                               ; preds = %24
  br i1 %6, label %29, label %41

29:                                               ; preds = %28
  %30 = load i16, ptr %3, align 8, !tbaa !70
  %31 = icmp eq i16 %30, 13
  %32 = load ptr, ptr %20, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.BakeImBufuserData, ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = load float, ptr %1, align 4, !tbaa !74
  %36 = load float, ptr %11, align 4, !tbaa !76
  br i1 %31, label %37, label %40

37:                                               ; preds = %29
  %38 = load float, ptr %12, align 4, !tbaa !77
  %39 = tail call float @RE_bake_make_derivative(ptr noundef nonnull %18, ptr noundef %32, ptr noundef %34, float noundef %35, float noundef %36, float noundef %38) #20
  br label %41

40:                                               ; preds = %29
  tail call void @RE_bake_ibuf_normalize_displacement(ptr noundef nonnull %18, ptr noundef %32, ptr noundef %34, float noundef %35, float noundef %36) #20
  br label %41

41:                                               ; preds = %37, %40, %28
  %42 = getelementptr inbounds %struct.BakeImBufuserData, ptr %20, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = load i32, ptr %13, align 4, !tbaa !78
  tail call void @RE_bake_ibuf_filter(ptr noundef nonnull %18, ptr noundef %43, i32 noundef %44) #20
  %45 = getelementptr inbounds %struct.ImBuf, ptr %18, i64 0, i32 23
  %46 = load i32, ptr %45, align 4, !tbaa !79
  %47 = or i32 %46, 18
  store i32 %47, ptr %45, align 4, !tbaa !79
  %48 = getelementptr inbounds %struct.ImBuf, ptr %18, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !80
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = or i32 %46, 26
  store i32 %52, ptr %45, align 4, !tbaa !79
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi i32 [ %52, %51 ], [ %47, %41 ]
  %55 = getelementptr inbounds %struct.ImBuf, ptr %18, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = or i32 %54, 4
  store i32 %59, ptr %45, align 4, !tbaa !79
  tail call void @imb_freemipmapImBuf(ptr noundef nonnull %18) #20
  br label %60

60:                                               ; preds = %58, %53
  %61 = load ptr, ptr %19, align 8, !tbaa !69
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %20, align 8, !tbaa !73
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %67(ptr noundef nonnull %64) #20
  br label %68

68:                                               ; preds = %66, %63
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %70 = load ptr, ptr %42, align 8, !tbaa !67
  tail call void %69(ptr noundef %70) #20
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %71(ptr noundef nonnull %20) #20
  store ptr null, ptr %19, align 8, !tbaa !69
  br label %72

72:                                               ; preds = %68, %60
  tail call void @BKE_image_release_ibuf(ptr noundef %17, ptr noundef nonnull %18, ptr noundef null) #20
  tail call void @DAG_id_tag_update(ptr noundef %17, i16 noundef signext 0) #20
  br label %73

73:                                               ; preds = %14, %24, %72
  %74 = load ptr, ptr %15, align 8, !tbaa !59
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %14, !llvm.loop !81

76:                                               ; preds = %73, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !82 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_multires_bake(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !83 {
  %8 = alloca %struct.MultiresBakeQueue, align 4
  %9 = alloca %struct.ListBase, align 8
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = tail call i32 %14(ptr noundef %10) #20
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %128

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  %18 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %1, ptr noundef null, ptr noundef null) #20
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 31
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  %21 = tail call ptr %20(ptr noundef nonnull %10) #20
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 33
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = tail call ptr %23(ptr noundef nonnull %10) #20
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 52
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = tail call ptr %26(ptr noundef nonnull %10, i32 noundef 5) #20
  %28 = load ptr, ptr %25, align 8, !tbaa !87
  %29 = tail call ptr %28(ptr noundef nonnull %10, i32 noundef 8) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  %30 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 17
  %31 = load i32, ptr %30, align 8, !tbaa !88
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = tail call i32 @BLI_system_thread_count() #20
  br label %35

35:                                               ; preds = %17, %33
  %36 = phi i32 [ %34, %33 ], [ %31, %17 ]
  %37 = icmp eq i8 %2, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 2
  %40 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %39, i32 noundef 18) #20
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @DM_add_tangent_layer(ptr noundef nonnull %10) #20
  br label %43

43:                                               ; preds = %42, %38
  %44 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %10, i32 noundef 18) #20
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %44, %43 ], [ null, %35 ]
  %47 = icmp eq ptr %4, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call ptr %4(ptr noundef nonnull %0, ptr noundef %1) #20, !callees !89
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi ptr [ %49, %48 ], [ null, %45 ]
  %52 = icmp sgt i32 %36, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @BLI_init_threads(ptr noundef nonnull %9, ptr noundef nonnull @do_multires_bake_thread, i32 noundef %36) #20
  br label %54

54:                                               ; preds = %53, %50
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %56 = sext i32 %36 to i64
  %57 = mul nsw i64 %56, 200
  %58 = call ptr %55(i64 noundef %57, ptr noundef nonnull @.str.2) #20
  %59 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !90
  call fastcc void @init_ccgdm_arrays(ptr noundef %60) #19
  store i32 0, ptr %8, align 4, !tbaa !91
  %61 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %8, i64 0, i32 1
  store i32 %15, ptr %61, align 4, !tbaa !93
  %62 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %8, i64 0, i32 2
  call void @BLI_spin_init(ptr noundef nonnull %62) #20
  %63 = icmp sgt i32 %36, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.ImBuf, ptr %18, i64 0, i32 2
  %66 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 20
  %67 = zext nneg i32 %36 to i64
  br label %68

68:                                               ; preds = %94, %64
  %69 = phi i64 [ 0, %64 ], [ %95, %94 ]
  %70 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69
  %71 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 1
  store ptr %0, ptr %71, align 8, !tbaa !94
  %72 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 2
  store ptr %1, ptr %72, align 8, !tbaa !98
  store ptr %8, ptr %70, align 8, !tbaa !99
  %73 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5
  %74 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 1
  store ptr %24, ptr %74, align 8, !tbaa !100
  store ptr %21, ptr %73, align 8, !tbaa !101
  %75 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 2
  store ptr %27, ptr %75, align 8, !tbaa !102
  %76 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 3
  store ptr %46, ptr %76, align 8, !tbaa !103
  %77 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 4
  store ptr %29, ptr %77, align 8, !tbaa !104
  %78 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 5
  %79 = load <2 x i32>, ptr %65, align 8, !tbaa !105
  store <2 x i32> %79, ptr %78, align 8, !tbaa !105
  %80 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 11
  store ptr %10, ptr %80, align 8, !tbaa !106
  %81 = load ptr, ptr %59, align 8, !tbaa !90
  %82 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 12
  store ptr %81, ptr %82, align 8, !tbaa !107
  %83 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 13
  store i32 %12, ptr %83, align 8, !tbaa !108
  %84 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 17
  store ptr %3, ptr %84, align 8, !tbaa !109
  %85 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 14
  store ptr %70, ptr %85, align 8, !tbaa !110
  %86 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 15
  store ptr %51, ptr %86, align 8, !tbaa !111
  %87 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 5, i32 16
  store ptr %18, ptr %87, align 8, !tbaa !112
  %88 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 6
  store <2 x float> <float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000>, ptr %88, align 8, !tbaa !113
  %89 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %69, i32 4
  %90 = load ptr, ptr %66, align 8, !tbaa !114
  call fastcc void @init_bake_rast(ptr noundef nonnull %89, ptr noundef %18, ptr noundef nonnull %73, ptr noundef %90) #19
  br i1 %52, label %91, label %96

91:                                               ; preds = %68
  call void @BLI_insert_thread(ptr noundef nonnull %9, ptr noundef nonnull %70) #20
  %92 = add nuw nsw i64 %69, 1
  %93 = icmp eq i64 %92, %67
  br i1 %93, label %103, label %94

94:                                               ; preds = %91, %96
  %95 = phi i64 [ %92, %91 ], [ %97, %96 ]
  br label %68, !llvm.loop !115

96:                                               ; preds = %68
  %97 = add nuw nsw i64 %69, 1
  %98 = icmp eq i64 %97, %67
  br i1 %98, label %99, label %94

99:                                               ; preds = %96, %54
  %100 = call ptr @do_multires_bake_thread(ptr noundef %58) #19
  %101 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 0, i32 6
  %102 = load <2 x float>, ptr %101, align 8, !tbaa !113
  store <2 x float> %102, ptr %6, align 4, !tbaa !113
  br label %123

103:                                              ; preds = %91
  call void @BLI_end_threads(ptr noundef nonnull %9) #20
  %104 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 0, i32 6
  %105 = load float, ptr %104, align 8, !tbaa !116
  %106 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 0, i32 7
  %107 = load float, ptr %106, align 4, !tbaa !117
  %108 = getelementptr inbounds %struct.MultiresBakeResult, ptr %6, i64 0, i32 1
  %109 = zext nneg i32 %36 to i64
  br label %110

110:                                              ; preds = %103, %110
  %111 = phi i64 [ 1, %103 ], [ %120, %110 ]
  %112 = phi float [ %107, %103 ], [ %119, %110 ]
  %113 = phi float [ %105, %103 ], [ %116, %110 ]
  %114 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %111, i32 6
  %115 = load float, ptr %114, align 8, !tbaa !116
  %116 = call fastcc float @min_ff(float noundef %113, float noundef %115) #19
  %117 = getelementptr inbounds %struct.MultiresBakeThread, ptr %58, i64 %111, i32 7
  %118 = load float, ptr %117, align 4, !tbaa !117
  %119 = call fastcc float @max_ff(float noundef %112, float noundef %118) #19
  %120 = add nuw nsw i64 %111, 1
  %121 = icmp eq i64 %120, %109
  br i1 %121, label %122, label %110, !llvm.loop !118

122:                                              ; preds = %110
  store float %116, ptr %6, align 4, !tbaa !74
  store float %119, ptr %108, align 4, !tbaa !76
  br label %123

123:                                              ; preds = %99, %122
  call void @BLI_spin_end(ptr noundef nonnull %62) #20
  %124 = icmp eq ptr %5, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %123
  call void %5(ptr noundef %51) #20, !callees !119
  br label %126

126:                                              ; preds = %125, %123
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %127(ptr noundef nonnull %58) #20
  call void @BKE_image_release_ibuf(ptr noundef %1, ptr noundef %18, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  br label %128

128:                                              ; preds = %126, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @apply_tangmat_callback(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10) #0 !PGOFuncName !120 {
  %12 = alloca %struct.MFace, align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %17 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %16, i32 noundef 5) #20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  %18 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !62
  %20 = mul nsw i32 %19, %10
  %21 = add nsw i32 %20, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  call void %23(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %12) #20
  %24 = sext i32 %5 to i64
  %25 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %24
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 1
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 2
  %28 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !122
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %11
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 3
  call void @resolve_quad_uv_v2(ptr noundef nonnull %13, ptr noundef %7, ptr noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %32) #20
  br label %34

33:                                               ; preds = %11
  call void @resolve_tri_uv_v2(ptr noundef nonnull %13, ptr noundef %7, ptr noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27) #20
  br label %34

34:                                               ; preds = %33, %31
  %35 = load float, ptr %13, align 4, !tbaa !113
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store float 0.000000e+00, ptr %13, align 4, !tbaa !113
  br label %41

38:                                               ; preds = %34
  %39 = fcmp ogt float %35, 1.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  store float 1.000000e+00, ptr %13, align 4, !tbaa !113
  br label %41

41:                                               ; preds = %38, %40, %37
  %42 = phi float [ %35, %38 ], [ 1.000000e+00, %40 ], [ 0.000000e+00, %37 ]
  %43 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !113
  %45 = fcmp olt float %44, 0.000000e+00
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = fcmp ogt float %44, 1.000000e+00
  br i1 %47, label %48, label %50

48:                                               ; preds = %46, %41
  %49 = phi float [ 0.000000e+00, %41 ], [ 1.000000e+00, %46 ]
  store float %49, ptr %43, align 4, !tbaa !113
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi float [ %44, %46 ], [ %49, %48 ]
  %52 = load ptr, ptr %3, align 8, !tbaa !124
  %53 = getelementptr inbounds %struct.MNormalBakeData, ptr %3, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !126
  call fastcc void @get_ccgdm_data(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %52, ptr noundef %54, i32 noundef %6, i32 noundef %5, float noundef %42, float noundef %51, ptr noundef null, ptr noundef nonnull %14) #19
  call void @mul_v3_m3v3(ptr noundef nonnull %15, ptr noundef %8, ptr noundef nonnull %14) #20
  call fastcc void @normalize_v3(ptr noundef nonnull %15) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %15, float noundef 5.000000e-01) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull @__const.apply_tangmat_callback.tmp) #19
  %55 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !80
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %50
  %59 = shl nsw i32 %21, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, ptr %56, i64 %60
  %62 = load float, ptr %15, align 4, !tbaa !113
  store float %62, ptr %61, align 4, !tbaa !113
  %63 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !113
  %65 = getelementptr inbounds float, ptr %61, i64 1
  store float %64, ptr %65, align 4, !tbaa !113
  %66 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !113
  %68 = getelementptr inbounds float, ptr %61, i64 2
  store float %67, ptr %68, align 4, !tbaa !113
  %69 = getelementptr inbounds float, ptr %61, i64 3
  store float 1.000000e+00, ptr %69, align 4, !tbaa !113
  br label %77

70:                                               ; preds = %50
  %71 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !127
  %73 = shl nsw i32 %21, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %72, i64 %74
  call void @rgb_float_to_uchar(ptr noundef %75, ptr noundef nonnull %15) #20
  %76 = getelementptr inbounds i8, ptr %75, i64 3
  store i8 -1, ptr %76, align 1, !tbaa !128
  br label %77

77:                                               ; preds = %70, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @init_normal_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !PGOFuncName !129 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %5 = tail call ptr %4(i64 noundef 16, ptr noundef nonnull @.str.3) #20
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = tail call ptr %7(ptr noundef %3, i32 noundef 7) #20
  store ptr %8, ptr %5, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = tail call ptr %10(ptr noundef %3, i32 noundef 7) #20
  %12 = getelementptr inbounds %struct.MNormalBakeData, ptr %5, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !126
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_normal_data(ptr noundef %0) #0 !PGOFuncName !131 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %2(ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @apply_heights_callback(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr nocapture readnone %8, i32 noundef %9, i32 noundef %10) #0 !PGOFuncName !132 {
  %12 = alloca %struct.MFace, align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %19 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %18, i32 noundef 5) #20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  %20 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = mul nsw i32 %21, %10
  %23 = add nsw i32 %22, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #18
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  call void %25(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %12) #20
  %26 = sext i32 %5 to i64
  %27 = getelementptr inbounds %struct.MTFace, ptr %19, i64 %26
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 1
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 2
  %30 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !122
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %11
  %34 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 3
  call void @resolve_quad_uv_v2(ptr noundef nonnull %13, ptr noundef %7, ptr noundef %27, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %34) #20
  br label %36

35:                                               ; preds = %11
  call void @resolve_tri_uv_v2(ptr noundef nonnull %13, ptr noundef %7, ptr noundef %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #20
  br label %36

36:                                               ; preds = %35, %33
  %37 = load float, ptr %13, align 4, !tbaa !113
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store float 0.000000e+00, ptr %13, align 4, !tbaa !113
  br label %43

40:                                               ; preds = %36
  %41 = fcmp ogt float %37, 1.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store float 1.000000e+00, ptr %13, align 4, !tbaa !113
  br label %43

43:                                               ; preds = %40, %42, %39
  %44 = phi float [ %37, %40 ], [ 1.000000e+00, %42 ], [ 0.000000e+00, %39 ]
  %45 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !113
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = fcmp ogt float %46, 1.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %48, %43
  %51 = phi float [ 0.000000e+00, %43 ], [ 1.000000e+00, %48 ]
  store float %51, ptr %45, align 4, !tbaa !113
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi float [ %46, %48 ], [ %51, %50 ]
  %54 = getelementptr inbounds %struct.MHeightBakeData, ptr %3, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !133
  %56 = getelementptr inbounds %struct.MHeightBakeData, ptr %3, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !135
  call fastcc void @get_ccgdm_data(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %55, ptr noundef %57, i32 noundef %6, i32 noundef %5, float noundef %44, float noundef %53, ptr noundef nonnull %16, ptr noundef null) #19
  %58 = getelementptr inbounds %struct.MHeightBakeData, ptr %3, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !136
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr %54, align 8, !tbaa !133
  %63 = load ptr, ptr %56, align 8, !tbaa !135
  %64 = load float, ptr %13, align 4, !tbaa !113
  %65 = load float, ptr %45, align 4, !tbaa !113
  call fastcc void @get_ccgdm_data(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef %62, ptr noundef %63, i32 noundef 0, i32 noundef %5, float noundef %64, float noundef %65, ptr noundef nonnull %15, ptr noundef nonnull %17) #19
  br label %78

66:                                               ; preds = %52
  %67 = load ptr, ptr %24, align 8, !tbaa !121
  call void %67(ptr noundef nonnull %0, i32 noundef %5, ptr noundef nonnull %12) #20
  %68 = load i32, ptr %30, align 4, !tbaa !122
  %69 = icmp eq i32 %68, 0
  %70 = load float, ptr %13, align 4, !tbaa !113
  %71 = load float, ptr %45, align 4, !tbaa !113
  br i1 %69, label %75, label %72

72:                                               ; preds = %66
  call fastcc void @interp_bilinear_mface(ptr noundef nonnull %0, ptr noundef nonnull %12, float noundef %70, float noundef %71, i32 noundef 1, ptr noundef nonnull %15) #19
  %73 = load float, ptr %13, align 4, !tbaa !113
  %74 = load float, ptr %45, align 4, !tbaa !113
  call fastcc void @interp_bilinear_mface(ptr noundef nonnull %0, ptr noundef nonnull %12, float noundef %73, float noundef %74, i32 noundef 0, ptr noundef nonnull %17) #19
  br label %78

75:                                               ; preds = %66
  call fastcc void @interp_barycentric_mface(ptr noundef nonnull %0, ptr noundef nonnull %12, float noundef %70, float noundef %71, i32 noundef 1, ptr noundef nonnull %15) #19
  %76 = load float, ptr %13, align 4, !tbaa !113
  %77 = load float, ptr %45, align 4, !tbaa !113
  call fastcc void @interp_barycentric_mface(ptr noundef nonnull %0, ptr noundef nonnull %12, float noundef %76, float noundef %77, i32 noundef 0, ptr noundef nonnull %17) #19
  br label %78

78:                                               ; preds = %72, %75, %61
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %15) #19
  %79 = call fastcc float @dot_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %14) #19
  %80 = load ptr, ptr %3, align 8, !tbaa !137
  %81 = sext i32 %23 to i64
  %82 = getelementptr inbounds float, ptr %80, i64 %81
  store float %79, ptr %82, align 4, !tbaa !113
  %83 = getelementptr inbounds %struct.MultiresBakeThread, ptr %2, i64 0, i32 6
  %84 = load float, ptr %83, align 8, !tbaa !116
  %85 = call fastcc float @min_ff(float noundef %84, float noundef %79) #19
  store float %85, ptr %83, align 8, !tbaa !116
  %86 = getelementptr inbounds %struct.MultiresBakeThread, ptr %2, i64 0, i32 7
  %87 = load float, ptr %86, align 4, !tbaa !117
  %88 = call fastcc float @max_ff(float noundef %87, float noundef %79) #19
  store float %88, ptr %86, align 4, !tbaa !117
  %89 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !80
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %78
  %93 = shl nsw i32 %23, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, ptr %90, i64 %94
  %96 = getelementptr inbounds float, ptr %95, i64 2
  store float %79, ptr %96, align 4, !tbaa !113
  %97 = getelementptr inbounds float, ptr %95, i64 1
  store float %79, ptr %97, align 4, !tbaa !113
  store float %79, ptr %95, align 4, !tbaa !113
  %98 = getelementptr inbounds float, ptr %95, i64 3
  store float 1.000000e+00, ptr %98, align 4, !tbaa !113
  br label %116

99:                                               ; preds = %78
  %100 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !127
  %102 = shl nsw i32 %23, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %101, i64 %103
  %105 = fcmp ugt float %79, 0.000000e+00
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = fcmp ogt float %79, 0x3FEFEFEFE0000000
  %108 = call float @llvm.fmuladd.f32(float %79, float 2.550000e+02, float 5.000000e-01)
  %109 = select i1 %107, float 2.550000e+02, float %108
  %110 = fptoui float %109 to i8
  br label %111

111:                                              ; preds = %99, %106
  %112 = phi i8 [ %110, %106 ], [ 0, %99 ]
  %113 = getelementptr inbounds i8, ptr %104, i64 2
  store i8 %112, ptr %113, align 1, !tbaa !128
  %114 = getelementptr inbounds i8, ptr %104, i64 1
  store i8 %112, ptr %114, align 1, !tbaa !128
  store i8 %112, ptr %104, align 1, !tbaa !128
  %115 = getelementptr inbounds i8, ptr %104, i64 3
  store i8 -1, ptr %115, align 1, !tbaa !128
  br label %116

116:                                              ; preds = %111, %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @init_heights_data(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !138 {
  %3 = alloca %struct.SubsurfModifierData, align 8
  %4 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %1, ptr noundef null, ptr noundef null) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !62
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !66
  %18 = sext i32 %17 to i64
  %19 = mul i64 %15, %18
  %20 = tail call ptr %11(i64 noundef %19, ptr noundef nonnull @.str.4) #20
  store ptr %20, ptr %7, align 8, !tbaa !73
  br label %21

21:                                               ; preds = %10, %2
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %23 = tail call ptr %22(i64 noundef 40, ptr noundef nonnull @.str.5) #20
  %24 = getelementptr inbounds %struct.MHeightBakeData, ptr %23, i64 0, i32 1
  store ptr %1, ptr %24, align 8, !tbaa !139
  %25 = load ptr, ptr %7, align 8, !tbaa !73
  store ptr %25, ptr %23, align 8, !tbaa !137
  %26 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 2, !tbaa !140
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %30 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !141
  %32 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !84
  %34 = sub nsw i32 %31, %33
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %51, label %36

36:                                               ; preds = %29
  %37 = tail call i32 @llvm.smin.i32(i32 %34, i32 6)
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 3
  store i16 %38, ptr %39, align 4, !tbaa !142
  %40 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 2
  store i16 %38, ptr %40, align 2, !tbaa !145
  %41 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 4
  store i16 8, ptr %41, align 2, !tbaa !146
  %42 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 2
  %43 = load i8, ptr %42, align 8, !tbaa !147
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 1
  store i16 1, ptr %46, align 8, !tbaa !148
  br label %47

47:                                               ; preds = %45, %36
  %48 = load ptr, ptr %0, align 8, !tbaa !35
  %49 = call ptr @subsurf_make_derived_from_derived(ptr noundef %48, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #20
  %50 = getelementptr inbounds %struct.MHeightBakeData, ptr %23, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !136
  call fastcc void @init_ccgdm_arrays(ptr noundef %49) #19
  br label %51

51:                                               ; preds = %47, %29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #18
  br label %52

52:                                               ; preds = %51, %21
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 52
  %54 = load ptr, ptr %53, align 8, !tbaa !87
  %55 = call ptr %54(ptr noundef %5, i32 noundef 7) #20
  %56 = getelementptr inbounds %struct.MHeightBakeData, ptr %23, i64 0, i32 3
  store ptr %55, ptr %56, align 8, !tbaa !133
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 54
  %58 = load ptr, ptr %57, align 8, !tbaa !130
  %59 = call ptr %58(ptr noundef %5, i32 noundef 7) #20
  %60 = getelementptr inbounds %struct.MHeightBakeData, ptr %23, i64 0, i32 4
  store ptr %59, ptr %60, align 8, !tbaa !135
  call void @BKE_image_release_ibuf(ptr noundef %1, ptr noundef nonnull %4, ptr noundef null) #20
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_heights_data(ptr noundef %0) #0 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.MHeightBakeData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  tail call void %7(ptr noundef nonnull %3) #20
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %9(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @apply_ao_callback(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr nocapture readnone %8, i32 noundef %9, i32 noundef %10) #0 !PGOFuncName !151 {
  %12 = alloca %struct.MFace, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [2 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %22 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 5) #20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #18
  %23 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !62
  %25 = mul nsw i32 %24, %10
  %26 = add nsw i32 %25, %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #18
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %28 = load ptr, ptr %27, align 8, !tbaa !121
  call void %28(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %12) #20
  %29 = sext i32 %5 to i64
  %30 = getelementptr inbounds %struct.MTFace, ptr %22, i64 %29
  %31 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 1
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 2
  %33 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !122
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %11
  %37 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 3
  call void @resolve_quad_uv_v2(ptr noundef nonnull %19, ptr noundef %7, ptr noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %37) #20
  br label %39

38:                                               ; preds = %11
  call void @resolve_tri_uv_v2(ptr noundef nonnull %19, ptr noundef %7, ptr noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #20
  br label %39

39:                                               ; preds = %38, %36
  %40 = load float, ptr %19, align 4, !tbaa !113
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store float 0.000000e+00, ptr %19, align 4, !tbaa !113
  br label %46

43:                                               ; preds = %39
  %44 = fcmp ogt float %40, 1.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  store float 1.000000e+00, ptr %19, align 4, !tbaa !113
  br label %46

46:                                               ; preds = %43, %45, %42
  %47 = phi float [ %40, %43 ], [ 1.000000e+00, %45 ], [ 0.000000e+00, %42 ]
  %48 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !113
  %50 = fcmp olt float %49, 0.000000e+00
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = fcmp ogt float %49, 1.000000e+00
  br i1 %52, label %53, label %55

53:                                               ; preds = %51, %46
  %54 = phi float [ 0.000000e+00, %46 ], [ 1.000000e+00, %51 ]
  store float %54, ptr %48, align 4, !tbaa !113
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi float [ %49, %51 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !152
  %59 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !154
  call fastcc void @get_ccgdm_data(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %58, ptr noundef %60, i32 noundef %6, i32 noundef %5, float noundef %47, float noundef %56, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  %61 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 1
  %62 = load float, ptr %61, align 4, !tbaa !155
  br label %63

63:                                               ; preds = %55, %63
  %64 = phi i64 [ 0, %55 ], [ %71, %63 ]
  %65 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !113
  %67 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 %64
  %68 = load float, ptr %67, align 4, !tbaa !113
  %69 = call float @llvm.fmuladd.f32(float %62, float %68, float %66)
  %70 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 %64
  store float %69, ptr %70, align 4, !tbaa !113
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %63, !llvm.loop !156

73:                                               ; preds = %63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %18, ptr noundef nonnull align 4 dereferenceable(12) %14, i64 12, i1 false), !tbaa !113
  call fastcc void @build_coordinate_frame(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #19
  %74 = call fastcc zeroext i16 @get_ao_random1(i32 noundef %9) #19
  %75 = zext i16 %74 to i32
  %76 = add nsw i32 %75, %10
  %77 = call fastcc zeroext i16 @get_ao_random2(i32 noundef %76) #19
  %78 = and i16 %77, 1023
  %79 = zext nneg i16 %78 to i32
  %80 = load i32, ptr %3, align 8, !tbaa !157
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %154

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 2
  %84 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 3
  %85 = zext nneg i16 %78 to i64
  br label %86

86:                                               ; preds = %82, %145
  %87 = phi i64 [ 0, %82 ], [ %150, %145 ]
  %88 = phi i32 [ %80, %82 ], [ %151, %145 ]
  %89 = phi float [ 0.000000e+00, %82 ], [ %149, %145 ]
  %90 = load ptr, ptr %83, align 8, !tbaa !158
  %91 = add nuw nsw i64 %87, %85
  %92 = trunc i64 %91 to i32
  %93 = srem i32 %92, %88
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds i16, ptr %90, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !159
  %97 = load ptr, ptr %84, align 8, !tbaa !160
  %98 = getelementptr inbounds i16, ptr %97, i64 %87
  %99 = load i16, ptr %98, align 2, !tbaa !159
  %100 = zext i16 %96 to i32
  %101 = add nuw nsw i32 %100, %79
  %102 = call fastcc zeroext i16 @get_ao_random2(i32 noundef %101) #19
  %103 = and i16 %102, 1023
  %104 = uitofp i16 %103 to float
  %105 = fmul float %104, 0x3F50000000000000
  %106 = zext i16 %99 to i32
  %107 = add nuw nsw i32 %106, %79
  %108 = call fastcc zeroext i16 @get_ao_random1(i32 noundef %107) #19
  %109 = and i16 %108, 1023
  %110 = uitofp i16 %109 to float
  %111 = fmul float %110, 0x3F50000000000000
  %112 = uitofp i16 %96 to float
  %113 = fadd float %105, %112
  %114 = sitofp i32 %88 to float
  %115 = fdiv float %113, %114
  %116 = uitofp i16 %99 to float
  %117 = fadd float %111, %116
  %118 = fdiv float %117, %114
  %119 = fmul float %118, 0x401921FB60000000
  %120 = call float @sqrtf(float noundef %115) #20
  %121 = fcmp olt float %115, 1.000000e+00
  br i1 %121, label %122, label %125

122:                                              ; preds = %86
  %123 = fsub float 1.000000e+00, %115
  %124 = call float @sqrtf(float noundef %123) #20
  br label %125

125:                                              ; preds = %86, %122
  %126 = phi float [ %124, %122 ], [ 0.000000e+00, %86 ]
  %127 = call float @cosf(float noundef %119) #20
  %128 = call float @sinf(float noundef %119) #20
  %129 = fmul float %126, %127
  %130 = fmul float %126, %128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #18
  br label %131

131:                                              ; preds = %125, %131
  %132 = phi i64 [ 0, %125 ], [ %143, %131 ]
  %133 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 %132
  %134 = load float, ptr %133, align 4, !tbaa !113
  %135 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 %132
  %136 = load float, ptr %135, align 4, !tbaa !113
  %137 = fmul float %130, %136
  %138 = call float @llvm.fmuladd.f32(float %134, float %129, float %137)
  %139 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 %132
  %140 = load float, ptr %139, align 4, !tbaa !113
  %141 = call float @llvm.fmuladd.f32(float %140, float %120, float %138)
  %142 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 %132
  store float %141, ptr %142, align 4, !tbaa !113
  %143 = add nuw nsw i64 %132, 1
  %144 = icmp eq i64 %143, 3
  br i1 %144, label %145, label %131, !llvm.loop !161

145:                                              ; preds = %131
  %146 = call fastcc i32 @trace_ao_ray(ptr noundef nonnull %3, ptr noundef nonnull %15, ptr noundef nonnull %20) #19
  %147 = icmp eq i32 %146, 0
  %148 = fadd float %89, 1.000000e+00
  %149 = select i1 %147, float %89, float %148
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #18
  %150 = add nuw nsw i64 %87, 1
  %151 = load i32, ptr %3, align 8, !tbaa !157
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %86, label %154, !llvm.loop !162

154:                                              ; preds = %145, %73
  %155 = phi float [ 0.000000e+00, %73 ], [ %149, %145 ]
  %156 = phi i32 [ %80, %73 ], [ %151, %145 ]
  %157 = sitofp i32 %156 to float
  %158 = fdiv float %155, %157
  %159 = fsub float 1.000000e+00, %158
  %160 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %161 = load ptr, ptr %160, align 8, !tbaa !80
  %162 = icmp eq ptr %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %154
  %164 = shl nsw i32 %26, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, ptr %161, i64 %165
  %167 = getelementptr inbounds float, ptr %166, i64 2
  store float %159, ptr %167, align 4, !tbaa !113
  %168 = getelementptr inbounds float, ptr %166, i64 1
  store float %159, ptr %168, align 4, !tbaa !113
  store float %159, ptr %166, align 4, !tbaa !113
  %169 = getelementptr inbounds float, ptr %166, i64 3
  store float 1.000000e+00, ptr %169, align 4, !tbaa !113
  br label %187

170:                                              ; preds = %154
  %171 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %172 = load ptr, ptr %171, align 8, !tbaa !127
  %173 = shl nsw i32 %26, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %172, i64 %174
  %176 = fcmp ugt float %159, 0.000000e+00
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = fcmp ogt float %159, 0x3FEFEFEFE0000000
  %179 = call float @llvm.fmuladd.f32(float %159, float 2.550000e+02, float 5.000000e-01)
  %180 = select i1 %178, float 2.550000e+02, float %179
  %181 = fptoui float %180 to i8
  br label %182

182:                                              ; preds = %170, %177
  %183 = phi i8 [ %181, %177 ], [ 0, %170 ]
  %184 = getelementptr inbounds i8, ptr %175, i64 2
  store i8 %183, ptr %184, align 1, !tbaa !128
  %185 = getelementptr inbounds i8, ptr %175, i64 1
  store i8 %183, ptr %185, align 1, !tbaa !128
  store i8 %183, ptr %175, align 1, !tbaa !128
  %186 = getelementptr inbounds i8, ptr %175, i64 3
  store i8 -1, ptr %186, align 1, !tbaa !128
  br label %187

187:                                              ; preds = %182, %163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @init_ao_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !PGOFuncName !163 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call fastcc void @init_ao_random() #19
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %5 = tail call ptr %4(i64 noundef 56, ptr noundef nonnull @.str.6) #20
  %6 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !164
  store i32 %7, ptr %5, align 8, !tbaa !157
  %8 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 9
  %9 = load float, ptr %8, align 8, !tbaa !165
  %10 = getelementptr inbounds %struct.MAOBakeData, ptr %5, i64 0, i32 1
  store float %9, ptr %10, align 4, !tbaa !155
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 52
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = tail call ptr %12(ptr noundef %3, i32 noundef 7) #20
  %14 = getelementptr inbounds %struct.MAOBakeData, ptr %5, i64 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 54
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  %17 = tail call ptr %16(ptr noundef %3, i32 noundef 7) #20
  %18 = getelementptr inbounds %struct.MAOBakeData, ptr %5, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !154
  tail call fastcc void @create_ao_raytree(ptr noundef nonnull %0, ptr noundef nonnull %5) #19
  %19 = load i32, ptr %6, align 4, !tbaa !164
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 1
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %23 = tail call ptr %22(i64 noundef %21, ptr noundef nonnull @.str.7) #20
  %24 = getelementptr inbounds %struct.MAOBakeData, ptr %5, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !158
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %26 = tail call ptr %25(i64 noundef %21, ptr noundef nonnull @.str.8) #20
  %27 = getelementptr inbounds %struct.MAOBakeData, ptr %5, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !160
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %29 = tail call ptr %28(i64 noundef %21, ptr noundef nonnull @.str.9) #20
  %30 = load ptr, ptr %24, align 8, !tbaa !158
  %31 = load i32, ptr %6, align 4, !tbaa !164
  tail call fastcc void @build_permutation_table(ptr noundef %30, ptr noundef %29, i32 noundef %31, i32 noundef 1) #19
  %32 = load ptr, ptr %27, align 8, !tbaa !160
  %33 = load i32, ptr %6, align 4, !tbaa !164
  tail call fastcc void @build_permutation_table(ptr noundef %32, ptr noundef %29, i32 noundef %33, i32 noundef 0) #19
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %34(ptr noundef %29) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_ao_data(ptr noundef %0) #0 !PGOFuncName !166 {
  %2 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  tail call void @RE_rayobject_free(ptr noundef %3) #20
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !168
  tail call void %4(ptr noundef %6) #20
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !158
  tail call void %7(ptr noundef %9) #20
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !160
  tail call void %10(ptr noundef %12) #20
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %13(ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_system_thread_count() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_add_tangent_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @do_multires_bake_thread(ptr nocapture noundef %0) #0 !PGOFuncName !169 {
  %2 = alloca [3 x [2 x i32]], align 16
  %3 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = load ptr, ptr %0, align 8, !tbaa !99
  %7 = tail call fastcc i32 @multires_bake_queue_next_face(ptr noundef %6) #19
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %99

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 2
  %11 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 7
  %13 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 2
  %14 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 2, i64 1
  %15 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 1
  %16 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 8
  %17 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 9
  %18 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 10
  %19 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 16
  %20 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 14
  %21 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 20
  %22 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 21
  %23 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 13
  %24 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 10
  br label %25

25:                                               ; preds = %9, %95
  %26 = phi i32 [ %7, %9 ], [ %97, %95 ]
  %27 = load ptr, ptr %10, align 8, !tbaa !170
  %28 = zext nneg i32 %26 to i64
  %29 = getelementptr inbounds %struct.MTFace, ptr %27, i64 %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %30 = tail call fastcc i32 @multiresbake_test_break(ptr noundef %5) #19, !range !171
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %99

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.MTFace, ptr %27, i64 %28, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = load ptr, ptr %11, align 8, !tbaa !98
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %95, !llvm.loop !172

38:                                               ; preds = %33
  store i32 %26, ptr %12, align 8, !tbaa !173
  store i32 2, ptr %13, align 16, !tbaa !105
  store <4 x i32> <i32 0, i32 0, i32 1, i32 2>, ptr %2, align 16, !tbaa !105
  store i32 3, ptr %14, align 4, !tbaa !105
  %39 = load ptr, ptr %15, align 8, !tbaa !174
  %40 = getelementptr inbounds %struct.MFace, ptr %39, i64 %28, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !122
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %43
  %44 = phi i1 [ true, %38 ], [ false, %43 ]
  %45 = phi i64 [ 0, %38 ], [ 1, %43 ]
  %46 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !105
  store i32 %47, ptr %16, align 4, !tbaa !175
  %48 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 1, i64 %45
  %49 = load i32, ptr %48, align 4, !tbaa !105
  store i32 %49, ptr %17, align 8, !tbaa !176
  %50 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 2, i64 %45
  %51 = load i32, ptr %50, align 4, !tbaa !105
  store i32 %51, ptr %18, align 4, !tbaa !177
  %52 = sext i32 %47 to i64
  %53 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 %52
  %54 = sext i32 %49 to i64
  %55 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 %54
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 %56
  tail call fastcc void @bake_rasterize(ptr noundef nonnull %3, ptr noundef %53, ptr noundef %55, ptr noundef %57) #19
  %58 = load ptr, ptr %19, align 8, !tbaa !178
  %59 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !80
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 23
  %63 = load i32, ptr %62, align 4, !tbaa !79
  %64 = or i32 %63, 8
  %65 = select i1 %61, i32 %63, i32 %64
  %66 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 23
  %67 = or i32 %65, 16
  store i32 %67, ptr %66, align 4, !tbaa !79
  %68 = and i1 %42, %44
  br i1 %68, label %43, label %69, !llvm.loop !179

69:                                               ; preds = %43
  %70 = load ptr, ptr %0, align 8, !tbaa !99
  %71 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %70, i64 0, i32 2
  tail call void @BLI_spin_lock(ptr noundef nonnull %71) #20
  %72 = load i32, ptr %20, align 4, !tbaa !180
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %20, align 4, !tbaa !180
  %74 = load ptr, ptr %21, align 8, !tbaa !114
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store i16 1, ptr %74, align 2, !tbaa !159
  br label %77

77:                                               ; preds = %76, %69
  %78 = load ptr, ptr %22, align 8, !tbaa !181
  %79 = icmp eq ptr %78, null
  %80 = load ptr, ptr %0, align 8, !tbaa !99
  br i1 %79, label %93, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %23, align 8, !tbaa !182
  %83 = sitofp i32 %82 to float
  %84 = sitofp i32 %73 to float
  %85 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %80, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !93
  %87 = sitofp i32 %86 to float
  %88 = fdiv float %84, %87
  %89 = fadd float %88, %83
  %90 = load i32, ptr %24, align 4, !tbaa !183
  %91 = sitofp i32 %90 to float
  %92 = fdiv float %89, %91
  store float %92, ptr %78, align 4, !tbaa !113
  br label %93

93:                                               ; preds = %81, %77
  %94 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %80, i64 0, i32 2
  tail call void @BLI_spin_unlock(ptr noundef nonnull %94) #20
  br label %95

95:                                               ; preds = %33, %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %96 = load ptr, ptr %0, align 8, !tbaa !99
  %97 = tail call fastcc i32 @multires_bake_queue_next_face(ptr noundef %96) #19
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %25, label %99

99:                                               ; preds = %95, %1, %32
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_ccgdm_arrays(ptr noundef %0) unnamed_addr #0 !PGOFuncName !184 {
  %2 = alloca %struct.CCGKey, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 64
  %4 = load ptr, ptr %3, align 8, !tbaa !185
  %5 = tail call i32 %4(ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 65
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = tail call ptr %7(ptr noundef %0) #20
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 67
  %10 = load ptr, ptr %9, align 8, !tbaa !187
  %11 = tail call ptr %10(ptr noundef %0) #20
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !188
  call void %13(ptr noundef %0, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_bake_rast(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !PGOFuncName !189 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %7 = getelementptr inbounds %struct.BakeImBufuserData, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !190
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %11 = load <2 x i32>, ptr %10, align 8, !tbaa !105
  store <2 x i32> %11, ptr %0, align 8, !tbaa !105
  %12 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 3
  store ptr %2, ptr %12, align 8, !tbaa !191
  %13 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 4
  store ptr @flush_pixel, ptr %13, align 8, !tbaa !192
  %14 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 5
  store ptr %3, ptr %14, align 8, !tbaa !193
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @flush_pixel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 !PGOFuncName !194 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %11 = insertelement <2 x i32> poison, i32 %1, i64 0
  %12 = insertelement <2 x i32> %11, i32 %2, i64 1
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 5
  %15 = fadd <2 x float> %13, <float 5.000000e-01, float 5.000000e-01>
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !105
  %17 = sitofp <2 x i32> %16 to <2 x float>
  %18 = fdiv <2 x float> %15, %17
  store <2 x float> %18, ptr %4, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #18
  %19 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !175
  %21 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !176
  %23 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 10
  %24 = load i32, ptr %23, align 4, !tbaa !177
  %25 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !170
  %27 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !173
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MTFace, ptr %26, i64 %29
  %31 = sext i32 %20 to i64
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 %31
  %33 = sext i32 %22 to i64
  %34 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 %33
  %35 = sext i32 %24 to i64
  %36 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 %35
  call fastcc void @multiresbake_get_normal(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %28, i32 noundef %20) #19
  %37 = load i32, ptr %27, align 8, !tbaa !173
  call fastcc void @multiresbake_get_normal(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %37, i32 noundef %22) #19
  %38 = load i32, ptr %27, align 8, !tbaa !173
  call fastcc void @multiresbake_get_normal(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %38, i32 noundef %24) #19
  call void @resolve_tri_uv_v2(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef %32, ptr noundef %34, ptr noundef %36) #20
  %39 = load float, ptr %8, align 4, !tbaa !113
  %40 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !113
  %42 = fsub float 1.000000e+00, %39
  %43 = fsub float %42, %41
  %44 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !195
  %46 = icmp eq ptr %45, null
  br i1 %46, label %100, label %47

47:                                               ; preds = %3
  %48 = load i32, ptr %27, align 8, !tbaa !173
  %49 = shl nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, ptr %45, i64 %50
  %52 = shl nsw i32 %20, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, ptr %51, i64 %53
  %55 = shl nsw i32 %22, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %51, i64 %56
  %58 = shl nsw i32 %24, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, ptr %51, i64 %59
  %61 = getelementptr inbounds float, ptr %54, i64 3
  %62 = load float, ptr %61, align 4, !tbaa !113
  %63 = getelementptr inbounds float, ptr %57, i64 3
  %64 = load float, ptr %63, align 4, !tbaa !113
  %65 = fmul float %41, %64
  %66 = call float @llvm.fmuladd.f32(float %62, float %39, float %65)
  %67 = getelementptr inbounds float, ptr %60, i64 3
  %68 = load float, ptr %67, align 4, !tbaa !113
  %69 = call float @llvm.fmuladd.f32(float %68, float %43, float %66)
  %70 = fcmp olt float %69, 0.000000e+00
  br label %71

71:                                               ; preds = %47, %71
  %72 = phi i64 [ 0, %47 ], [ %93, %71 ]
  %73 = getelementptr inbounds float, ptr %54, i64 %72
  %74 = load float, ptr %73, align 4, !tbaa !113
  %75 = getelementptr inbounds float, ptr %57, i64 %72
  %76 = load float, ptr %75, align 4, !tbaa !113
  %77 = fmul float %41, %76
  %78 = call float @llvm.fmuladd.f32(float %74, float %39, float %77)
  %79 = getelementptr inbounds float, ptr %60, i64 %72
  %80 = load float, ptr %79, align 4, !tbaa !113
  %81 = call float @llvm.fmuladd.f32(float %80, float %43, float %78)
  %82 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %72
  store float %81, ptr %82, align 4, !tbaa !113
  %83 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %72
  %84 = load float, ptr %83, align 4, !tbaa !113
  %85 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %72
  %86 = load float, ptr %85, align 4, !tbaa !113
  %87 = fmul float %41, %86
  %88 = call float @llvm.fmuladd.f32(float %84, float %39, float %87)
  %89 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %72
  %90 = load float, ptr %89, align 4, !tbaa !113
  %91 = call float @llvm.fmuladd.f32(float %90, float %43, float %88)
  %92 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 %72
  store float %91, ptr %92, align 4, !tbaa !113
  %93 = add nuw nsw i64 %72, 1
  %94 = icmp eq i64 %93, 3
  br i1 %94, label %95, label %71, !llvm.loop !196

95:                                               ; preds = %71
  %96 = select i1 %70, float -1.000000e+00, float 1.000000e+00
  %97 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %98 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %97, ptr noundef nonnull %98, ptr noundef nonnull %9) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %97, float noundef %96) #19
  %99 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  br label %101

100:                                              ; preds = %3
  call void @zero_m3(ptr noundef nonnull %10) #20
  br label %101

101:                                              ; preds = %100, %95
  %102 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 17
  %103 = load ptr, ptr %102, align 8, !tbaa !197
  %104 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 11
  %105 = load ptr, ptr %104, align 8, !tbaa !198
  %106 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 12
  %107 = load ptr, ptr %106, align 8, !tbaa !199
  %108 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 14
  %109 = load ptr, ptr %108, align 8, !tbaa !200
  %110 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 15
  %111 = load ptr, ptr %110, align 8, !tbaa !201
  %112 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 16
  %113 = load ptr, ptr %112, align 8, !tbaa !178
  %114 = load i32, ptr %27, align 8, !tbaa !173
  %115 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 13
  %116 = load i32, ptr %115, align 8, !tbaa !202
  call void %103(ptr noundef %105, ptr noundef %107, ptr noundef %109, ptr noundef %111, ptr noundef %113, i32 noundef %114, i32 noundef %116, ptr noundef nonnull %4, ptr noundef nonnull %10, i32 noundef %1, i32 noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !203 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !204 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @multires_bake_queue_next_face(ptr noundef %0) unnamed_addr #0 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %0, i64 0, i32 2
  tail call void @BLI_spin_lock(ptr noundef nonnull %2) #20
  %3 = load i32, ptr %0, align 4, !tbaa !91
  %4 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = add nsw i32 %3, 1
  store i32 %8, ptr %0, align 4, !tbaa !91
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %3, %7 ], [ -1, %1 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull %2) #20
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @multiresbake_test_break(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !206 {
  %2 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !159
  %7 = icmp ne i16 %6, 0
  %8 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i32 [ %11, %5 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bake_rasterize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !208 {
  %5 = load <2 x float>, ptr %2, align 4, !tbaa !113
  %6 = load <2 x float>, ptr %3, align 4, !tbaa !113
  %7 = load <2 x i32>, ptr %0, align 8, !tbaa !105
  %8 = sitofp <2 x i32> %7 to <2 x float>
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %10 = load <2 x float>, ptr %1, align 4, !tbaa !113
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %8, <2 x float> <float -5.000000e-01, float -5.000000e-01>)
  %12 = shufflevector <2 x float> %5, <2 x float> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %9, <4 x float> <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01>)
  %14 = extractelement <4 x float> %13, i64 0
  %15 = extractelement <2 x float> %11, i64 0
  %16 = fcmp oeq float %15, %14
  %17 = extractelement <4 x float> %13, i64 1
  %18 = extractelement <2 x float> %11, i64 1
  %19 = fcmp oeq float %18, %17
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %71, label %21

21:                                               ; preds = %4
  %22 = extractelement <4 x float> %13, i64 2
  %23 = fcmp oeq float %15, %22
  %24 = extractelement <4 x float> %13, i64 3
  %25 = fcmp oeq float %18, %24
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %71, label %27

27:                                               ; preds = %21
  %28 = fcmp oeq float %14, %22
  %29 = fcmp oeq float %17, %24
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %71, label %31

31:                                               ; preds = %27
  %32 = fcmp ogt float %18, %17
  %33 = fcmp ogt float %18, %24
  %34 = select i1 %32, i1 %33, i1 false
  %35 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %36 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %37 = shufflevector <4 x float> %36, <4 x float> %35, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br i1 %34, label %41, label %38

38:                                               ; preds = %31
  %39 = fcmp ogt float %17, %24
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %31, %38, %40
  %42 = phi float [ %18, %40 ], [ %18, %38 ], [ %24, %31 ]
  %43 = phi float [ %15, %40 ], [ %15, %38 ], [ %22, %31 ]
  %44 = phi <4 x float> [ %13, %40 ], [ %35, %38 ], [ %37, %31 ]
  %45 = extractelement <4 x float> %44, i64 3
  %46 = fcmp ogt float %42, %45
  %47 = extractelement <4 x float> %44, i64 2
  br i1 %46, label %48, label %49

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi float [ %42, %48 ], [ %45, %41 ]
  %51 = phi float [ %43, %48 ], [ %47, %41 ]
  %52 = phi float [ %45, %48 ], [ %42, %41 ]
  %53 = phi float [ %47, %48 ], [ %43, %41 ]
  %54 = extractelement <4 x float> %44, i64 0
  %55 = fsub float %54, %53
  %56 = fneg float %55
  %57 = extractelement <4 x float> %44, i64 1
  %58 = fsub float %50, %57
  %59 = fsub float %57, %52
  %60 = fsub float %51, %54
  %61 = fmul float %60, %59
  %62 = tail call float @llvm.fmuladd.f32(float %56, float %58, float %61)
  %63 = fcmp ogt float %62, 0.000000e+00
  %64 = zext i1 %63 to i32
  %65 = tail call float @llvm.ceil.f32(float %52)
  %66 = fptosi float %65 to i32
  %67 = tail call float @llvm.ceil.f32(float %50)
  %68 = fptosi float %67 to i32
  %69 = tail call float @llvm.ceil.f32(float %57)
  %70 = fptosi float %69 to i32
  tail call fastcc void @rasterize_half(ptr noundef nonnull %0, float noundef %53, float noundef %52, float noundef %51, float noundef %50, float noundef %53, float noundef %52, float noundef %54, float noundef %57, i32 noundef %66, i32 noundef %68, i32 noundef %64) #19
  tail call fastcc void @rasterize_half(ptr noundef nonnull %0, float noundef %51, float noundef %50, float noundef %54, float noundef %57, float noundef %53, float noundef %52, float noundef %54, float noundef %57, i32 noundef %68, i32 noundef %70, i32 noundef %64) #19
  br label %71

71:                                               ; preds = %4, %21, %27, %49
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rasterize_half(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !209 {
  %13 = fsub float %4, %2
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ogt float %14, 0x3E80000000000000
  %16 = fsub float %8, %6
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = fcmp ogt float %17, 0x3E80000000000000
  %19 = load i32, ptr %0, align 8, !tbaa !210
  %20 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !211
  %22 = icmp sgt i32 %10, 0
  %23 = icmp sgt i32 %21, %9
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %71

25:                                               ; preds = %12
  %26 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %27 = tail call i32 @llvm.smin.i32(i32 %21, i32 %10)
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = fsub float %3, %1
  %31 = fsub float %7, %5
  %32 = icmp eq i32 %11, 0
  br label %33

33:                                               ; preds = %29, %68
  %34 = phi i32 [ %26, %29 ], [ %69, %68 ]
  br i1 %15, label %35, label %41

35:                                               ; preds = %33
  %36 = sitofp i32 %34 to float
  %37 = fsub float %36, %2
  %38 = fmul float %30, %37
  %39 = fdiv float %38, %13
  %40 = fadd float %39, %1
  br label %41

41:                                               ; preds = %33, %35
  %42 = phi float [ %40, %35 ], [ %1, %33 ]
  br i1 %18, label %43, label %49

43:                                               ; preds = %41
  %44 = sitofp i32 %34 to float
  %45 = fsub float %44, %6
  %46 = fmul float %31, %45
  %47 = fdiv float %46, %16
  %48 = fadd float %47, %5
  br label %49

49:                                               ; preds = %41, %43
  %50 = phi float [ %48, %43 ], [ %5, %41 ]
  %51 = select i1 %32, float %42, float %50
  %52 = select i1 %32, float %50, float %42
  %53 = tail call float @llvm.ceil.f32(float %51)
  %54 = fptosi float %53 to i32
  %55 = tail call float @llvm.ceil.f32(float %52)
  %56 = fptosi float %55 to i32
  %57 = icmp sgt i32 %56, 0
  %58 = icmp sgt i32 %19, %54
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = tail call i32 @llvm.smax.i32(i32 %54, i32 0)
  %62 = tail call i32 @llvm.smin.i32(i32 %19, i32 %56)
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %64
  %65 = phi i32 [ %66, %64 ], [ %61, %60 ]
  tail call fastcc void @set_rast_triangle(ptr noundef nonnull %0, i32 noundef %65, i32 noundef %34) #19
  %66 = add nuw i32 %65, 1
  %67 = icmp eq i32 %66, %62
  br i1 %67, label %68, label %64, !llvm.loop !212

68:                                               ; preds = %64, %60, %49
  %69 = add nuw i32 %34, 1
  %70 = icmp eq i32 %69, %27
  br i1 %70, label %71, label %33, !llvm.loop !213

71:                                               ; preds = %68, %25, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_rast_triangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !214 {
  %4 = load i32, ptr %0, align 8, !tbaa !210
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !211
  %9 = icmp sgt i32 %4, %1
  %10 = icmp sgt i32 %2, -1
  %11 = and i1 %10, %9
  %12 = icmp sgt i32 %8, %2
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %30

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = mul nsw i32 %4, %2
  %18 = add nsw i32 %17, %1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !128
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  store i8 2, ptr %20, align 1, !tbaa !128
  %24 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !191
  tail call void @flush_pixel(ptr noundef %25, i32 noundef %1, i32 noundef %2) #19
  %26 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !193
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i16 1, ptr %27, align 2, !tbaa !159
  br label %30

30:                                               ; preds = %14, %29, %23, %6, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @multiresbake_get_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !215 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %7 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !174
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !216
  store i32 %11, ptr %5, align 16, !tbaa !105
  %12 = getelementptr inbounds i32, ptr %5, i64 1
  %13 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !217
  store i32 %14, ptr %12, align 4, !tbaa !105
  %15 = getelementptr inbounds i32, ptr %5, i64 2
  %16 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !218
  store i32 %17, ptr %15, align 8, !tbaa !105
  %18 = getelementptr inbounds i32, ptr %5, i64 3
  %19 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !122
  store i32 %20, ptr %18, align 4, !tbaa !105
  %21 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 6
  %22 = load i8, ptr %21, align 1, !tbaa !219
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !220
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = mul nsw i32 %2, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, ptr %27, i64 %31
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %32) #19
  br label %56

33:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %34 = icmp eq i32 %20, 0
  %35 = load ptr, ptr %0, align 8, !tbaa !221
  %36 = zext i32 %11 to i64
  %37 = getelementptr inbounds %struct.MVert, ptr %35, i64 %36
  %38 = zext i32 %14 to i64
  %39 = getelementptr inbounds %struct.MVert, ptr %35, i64 %38
  %40 = zext i32 %17 to i64
  %41 = getelementptr inbounds %struct.MVert, ptr %35, i64 %40
  br i1 %34, label %46, label %42

42:                                               ; preds = %33
  %43 = zext i32 %20 to i64
  %44 = getelementptr inbounds %struct.MVert, ptr %35, i64 %43
  %45 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %37, ptr noundef %39, ptr noundef %41, ptr noundef nonnull %44) #20
  br label %48

46:                                               ; preds = %33
  %47 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %37, ptr noundef %39, ptr noundef %41) #20
  br label %48

48:                                               ; preds = %46, %42
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %56

49:                                               ; preds = %4
  %50 = load ptr, ptr %0, align 8, !tbaa !221
  %51 = sext i32 %3 to i64
  %52 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !105
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.MVert, ptr %50, i64 %54, i32 1
  tail call fastcc void @normal_short_to_float_v3(ptr noundef %1, ptr noundef nonnull %55) #19
  tail call fastcc void @normalize_v3(ptr noundef %1) #19
  br label %56

56:                                               ; preds = %29, %48, %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare void @resolve_tri_uv_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !222 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !113
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !113
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !113
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !113
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !113
  %15 = load float, ptr %8, align 4, !tbaa !113
  %16 = load float, ptr %2, align 4, !tbaa !113
  %17 = load float, ptr %1, align 4, !tbaa !113
  %18 = load float, ptr %6, align 4, !tbaa !113
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !113
  %23 = load float, ptr %1, align 4, !tbaa !113
  %24 = load float, ptr %10, align 4, !tbaa !113
  %25 = load float, ptr %4, align 4, !tbaa !113
  %26 = load float, ptr %2, align 4, !tbaa !113
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !223 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !113
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !113
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !113
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @zero_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !224 {
  %3 = load float, ptr %1, align 4, !tbaa !113
  store float %3, ptr %0, align 4, !tbaa !113
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !113
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !113
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !113
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !225 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !159
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !113
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !159
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !226 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !227 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !228 {
  %3 = load float, ptr %0, align 4, !tbaa !113
  %4 = load float, ptr %1, align 4, !tbaa !113
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !113
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !113
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !113
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !113
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #9 !PGOFuncName !229 {
  %4 = load float, ptr %1, align 4, !tbaa !113
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !113
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !113
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !113
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !113
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !230 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !113
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare void @resolve_quad_uv_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_ccgdm_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 !PGOFuncName !231 {
  %11 = alloca %struct.MFace, align 4
  %12 = alloca %struct.CCGKey, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #18
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  call void %16(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %11) #20
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 64
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  %19 = call i32 %18(ptr noundef %1) #20
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 65
  %21 = load ptr, ptr %20, align 8, !tbaa !186
  %22 = call ptr %21(ptr noundef %1) #20
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 67
  %24 = load ptr, ptr %23, align 8, !tbaa !187
  %25 = call ptr %24(ptr noundef %1) #20
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 68
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  call void %27(ptr noundef %1, ptr noundef nonnull %12) #20
  %28 = icmp eq i32 %4, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %10
  %30 = shl i32 %19, 1
  %31 = add nsw i32 %30, -1
  %32 = sext i32 %5 to i64
  %33 = getelementptr inbounds i32, ptr %25, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !105
  %35 = getelementptr inbounds %struct.MFace, ptr %11, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !122
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 3, i32 4
  %39 = add nsw i32 %30, -2
  %40 = sitofp i32 %39 to float
  %41 = fmul float %40, %6
  %42 = fmul float %40, %7
  %43 = call i32 @mdisp_rot_face_to_crn(i32 noundef %38, i32 noundef %31, float noundef %41, float noundef %42, ptr noundef nonnull %13, ptr noundef nonnull %14) #20
  %44 = load float, ptr %13, align 4, !tbaa !113
  br label %72

45:                                               ; preds = %10
  %46 = add nsw i32 %4, -1
  %47 = shl nuw i32 1, %46
  %48 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef %2, ptr noundef %3, i32 noundef %5) #19
  %49 = shl nsw i32 %4, 1
  %50 = shl nuw i32 1, %49
  %51 = srem i32 %5, %50
  %52 = shl nuw i32 %47, %46
  %53 = srem i32 %51, %52
  %54 = add nsw i32 %19, -1
  %55 = sdiv i32 %54, %47
  %56 = sdiv i32 %53, %47
  %57 = srem i32 %53, %47
  %58 = shl nsw i32 %46, 1
  %59 = shl nuw i32 1, %58
  %60 = sdiv i32 %5, %59
  %61 = sext i32 %48 to i64
  %62 = getelementptr inbounds i32, ptr %25, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !105
  %64 = sub nsw i32 %60, %63
  %65 = mul nsw i32 %56, %55
  %66 = sitofp i32 %65 to float
  %67 = sitofp i32 %55 to float
  %68 = call float @llvm.fmuladd.f32(float %6, float %67, float %66)
  store float %68, ptr %14, align 4, !tbaa !113
  %69 = mul nsw i32 %57, %55
  %70 = sitofp i32 %69 to float
  %71 = call float @llvm.fmuladd.f32(float %7, float %67, float %70)
  store float %71, ptr %13, align 4, !tbaa !113
  br label %72

72:                                               ; preds = %45, %29
  %73 = phi float [ %71, %45 ], [ %44, %29 ]
  %74 = phi i32 [ %63, %45 ], [ %34, %29 ]
  %75 = phi i32 [ %64, %45 ], [ %43, %29 ]
  %76 = fcmp olt float %73, 0.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store float 0.000000e+00, ptr %13, align 4, !tbaa !113
  br label %82

78:                                               ; preds = %72
  %79 = sitofp i32 %19 to float
  %80 = fcmp ogt float %73, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store float %79, ptr %13, align 4, !tbaa !113
  br label %82

82:                                               ; preds = %78, %81, %77
  %83 = phi float [ %73, %78 ], [ %79, %81 ], [ 0.000000e+00, %77 ]
  %84 = load float, ptr %14, align 4, !tbaa !113
  %85 = fcmp olt float %84, 0.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store float 0.000000e+00, ptr %14, align 4, !tbaa !113
  br label %91

87:                                               ; preds = %82
  %88 = sitofp i32 %19 to float
  %89 = fcmp ogt float %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store float %88, ptr %14, align 4, !tbaa !113
  br label %91

91:                                               ; preds = %87, %90, %86
  %92 = phi float [ %84, %87 ], [ %88, %90 ], [ 0.000000e+00, %86 ]
  %93 = icmp eq ptr %9, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = add nsw i32 %75, %74
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %22, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !59
  call fastcc void @interp_bilinear_grid(ptr noundef nonnull %12, ptr noundef %98, float noundef %83, float noundef %92, i32 noundef 0, ptr noundef nonnull %9) #19
  br label %99

99:                                               ; preds = %94, %91
  %100 = icmp eq ptr %8, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %99
  %102 = add nsw i32 %75, %74
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %22, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !59
  %106 = load float, ptr %13, align 4, !tbaa !113
  %107 = load float, ptr %14, align 4, !tbaa !113
  call fastcc void @interp_bilinear_grid(ptr noundef nonnull %12, ptr noundef %105, float noundef %106, float noundef %107, i32 noundef 1, ptr noundef nonnull %8) #19
  br label %108

108:                                              ; preds = %101, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #18
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !232 {
  %3 = load float, ptr %1, align 4, !tbaa !113
  %4 = load float, ptr %0, align 4, !tbaa !113
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !113
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !113
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !113
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !113
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !113
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !113
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mdisp_rot_face_to_crn(i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #11 !PGOFuncName !233 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !105
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !105
  br label %14

14:                                               ; preds = %8, %3, %10
  %15 = phi i32 [ %13, %10 ], [ -1, %3 ], [ %6, %8 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @interp_bilinear_grid(ptr nocapture noundef readonly %0, ptr noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !234 {
  %7 = alloca [4 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #18
  %8 = fptosi float %2 to i32
  %9 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !235
  %11 = add nsw i32 %10, -1
  %12 = icmp sgt i32 %11, %8
  %13 = add nsw i32 %8, 1
  %14 = select i1 %12, i32 %13, i32 %11
  %15 = fptosi float %3 to i32
  %16 = icmp sgt i32 %11, %15
  %17 = add nsw i32 %15, 1
  %18 = select i1 %16, i32 %17, i32 %11
  %19 = icmp eq i32 %4, 0
  %20 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1
  %21 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2
  br i1 %19, label %22, label %27

22:                                               ; preds = %6
  %23 = tail call fastcc ptr @CCG_grid_elem_no(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %8, i32 noundef %15) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %23) #19
  %24 = tail call fastcc ptr @CCG_grid_elem_no(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %14, i32 noundef %15) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %24) #19
  %25 = tail call fastcc ptr @CCG_grid_elem_no(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %14, i32 noundef %18) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef %25) #19
  %26 = tail call fastcc ptr @CCG_grid_elem_no(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %8, i32 noundef %18) #19
  br label %32

27:                                               ; preds = %6
  %28 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %8, i32 noundef %15) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %28) #19
  %29 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %14, i32 noundef %15) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %29) #19
  %30 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %14, i32 noundef %18) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef %30) #19
  %31 = tail call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %8, i32 noundef %18) #19
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi ptr [ %31, %27 ], [ %26, %22 ]
  %34 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef %33) #19
  %35 = sitofp i32 %15 to float
  %36 = fsub float %3, %35
  %37 = sitofp i32 %8 to float
  %38 = fsub float %2, %37
  call void @interp_bilinear_quad_v3(ptr noundef nonnull %7, float noundef %38, float noundef %36, ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CCG_grid_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 !PGOFuncName !237 {
  %5 = tail call fastcc ptr @CCG_grid_elem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #19
  %6 = tail call fastcc ptr @CCG_elem_no(ptr noundef %0, ptr noundef %5) #19
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem_co(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 !PGOFuncName !238 {
  %5 = tail call fastcc ptr @CCG_grid_elem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #19
  ret ptr %5
}

; Function Attrs: optsize
declare void @interp_bilinear_quad_v3(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_no(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #11 !PGOFuncName !239 {
  %3 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !240
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_grid_elem(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 !PGOFuncName !241 {
  %5 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !235
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = tail call fastcc ptr @CCG_elem_offset(ptr noundef %0, ptr noundef %1, i32 noundef %8) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @CCG_elem_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #11 !PGOFuncName !242 {
  %4 = getelementptr inbounds %struct.CCGKey, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !243
  %6 = mul nsw i32 %5, %2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @interp_bilinear_mface(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !244 {
  %7 = alloca [4 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #18
  %8 = icmp eq i32 %4, 0
  %9 = load i32, ptr %1, align 4, !tbaa !216
  %10 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 1
  %12 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 2
  %14 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds [4 x [3 x float]], ptr %7, i64 0, i64 3
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 78
  %18 = select i1 %8, ptr %17, ptr %16
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  call void %19(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %7) #20
  %20 = load ptr, ptr %18, align 8, !tbaa !59
  %21 = load i32, ptr %10, align 4, !tbaa !217
  call void %20(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %11) #20
  %22 = load ptr, ptr %18, align 8, !tbaa !59
  %23 = load i32, ptr %12, align 4, !tbaa !218
  call void %22(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %13) #20
  %24 = load ptr, ptr %18, align 8, !tbaa !59
  %25 = load i32, ptr %14, align 4, !tbaa !122
  call void %24(ptr noundef %0, i32 noundef %25, ptr noundef nonnull %15) #20
  call void @interp_bilinear_quad_v3(ptr noundef nonnull %7, float noundef %2, float noundef %3, ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @interp_barycentric_mface(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !245 {
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #18
  %8 = icmp eq i32 %4, 0
  %9 = load i32, ptr %1, align 4, !tbaa !216
  %10 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1
  %12 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 78
  %16 = select i1 %8, ptr %15, ptr %14
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  call void %17(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %7) #20
  %18 = load ptr, ptr %16, align 8, !tbaa !59
  %19 = load i32, ptr %10, align 4, !tbaa !217
  call void %18(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %11) #20
  %20 = load ptr, ptr %16, align 8, !tbaa !59
  %21 = load i32, ptr %12, align 4, !tbaa !218
  call void %20(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %13) #20
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %7, float noundef %2, float noundef %3, ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !246 {
  %4 = load float, ptr %1, align 4, !tbaa !113
  %5 = load float, ptr %2, align 4, !tbaa !113
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !113
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !113
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !113
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !113
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !113
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !113
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare void @interp_barycentric_tri_v3(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @build_coordinate_frame(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !247 {
  %4 = load <2 x float>, ptr %2, align 4, !tbaa !113
  %5 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %4)
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !113
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = extractelement <2 x float> %5, i64 0
  %10 = extractelement <2 x float> %5, i64 1
  %11 = fcmp ugt float %9, %10
  %12 = fcmp ugt float %9, %8
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = fmul float %7, %7
  %17 = extractelement <2 x float> %4, i64 1
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %16)
  %19 = tail call float @llvm.sqrt.f32(float %18)
  store float 0.000000e+00, ptr %1, align 4, !tbaa !113
  %20 = load float, ptr %6, align 4, !tbaa !113
  %21 = fdiv float %20, %19
  %22 = getelementptr inbounds float, ptr %1, i64 1
  store float %21, ptr %22, align 4, !tbaa !113
  %23 = load float, ptr %15, align 4, !tbaa !113
  %24 = fneg float %23
  %25 = fdiv float %24, %19
  %26 = getelementptr inbounds float, ptr %1, i64 2
  store float %25, ptr %26, align 4, !tbaa !113
  tail call fastcc void @cross_v3_v3v3(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  br label %51

27:                                               ; preds = %3
  %28 = fcmp ugt float %10, %8
  %29 = getelementptr inbounds float, ptr %0, i64 2
  br i1 %28, label %40, label %30

30:                                               ; preds = %27
  %31 = fmul float %7, %7
  %32 = extractelement <2 x float> %4, i64 0
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %31)
  %34 = tail call float @llvm.sqrt.f32(float %33)
  %35 = fdiv float %7, %34
  store float %35, ptr %0, align 4, !tbaa !113
  %36 = getelementptr inbounds float, ptr %0, i64 1
  store float 0.000000e+00, ptr %36, align 4, !tbaa !113
  %37 = load float, ptr %2, align 4, !tbaa !113
  %38 = fneg float %37
  %39 = fdiv float %38, %34
  store float %39, ptr %29, align 4, !tbaa !113
  tail call fastcc void @cross_v3_v3v3(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %0) #19
  br label %51

40:                                               ; preds = %27
  %41 = extractelement <2 x float> %4, i64 1
  %42 = fmul float %41, %41
  %43 = extractelement <2 x float> %4, i64 0
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %42)
  %45 = tail call float @llvm.sqrt.f32(float %44)
  %46 = fdiv float %41, %45
  store float %46, ptr %0, align 4, !tbaa !113
  %47 = load float, ptr %2, align 4, !tbaa !113
  %48 = fneg float %47
  %49 = fdiv float %48, %45
  %50 = getelementptr inbounds float, ptr %0, i64 1
  store float %49, ptr %50, align 4, !tbaa !113
  store float 0.000000e+00, ptr %29, align 4, !tbaa !113
  tail call fastcc void @cross_v3_v3v3(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %0) #19
  br label %51

51:                                               ; preds = %30, %40, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i16 @get_ao_random2(i32 noundef %0) unnamed_addr #14 !PGOFuncName !248 {
  %2 = and i32 %0, 1023
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_2, i64 0, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !159
  ret i16 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i16 @get_ao_random1(i32 noundef %0) unnamed_addr #14 !PGOFuncName !249 {
  %2 = and i32 %0, 1023
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_1, i64 0, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !159
  ret i16 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @trace_ao_ray(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !250 {
  %4 = alloca %struct.Isect, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %4, i8 0, i64 176, i1 false)
  %5 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 2
  store float 0x430C6BF520000000, ptr %5, align 8, !tbaa !251
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #19
  %6 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %2) #19
  %7 = getelementptr inbounds %struct.Isect, ptr %4, i64 0, i32 8
  store i32 -1, ptr %7, align 4, !tbaa !253
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #19
  %8 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  %10 = call i32 @RE_rayobject_raycast(ptr noundef %9, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #18
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_ao_random() unnamed_addr #0 !PGOFuncName !254 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %9, %1 ]
  %3 = tail call i32 @rand() #20
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_1, i64 0, i64 %2
  store i16 %4, ptr %5, align 2, !tbaa !159
  %6 = tail call i32 @rand() #20
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_2, i64 0, i64 %2
  store i16 %7, ptr %8, align 2, !tbaa !159
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 1024
  br i1 %10, label %11, label %1, !llvm.loop !255

11:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_ao_raytree(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !256 {
  %3 = alloca %struct.CCGKey, align 4
  %4 = alloca [4 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 63
  %8 = load ptr, ptr %7, align 8, !tbaa !257
  %9 = tail call i32 %8(ptr noundef %6) #20
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 64
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  %12 = tail call i32 %11(ptr noundef %6) #20
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 65
  %14 = load ptr, ptr %13, align 8, !tbaa !186
  %15 = tail call ptr %14(ptr noundef %6) #20
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 68
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  call void %17(ptr noundef %6, ptr noundef nonnull %3) #20
  %18 = add nsw i32 %12, -1
  %19 = mul nsw i32 %18, %9
  %20 = mul nsw i32 %19, %18
  %21 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !258
  %23 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !259
  %25 = call ptr @RE_rayobject_create(i32 noundef %22, i32 noundef %20, i32 noundef %24) #20
  %26 = getelementptr inbounds %struct.MAOBakeData, ptr %1, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !167
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %28 = sext i32 %20 to i64
  %29 = mul nsw i64 %28, 80
  %30 = call ptr %27(i64 noundef %29, ptr noundef nonnull @.str.10) #20
  %31 = getelementptr inbounds %struct.MAOBakeData, ptr %1, i64 0, i32 5
  store ptr %30, ptr %31, align 8, !tbaa !168
  %32 = icmp sgt i32 %9, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %2
  %34 = icmp sgt i32 %12, 1
  %35 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1
  %36 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2
  %37 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3
  %38 = zext nneg i32 %9 to i64
  br label %39

39:                                               ; preds = %33, %65
  %40 = phi i64 [ 0, %33 ], [ %67, %65 ]
  %41 = phi ptr [ %30, %33 ], [ %66, %65 ]
  br i1 %34, label %42, label %65

42:                                               ; preds = %39
  %43 = getelementptr inbounds ptr, ptr %15, i64 %40
  br label %44

44:                                               ; preds = %42, %63
  %45 = phi i32 [ 0, %42 ], [ %47, %63 ]
  %46 = phi ptr [ %41, %42 ], [ %61, %63 ]
  %47 = add nuw nsw i32 %45, 1
  br label %48

48:                                               ; preds = %44, %48
  %49 = phi i32 [ 0, %44 ], [ %53, %48 ]
  %50 = phi ptr [ %46, %44 ], [ %61, %48 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %51 = load ptr, ptr %43, align 8, !tbaa !59
  %52 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %3, ptr noundef %51, i32 noundef %45, i32 noundef %49) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %52) #19
  %53 = add nuw nsw i32 %49, 1
  %54 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %3, ptr noundef %51, i32 noundef %45, i32 noundef %53) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef %54) #19
  %55 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %3, ptr noundef %51, i32 noundef %47, i32 noundef %53) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %36, ptr noundef %55) #19
  %56 = call fastcc ptr @CCG_grid_elem_co(ptr noundef nonnull %3, ptr noundef %51, i32 noundef %47, i32 noundef %49) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %37, ptr noundef %56) #19
  %57 = call ptr @RE_rayface_from_coords(ptr noundef %50, ptr noundef %1, ptr noundef %50, ptr noundef nonnull %4, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %37) #20
  %58 = ptrtoint ptr %50 to i64
  %59 = or i64 %58, 1
  %60 = inttoptr i64 %59 to ptr
  call void @RE_rayobject_add(ptr noundef %25, ptr noundef nonnull %60) #20
  %61 = getelementptr inbounds %struct.RayFace, ptr %50, i64 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  %62 = icmp eq i32 %53, %18
  br i1 %62, label %63, label %48, !llvm.loop !260

63:                                               ; preds = %48
  %64 = icmp eq i32 %47, %18
  br i1 %64, label %65, label %44, !llvm.loop !261

65:                                               ; preds = %63, %39
  %66 = phi ptr [ %41, %39 ], [ %61, %63 ]
  %67 = add nuw nsw i64 %40, 1
  %68 = icmp eq i64 %67, %38
  br i1 %68, label %69, label %39, !llvm.loop !262

69:                                               ; preds = %65, %2
  call void @RE_rayobject_done(ptr noundef %25) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_permutation_table(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #15 !PGOFuncName !263 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %111

6:                                                ; preds = %4
  %7 = zext nneg i32 %2 to i64
  %8 = add nuw nsw i64 %7, 7
  %9 = and i64 %8, 4294967288
  %10 = add nsw i64 %7, -1
  %11 = insertelement <8 x i64> poison, i64 %10, i64 0
  %12 = shufflevector <8 x i64> %11, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %13

13:                                               ; preds = %63, %6
  %14 = phi i64 [ 0, %6 ], [ %64, %63 ]
  %15 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %6 ], [ %65, %63 ]
  %16 = trunc i64 %14 to i16
  %17 = icmp ule <8 x i64> %15, %12
  %18 = extractelement <8 x i1> %17, i64 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = getelementptr inbounds i16, ptr %1, i64 %14
  store i16 %16, ptr %20, align 2, !tbaa !159
  br label %21

21:                                               ; preds = %19, %13
  %22 = extractelement <8 x i1> %17, i64 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = or disjoint i64 %14, 1
  %25 = getelementptr inbounds i16, ptr %1, i64 %24
  %26 = or disjoint i16 %16, 1
  store i16 %26, ptr %25, align 2, !tbaa !159
  br label %27

27:                                               ; preds = %23, %21
  %28 = extractelement <8 x i1> %17, i64 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = or disjoint i64 %14, 2
  %31 = getelementptr inbounds i16, ptr %1, i64 %30
  %32 = or disjoint i16 %16, 2
  store i16 %32, ptr %31, align 2, !tbaa !159
  br label %33

33:                                               ; preds = %29, %27
  %34 = extractelement <8 x i1> %17, i64 3
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = or disjoint i64 %14, 3
  %37 = getelementptr inbounds i16, ptr %1, i64 %36
  %38 = or disjoint i16 %16, 3
  store i16 %38, ptr %37, align 2, !tbaa !159
  br label %39

39:                                               ; preds = %35, %33
  %40 = extractelement <8 x i1> %17, i64 4
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = or disjoint i64 %14, 4
  %43 = getelementptr inbounds i16, ptr %1, i64 %42
  %44 = or disjoint i16 %16, 4
  store i16 %44, ptr %43, align 2, !tbaa !159
  br label %45

45:                                               ; preds = %41, %39
  %46 = extractelement <8 x i1> %17, i64 5
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = or disjoint i64 %14, 5
  %49 = getelementptr inbounds i16, ptr %1, i64 %48
  %50 = or disjoint i16 %16, 5
  store i16 %50, ptr %49, align 2, !tbaa !159
  br label %51

51:                                               ; preds = %47, %45
  %52 = extractelement <8 x i1> %17, i64 6
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = or disjoint i64 %14, 6
  %55 = getelementptr inbounds i16, ptr %1, i64 %54
  %56 = or disjoint i16 %16, 6
  store i16 %56, ptr %55, align 2, !tbaa !159
  br label %57

57:                                               ; preds = %53, %51
  %58 = extractelement <8 x i1> %17, i64 7
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = or disjoint i64 %14, 7
  %61 = getelementptr inbounds i16, ptr %1, i64 %60
  %62 = or disjoint i16 %16, 7
  store i16 %62, ptr %61, align 2, !tbaa !159
  br label %63

63:                                               ; preds = %59, %57
  %64 = add i64 %14, 8
  %65 = add <8 x i64> %15, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %66 = icmp eq i64 %64, %9
  br i1 %66, label %67, label %13, !llvm.loop !264

67:                                               ; preds = %63
  br i1 %5, label %68, label %111

68:                                               ; preds = %67
  %69 = icmp eq i32 %3, 0
  %70 = sub nsw i32 0, %2
  %71 = zext nneg i32 %2 to i64
  br label %72

72:                                               ; preds = %68, %106
  %73 = phi i64 [ 0, %68 ], [ %107, %106 ]
  %74 = phi i32 [ %2, %68 ], [ %109, %106 ]
  %75 = phi i32 [ %70, %68 ], [ %108, %106 ]
  %76 = trunc i64 %73 to i32
  br i1 %69, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call fastcc zeroext i16 @get_ao_random1(i32 noundef %76) #19
  br label %81

79:                                               ; preds = %72
  %80 = tail call fastcc zeroext i16 @get_ao_random2(i32 noundef %76) #19
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i16 [ %78, %77 ], [ %80, %79 ]
  %83 = zext i16 %82 to i32
  %84 = trunc i64 %73 to i32
  %85 = sub i32 %2, %84
  %86 = urem i32 %83, %85
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds i16, ptr %1, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !159
  %90 = getelementptr inbounds i16, ptr %0, i64 %73
  store i16 %89, ptr %90, align 2, !tbaa !159
  %91 = add i32 %85, -1
  %92 = icmp ult i32 %86, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %81
  %94 = udiv i32 %83, %74
  %95 = mul i32 %75, %94
  %96 = add i32 %95, %83
  %97 = zext i32 %96 to i64
  %98 = zext i32 %91 to i64
  br label %99

99:                                               ; preds = %93, %99
  %100 = phi i64 [ %97, %93 ], [ %101, %99 ]
  %101 = add nuw nsw i64 %100, 1
  %102 = getelementptr inbounds i16, ptr %1, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !159
  %104 = getelementptr inbounds i16, ptr %1, i64 %100
  store i16 %103, ptr %104, align 2, !tbaa !159
  %105 = icmp ult i64 %101, %98
  br i1 %105, label %99, label %106, !llvm.loop !267

106:                                              ; preds = %99, %81
  %107 = add nuw nsw i64 %73, 1
  %108 = add i32 %75, 1
  %109 = add i32 %74, -1
  %110 = icmp eq i64 %107, %71
  br i1 %110, label %111, label %72, !llvm.loop !268

111:                                              ; preds = %106, %4, %67
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @rand() local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @RE_rayobject_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_rayface_from_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_rayobject_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_rayobject_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_rayobject_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RE_bake_make_derivative(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_bake_ibuf_normalize_displacement(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_bake_ibuf_filter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @imb_freemipmapImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }

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
!34 = !{!"multires_bake.c:count_images"}
!35 = !{!36, !37, i64 0}
!36 = !{!"MultiresBakeRender", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !38, i64 34, !40, i64 36, !42, i64 40, !40, i64 44, !40, i64 48, !43, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !42, i64 92, !37, i64 96, !37, i64 104, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!36, !40, i64 48}
!45 = !{!46, !37, i64 1120}
!46 = !{!"DerivedMesh", !47, i64 0, !47, i64 200, !47, i64 400, !47, i64 600, !47, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!47 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!48 = !{!49, !37, i64 32}
!49 = !{!"MTFace", !38, i64 0, !37, i64 32, !38, i64 40, !38, i64 41, !41, i64 42, !41, i64 44, !41, i64 46}
!50 = !{!51, !41, i64 98}
!51 = !{!"Image", !52, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !38, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !40, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !40, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !42, i64 1296, !40, i64 1300, !41, i64 1304, !41, i64 1306, !40, i64 1308, !40, i64 1312, !38, i64 1316, !38, i64 1317, !41, i64 1318, !38, i64 1320, !42, i64 1336, !42, i64 1340, !53, i64 1344, !38, i64 1408, !38, i64 1409, !38, i64 1416}
!52 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!53 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = !{!"multires_bake.c:bake_images"}
!59 = !{!37, !37, i64 0}
!60 = !{!61, !37, i64 16}
!61 = !{!"LinkData", !37, i64 0, !37, i64 8, !37, i64 16}
!62 = !{!63, !40, i64 16}
!63 = !{!"ImBuf", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !38, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !38, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !37, i64 296, !37, i64 304, !40, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !40, i64 2376, !37, i64 2384, !40, i64 2392, !40, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !40, i64 2432, !64, i64 2436, !65, i64 2456}
!64 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!65 = !{!"DDSData", !40, i64 0, !40, i64 4, !37, i64 8, !40, i64 16}
!66 = !{!63, !40, i64 20}
!67 = !{!68, !37, i64 8}
!68 = !{!"BakeImBufuserData", !37, i64 0, !37, i64 8}
!69 = !{!63, !37, i64 304}
!70 = !{!36, !41, i64 32}
!71 = distinct !{!71, !55}
!72 = !{!"multires_bake.c:finish_images"}
!73 = !{!68, !37, i64 0}
!74 = !{!75, !42, i64 0}
!75 = !{!"MultiresBakeResult", !42, i64 0, !42, i64 4}
!76 = !{!75, !42, i64 4}
!77 = !{!36, !42, i64 92}
!78 = !{!36, !40, i64 20}
!79 = !{!63, !40, i64 292}
!80 = !{!63, !37, i64 48}
!81 = distinct !{!81, !55}
!82 = !{!"multires_bake.c:BLI_listbase_clear"}
!83 = !{!"multires_bake.c:do_multires_bake"}
!84 = !{!36, !40, i64 24}
!85 = !{!46, !37, i64 1168}
!86 = !{!46, !37, i64 1184}
!87 = !{!46, !37, i64 1336}
!88 = !{!36, !40, i64 88}
!89 = !{ptr @init_ao_data, ptr @init_heights_data, ptr @init_normal_data}
!90 = !{!36, !37, i64 8}
!91 = !{!92, !40, i64 0}
!92 = !{!"MultiresBakeQueue", !40, i64 0, !40, i64 4, !40, i64 8}
!93 = !{!92, !40, i64 4}
!94 = !{!95, !37, i64 8}
!95 = !{!"MultiresBakeThread", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !96, i64 32, !97, i64 72, !42, i64 192, !42, i64 196}
!96 = !{!"", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!97 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64, !37, i64 72, !40, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112}
!98 = !{!95, !37, i64 16}
!99 = !{!95, !37, i64 0}
!100 = !{!95, !37, i64 80}
!101 = !{!95, !37, i64 72}
!102 = !{!95, !37, i64 88}
!103 = !{!95, !37, i64 96}
!104 = !{!95, !37, i64 104}
!105 = !{!40, !40, i64 0}
!106 = !{!95, !37, i64 136}
!107 = !{!95, !37, i64 144}
!108 = !{!95, !40, i64 152}
!109 = !{!95, !37, i64 184}
!110 = !{!95, !37, i64 160}
!111 = !{!95, !37, i64 168}
!112 = !{!95, !37, i64 176}
!113 = !{!42, !42, i64 0}
!114 = !{!36, !37, i64 104}
!115 = distinct !{!115, !55}
!116 = !{!95, !42, i64 192}
!117 = !{!95, !42, i64 196}
!118 = distinct !{!118, !55}
!119 = !{ptr @free_ao_data, ptr @free_heights_data, ptr @free_normal_data}
!120 = !{!"multires_bake.c:apply_tangmat_callback"}
!121 = !{!46, !37, i64 1160}
!122 = !{!123, !40, i64 12}
!123 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !38, i64 18, !38, i64 19}
!124 = !{!125, !37, i64 0}
!125 = !{!"", !37, i64 0, !37, i64 8}
!126 = !{!125, !37, i64 8}
!127 = !{!63, !37, i64 40}
!128 = !{!38, !38, i64 0}
!129 = !{!"multires_bake.c:init_normal_data"}
!130 = !{!46, !37, i64 1352}
!131 = !{!"multires_bake.c:free_normal_data"}
!132 = !{!"multires_bake.c:apply_heights_callback"}
!133 = !{!134, !37, i64 24}
!134 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!135 = !{!134, !37, i64 32}
!136 = !{!134, !37, i64 16}
!137 = !{!134, !37, i64 0}
!138 = !{!"multires_bake.c:init_heights_data"}
!139 = !{!134, !37, i64 8}
!140 = !{!36, !38, i64 34}
!141 = !{!36, !40, i64 28}
!142 = !{!143, !41, i64 116}
!143 = !{!"SubsurfModifierData", !144, i64 0, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !37, i64 120, !37, i64 128}
!144 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!145 = !{!143, !41, i64 114}
!146 = !{!143, !41, i64 118}
!147 = !{!36, !38, i64 16}
!148 = !{!143, !41, i64 112}
!149 = !{!"multires_bake.c:free_heights_data"}
!150 = !{!46, !37, i64 1680}
!151 = !{!"multires_bake.c:apply_ao_callback"}
!152 = !{!153, !37, i64 40}
!153 = !{!"", !40, i64 0, !42, i64 4, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!154 = !{!153, !37, i64 48}
!155 = !{!153, !42, i64 4}
!156 = distinct !{!156, !55}
!157 = !{!153, !40, i64 0}
!158 = !{!153, !37, i64 8}
!159 = !{!41, !41, i64 0}
!160 = !{!153, !37, i64 16}
!161 = distinct !{!161, !55}
!162 = distinct !{!162, !55}
!163 = !{!"multires_bake.c:init_ao_data"}
!164 = !{!36, !40, i64 36}
!165 = !{!36, !42, i64 40}
!166 = !{!"multires_bake.c:free_ao_data"}
!167 = !{!153, !37, i64 24}
!168 = !{!153, !37, i64 32}
!169 = !{!"multires_bake.c:do_multires_bake_thread"}
!170 = !{!97, !37, i64 16}
!171 = !{i32 0, i32 2}
!172 = distinct !{!172, !55}
!173 = !{!97, !40, i64 48}
!174 = !{!97, !37, i64 8}
!175 = !{!97, !40, i64 52}
!176 = !{!97, !40, i64 56}
!177 = !{!97, !40, i64 60}
!178 = !{!97, !37, i64 104}
!179 = distinct !{!179, !55}
!180 = !{!36, !40, i64 76}
!181 = !{!36, !37, i64 112}
!182 = !{!36, !40, i64 72}
!183 = !{!36, !40, i64 44}
!184 = !{!"multires_bake.c:init_ccgdm_arrays"}
!185 = !{!46, !37, i64 1432}
!186 = !{!46, !37, i64 1440}
!187 = !{!46, !37, i64 1456}
!188 = !{!46, !37, i64 1464}
!189 = !{!"multires_bake.c:init_bake_rast"}
!190 = !{!96, !37, i64 8}
!191 = !{!96, !37, i64 16}
!192 = !{!96, !37, i64 24}
!193 = !{!96, !37, i64 32}
!194 = !{!"multires_bake.c:flush_pixel"}
!195 = !{!97, !37, i64 24}
!196 = distinct !{!196, !55}
!197 = !{!97, !37, i64 112}
!198 = !{!97, !37, i64 64}
!199 = !{!97, !37, i64 72}
!200 = !{!97, !37, i64 88}
!201 = !{!97, !37, i64 96}
!202 = !{!97, !40, i64 80}
!203 = !{!"multires_bake.c:min_ff"}
!204 = !{!"multires_bake.c:max_ff"}
!205 = !{!"multires_bake.c:multires_bake_queue_next_face"}
!206 = !{!"multires_bake.c:multiresbake_test_break"}
!207 = !{!36, !37, i64 96}
!208 = !{!"multires_bake.c:bake_rasterize"}
!209 = !{!"multires_bake.c:rasterize_half"}
!210 = !{!96, !40, i64 0}
!211 = !{!96, !40, i64 4}
!212 = distinct !{!212, !55}
!213 = distinct !{!213, !55}
!214 = !{!"multires_bake.c:set_rast_triangle"}
!215 = !{!"multires_bake.c:multiresbake_get_normal"}
!216 = !{!123, !40, i64 0}
!217 = !{!123, !40, i64 4}
!218 = !{!123, !40, i64 8}
!219 = !{!123, !38, i64 19}
!220 = !{!97, !37, i64 32}
!221 = !{!97, !37, i64 0}
!222 = !{!"multires_bake.c:cross_v3_v3v3"}
!223 = !{!"multires_bake.c:mul_v3_fl"}
!224 = !{!"multires_bake.c:copy_v3_v3"}
!225 = !{!"multires_bake.c:normal_short_to_float_v3"}
!226 = !{!"multires_bake.c:normalize_v3"}
!227 = !{!"multires_bake.c:normalize_v3_v3"}
!228 = !{!"multires_bake.c:dot_v3v3"}
!229 = !{!"multires_bake.c:mul_v3_v3fl"}
!230 = !{!"multires_bake.c:zero_v3"}
!231 = !{!"multires_bake.c:get_ccgdm_data"}
!232 = !{!"multires_bake.c:add_v3_v3"}
!233 = !{!"multires_bake.c:DM_origindex_mface_mpoly"}
!234 = !{!"multires_bake.c:interp_bilinear_grid"}
!235 = !{!236, !40, i64 8}
!236 = !{!"CCGKey", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!237 = !{!"multires_bake.c:CCG_grid_elem_no"}
!238 = !{!"multires_bake.c:CCG_grid_elem_co"}
!239 = !{!"multires_bake.c:CCG_elem_no"}
!240 = !{!236, !40, i64 20}
!241 = !{!"multires_bake.c:CCG_grid_elem"}
!242 = !{!"multires_bake.c:CCG_elem_offset"}
!243 = !{!236, !40, i64 4}
!244 = !{!"multires_bake.c:interp_bilinear_mface"}
!245 = !{!"multires_bake.c:interp_barycentric_mface"}
!246 = !{!"multires_bake.c:sub_v3_v3v3"}
!247 = !{!"multires_bake.c:build_coordinate_frame"}
!248 = !{!"multires_bake.c:get_ao_random2"}
!249 = !{!"multires_bake.c:get_ao_random1"}
!250 = !{!"multires_bake.c:trace_ao_ray"}
!251 = !{!252, !42, i64 24}
!252 = !{!"Isect", !38, i64 0, !38, i64 12, !42, i64 24, !38, i64 28, !38, i64 40, !38, i64 52, !38, i64 76, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !37, i64 104, !42, i64 112, !42, i64 116, !40, i64 120, !125, i64 128, !125, i64 144, !37, i64 160, !37, i64 168}
!253 = !{!252, !40, i64 92}
!254 = !{!"multires_bake.c:init_ao_random"}
!255 = distinct !{!255, !55}
!256 = !{!"multires_bake.c:create_ao_raytree"}
!257 = !{!46, !37, i64 1424}
!258 = !{!36, !40, i64 80}
!259 = !{!36, !40, i64 84}
!260 = distinct !{!260, !55}
!261 = distinct !{!261, !55}
!262 = distinct !{!262, !55}
!263 = !{!"multires_bake.c:build_permutation_table"}
!264 = distinct !{!264, !55, !265, !266}
!265 = !{!"llvm.loop.isvectorized", i32 1}
!266 = !{!"llvm.loop.unroll.runtime.disable"}
!267 = distinct !{!267, !55}
!268 = distinct !{!268, !55}
