; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_path.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_calc_path_vert = private unnamed_addr constant [23 x i8] c"BM_mesh_calc_path_vert\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"SeamPathPrevious\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SeamPathCost\00", align 1
@__func__.BM_mesh_calc_path_face = private unnamed_addr constant [23 x i8] c"BM_mesh_calc_path_face\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_mesh_calc_path_vert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2, i8 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  store ptr null, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #5
  %10 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 1, ptr %10, align 4, !tbaa !38
  %11 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  store ptr %14, ptr %9, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #5
  %15 = load ptr, ptr %12, align 8, !tbaa !42
  %16 = call ptr %15(ptr noundef nonnull %9) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %6, %18
  %19 = phi ptr [ %30, %18 ], [ %16, %6 ]
  %20 = phi i32 [ %31, %18 ], [ 0, %6 ]
  %21 = call zeroext i8 %5(ptr noundef nonnull %19, ptr noundef %4) #5
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !49
  %25 = and i8 %24, -17
  %26 = select i1 %22, i8 16, i8 0
  %27 = or disjoint i8 %25, %26
  store i8 %27, ptr %23, align 1, !tbaa !49
  %28 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 1
  store i32 %20, ptr %28, align 8, !tbaa !51
  %29 = load ptr, ptr %12, align 8, !tbaa !42
  %30 = call ptr %29(ptr noundef nonnull %9) #5
  %31 = add nuw nsw i32 %20, 1
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %18, !llvm.loop !52

33:                                               ; preds = %18, %6
  %34 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %35 = load i8, ptr %34, align 4, !tbaa !55
  %36 = and i8 %35, -2
  store i8 %36, ptr %34, align 4, !tbaa !55
  %37 = load i32, ptr %0, align 8, !tbaa !56
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = sext i32 %37 to i64
  %40 = shl nsw i64 %39, 3
  %41 = call ptr %38(i64 noundef %40, ptr noundef nonnull @__func__.BM_mesh_calc_path_vert) #5
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %43 = shl nsw i64 %39, 2
  %44 = call ptr %42(i64 noundef %43, ptr noundef nonnull @__func__.BM_mesh_calc_path_vert) #5
  call void @fill_vn_fl(ptr noundef %44, i32 noundef %37, float noundef 0x4415AF1D80000000) #5
  %45 = call ptr @BLI_heap_new() #5
  %46 = call ptr @BLI_heap_insert(ptr noundef %45, float noundef 0.000000e+00, ptr noundef %1) #5
  %47 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !51
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, ptr %44, i64 %49
  store float 0.000000e+00, ptr %50, align 4, !tbaa !57
  %51 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %45) #5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %132

53:                                               ; preds = %33
  %54 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %55 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %56 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %57 = icmp eq i8 %3, 0
  br label %58

58:                                               ; preds = %53, %129
  %59 = call ptr @BLI_heap_popmin(ptr noundef %45) #5
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %132, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !49
  %64 = and i8 %63, 16
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %129

66:                                               ; preds = %61
  %67 = or disjoint i8 %63, 16
  store i8 %67, ptr %62, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #5
  %68 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !51
  store i8 4, ptr %54, align 4, !tbaa !38
  store ptr @bmiter__edge_of_vert_begin, ptr %55, align 8, !tbaa !41
  store ptr @bmiter__edge_of_vert_step, ptr %56, align 8, !tbaa !42
  store ptr %59, ptr %7, align 8, !tbaa !48
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #5
  %70 = load ptr, ptr %56, align 8, !tbaa !42
  %71 = call ptr %70(ptr noundef nonnull %7) #5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %128, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2
  %75 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2, i64 1
  %76 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2, i64 2
  %77 = sext i32 %69 to i64
  %78 = getelementptr inbounds float, ptr %44, i64 %77
  br label %79

79:                                               ; preds = %73, %124
  %80 = phi ptr [ %71, %73 ], [ %126, %124 ]
  %81 = getelementptr inbounds %struct.BMEdge, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !59
  %83 = icmp eq ptr %82, %59
  %84 = getelementptr inbounds %struct.BMEdge, ptr %80, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = icmp eq ptr %85, %59
  %87 = select i1 %86, ptr %82, ptr null
  %88 = select i1 %83, ptr %85, ptr %87
  %89 = getelementptr inbounds %struct.BMHeader, ptr %88, i64 0, i32 3
  %90 = load i8, ptr %89, align 1, !tbaa !49
  %91 = and i8 %90, 16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.BMHeader, ptr %88, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !51
  br i1 %57, label %113, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2
  %98 = load float, ptr %97, align 4, !tbaa !57
  %99 = load float, ptr %74, align 4, !tbaa !57
  %100 = fsub float %98, %99
  %101 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !57
  %103 = load float, ptr %75, align 4, !tbaa !57
  %104 = fsub float %102, %103
  %105 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !57
  %107 = load float, ptr %76, align 4, !tbaa !57
  %108 = fsub float %106, %107
  %109 = fmul float %104, %104
  %110 = call float @llvm.fmuladd.f32(float %100, float %100, float %109)
  %111 = call float @llvm.fmuladd.f32(float %108, float %108, float %110)
  %112 = call float @sqrtf(float noundef %111) #5
  br label %113

113:                                              ; preds = %96, %93
  %114 = phi float [ %112, %96 ], [ 1.000000e+00, %93 ]
  %115 = load float, ptr %78, align 4, !tbaa !57
  %116 = fadd float %114, %115
  %117 = sext i32 %95 to i64
  %118 = getelementptr inbounds float, ptr %44, i64 %117
  %119 = load float, ptr %118, align 4, !tbaa !57
  %120 = fcmp ogt float %119, %116
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  store float %116, ptr %118, align 4, !tbaa !57
  %122 = getelementptr inbounds ptr, ptr %41, i64 %117
  store ptr %59, ptr %122, align 8, !tbaa !34
  %123 = call ptr @BLI_heap_insert(ptr noundef %45, float noundef %116, ptr noundef %88) #5
  br label %124

124:                                              ; preds = %121, %113, %79
  %125 = load ptr, ptr %56, align 8, !tbaa !42
  %126 = call ptr %125(ptr noundef nonnull %7) #5
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %79, !llvm.loop !63

128:                                              ; preds = %124, %66
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  br label %129

129:                                              ; preds = %128, %61
  %130 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %45) #5
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %58, label %132, !llvm.loop !64

132:                                              ; preds = %129, %58, %33
  %133 = phi ptr [ null, %33 ], [ %59, %58 ], [ %59, %129 ]
  %134 = icmp eq ptr %133, %2
  br i1 %134, label %135, label %143

135:                                              ; preds = %132, %135
  %136 = phi ptr [ %141, %135 ], [ %133, %132 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %8, ptr noundef %136) #5
  %137 = getelementptr inbounds %struct.BMHeader, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !51
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %41, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !34
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %135, !llvm.loop !65

143:                                              ; preds = %135, %132
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %144(ptr noundef %41) #5
  %145 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %145(ptr noundef %44) #5
  call void @BLI_heap_free(ptr noundef %45, ptr noundef null) #5
  %146 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  ret ptr %146
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare ptr @BLI_heap_new() local_unnamed_addr #2

declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #2

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_mesh_calc_path_edge(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i8 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  store ptr null, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #5
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #5
  %11 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 2, ptr %11, align 4, !tbaa !38
  %12 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  store ptr %15, ptr %10, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #5
  %16 = load ptr, ptr %13, align 8, !tbaa !42
  %17 = call ptr %16(ptr noundef nonnull %10) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %31, %19 ], [ %17, %6 ]
  %21 = phi i32 [ %32, %19 ], [ 0, %6 ]
  %22 = call zeroext i8 %5(ptr noundef nonnull %20, ptr noundef %4) #5
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !49
  %26 = and i8 %25, -17
  %27 = select i1 %23, i8 16, i8 0
  %28 = or disjoint i8 %26, %27
  store i8 %28, ptr %24, align 1, !tbaa !49
  %29 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 1
  store i32 %21, ptr %29, align 8, !tbaa !51
  %30 = load ptr, ptr %13, align 8, !tbaa !42
  %31 = call ptr %30(ptr noundef nonnull %10) #5
  %32 = add nuw nsw i32 %21, 1
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %19, !llvm.loop !67

34:                                               ; preds = %19, %6
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %36 = load i8, ptr %35, align 4, !tbaa !55
  %37 = and i8 %36, -3
  store i8 %37, ptr %35, align 4, !tbaa !55
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !68
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = sext i32 %39 to i64
  %42 = shl nsw i64 %41, 3
  %43 = call ptr %40(i64 noundef %42, ptr noundef nonnull @.str) #5
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %45 = shl nsw i64 %41, 2
  %46 = call ptr %44(i64 noundef %45, ptr noundef nonnull @.str.1) #5
  call void @fill_vn_fl(ptr noundef %46, i32 noundef %39, float noundef 0x4415AF1D80000000) #5
  %47 = call ptr @BLI_heap_new() #5
  %48 = call ptr @BLI_heap_insert(ptr noundef %47, float noundef 0.000000e+00, ptr noundef %1) #5
  %49 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !51
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, ptr %46, i64 %51
  store float 0.000000e+00, ptr %52, align 4, !tbaa !57
  %53 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %47) #5
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %220

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %57 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %58 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %59 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %60 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %61 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %62 = icmp eq i8 %3, 0
  br label %63

63:                                               ; preds = %55, %217
  %64 = call ptr @BLI_heap_popmin(ptr noundef %47) #5
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %220, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 3
  %68 = load i8, ptr %67, align 1, !tbaa !49
  %69 = and i8 %68, 16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %217

71:                                               ; preds = %66
  %72 = or disjoint i8 %68, 16
  store i8 %72, ptr %67, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  %73 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !51
  store i8 7, ptr %56, align 4, !tbaa !38
  store ptr @bmiter__vert_of_edge_begin, ptr %57, align 8, !tbaa !41
  store ptr @bmiter__vert_of_edge_step, ptr %58, align 8, !tbaa !42
  store ptr %64, ptr %7, align 8, !tbaa !48
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %7) #5
  %75 = load ptr, ptr %58, align 8, !tbaa !42
  %76 = call ptr %75(ptr noundef nonnull %7) #5
  %77 = icmp eq ptr %76, null
  br i1 %77, label %216, label %78

78:                                               ; preds = %71
  %79 = sext i32 %74 to i64
  %80 = getelementptr inbounds ptr, ptr %43, i64 %79
  %81 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 2
  %82 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 3
  %83 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 3
  %84 = getelementptr inbounds float, ptr %46, i64 %79
  br label %85

85:                                               ; preds = %78, %212
  %86 = phi ptr [ %76, %78 ], [ %214, %212 ]
  %87 = load ptr, ptr %80, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.BMEdge, ptr %87, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = icmp eq ptr %91, %86
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.BMEdge, ptr %87, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !62
  %96 = icmp eq ptr %95, %86
  %97 = zext i1 %96 to i8
  br label %98

98:                                               ; preds = %93, %89
  %99 = phi i8 [ 1, %89 ], [ %97, %93 ]
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %212

101:                                              ; preds = %98, %85
  store i8 4, ptr %59, align 4, !tbaa !38
  store ptr @bmiter__edge_of_vert_begin, ptr %60, align 8, !tbaa !41
  store ptr @bmiter__edge_of_vert_step, ptr %61, align 8, !tbaa !42
  store ptr %86, ptr %8, align 8, !tbaa !48
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %8) #5
  %102 = load ptr, ptr %61, align 8, !tbaa !42
  %103 = call ptr %102(ptr noundef nonnull %8) #5
  %104 = icmp eq ptr %103, null
  br i1 %104, label %212, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 2
  %107 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 2, i64 1
  %108 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 2, i64 2
  br label %109

109:                                              ; preds = %105, %208
  %110 = phi ptr [ %103, %105 ], [ %210, %208 ]
  %111 = getelementptr inbounds %struct.BMHeader, ptr %110, i64 0, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !49
  %113 = and i8 %112, 16
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %208

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.BMHeader, ptr %110, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !51
  br i1 %62, label %197, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %81, align 8, !tbaa !59
  %120 = icmp eq ptr %119, %86
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load ptr, ptr %83, align 8, !tbaa !62
  br label %127

123:                                              ; preds = %118
  %124 = load ptr, ptr %82, align 8, !tbaa !62
  %125 = icmp eq ptr %124, %86
  %126 = select i1 %125, ptr %119, ptr null
  br label %127

127:                                              ; preds = %123, %121
  %128 = phi ptr [ %122, %121 ], [ %126, %123 ]
  %129 = getelementptr inbounds %struct.BMEdge, ptr %110, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !59
  %131 = icmp eq ptr %130, %86
  %132 = getelementptr inbounds %struct.BMEdge, ptr %110, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !62
  %134 = icmp eq ptr %133, %86
  %135 = select i1 %134, ptr %130, ptr null
  %136 = select i1 %131, ptr %133, ptr %135
  %137 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 2
  %138 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 2
  %139 = load float, ptr %106, align 4, !tbaa !57
  %140 = load float, ptr %137, align 4, !tbaa !57
  %141 = fsub float %139, %140
  %142 = load float, ptr %107, align 4, !tbaa !57
  %143 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 2, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !57
  %145 = fsub float %142, %144
  %146 = load float, ptr %108, align 4, !tbaa !57
  %147 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 2, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !57
  %149 = fsub float %146, %148
  %150 = load float, ptr %138, align 4, !tbaa !57
  %151 = fsub float %150, %139
  %152 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 2, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !57
  %154 = fsub float %153, %142
  %155 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 2, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !57
  %157 = fsub float %156, %146
  %158 = fmul float %145, %145
  %159 = call float @llvm.fmuladd.f32(float %141, float %141, float %158)
  %160 = call float @llvm.fmuladd.f32(float %149, float %149, float %159)
  %161 = fcmp ogt float %160, 0x38AA95A5C0000000
  br i1 %161, label %162, label %168

162:                                              ; preds = %127
  %163 = call float @sqrtf(float noundef %160) #5
  %164 = fdiv float 1.000000e+00, %163
  %165 = fmul float %141, %164
  %166 = fmul float %145, %164
  %167 = fmul float %149, %164
  br label %168

168:                                              ; preds = %162, %127
  %169 = phi float [ %166, %162 ], [ 0.000000e+00, %127 ]
  %170 = phi float [ %165, %162 ], [ 0.000000e+00, %127 ]
  %171 = phi float [ %167, %162 ], [ 0.000000e+00, %127 ]
  %172 = phi float [ %163, %162 ], [ 0.000000e+00, %127 ]
  %173 = fmul float %154, %154
  %174 = call float @llvm.fmuladd.f32(float %151, float %151, float %173)
  %175 = call float @llvm.fmuladd.f32(float %157, float %157, float %174)
  %176 = fcmp ogt float %175, 0x38AA95A5C0000000
  br i1 %176, label %177, label %183

177:                                              ; preds = %168
  %178 = call float @sqrtf(float noundef %175) #5
  %179 = fdiv float 1.000000e+00, %178
  %180 = fmul float %151, %179
  %181 = fmul float %154, %179
  %182 = fmul float %157, %179
  br label %183

183:                                              ; preds = %168, %177
  %184 = phi float [ %181, %177 ], [ 0.000000e+00, %168 ]
  %185 = phi float [ %180, %177 ], [ 0.000000e+00, %168 ]
  %186 = phi float [ %182, %177 ], [ 0.000000e+00, %168 ]
  %187 = phi float [ %178, %177 ], [ 0.000000e+00, %168 ]
  %188 = fadd float %172, %187
  %189 = fmul float %169, %184
  %190 = call float @llvm.fmuladd.f32(float %170, float %185, float %189)
  %191 = call float @llvm.fmuladd.f32(float %171, float %186, float %190)
  %192 = call float @llvm.fabs.f32(float %191)
  %193 = call float @sqrtf(float noundef %192) #5
  %194 = fsub float 2.000000e+00, %193
  %195 = call float @llvm.fmuladd.f32(float %194, float 5.000000e-01, float 1.000000e+00)
  %196 = fmul float %188, %195
  br label %197

197:                                              ; preds = %183, %115
  %198 = phi float [ %196, %183 ], [ 1.000000e+00, %115 ]
  %199 = load float, ptr %84, align 4, !tbaa !57
  %200 = fadd float %198, %199
  %201 = sext i32 %117 to i64
  %202 = getelementptr inbounds float, ptr %46, i64 %201
  %203 = load float, ptr %202, align 4, !tbaa !57
  %204 = fcmp ogt float %203, %200
  br i1 %204, label %205, label %208

205:                                              ; preds = %197
  store float %200, ptr %202, align 4, !tbaa !57
  %206 = getelementptr inbounds ptr, ptr %43, i64 %201
  store ptr %64, ptr %206, align 8, !tbaa !34
  %207 = call ptr @BLI_heap_insert(ptr noundef %47, float noundef %200, ptr noundef nonnull %110) #5
  br label %208

208:                                              ; preds = %205, %197, %109
  %209 = load ptr, ptr %61, align 8, !tbaa !42
  %210 = call ptr %209(ptr noundef nonnull %8) #5
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %109, !llvm.loop !69

212:                                              ; preds = %208, %101, %98
  %213 = load ptr, ptr %58, align 8, !tbaa !42
  %214 = call ptr %213(ptr noundef nonnull %7) #5
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %85, !llvm.loop !70

216:                                              ; preds = %212, %71
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  br label %217

217:                                              ; preds = %216, %66
  %218 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %47) #5
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %63, label %220, !llvm.loop !71

220:                                              ; preds = %217, %63, %34
  %221 = phi ptr [ null, %34 ], [ %64, %63 ], [ %64, %217 ]
  %222 = icmp eq ptr %221, %2
  br i1 %222, label %223, label %231

223:                                              ; preds = %220, %223
  %224 = phi ptr [ %229, %223 ], [ %221, %220 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %9, ptr noundef %224) #5
  %225 = getelementptr inbounds %struct.BMHeader, ptr %224, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !51
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds ptr, ptr %43, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !34
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %223, !llvm.loop !72

231:                                              ; preds = %223, %220
  %232 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %232(ptr noundef %43) #5
  %233 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %233(ptr noundef %46) #5
  call void @BLI_heap_free(ptr noundef %47, ptr noundef null) #5
  %234 = load ptr, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  ret ptr %234
}

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_mesh_calc_path_face(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2, i8 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store ptr null, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #5
  %13 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 3, ptr %13, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %14, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %15, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  store ptr %17, ptr %12, align 8, !tbaa !48
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #5
  %18 = load ptr, ptr %15, align 8, !tbaa !42
  %19 = call ptr %18(ptr noundef nonnull %12) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %6, %21
  %22 = phi ptr [ %33, %21 ], [ %19, %6 ]
  %23 = phi i32 [ %34, %21 ], [ 0, %6 ]
  %24 = call zeroext i8 %5(ptr noundef nonnull %22, ptr noundef %4) #5
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !49
  %28 = and i8 %27, -17
  %29 = select i1 %25, i8 16, i8 0
  %30 = or disjoint i8 %28, %29
  store i8 %30, ptr %26, align 1, !tbaa !49
  %31 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 1
  store i32 %23, ptr %31, align 8, !tbaa !51
  %32 = load ptr, ptr %15, align 8, !tbaa !42
  %33 = call ptr %32(ptr noundef nonnull %12) #5
  %34 = add nuw nsw i32 %23, 1
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %21, !llvm.loop !74

36:                                               ; preds = %21, %6
  %37 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %38 = load i8, ptr %37, align 4, !tbaa !55
  %39 = and i8 %38, -9
  store i8 %39, ptr %37, align 4, !tbaa !55
  %40 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !75
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %43 = sext i32 %41 to i64
  %44 = shl nsw i64 %43, 3
  %45 = call ptr %42(i64 noundef %44, ptr noundef nonnull @__func__.BM_mesh_calc_path_face) #5
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %47 = shl nsw i64 %43, 2
  %48 = call ptr %46(i64 noundef %47, ptr noundef nonnull @__func__.BM_mesh_calc_path_face) #5
  call void @fill_vn_fl(ptr noundef %48, i32 noundef %41, float noundef 0x4415AF1D80000000) #5
  %49 = call ptr @BLI_heap_new() #5
  %50 = call ptr @BLI_heap_insert(ptr noundef %49, float noundef 0.000000e+00, ptr noundef %1) #5
  %51 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, ptr %48, i64 %53
  store float 0.000000e+00, ptr %54, align 4, !tbaa !57
  %55 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %49) #5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %185

57:                                               ; preds = %36
  %58 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %59 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %60 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %61 = icmp eq i8 %3, 0
  %62 = getelementptr inbounds float, ptr %9, i64 1
  %63 = getelementptr inbounds float, ptr %7, i64 1
  %64 = getelementptr inbounds float, ptr %9, i64 2
  %65 = getelementptr inbounds float, ptr %7, i64 2
  %66 = getelementptr inbounds float, ptr %8, i64 1
  %67 = getelementptr inbounds float, ptr %8, i64 2
  br label %68

68:                                               ; preds = %57, %182
  %69 = call ptr @BLI_heap_popmin(ptr noundef %49) #5
  %70 = icmp eq ptr %69, %2
  br i1 %70, label %185, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.BMHeader, ptr %69, i64 0, i32 3
  %73 = load i8, ptr %72, align 1, !tbaa !49
  %74 = and i8 %73, 16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %182

76:                                               ; preds = %71
  %77 = or disjoint i8 %73, 16
  store i8 %77, ptr %72, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #5
  %78 = getelementptr inbounds %struct.BMHeader, ptr %69, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !51
  store i8 11, ptr %58, align 4, !tbaa !38
  store ptr @bmiter__loop_of_face_begin, ptr %59, align 8, !tbaa !41
  store ptr @bmiter__loop_of_face_step, ptr %60, align 8, !tbaa !42
  store ptr %69, ptr %10, align 8, !tbaa !48
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #5
  %80 = load ptr, ptr %60, align 8, !tbaa !42
  %81 = call ptr %80(ptr noundef nonnull %10) #5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %181, label %83

83:                                               ; preds = %76
  %84 = sext i32 %79 to i64
  %85 = getelementptr inbounds float, ptr %48, i64 %84
  br label %86

86:                                               ; preds = %83, %177
  %87 = phi ptr [ %81, %83 ], [ %179, %177 ]
  br label %88

88:                                               ; preds = %86, %173
  %89 = phi ptr [ %175, %173 ], [ %87, %86 ]
  %90 = getelementptr inbounds %struct.BMLoop, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !76
  %92 = getelementptr inbounds %struct.BMHeader, ptr %91, i64 0, i32 3
  %93 = load i8, ptr %92, align 1, !tbaa !49
  %94 = and i8 %93, 16
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %173

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.BMHeader, ptr %91, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !51
  br i1 %61, label %162, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.BMLoop, ptr %89, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #5
  call void @BM_face_calc_center_mean(ptr noundef %69, ptr noundef nonnull %7) #5
  call void @BM_face_calc_center_mean(ptr noundef %91, ptr noundef nonnull %8) #5
  %102 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !59
  %104 = getelementptr inbounds %struct.BMVert, ptr %103, i64 0, i32 2
  %105 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !62
  %107 = getelementptr inbounds %struct.BMVert, ptr %106, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %104, ptr noundef nonnull %107) #5
  %108 = load float, ptr %9, align 4, !tbaa !57
  %109 = load float, ptr %7, align 4, !tbaa !57
  %110 = fsub float %108, %109
  %111 = load float, ptr %62, align 4, !tbaa !57
  %112 = load float, ptr %63, align 4, !tbaa !57
  %113 = fsub float %111, %112
  %114 = load float, ptr %64, align 4, !tbaa !57
  %115 = load float, ptr %65, align 4, !tbaa !57
  %116 = fsub float %114, %115
  %117 = load float, ptr %8, align 4, !tbaa !57
  %118 = fsub float %117, %108
  %119 = load float, ptr %66, align 4, !tbaa !57
  %120 = fsub float %119, %111
  %121 = load float, ptr %67, align 4, !tbaa !57
  %122 = fsub float %121, %114
  %123 = fmul float %113, %113
  %124 = call float @llvm.fmuladd.f32(float %110, float %110, float %123)
  %125 = call float @llvm.fmuladd.f32(float %116, float %116, float %124)
  %126 = fcmp ogt float %125, 0x38AA95A5C0000000
  br i1 %126, label %127, label %133

127:                                              ; preds = %99
  %128 = call float @sqrtf(float noundef %125) #5
  %129 = fdiv float 1.000000e+00, %128
  %130 = fmul float %110, %129
  %131 = fmul float %113, %129
  %132 = fmul float %116, %129
  br label %133

133:                                              ; preds = %127, %99
  %134 = phi float [ %131, %127 ], [ 0.000000e+00, %99 ]
  %135 = phi float [ %130, %127 ], [ 0.000000e+00, %99 ]
  %136 = phi float [ %132, %127 ], [ 0.000000e+00, %99 ]
  %137 = phi float [ %128, %127 ], [ 0.000000e+00, %99 ]
  %138 = fmul float %120, %120
  %139 = call float @llvm.fmuladd.f32(float %118, float %118, float %138)
  %140 = call float @llvm.fmuladd.f32(float %122, float %122, float %139)
  %141 = fcmp ogt float %140, 0x38AA95A5C0000000
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = call float @sqrtf(float noundef %140) #5
  %144 = fdiv float 1.000000e+00, %143
  %145 = fmul float %118, %144
  %146 = fmul float %120, %144
  %147 = fmul float %122, %144
  br label %148

148:                                              ; preds = %133, %142
  %149 = phi float [ %146, %142 ], [ 0.000000e+00, %133 ]
  %150 = phi float [ %145, %142 ], [ 0.000000e+00, %133 ]
  %151 = phi float [ %147, %142 ], [ 0.000000e+00, %133 ]
  %152 = phi float [ %143, %142 ], [ 0.000000e+00, %133 ]
  %153 = fadd float %137, %152
  %154 = fmul float %134, %149
  %155 = call float @llvm.fmuladd.f32(float %135, float %150, float %154)
  %156 = call float @llvm.fmuladd.f32(float %136, float %151, float %155)
  %157 = call float @llvm.fabs.f32(float %156)
  %158 = call float @sqrtf(float noundef %157) #5
  %159 = fsub float 2.000000e+00, %158
  %160 = call float @llvm.fmuladd.f32(float %159, float 5.000000e-01, float 1.000000e+00)
  %161 = fmul float %153, %160
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  br label %162

162:                                              ; preds = %148, %96
  %163 = phi float [ %161, %148 ], [ 1.000000e+00, %96 ]
  %164 = load float, ptr %85, align 4, !tbaa !57
  %165 = fadd float %163, %164
  %166 = sext i32 %98 to i64
  %167 = getelementptr inbounds float, ptr %48, i64 %166
  %168 = load float, ptr %167, align 4, !tbaa !57
  %169 = fcmp ogt float %168, %165
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  store float %165, ptr %167, align 4, !tbaa !57
  %171 = getelementptr inbounds ptr, ptr %45, i64 %166
  store ptr %69, ptr %171, align 8, !tbaa !34
  %172 = call ptr @BLI_heap_insert(ptr noundef %49, float noundef %165, ptr noundef %91) #5
  br label %173

173:                                              ; preds = %170, %162, %88
  %174 = getelementptr inbounds %struct.BMLoop, ptr %89, i64 0, i32 4
  %175 = load ptr, ptr %174, align 8, !tbaa !79
  %176 = icmp eq ptr %175, %87
  br i1 %176, label %177, label %88, !llvm.loop !80

177:                                              ; preds = %173
  %178 = load ptr, ptr %60, align 8, !tbaa !42
  %179 = call ptr %178(ptr noundef nonnull %10) #5
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %86, !llvm.loop !81

181:                                              ; preds = %177, %76
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #5
  br label %182

182:                                              ; preds = %181, %71
  %183 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %49) #5
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %68, label %185, !llvm.loop !82

185:                                              ; preds = %182, %68, %36
  %186 = phi ptr [ null, %36 ], [ %69, %68 ], [ %69, %182 ]
  %187 = icmp eq ptr %186, %2
  br i1 %187, label %188, label %196

188:                                              ; preds = %185, %188
  %189 = phi ptr [ %194, %188 ], [ %186, %185 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %11, ptr noundef %189) #5
  %190 = getelementptr inbounds %struct.BMHeader, ptr %189, i64 0, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !51
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %45, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !34
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %188, !llvm.loop !83

196:                                              ; preds = %188, %185
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %197(ptr noundef %45) #5
  %198 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %198(ptr noundef %48) #5
  call void @BLI_heap_free(ptr noundef %49, ptr noundef null) #5
  %199 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  ret ptr %199
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!38 = !{!39, !36, i64 60}
!39 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 40}
!42 = !{!39, !35, i64 48}
!43 = !{!44, !35, i64 32}
!44 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !46, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !47, i64 960, !35, i64 976, !47, i64 984, !35, i64 1000}
!45 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!46 = !{!"short", !36, i64 0}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !36, i64 13}
!50 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = !{!50, !40, i64 8}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!44, !36, i64 28}
!56 = !{!44, !40, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !36, i64 0}
!59 = !{!60, !35, i64 24}
!60 = !{!"BMEdge", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !61, i64 48, !61, i64 64}
!61 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!62 = !{!60, !35, i64 32}
!63 = distinct !{!63, !53, !54}
!64 = distinct !{!64, !53, !54}
!65 = distinct !{!65, !53, !54}
!66 = !{!44, !35, i64 40}
!67 = distinct !{!67, !53, !54}
!68 = !{!44, !40, i64 4}
!69 = distinct !{!69, !53, !54}
!70 = distinct !{!70, !53, !54}
!71 = distinct !{!71, !53, !54}
!72 = distinct !{!72, !53, !54}
!73 = !{!44, !35, i64 56}
!74 = distinct !{!74, !53, !54}
!75 = !{!44, !40, i64 12}
!76 = !{!77, !35, i64 32}
!77 = !{!"BMLoop", !50, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!78 = !{!77, !35, i64 24}
!79 = !{!77, !35, i64 40}
!80 = distinct !{!80, !53, !54}
!81 = distinct !{!81, !53, !54}
!82 = distinct !{!82, !53, !54}
!83 = distinct !{!83, !53, !54}
