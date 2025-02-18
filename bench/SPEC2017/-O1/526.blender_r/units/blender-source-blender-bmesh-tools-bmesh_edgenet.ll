; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_edgenet.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_edgenet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.VertNetInfo = type { ptr, i32, i32, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_edgenet = private unnamed_addr constant [16 x i8] c"BM_mesh_edgenet\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_edgenet(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = load i32, ptr %0, align 8, !tbaa !38
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 24
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @__func__.BM_mesh_edgenet) #3
  %15 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 512, i32 noundef 0) #3
  %16 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 512, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  store i32 1, ptr %7, align 4, !tbaa !44
  %17 = icmp eq i8 %1, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %19, align 4, !tbaa !45
  %20 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  store ptr %23, ptr %6, align 8, !tbaa !50
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %24 = load ptr, ptr %21, align 8, !tbaa !48
  %25 = call ptr %24(ptr noundef nonnull %6) #3
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %18, %42
  %28 = phi ptr [ %49, %42 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.BMHeader, ptr %28, i64 0, i32 3
  %30 = load i8, ptr %29, align 1, !tbaa !51
  %31 = and i8 %30, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = icmp eq ptr %39, %35
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %27, %33, %37
  %43 = phi i32 [ 0, %27 ], [ 1, %33 ], [ %41, %37 ]
  %44 = icmp eq i32 %43, 0
  %45 = and i8 %30, -17
  %46 = select i1 %44, i8 0, i8 16
  %47 = or disjoint i8 %46, %45
  store i8 %47, ptr %29, align 1, !tbaa !51
  %48 = load ptr, ptr %21, align 8, !tbaa !48
  %49 = call ptr %48(ptr noundef nonnull %6) #3
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %27, !llvm.loop !58

51:                                               ; preds = %42, %18, %3
  call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %0, i8 noundef zeroext 9) #3
  %52 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %53 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %54 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %56 = icmp eq i8 %2, 0
  %57 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  br label %58

58:                                               ; preds = %152, %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #3
  br label %59

59:                                               ; preds = %77, %58
  %60 = load ptr, ptr %5, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %80, label %62

62:                                               ; preds = %59
  %63 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %5, ptr noundef %15) #3
  %64 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !51
  %66 = and i8 %65, 16
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !56
  %75 = icmp eq ptr %74, %70
  %76 = zext i1 %75 to i8
  br label %77

77:                                               ; preds = %72, %68, %62
  %78 = phi i8 [ 0, %62 ], [ 1, %68 ], [ %76, %72 ]
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %59, label %107, !llvm.loop !61

80:                                               ; preds = %59
  store i8 2, ptr %52, align 4, !tbaa !45
  store ptr @bmiter__elem_of_mesh_begin, ptr %53, align 8, !tbaa !47
  store ptr @bmiter__elem_of_mesh_step, ptr %54, align 8, !tbaa !48
  %81 = load ptr, ptr %55, align 8, !tbaa !49
  store ptr %81, ptr %4, align 8, !tbaa !50
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #3
  %82 = load ptr, ptr %54, align 8, !tbaa !48
  %83 = call ptr %82(ptr noundef nonnull %4) #3
  %84 = icmp eq ptr %83, null
  br i1 %84, label %107, label %85

85:                                               ; preds = %80, %103
  %86 = phi ptr [ %105, %103 ], [ %83, %80 ]
  %87 = getelementptr inbounds %struct.BMHeader, ptr %86, i64 0, i32 3
  %88 = load i8, ptr %87, align 1, !tbaa !51
  %89 = and i8 %88, 16
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.BMEdge, ptr %86, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !53
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.BMLoop, ptr %93, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !56
  %98 = icmp eq ptr %97, %93
  %99 = zext i1 %98 to i8
  br label %100

100:                                              ; preds = %95, %91, %85
  %101 = phi i8 [ 0, %85 ], [ 1, %91 ], [ %99, %95 ]
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load ptr, ptr %54, align 8, !tbaa !48
  %105 = call ptr %104(ptr noundef nonnull %4) #3
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %85, !llvm.loop !62

107:                                              ; preds = %77, %100, %103, %80
  %108 = phi ptr [ null, %80 ], [ null, %103 ], [ %86, %100 ], [ %63, %77 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  %109 = icmp eq ptr %108, null
  br i1 %109, label %153, label %110

110:                                              ; preds = %107
  %111 = call fastcc ptr @bm_edgenet_path_calc_best(ptr noundef nonnull %108, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %14, ptr noundef %16)
  %112 = icmp eq ptr %111, null
  br i1 %112, label %152, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %8, align 4, !tbaa !44
  %115 = call fastcc ptr @bm_edgenet_face_from_path(ptr noundef nonnull %0, ptr noundef nonnull %111, i32 noundef %114)
  %116 = getelementptr inbounds %struct.BMFace, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !63
  br label %118

118:                                              ; preds = %139, %113
  %119 = phi ptr [ %117, %113 ], [ %141, %139 ]
  %120 = getelementptr inbounds %struct.BMLoop, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !65
  %122 = getelementptr inbounds %struct.BMHeader, ptr %121, i64 0, i32 3
  %123 = load i8, ptr %122, align 1, !tbaa !51
  %124 = and i8 %123, 16
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.BMEdge, ptr %121, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !53
  %129 = icmp eq ptr %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.BMLoop, ptr %128, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !56
  %133 = icmp eq ptr %132, %128
  %134 = zext i1 %133 to i8
  br label %135

135:                                              ; preds = %118, %126, %130
  %136 = phi i8 [ 0, %118 ], [ 1, %126 ], [ %134, %130 ]
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %5, ptr noundef %121, ptr noundef %15) #3
  br label %139

139:                                              ; preds = %135, %138
  %140 = getelementptr inbounds %struct.BMLoop, ptr %119, i64 0, i32 6
  %141 = load ptr, ptr %140, align 8, !tbaa !66
  %142 = icmp eq ptr %141, %117
  br i1 %142, label %143, label %118, !llvm.loop !67

143:                                              ; preds = %139
  br i1 %56, label %148, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.BMHeader, ptr %115, i64 0, i32 3
  %146 = load i8, ptr %145, align 1, !tbaa !51
  %147 = or i8 %146, 16
  store i8 %147, ptr %145, align 1, !tbaa !51
  br label %148

148:                                              ; preds = %144, %143
  %149 = load i32, ptr %57, align 4, !tbaa !68
  %150 = add nsw i32 %149, -1
  %151 = getelementptr inbounds %struct.BMHeader, ptr %115, i64 0, i32 1
  store i32 %150, ptr %151, align 8, !tbaa !69
  br label %152

152:                                              ; preds = %148, %110
  call void @BLI_linklist_free_pool(ptr noundef %111, ptr noundef null, ptr noundef %16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  br i1 %109, label %154, label %58

153:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  br label %154

154:                                              ; preds = %152, %153
  %155 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %156 = load i8, ptr %155, align 4, !tbaa !70
  %157 = or i8 %156, 12
  store i8 %157, ptr %155, align 4, !tbaa !70
  call void @BLI_mempool_destroy(ptr noundef %15) #3
  call void @BLI_mempool_destroy(ptr noundef %16) #3
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %158(ptr noundef %14) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_edgenet_path_calc_best(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  %10 = load i32, ptr %1, align 4, !tbaa !44
  %11 = call fastcc ptr @bm_edgenet_path_calc(ptr noundef %0, i32 noundef %10, i32 noundef -1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef %4, ptr noundef %5)
  %12 = load i32, ptr %1, align 4, !tbaa !44
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %1, align 4, !tbaa !44
  %14 = icmp eq ptr %11, null
  br i1 %14, label %66, label %15

15:                                               ; preds = %6
  %16 = load i32, ptr %7, align 4, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %2, align 4, !tbaa !44
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = alloca i8, i64 %21, align 16
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %11, %18 ], [ %30, %23 ]
  %25 = phi i32 [ 0, %18 ], [ %31, %23 ]
  %26 = getelementptr inbounds %struct.LinkNode, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds ptr, ptr %22, i64 %28
  store ptr %27, ptr %29, align 8, !tbaa !34
  %30 = load ptr, ptr %24, align 8, !tbaa !73
  %31 = add i32 %25, 1
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %23, !llvm.loop !74

33:                                               ; preds = %23
  %34 = icmp eq i32 %19, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %33
  %36 = add i32 %19, -1
  %37 = zext i32 %19 to i64
  br label %38

38:                                               ; preds = %35, %61
  %39 = phi i64 [ 0, %35 ], [ %63, %61 ]
  %40 = phi ptr [ %11, %35 ], [ %62, %61 ]
  %41 = phi i32 [ %36, %35 ], [ %64, %61 ]
  %42 = getelementptr inbounds ptr, ptr %22, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = zext i32 %41 to i64
  %45 = getelementptr inbounds ptr, ptr %22, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = tail call ptr @BM_edge_exists(ptr noundef %43, ptr noundef %46) #3
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %61, label %49

49:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  %50 = load i32, ptr %1, align 4, !tbaa !44
  %51 = load i32, ptr %7, align 4, !tbaa !44
  %52 = call fastcc ptr @bm_edgenet_path_calc(ptr noundef %47, i32 noundef %50, i32 noundef %51, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4, ptr noundef %5)
  %53 = load i32, ptr %1, align 4, !tbaa !44
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %1, align 4, !tbaa !44
  %55 = icmp eq ptr %52, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  tail call void @BLI_linklist_free_pool(ptr noundef %40, ptr noundef null, ptr noundef %5) #3
  %57 = load i32, ptr %8, align 4, !tbaa !44
  store i32 %57, ptr %2, align 4, !tbaa !44
  %58 = load i32, ptr %9, align 4, !tbaa !44
  store i32 %58, ptr %3, align 4, !tbaa !44
  store i32 %58, ptr %7, align 4, !tbaa !44
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi ptr [ %52, %56 ], [ %40, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  br label %61

61:                                               ; preds = %59, %38
  %62 = phi ptr [ %60, %59 ], [ %40, %38 ]
  %63 = add nuw nsw i64 %39, 1
  %64 = trunc i64 %39 to i32
  %65 = icmp eq i64 %63, %37
  br i1 %65, label %66, label %38, !llvm.loop !75

66:                                               ; preds = %61, %33, %15, %6
  %67 = phi ptr [ null, %6 ], [ %11, %15 ], [ %11, %33 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  ret ptr %67
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_edgenet_face_from_path(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = alloca i8, i64 %5, align 16
  %7 = alloca i8, i64 %5, align 16
  %8 = icmp eq ptr %1, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %16, %9 ], [ %1, %3 ]
  %11 = phi i32 [ %17, %9 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.LinkNode, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %6, i64 %14
  store ptr %13, ptr %15, align 8, !tbaa !34
  %16 = load ptr, ptr %10, align 8, !tbaa !73
  %17 = add i32 %11, 1
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %9, !llvm.loop !76

19:                                               ; preds = %9, %3
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %19
  %22 = add i32 %2, -1
  %23 = zext i32 %2 to i64
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ 0, %21 ], [ %34, %24 ]
  %26 = phi i32 [ %22, %21 ], [ %35, %24 ]
  %27 = getelementptr inbounds ptr, ptr %6, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds ptr, ptr %6, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = tail call ptr @BM_edge_exists(ptr noundef %28, ptr noundef %31) #3
  %33 = getelementptr inbounds ptr, ptr %7, i64 %29
  store ptr %32, ptr %33, align 8, !tbaa !34
  %34 = add nuw nsw i64 %25, 1
  %35 = trunc i64 %25 to i32
  %36 = icmp eq i64 %34, %23
  br i1 %36, label %37, label %24, !llvm.loop !77

37:                                               ; preds = %24, %19
  %38 = call ptr @BM_face_create(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %2, ptr noundef null, i32 noundef 0) #3
  ret ptr %38
}

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_linklist_free_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_edgenet_path_calc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !69
  br label %20

20:                                               ; preds = %7, %15
  %21 = phi i32 [ %19, %15 ], [ -1, %7 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  store ptr null, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #3
  store ptr null, ptr %10, align 8, !tbaa !34
  store i32 0, ptr %3, align 4, !tbaa !44
  store i32 0, ptr %4, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.BMHeader, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !69
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %26
  %28 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !80
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !69
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %32
  %34 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %26, i32 1
  store i32 %1, ptr %34, align 8, !tbaa !81
  %35 = sub nsw i32 0, %1
  %36 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %32, i32 1
  store i32 %35, ptr %36, align 8, !tbaa !81
  store ptr %29, ptr %27, align 8, !tbaa !83
  store ptr %23, ptr %33, align 8, !tbaa !83
  %37 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %32, i32 2
  store i32 %21, ptr %37, align 4, !tbaa !84
  %38 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %26, i32 2
  store i32 %21, ptr %38, align 4, !tbaa !84
  %39 = icmp eq i32 %21, -1
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %32, i32 3
  store i32 %40, ptr %41, align 8, !tbaa !85
  %42 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %26, i32 3
  store i32 %40, ptr %42, align 8, !tbaa !85
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %9, ptr noundef %23, ptr noundef %6) #3
  %43 = load ptr, ptr %28, align 8, !tbaa !80
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %9, ptr noundef %43, ptr noundef %6) #3
  %44 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %45 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %46 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %47

47:                                               ; preds = %244, %20
  %48 = phi i32 [ 0, %20 ], [ %245, %244 ]
  %49 = phi ptr [ undef, %20 ], [ %56, %244 ]
  %50 = icmp eq i32 %48, %2
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load ptr, ptr %10, align 8, !tbaa !34
  call void @BLI_linklist_free_pool(ptr noundef %52, ptr noundef null, ptr noundef %6) #3
  %53 = load ptr, ptr %9, align 8, !tbaa !34
  call void @BLI_linklist_free_pool(ptr noundef %53, ptr noundef null, ptr noundef %6) #3
  br label %252

54:                                               ; preds = %47, %241
  %55 = phi i8 [ %242, %241 ], [ 0, %47 ]
  %56 = phi ptr [ %243, %241 ], [ %49, %47 ]
  %57 = load ptr, ptr %9, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %244, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %10, align 8, !tbaa !34
  %61 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %9, ptr noundef %6) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #3
  br label %62

62:                                               ; preds = %185, %59
  %63 = phi ptr [ %61, %59 ], [ %186, %185 ]
  %64 = phi ptr [ undef, %59 ], [ %181, %185 ]
  %65 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !69
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %67
  store i8 4, ptr %44, align 4, !tbaa !45
  store ptr @bmiter__edge_of_vert_begin, ptr %45, align 8, !tbaa !47
  store ptr @bmiter__edge_of_vert_step, ptr %46, align 8, !tbaa !48
  store ptr %63, ptr %8, align 8, !tbaa !50
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %8) #3
  %69 = load ptr, ptr %46, align 8, !tbaa !48
  %70 = call ptr %69(ptr noundef nonnull %8) #3
  %71 = icmp eq ptr %70, null
  br i1 %71, label %178, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %67, i32 1
  %74 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %67, i32 3
  %75 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %67, i32 2
  %76 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %67, i32 3
  br label %77

77:                                               ; preds = %72, %174
  %78 = phi ptr [ %64, %72 ], [ %172, %174 ]
  %79 = phi i32 [ 0, %72 ], [ %171, %174 ]
  %80 = phi i32 [ 0, %72 ], [ %170, %174 ]
  %81 = phi ptr [ %70, %72 ], [ %176, %174 ]
  %82 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !79
  %84 = icmp eq ptr %83, %63
  %85 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !80
  %87 = icmp eq ptr %86, %63
  %88 = select i1 %87, ptr %83, ptr null
  %89 = select i1 %84, ptr %86, ptr %88
  %90 = load ptr, ptr %68, align 8, !tbaa !83
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %169, label %92

92:                                               ; preds = %77
  %93 = getelementptr inbounds %struct.BMHeader, ptr %81, i64 0, i32 3
  %94 = load i8, ptr %93, align 1, !tbaa !51
  %95 = and i8 %94, 16
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !53
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !56
  %104 = icmp eq ptr %103, %99
  %105 = zext i1 %104 to i8
  br label %106

106:                                              ; preds = %101, %97, %92
  %107 = phi i8 [ 0, %92 ], [ 1, %97 ], [ %105, %101 ]
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %165, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !69
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %112
  %114 = load i32, ptr %73, align 8, !tbaa !81
  %115 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %112, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !81
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %161, label %118

118:                                              ; preds = %109
  %119 = sub nsw i32 0, %116
  %120 = icmp eq i32 %114, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load i32, ptr %76, align 8, !tbaa !85
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %112, i32 3
  %127 = load i32, ptr %126, align 8, !tbaa !85
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %161, label %130

130:                                              ; preds = %125, %121
  %131 = call fastcc zeroext i8 @bm_edgenet_path_check_overlap(ptr noundef %63, ptr noundef %89, ptr noundef %5)
  %132 = icmp ne i8 %131, 0
  %133 = select i1 %132, ptr %78, ptr %81
  br label %161

134:                                              ; preds = %118
  %135 = getelementptr inbounds %struct.BMEdge, ptr %81, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !53
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.BMLoop, ptr %136, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !78
  %141 = getelementptr inbounds %struct.BMHeader, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !69
  br label %143

143:                                              ; preds = %138, %134
  %144 = phi i32 [ %142, %138 ], [ -1, %134 ]
  %145 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %112, i32 2
  store i32 %144, ptr %145, align 4, !tbaa !84
  store i32 %114, ptr %115, align 8, !tbaa !81
  store ptr %63, ptr %113, align 8, !tbaa !83
  %146 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %112, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !85
  %148 = and i32 %147, -2
  store i32 %148, ptr %146, align 8, !tbaa !85
  %149 = load i32, ptr %74, align 8, !tbaa !85
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  %152 = icmp eq i32 %144, -1
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %143
  %155 = load i32, ptr %75, align 4, !tbaa !84
  %156 = icmp eq i32 %144, %155
  br i1 %156, label %159, label %157

157:                                              ; preds = %154, %143
  %158 = or i32 %147, 1
  store i32 %158, ptr %146, align 8, !tbaa !85
  br label %159

159:                                              ; preds = %157, %154
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %10, ptr noundef %89, ptr noundef %6) #3
  %160 = add i32 %79, 1
  br label %161

161:                                              ; preds = %159, %130, %125, %109
  %162 = phi i32 [ %79, %125 ], [ %160, %159 ], [ %79, %109 ], [ %79, %130 ]
  %163 = phi ptr [ %78, %125 ], [ %78, %159 ], [ %78, %109 ], [ %133, %130 ]
  %164 = phi i1 [ true, %125 ], [ true, %159 ], [ true, %109 ], [ %132, %130 ]
  br i1 %164, label %165, label %169

165:                                              ; preds = %161, %106
  %166 = phi i32 [ %162, %161 ], [ %79, %106 ]
  %167 = phi ptr [ %163, %161 ], [ %78, %106 ]
  %168 = add i32 %80, 1
  br label %169

169:                                              ; preds = %165, %161, %77
  %170 = phi i32 [ %80, %161 ], [ %168, %165 ], [ %80, %77 ]
  %171 = phi i32 [ %162, %161 ], [ %166, %165 ], [ %79, %77 ]
  %172 = phi ptr [ %163, %161 ], [ %167, %165 ], [ %78, %77 ]
  %173 = phi i1 [ false, %161 ], [ true, %165 ], [ true, %77 ]
  br i1 %173, label %174, label %187

174:                                              ; preds = %169
  %175 = load ptr, ptr %46, align 8, !tbaa !48
  %176 = call ptr %175(ptr noundef nonnull %8) #3
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %77, !llvm.loop !86

178:                                              ; preds = %174, %62
  %179 = phi i32 [ 0, %62 ], [ %170, %174 ]
  %180 = phi i32 [ 0, %62 ], [ %171, %174 ]
  %181 = phi ptr [ %64, %62 ], [ %172, %174 ]
  %182 = icmp eq i32 %180, 1
  %183 = icmp eq i32 %179, 1
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %10, ptr noundef %6) #3
  br label %62

187:                                              ; preds = %178, %169
  %188 = phi ptr [ %172, %169 ], [ null, %178 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #3
  %189 = icmp eq ptr %188, null
  br i1 %189, label %237, label %190

190:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #3
  store ptr null, ptr %11, align 8, !tbaa !34
  %191 = load ptr, ptr %10, align 8, !tbaa !34
  call void @BLI_linklist_free_pool(ptr noundef %191, ptr noundef null, ptr noundef %6) #3
  %192 = load ptr, ptr %9, align 8, !tbaa !34
  call void @BLI_linklist_free_pool(ptr noundef %192, ptr noundef null, ptr noundef %6) #3
  %193 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !79
  %195 = getelementptr inbounds %struct.BMHeader, ptr %194, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !69
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %197, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !81
  br label %200

200:                                              ; preds = %200, %190
  %201 = phi i64 [ %197, %190 ], [ %209, %200 ]
  %202 = phi ptr [ %194, %190 ], [ %206, %200 ]
  %203 = phi i32 [ 0, %190 ], [ %205, %200 ]
  %204 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %201
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %11, ptr noundef %202, ptr noundef %6) #3
  %205 = add i32 %203, 1
  %206 = load ptr, ptr %204, align 8, !tbaa !83
  %207 = getelementptr inbounds %struct.BMHeader, ptr %206, i64 0, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !69
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %209, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !81
  %212 = icmp eq i32 %211, %199
  br i1 %212, label %200, label %213, !llvm.loop !87

213:                                              ; preds = %200
  call void @BLI_linklist_reverse(ptr noundef nonnull %11) #3
  %214 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !80
  %216 = getelementptr inbounds %struct.BMHeader, ptr %215, i64 0, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !69
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %218, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !81
  br label %221

221:                                              ; preds = %221, %213
  %222 = phi i64 [ %218, %213 ], [ %230, %221 ]
  %223 = phi ptr [ %215, %213 ], [ %227, %221 ]
  %224 = phi i32 [ 0, %213 ], [ %226, %221 ]
  %225 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %222
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %11, ptr noundef %223, ptr noundef %6) #3
  %226 = add i32 %224, 1
  %227 = load ptr, ptr %225, align 8, !tbaa !83
  %228 = getelementptr inbounds %struct.BMHeader, ptr %227, i64 0, i32 1
  %229 = load i32, ptr %228, align 8, !tbaa !69
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.VertNetInfo, ptr %5, i64 %230, i32 1
  %232 = load i32, ptr %231, align 8, !tbaa !81
  %233 = icmp eq i32 %232, %220
  br i1 %233, label %221, label %234, !llvm.loop !87

234:                                              ; preds = %221
  %235 = add i32 %226, %205
  store i32 %235, ptr %3, align 4, !tbaa !44
  store i32 %48, ptr %4, align 4, !tbaa !44
  %236 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #3
  br label %241

237:                                              ; preds = %187
  %238 = load ptr, ptr %10, align 8, !tbaa !34
  %239 = icmp eq ptr %60, %238
  %240 = select i1 %239, i8 %55, i8 1
  br label %241

241:                                              ; preds = %237, %234
  %242 = phi i8 [ %55, %234 ], [ %240, %237 ]
  %243 = phi ptr [ %236, %234 ], [ %56, %237 ]
  br i1 %189, label %54, label %252, !llvm.loop !88

244:                                              ; preds = %54
  %245 = add i32 %48, 1
  %246 = load ptr, ptr %10, align 8, !tbaa !34
  store ptr %246, ptr %9, align 8, !tbaa !34
  store ptr null, ptr %10, align 8, !tbaa !34
  %247 = icmp eq i8 %55, 0
  br i1 %247, label %248, label %47, !llvm.loop !89

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %250 = load i8, ptr %249, align 1, !tbaa !51
  %251 = and i8 %250, -17
  store i8 %251, ptr %249, align 1, !tbaa !51
  br label %252

252:                                              ; preds = %241, %248, %51
  %253 = phi ptr [ null, %51 ], [ null, %248 ], [ %243, %241 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  ret ptr %253
}

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_linklist_reverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bm_edgenet_path_check_overlap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  store ptr null, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #3
  store ptr %0, ptr %5, align 16, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr %1, ptr %6, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %3, %33
  %8 = phi i64 [ 0, %3 ], [ %34, %33 ]
  %9 = phi i32 [ 0, %3 ], [ %25, %33 ]
  %10 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.BMHeader, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !69
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %14, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !81
  br label %17

17:                                               ; preds = %17, %7
  %18 = phi i32 [ %22, %17 ], [ %9, %7 ]
  %19 = phi ptr [ %26, %17 ], [ %11, %7 ]
  %20 = phi i64 [ %29, %17 ], [ %14, %7 ]
  %21 = phi i32 [ %25, %17 ], [ %9, %7 ]
  %22 = add i32 %18, 1
  %23 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %20
  %24 = alloca [16 x i8], align 16
  call void @BLI_linklist_prepend_nlink(ptr noundef nonnull %4, ptr noundef %19, ptr noundef nonnull %24) #3
  %25 = add i32 %21, 1
  %26 = load ptr, ptr %23, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !69
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.VertNetInfo, ptr %2, i64 %29, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !81
  %32 = icmp eq i32 %31, %16
  br i1 %32, label %17, label %33, !llvm.loop !90

33:                                               ; preds = %17
  %34 = add nuw nsw i64 %8, 1
  %35 = icmp eq i64 %8, 0
  br i1 %35, label %7, label %36, !llvm.loop !91

36:                                               ; preds = %33
  %37 = icmp eq i32 %25, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %36
  %39 = zext i32 %25 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = alloca i8, i64 %40, align 16
  %42 = zext i32 %22 to i64
  br label %43

43:                                               ; preds = %38, %43
  %44 = phi i64 [ 0, %38 ], [ %50, %43 ]
  %45 = phi ptr [ %4, %38 ], [ %46, %43 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.LinkNode, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !71
  %49 = getelementptr inbounds ptr, ptr %41, i64 %44
  store ptr %48, ptr %49, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !92

52:                                               ; preds = %43
  %53 = call zeroext i8 @BM_face_exists_overlap_subset(ptr noundef nonnull %41, i32 noundef %25) #3
  br label %54

54:                                               ; preds = %36, %52
  %55 = phi i8 [ %53, %52 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  ret i8 %55
}

declare void @BLI_linklist_prepend_nlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_face_exists_overlap_subset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!38 = !{!39, !40, i64 0}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!40, !40, i64 0}
!45 = !{!46, !36, i64 60}
!46 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!47 = !{!46, !35, i64 40}
!48 = !{!46, !35, i64 48}
!49 = !{!39, !35, i64 40}
!50 = !{!36, !36, i64 0}
!51 = !{!52, !36, i64 13}
!52 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!53 = !{!54, !35, i64 40}
!54 = !{!"BMEdge", !52, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !55, i64 48, !55, i64 64}
!55 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!56 = !{!57, !35, i64 40}
!57 = !{!"BMLoop", !52, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
!62 = distinct !{!62, !59, !60}
!63 = !{!64, !35, i64 24}
!64 = !{!"BMFace", !52, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!65 = !{!57, !35, i64 24}
!66 = !{!57, !35, i64 56}
!67 = distinct !{!67, !59, !60}
!68 = !{!39, !40, i64 12}
!69 = !{!52, !40, i64 8}
!70 = !{!39, !36, i64 28}
!71 = !{!72, !35, i64 8}
!72 = !{!"LinkNode", !35, i64 0, !35, i64 8}
!73 = !{!72, !35, i64 0}
!74 = distinct !{!74, !59, !60}
!75 = distinct !{!75, !59, !60}
!76 = distinct !{!76, !59, !60}
!77 = distinct !{!77, !59, !60}
!78 = !{!57, !35, i64 32}
!79 = !{!54, !35, i64 24}
!80 = !{!54, !35, i64 32}
!81 = !{!82, !40, i64 8}
!82 = !{!"VertNetInfo", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16}
!83 = !{!82, !35, i64 0}
!84 = !{!82, !40, i64 12}
!85 = !{!82, !40, i64 16}
!86 = distinct !{!86, !59, !60}
!87 = distinct !{!87, !59, !60}
!88 = distinct !{!88, !59, !60}
!89 = distinct !{!89, !59, !60}
!90 = distinct !{!90, !59, !60}
!91 = distinct !{!91, !59, !60}
!92 = distinct !{!92, !59, !60}
