; ModuleID = 'blender/source/blender/bmesh/operators/bmo_connect_nonplanar.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_connect_nonplanar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }

@.str = private unnamed_addr constant [12 x i8] c"angle_limit\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_connect_verts_nonplanar_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 16
  %4 = alloca float, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMOIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #4
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %20, %12 ], [ %10, %2 ]
  %14 = phi i32 [ %19, %12 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.BMFace, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = icmp sgt i32 %16, 3
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %14, %18
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !42

22:                                               ; preds = %12
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %100, label %24

24:                                               ; preds = %22
  store ptr null, ptr %7, align 8, !tbaa !45
  %25 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #4
  %26 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %38, %24
  %29 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  %30 = getelementptr inbounds ptr, ptr %8, i64 1
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %41

32:                                               ; preds = %24, %38
  %33 = phi ptr [ %39, %38 ], [ %26, %24 ]
  %34 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !34
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %7, ptr noundef nonnull %33, ptr noundef %25) #4
  br label %38

38:                                               ; preds = %32, %37
  %39 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %28, label %32, !llvm.loop !46

41:                                               ; preds = %28, %97
  %42 = load ptr, ptr %7, align 8, !tbaa !45
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %7, ptr noundef %25) #4
  br label %46

46:                                               ; preds = %41, %44
  %47 = phi ptr [ %45, %44 ], [ null, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %50 = call fastcc zeroext i8 @bm_face_split_find(ptr noundef %0, ptr noundef nonnull %47, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !47
  %51 = icmp ne i8 %50, 0
  %52 = load float, ptr %4, align 4
  %53 = fcmp ogt float %52, %9
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %85

55:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %56 = load ptr, ptr %3, align 16, !tbaa !45
  %57 = load ptr, ptr %29, align 8, !tbaa !45
  %58 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %47, ptr noundef %56, ptr noundef %57, ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 0) #4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %84, label %60

60:                                               ; preds = %55
  store ptr %47, ptr %8, align 16, !tbaa !45
  store ptr %58, ptr %30, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct.BMFace, ptr %47, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = load i32, ptr %31, align 8, !tbaa !49
  %64 = sext i32 %63 to i64
  %65 = getelementptr %struct.BMFlagLayer, ptr %62, i64 %64
  %66 = getelementptr %struct.BMFlagLayer, ptr %65, i64 -1
  %67 = load i16, ptr %66, align 2, !tbaa !53
  %68 = or i16 %67, 2
  store i16 %68, ptr %66, align 2, !tbaa !53
  %69 = getelementptr inbounds %struct.BMFace, ptr %58, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = getelementptr %struct.BMFlagLayer, ptr %70, i64 %64
  %72 = getelementptr %struct.BMFlagLayer, ptr %71, i64 -1
  %73 = load i16, ptr %72, align 2, !tbaa !53
  %74 = or i16 %73, 2
  store i16 %74, ptr %72, align 2, !tbaa !53
  %75 = load ptr, ptr %5, align 8, !tbaa !45
  %76 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  %78 = getelementptr inbounds %struct.BMEdge, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr %struct.BMFlagLayer, ptr %79, i64 %64
  %81 = getelementptr %struct.BMFlagLayer, ptr %80, i64 -1
  %82 = load i16, ptr %81, align 2, !tbaa !53
  %83 = or i16 %82, 1
  store i16 %83, ptr %81, align 2, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  br label %86

84:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  br label %85

85:                                               ; preds = %49, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  br label %97

86:                                               ; preds = %60, %94
  %87 = phi i64 [ 0, %60 ], [ %95, %94 ]
  %88 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  call void @BM_face_normal_update(ptr noundef %89) #4
  %90 = getelementptr inbounds %struct.BMFace, ptr %89, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !34
  %92 = icmp sgt i32 %91, 3
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %7, ptr noundef %89, ptr noundef %25) #4
  br label %94

94:                                               ; preds = %86, %93
  %95 = add nuw nsw i64 %87, 1
  %96 = icmp eq i64 %87, 0
  br i1 %96, label %86, label %97, !llvm.loop !60

97:                                               ; preds = %94, %85
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  br label %41, !llvm.loop !61

98:                                               ; preds = %46
  call void @BLI_mempool_destroy(ptr noundef %25) #4
  store ptr null, ptr %7, align 8, !tbaa !45
  %99 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %99, ptr noundef nonnull @.str.2, i8 noundef zeroext 2, i16 noundef signext 1) #4
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %99, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i16 noundef signext 2) #4
  br label %100

100:                                              ; preds = %2, %22, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bm_face_split_find(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x ptr], align 16
  %10 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = alloca i8, i64 %13, align 16
  %15 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  br label %17

17:                                               ; preds = %17, %4
  %18 = phi i32 [ 0, %4 ], [ %20, %17 ]
  %19 = phi ptr [ %16, %4 ], [ %24, %17 ]
  %20 = add i32 %18, 1
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds ptr, ptr %14, i64 %21
  store ptr %19, ptr %22, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %17, !llvm.loop !64

26:                                               ; preds = %17
  %27 = icmp eq i32 %11, 0
  br i1 %27, label %181, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %30 = getelementptr inbounds [3 x float], ptr %6, i64 1, i64 2
  %31 = getelementptr inbounds [3 x float], ptr %6, i64 2, i64 2
  %32 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %33 = getelementptr inbounds [3 x float], ptr %5, i64 1, i64 2
  %34 = getelementptr inbounds [3 x float], ptr %5, i64 2, i64 2
  %35 = getelementptr inbounds ptr, ptr %9, i64 1
  %36 = getelementptr inbounds ptr, ptr %2, i64 1
  %37 = zext i32 %11 to i64
  br label %38

38:                                               ; preds = %28, %173
  %39 = phi i64 [ 0, %28 ], [ %177, %173 ]
  %40 = phi i32 [ 2, %28 ], [ %179, %173 ]
  %41 = phi i32 [ 0, %28 ], [ %178, %173 ]
  %42 = phi i8 [ 0, %28 ], [ %176, %173 ]
  %43 = phi float [ 0x47EFFFFFE0000000, %28 ], [ %175, %173 ]
  %44 = phi float [ 0x47EFFFFFE0000000, %28 ], [ %174, %173 ]
  %45 = getelementptr inbounds ptr, ptr %14, i64 %39
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = add i32 %41, 2
  %48 = icmp ult i32 %47, %11
  br i1 %48, label %49, label %173

49:                                               ; preds = %38
  %50 = zext i32 %40 to i64
  %51 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 6
  %52 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 7
  %53 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  br label %54

54:                                               ; preds = %49, %166
  %55 = phi i64 [ %50, %49 ], [ %170, %166 ]
  %56 = phi i8 [ %42, %49 ], [ %169, %166 ]
  %57 = phi float [ %43, %49 ], [ %168, %166 ]
  %58 = phi float [ %44, %49 ], [ %167, %166 ]
  %59 = getelementptr inbounds ptr, ptr %14, i64 %55
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = load ptr, ptr %51, align 8, !tbaa !63
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %52, align 8, !tbaa !65
  %65 = icmp eq ptr %64, %60
  %66 = zext i1 %65 to i8
  br label %67

67:                                               ; preds = %54, %63
  %68 = phi i8 [ 1, %54 ], [ %66, %63 ]
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %166

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #4
  %71 = call float @BM_face_calc_normal_subset(ptr noundef %46, ptr noundef %60, ptr noundef nonnull %7) #4
  %72 = fcmp une float %71, 0.000000e+00
  br i1 %72, label %73, label %162

73:                                               ; preds = %70
  %74 = call float @BM_face_calc_normal_subset(ptr noundef %60, ptr noundef %46, ptr noundef nonnull %8) #4
  %75 = fcmp une float %74, 0.000000e+00
  br i1 %75, label %76, label %162

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #4
  %77 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %6, ptr noundef nonnull %7) #4
  %79 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !66
  %81 = getelementptr inbounds %struct.BMVert, ptr %80, i64 0, i32 2
  %82 = load float, ptr %29, align 8, !tbaa !67
  %83 = load float, ptr %81, align 4, !tbaa !67
  %84 = load float, ptr %30, align 4, !tbaa !67
  %85 = getelementptr inbounds %struct.BMVert, ptr %80, i64 0, i32 2, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !67
  %87 = fmul float %84, %86
  %88 = call float @llvm.fmuladd.f32(float %82, float %83, float %87)
  %89 = load float, ptr %31, align 16, !tbaa !67
  %90 = getelementptr inbounds %struct.BMVert, ptr %80, i64 0, i32 2, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !67
  %92 = call float @llvm.fmuladd.f32(float %89, float %91, float %88)
  br label %93

93:                                               ; preds = %93, %76
  %94 = phi float [ 0.000000e+00, %76 ], [ %110, %93 ]
  %95 = phi ptr [ %46, %76 ], [ %112, %93 ]
  %96 = phi float [ %92, %76 ], [ %107, %93 ]
  %97 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !66
  %99 = getelementptr inbounds %struct.BMVert, ptr %98, i64 0, i32 2
  %100 = load float, ptr %99, align 4, !tbaa !67
  %101 = getelementptr inbounds %struct.BMVert, ptr %98, i64 0, i32 2, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !67
  %103 = fmul float %84, %102
  %104 = call float @llvm.fmuladd.f32(float %82, float %100, float %103)
  %105 = getelementptr inbounds %struct.BMVert, ptr %98, i64 0, i32 2, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !67
  %107 = call float @llvm.fmuladd.f32(float %89, float %106, float %104)
  %108 = fsub float %107, %96
  %109 = call float @llvm.fabs.f32(float %108)
  %110 = fadd float %94, %109
  %111 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !63
  %113 = icmp eq ptr %112, %78
  br i1 %113, label %114, label %93, !llvm.loop !69

114:                                              ; preds = %93
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #4
  %115 = load ptr, ptr %51, align 8, !tbaa !63
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %5, ptr noundef nonnull %8) #4
  %116 = load ptr, ptr %53, align 8, !tbaa !66
  %117 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2
  %118 = load float, ptr %32, align 8, !tbaa !67
  %119 = load float, ptr %117, align 4, !tbaa !67
  %120 = load float, ptr %33, align 4, !tbaa !67
  %121 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !67
  %123 = fmul float %120, %122
  %124 = call float @llvm.fmuladd.f32(float %118, float %119, float %123)
  %125 = load float, ptr %34, align 16, !tbaa !67
  %126 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !67
  %128 = call float @llvm.fmuladd.f32(float %125, float %127, float %124)
  br label %129

129:                                              ; preds = %129, %114
  %130 = phi float [ 0.000000e+00, %114 ], [ %146, %129 ]
  %131 = phi ptr [ %60, %114 ], [ %148, %129 ]
  %132 = phi float [ %128, %114 ], [ %143, %129 ]
  %133 = getelementptr inbounds %struct.BMLoop, ptr %131, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !66
  %135 = getelementptr inbounds %struct.BMVert, ptr %134, i64 0, i32 2
  %136 = load float, ptr %135, align 4, !tbaa !67
  %137 = getelementptr inbounds %struct.BMVert, ptr %134, i64 0, i32 2, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !67
  %139 = fmul float %120, %138
  %140 = call float @llvm.fmuladd.f32(float %118, float %136, float %139)
  %141 = getelementptr inbounds %struct.BMVert, ptr %134, i64 0, i32 2, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !67
  %143 = call float @llvm.fmuladd.f32(float %125, float %142, float %140)
  %144 = fsub float %143, %132
  %145 = call float @llvm.fabs.f32(float %144)
  %146 = fadd float %130, %145
  %147 = getelementptr inbounds %struct.BMLoop, ptr %131, i64 0, i32 6
  %148 = load ptr, ptr %147, align 8, !tbaa !63
  %149 = icmp eq ptr %148, %115
  br i1 %149, label %150, label %129, !llvm.loop !69

150:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #4
  %151 = fadd float %110, %146
  %152 = fcmp olt float %151, %57
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #4
  store ptr %46, ptr %9, align 16, !tbaa !45
  store ptr %60, ptr %35, align 8, !tbaa !45
  call void @BM_face_splits_check_legal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef 1) #4
  %154 = load ptr, ptr %9, align 16, !tbaa !45
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  store ptr %46, ptr %2, align 8, !tbaa !45
  store ptr %60, ptr %36, align 8, !tbaa !45
  %157 = call float @angle_normalized_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #4
  br label %158

158:                                              ; preds = %156, %153
  %159 = phi float [ %157, %156 ], [ %58, %153 ]
  %160 = phi float [ %151, %156 ], [ %57, %153 ]
  %161 = phi i8 [ 1, %156 ], [ %56, %153 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #4
  br label %162

162:                                              ; preds = %150, %158, %73, %70
  %163 = phi float [ %58, %73 ], [ %58, %70 ], [ %159, %158 ], [ %58, %150 ]
  %164 = phi float [ %57, %73 ], [ %57, %70 ], [ %160, %158 ], [ %57, %150 ]
  %165 = phi i8 [ %56, %73 ], [ %56, %70 ], [ %161, %158 ], [ %56, %150 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #4
  br label %166

166:                                              ; preds = %162, %67
  %167 = phi float [ %58, %67 ], [ %163, %162 ]
  %168 = phi float [ %57, %67 ], [ %164, %162 ]
  %169 = phi i8 [ %56, %67 ], [ %165, %162 ]
  %170 = add nuw nsw i64 %55, 1
  %171 = trunc i64 %170 to i32
  %172 = icmp eq i32 %11, %171
  br i1 %172, label %173, label %54, !llvm.loop !70

173:                                              ; preds = %166, %38
  %174 = phi float [ %44, %38 ], [ %167, %166 ]
  %175 = phi float [ %43, %38 ], [ %168, %166 ]
  %176 = phi i8 [ %42, %38 ], [ %169, %166 ]
  %177 = add nuw nsw i64 %39, 1
  %178 = add nuw i32 %41, 1
  %179 = add i32 %40, 1
  %180 = icmp eq i64 %177, %37
  br i1 %180, label %181, label %38, !llvm.loop !71

181:                                              ; preds = %173, %26
  %182 = phi float [ 0x47EFFFFFE0000000, %26 ], [ %174, %173 ]
  %183 = phi i8 [ 0, %26 ], [ %176, %173 ]
  store float %182, ptr %3, align 4, !tbaa !67
  ret i8 %183
}

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @BM_face_calc_normal_subset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_splits_check_legal(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!34 = !{!35, !40, i64 32}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!37, !37, i64 0}
!46 = distinct !{!46, !43, !44}
!47 = !{i8 0, i8 2}
!48 = !{!35, !37, i64 16}
!49 = !{!50, !40, i64 128}
!50 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !51, i64 144, !51, i64 344, !51, i64 544, !51, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !52, i64 960, !37, i64 976, !52, i64 984, !37, i64 1000}
!51 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!52 = !{!"ListBase", !37, i64 0, !37, i64 8}
!53 = !{!54, !41, i64 0}
!54 = !{!"BMFlagLayer", !41, i64 0}
!55 = !{!56, !37, i64 24}
!56 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!57 = !{!58, !37, i64 16}
!58 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !59, i64 48, !59, i64 64}
!59 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!60 = distinct !{!60, !43, !44}
!61 = distinct !{!61, !43, !44}
!62 = !{!35, !37, i64 24}
!63 = !{!56, !37, i64 56}
!64 = distinct !{!64, !43, !44}
!65 = !{!56, !37, i64 64}
!66 = !{!56, !37, i64 16}
!67 = !{!68, !68, i64 0}
!68 = !{!"float", !38, i64 0}
!69 = distinct !{!69, !43, !44}
!70 = distinct !{!70, !43, !44}
!71 = distinct !{!71, !43, !44}
