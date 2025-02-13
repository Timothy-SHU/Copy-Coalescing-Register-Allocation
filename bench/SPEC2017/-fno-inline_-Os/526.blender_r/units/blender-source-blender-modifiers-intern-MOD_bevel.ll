; ModuleID = 'blender/source/blender/modifiers/intern/MOD_bevel.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_bevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BevelModifierData = type { %struct.ModifierData, float, i32, i16, i16, i16, i16, i16, i16, i32, float, float, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@modifierType_Bevel = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Bevel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"BevelModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 208, i32 2, i32 25, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr null, ptr null, ptr @dependsOnNormals, ptr null, ptr null, ptr null }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  %3 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 1
  store float %4, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 2
  store i32 %7, ptr %8, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 3
  %11 = load <4 x i16>, ptr %9, align 8, !tbaa !45
  store <4 x i16> %11, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 7
  %13 = load i16, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 7
  store i16 %13, ptr %14, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 10
  %16 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 10
  %17 = load <2 x float>, ptr %15, align 8, !tbaa !47
  store <2 x float> %17, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 12
  %19 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 12
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 64) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !48 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 -1, ptr %6, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = fadd float %11, 0x3E877CF440000000
  %13 = tail call float @cosf(float noundef %12) #10
  %14 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !52
  %16 = trunc i16 %15 to i8
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 4
  %20 = load i16, ptr %19, align 2, !tbaa !53
  %21 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 7
  %22 = load i16, ptr %21, align 8, !tbaa !46
  %23 = icmp slt i16 %22, -1
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = sext i16 %22 to i32
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %27 = load i32, ptr %26, align 8, !tbaa !54
  %28 = icmp sgt i32 %27, %25
  %29 = add nsw i32 %27, -1
  %30 = select i1 %28, i32 %25, i32 %29
  br label %31

31:                                               ; preds = %24, %4
  %32 = phi i32 [ -1, %4 ], [ %30, %24 ]
  %33 = tail call ptr @DM_to_bmesh(ptr noundef %2, i8 noundef zeroext 1) #10
  %34 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 5
  %35 = load i16, ptr %34, align 4, !tbaa !60
  %36 = and i16 %35, 32
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 12
  %40 = load i8, ptr %39, align 8, !tbaa !61
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %39, ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  br label %43

43:                                               ; preds = %42, %38, %31
  %44 = icmp eq i8 %18, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %43
  %46 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %33, i8 noundef zeroext 1) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %143, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 24
  br label %50

50:                                               ; preds = %48, %70
  %51 = phi ptr [ %46, %48 ], [ %71, %70 ]
  %52 = call zeroext i8 @BM_vert_is_manifold(ptr noundef nonnull %51) #10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %50
  %55 = load i16, ptr %34, align 4, !tbaa !60
  %56 = and i16 %55, 16
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = call float @BM_elem_float_data_get(ptr noundef nonnull %49, ptr noundef nonnull %51, i32 noundef 29) #10
  %60 = fcmp oeq float %59, 0.000000e+00
  br i1 %60, label %70, label %69

61:                                               ; preds = %54
  %62 = load i32, ptr %6, align 4, !tbaa !49
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %7, align 8, !tbaa !50
  %66 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %51) #12
  %67 = call float @defvert_array_find_weight_safe(ptr noundef %65, i32 noundef %66, i32 noundef %62) #10
  %68 = fcmp olt float %67, 5.000000e-01
  br i1 %68, label %70, label %69

69:                                               ; preds = %61, %64, %58
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %51) #12
  br label %70

70:                                               ; preds = %64, %58, %50, %69
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %143, label %50, !llvm.loop !62

73:                                               ; preds = %43
  %74 = load i16, ptr %34, align 4, !tbaa !60
  %75 = and i16 %74, 8
  %76 = icmp eq i16 %75, 0
  %77 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %33, i8 noundef zeroext 2) #12
  %78 = icmp eq ptr %77, null
  br i1 %76, label %103, label %79

79:                                               ; preds = %73
  br i1 %78, label %143, label %80

80:                                               ; preds = %79, %100
  %81 = phi ptr [ %101, %100 ], [ %77, %79 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %82 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %81, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %8, align 8, !tbaa !50
  %86 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !64
  %88 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 4
  %89 = load ptr, ptr %9, align 8, !tbaa !50
  %90 = getelementptr inbounds %struct.BMLoop, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !64
  %92 = getelementptr inbounds %struct.BMFace, ptr %91, i64 0, i32 4
  %93 = call fastcc float @dot_v3v3(ptr noundef nonnull %88, ptr noundef nonnull %92) #12
  %94 = fcmp olt float %93, %13
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %81) #12
  %96 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !67
  call fastcc void @_bm_elem_flag_enable(ptr noundef %97) #12
  %98 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !70
  call fastcc void @_bm_elem_flag_enable(ptr noundef %99) #12
  br label %100

100:                                              ; preds = %84, %95, %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %101 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #12
  %102 = icmp eq ptr %101, null
  br i1 %102, label %143, label %80, !llvm.loop !71

103:                                              ; preds = %73
  br i1 %78, label %143, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 25
  br label %106

106:                                              ; preds = %104, %140
  %107 = phi ptr [ %77, %104 ], [ %141, %140 ]
  %108 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %107) #12, !range !72
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %140, label %110

110:                                              ; preds = %106
  %111 = load i16, ptr %34, align 4, !tbaa !60
  %112 = and i16 %111, 16
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = call float @BM_elem_float_data_get(ptr noundef nonnull %105, ptr noundef nonnull %107, i32 noundef 29) #10
  %116 = fcmp oeq float %115, 0.000000e+00
  br i1 %116, label %140, label %135

117:                                              ; preds = %110
  %118 = load i32, ptr %6, align 4, !tbaa !49
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %135, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %7, align 8, !tbaa !50
  %122 = getelementptr inbounds %struct.BMEdge, ptr %107, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !67
  %124 = call fastcc i32 @_bm_elem_index_get(ptr noundef %123) #12
  %125 = call float @defvert_array_find_weight_safe(ptr noundef %121, i32 noundef %124, i32 noundef %118) #10
  %126 = load ptr, ptr %7, align 8, !tbaa !50
  %127 = getelementptr inbounds %struct.BMEdge, ptr %107, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !70
  %129 = call fastcc i32 @_bm_elem_index_get(ptr noundef %128) #12
  %130 = load i32, ptr %6, align 4, !tbaa !49
  %131 = call float @defvert_array_find_weight_safe(ptr noundef %126, i32 noundef %129, i32 noundef %130) #10
  %132 = fcmp olt float %125, 5.000000e-01
  %133 = fcmp olt float %131, 5.000000e-01
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %117, %120, %114
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %107) #12
  %136 = getelementptr inbounds %struct.BMEdge, ptr %107, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !67
  call fastcc void @_bm_elem_flag_enable(ptr noundef %137) #12
  %138 = getelementptr inbounds %struct.BMEdge, ptr %107, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !70
  call fastcc void @_bm_elem_flag_enable(ptr noundef %139) #12
  br label %140

140:                                              ; preds = %106, %135, %120, %114
  %141 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #12
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %106, !llvm.loop !73

143:                                              ; preds = %70, %100, %140, %45, %79, %103
  %144 = sext i16 %20 to i32
  %145 = and i16 %15, 8192
  %146 = icmp eq i16 %145, 0
  %147 = zext i1 %146 to i8
  %148 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 1
  %149 = load float, ptr %148, align 8, !tbaa !35
  %150 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !44
  %152 = sitofp i32 %151 to float
  %153 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 10
  %154 = load float, ptr %153, align 8, !tbaa !74
  %155 = load i16, ptr %34, align 4, !tbaa !60
  %156 = trunc i16 %155 to i8
  %157 = and i8 %156, 16
  %158 = load ptr, ptr %7, align 8, !tbaa !50
  %159 = load i32, ptr %6, align 4, !tbaa !49
  call void @BM_mesh_bevel(ptr noundef %33, float noundef %149, i32 noundef %144, float noundef %152, float noundef %154, i8 noundef zeroext %18, i8 noundef zeroext %157, i8 noundef zeroext %147, ptr noundef %158, i32 noundef %159, i32 noundef %32) #10
  %160 = call ptr @CDDM_from_bmesh(ptr noundef %33, i8 noundef zeroext 1) #10
  call void @BM_mesh_free(ptr noundef %33) #10
  %161 = getelementptr inbounds %struct.DerivedMesh, ptr %160, i64 0, i32 16
  %162 = load i32, ptr %161, align 8, !tbaa !75
  %163 = or i32 %162, 4
  store i32 %163, ptr %161, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret ptr %160
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 1
  store float 0x3FB99999A0000000, ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 2
  store i32 1, ptr %3, align 4, !tbaa !44
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 7
  store i64 0, ptr %4, align 8
  store i16 -1, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 10
  store <2 x float> <float 5.000000e-01, float 0x3FE0C15240000000>, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.BevelModifierData, ptr %0, i64 0, i32 12
  store i8 0, ptr %7, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.BevelModifierData, ptr %1, i64 0, i32 12
  %4 = load i8, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnNormals(ptr nocapture readnone %0) #3 !PGOFuncName !80 {
  ret i8 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @DM_to_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !81 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #12
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @BM_elem_float_data_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @defvert_array_find_weight_safe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !82 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !83
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !85
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !86 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !89 {
  %3 = load float, ptr %0, align 4, !tbaa !47
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @BM_mesh_bevel(ptr noundef, float noundef, i32 noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !93 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !94
  %5 = icmp eq i8 %2, 1
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8
  %10 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8
  %11 = load ptr, ptr %8, align 8, !tbaa !50
  store ptr %11, ptr %0, align 8, !tbaa !61
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #5

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

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
!34 = !{!"MOD_bevel.c:copyData"}
!35 = !{!36, !42, i64 112}
!36 = !{!"BevelModifierData", !37, i64 0, !42, i64 112, !41, i64 116, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !43, i64 128, !43, i64 130, !41, i64 132, !42, i64 136, !42, i64 140, !39, i64 144}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"float", !39, i64 0}
!43 = !{!"short", !39, i64 0}
!44 = !{!36, !41, i64 116}
!45 = !{!43, !43, i64 0}
!46 = !{!36, !43, i64 128}
!47 = !{!42, !42, i64 0}
!48 = !{!"MOD_bevel.c:applyModifier"}
!49 = !{!41, !41, i64 0}
!50 = !{!38, !38, i64 0}
!51 = !{!36, !42, i64 140}
!52 = !{!36, !43, i64 120}
!53 = !{!36, !43, i64 122}
!54 = !{!55, !41, i64 456}
!55 = !{!"Object", !56, i64 0, !38, i64 120, !38, i64 128, !43, i64 136, !43, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !57, i64 312, !38, i64 360, !58, i64 368, !58, i64 384, !58, i64 400, !58, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !42, i64 616, !42, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !39, i64 1042, !39, i64 1043, !43, i64 1044, !39, i64 1046, !39, i64 1047, !42, i64 1048, !42, i64 1052, !58, i64 1056, !58, i64 1072, !58, i64 1088, !58, i64 1104, !42, i64 1120, !43, i64 1124, !43, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !43, i64 1162, !39, i64 1164, !58, i64 1176, !58, i64 1192, !58, i64 1208, !58, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !43, i64 1266, !42, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !59, i64 1304, !59, i64 1312, !41, i64 1320, !41, i64 1324, !58, i64 1328, !58, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !58, i64 1400, !38, i64 1416}
!56 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !43, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!57 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!58 = !{!"ListBase", !38, i64 0, !38, i64 8}
!59 = !{!"long", !39, i64 0}
!60 = !{!36, !43, i64 124}
!61 = !{!39, !39, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!65, !38, i64 32}
!65 = !{!"BMLoop", !66, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!66 = !{!"BMHeader", !38, i64 0, !41, i64 8, !39, i64 12, !39, i64 13, !39, i64 14}
!67 = !{!68, !38, i64 24}
!68 = !{!"BMEdge", !66, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !69, i64 48, !69, i64 64}
!69 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!70 = !{!68, !38, i64 32}
!71 = distinct !{!71, !63}
!72 = !{i8 0, i8 2}
!73 = distinct !{!73, !63}
!74 = !{!36, !42, i64 136}
!75 = !{!76, !41, i64 1056}
!76 = !{!"DerivedMesh", !77, i64 0, !77, i64 200, !77, i64 400, !77, i64 600, !77, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!77 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!78 = !{!"MOD_bevel.c:initData"}
!79 = !{!"MOD_bevel.c:requiredDataMask"}
!80 = !{!"MOD_bevel.c:dependsOnNormals"}
!81 = !{!"MOD_bevel.c:BM_iter_new"}
!82 = !{!"MOD_bevel.c:_bm_elem_index_get"}
!83 = !{!66, !41, i64 8}
!84 = !{!"MOD_bevel.c:_bm_elem_flag_enable"}
!85 = !{!66, !39, i64 13}
!86 = !{!"MOD_bevel.c:BM_iter_step"}
!87 = !{!88, !38, i64 48}
!88 = !{!"BMIter", !39, i64 0, !38, i64 40, !38, i64 48, !41, i64 56, !39, i64 60}
!89 = !{!"MOD_bevel.c:dot_v3v3"}
!90 = !{!"MOD_bevel.c:BM_edge_is_manifold"}
!91 = !{!68, !38, i64 40}
!92 = !{!65, !38, i64 40}
!93 = !{!"MOD_bevel.c:BM_iter_init"}
!94 = !{!88, !39, i64 60}
