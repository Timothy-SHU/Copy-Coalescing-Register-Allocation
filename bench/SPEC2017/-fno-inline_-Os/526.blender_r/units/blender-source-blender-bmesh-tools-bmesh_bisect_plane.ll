; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_bisect_plane.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_bisect_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_bisect_plane = private unnamed_addr constant [21 x i8] c"BM_mesh_bisect_plane\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_bisect_plane(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef signext %4, float noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.BMIter, align 8
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !38
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %11(i64 noundef %15, ptr noundef nonnull @__func__.BM_mesh_bisect_plane) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  %17 = icmp eq i8 %3, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %6
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %57, label %21

21:                                               ; preds = %18, %34
  %22 = phi i32 [ %35, %34 ], [ 0, %18 ]
  %23 = phi ptr [ %36, %34 ], [ %19, %18 ]
  %24 = call fastcc zeroext i8 @edge_is_cut_test(ptr noundef nonnull %23) #15, !range !44
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = add i32 %22, 1
  %28 = zext i32 %22 to i64
  %29 = getelementptr inbounds ptr, ptr %16, i64 %28
  store ptr %23, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  call fastcc void @_bm_elem_flag_enable(ptr noundef %31) #15
  %32 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  call fastcc void @_bm_elem_flag_enable(ptr noundef %33) #15
  br label %34

34:                                               ; preds = %21, %26
  %35 = phi i32 [ %27, %26 ], [ %22, %21 ]
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %21, !llvm.loop !50

38:                                               ; preds = %6
  %39 = load i32, ptr %12, align 4, !tbaa !38
  %40 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38, %42
  %43 = phi i32 [ %48, %42 ], [ 0, %38 ]
  %44 = phi ptr [ %47, %42 ], [ %40, %38 ]
  call fastcc void @edge_is_cut_enable(ptr noundef nonnull %44) #15
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds ptr, ptr %16, i64 %45
  store ptr %44, ptr %46, align 8, !tbaa !34
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #15
  %48 = add i32 %43, 1
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %42, !llvm.loop !52

50:                                               ; preds = %42, %38
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %55, %53 ], [ %51, %50 ]
  call fastcc void @face_in_stack_disable(ptr noundef nonnull %54) #15
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %53, !llvm.loop !53

57:                                               ; preds = %34, %53, %18, %50
  %58 = phi i32 [ %39, %50 ], [ 0, %18 ], [ %39, %53 ], [ %35, %34 ]
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %57
  %62 = icmp eq i16 %4, 0
  %63 = icmp eq i8 %2, 0
  br label %64

64:                                               ; preds = %61, %84
  %65 = phi ptr [ %59, %61 ], [ %85, %84 ]
  br i1 %17, label %72, label %66

66:                                               ; preds = %64
  %67 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %65) #15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  call fastcc void @vert_is_center_disable(ptr noundef nonnull %65) #15
  %70 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 1
  store i16 0, ptr %70, align 8, !tbaa !54
  %71 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 3
  store float 0.000000e+00, ptr %71, align 4, !tbaa !55
  br label %84

72:                                               ; preds = %66, %64
  call fastcc void @vert_is_center_disable(ptr noundef nonnull %65) #15
  %73 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 2
  %74 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 3
  %75 = call fastcc signext i16 @plane_point_test_v3(ptr noundef %1, ptr noundef nonnull %73, float noundef %5, ptr noundef nonnull %74) #15, !range !57
  %76 = getelementptr inbounds %struct.BMHeader, ptr %65, i64 0, i32 1
  store i16 %75, ptr %76, align 8, !tbaa !54
  %77 = icmp eq i16 %75, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  br i1 %62, label %82, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !58
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %81, i16 noundef signext %4) #15
  br label %82

82:                                               ; preds = %79, %78
  br i1 %63, label %84, label %83

83:                                               ; preds = %82
  call void @closest_to_plane_v3(ptr noundef nonnull %73, ptr noundef %1, ptr noundef nonnull %73) #13
  br label %84

84:                                               ; preds = %72, %83, %82, %69
  %85 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #15
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %64, !llvm.loop !60

87:                                               ; preds = %84, %57
  store ptr null, ptr %7, align 8, !tbaa !34
  %88 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #13
  %89 = icmp eq i32 %58, 0
  br i1 %89, label %190, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds i32, ptr %9, i64 1
  %92 = icmp eq i16 %4, 0
  %93 = icmp ne i16 %4, 0
  %94 = zext i32 %58 to i64
  br label %95

95:                                               ; preds = %90, %187
  %96 = phi i64 [ 0, %90 ], [ %188, %187 ]
  %97 = getelementptr inbounds ptr, ptr %16, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %99 = getelementptr inbounds %struct.BMEdge, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !45
  %101 = getelementptr inbounds %struct.BMHeader, ptr %100, i64 0, i32 1
  %102 = load i16, ptr %101, align 8, !tbaa !54
  %103 = sext i16 %102 to i32
  store i32 %103, ptr %9, align 4, !tbaa !61
  %104 = getelementptr inbounds %struct.BMEdge, ptr %98, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !49
  %106 = getelementptr inbounds %struct.BMHeader, ptr %105, i64 0, i32 1
  %107 = load i16, ptr %106, align 8, !tbaa !54
  %108 = sext i16 %107 to i32
  store i32 %108, ptr %91, align 4, !tbaa !61
  %109 = icmp eq i16 %102, 0
  %110 = icmp eq i16 %107, 0
  %111 = select i1 %109, i1 true, i1 %110
  %112 = icmp eq i16 %102, %107
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %148, label %114

114:                                              ; preds = %95
  %115 = getelementptr inbounds %struct.BMVert, ptr %105, i64 0, i32 3
  %116 = load float, ptr %115, align 4, !tbaa !55
  %117 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 3
  %118 = load float, ptr %117, align 4, !tbaa !55
  %119 = fsub float %118, %116
  %120 = fdiv float %118, %119
  %121 = call float @llvm.fabs.f32(float %120)
  %122 = getelementptr inbounds %struct.BMEdge, ptr %98, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !62
  %124 = icmp eq ptr %123, null
  br i1 %124, label %139, label %125

125:                                              ; preds = %114, %133
  %126 = phi ptr [ %135, %133 ], [ %123, %114 ]
  %127 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !63
  %129 = call fastcc zeroext i8 @face_in_stack_test(ptr noundef %128) #15, !range !44
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  call fastcc void @face_in_stack_enable(ptr noundef %128) #15
  %132 = load ptr, ptr %127, align 8, !tbaa !63
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %7, ptr noundef %132, ptr noundef %88) #13
  br label %133

133:                                              ; preds = %125, %131
  %134 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !65
  %136 = icmp eq ptr %135, %123
  br i1 %136, label %137, label %125, !llvm.loop !66

137:                                              ; preds = %133
  %138 = load ptr, ptr %99, align 8, !tbaa !45
  br label %139

139:                                              ; preds = %137, %114
  %140 = phi ptr [ %138, %137 ], [ %100, %114 ]
  %141 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef nonnull %98, ptr noundef %140, ptr noundef null, float noundef %121) #13
  call fastcc void @vert_is_center_enable(ptr noundef %141) #15
  br i1 %92, label %145, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.BMVert, ptr %141, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !58
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %144, i16 noundef signext %4) #15
  br label %145

145:                                              ; preds = %142, %139
  %146 = getelementptr inbounds %struct.BMHeader, ptr %141, i64 0, i32 1
  store i16 0, ptr %146, align 8, !tbaa !54
  %147 = getelementptr inbounds %struct.BMVert, ptr %141, i64 0, i32 3
  store float 0.000000e+00, ptr %147, align 4, !tbaa !55
  br label %187

148:                                              ; preds = %95
  br i1 %111, label %149, label %187

149:                                              ; preds = %148
  %150 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 7, ptr noundef nonnull %98) #15
  %151 = icmp eq ptr %150, null
  br i1 %151, label %181, label %152

152:                                              ; preds = %149, %177
  %153 = phi i32 [ %179, %177 ], [ 0, %149 ]
  %154 = phi ptr [ %178, %177 ], [ %150, %149 ]
  %155 = zext i32 %153 to i64
  %156 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !61
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %152
  %160 = call fastcc zeroext i8 @vert_is_center_test(ptr noundef nonnull %154) #15, !range !44
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #14
  call fastcc void @vert_is_center_enable(ptr noundef nonnull %154) #15
  %163 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %154) #15
  %164 = icmp eq ptr %163, null
  br i1 %164, label %176, label %165

165:                                              ; preds = %162, %173
  %166 = phi ptr [ %174, %173 ], [ %163, %162 ]
  %167 = getelementptr inbounds %struct.BMLoop, ptr %166, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !63
  %169 = call fastcc zeroext i8 @face_in_stack_test(ptr noundef %168) #15, !range !44
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  call fastcc void @face_in_stack_enable(ptr noundef %168) #15
  %172 = load ptr, ptr %167, align 8, !tbaa !63
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %7, ptr noundef %172, ptr noundef %88) #13
  br label %173

173:                                              ; preds = %165, %171
  %174 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #15
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %165, !llvm.loop !67

176:                                              ; preds = %173, %162
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #14
  br label %177

177:                                              ; preds = %152, %176, %159
  %178 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #15
  %179 = add i32 %153, 1
  %180 = icmp eq ptr %178, null
  br i1 %180, label %181, label %152, !llvm.loop !68

181:                                              ; preds = %177, %149
  %182 = and i1 %93, %109
  %183 = select i1 %182, i1 %110, i1 false
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.BMEdge, ptr %98, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !69
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %186, i16 noundef signext %4) #15
  br label %187

187:                                              ; preds = %181, %184, %148, %145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  %188 = add nuw nsw i64 %96, 1
  %189 = icmp eq i64 %188, %94
  br i1 %189, label %190, label %95, !llvm.loop !70

190:                                              ; preds = %187, %87
  %191 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %191(ptr noundef %16) #13
  %192 = load ptr, ptr %7, align 8, !tbaa !34
  %193 = icmp eq ptr %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %190, %197
  %195 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %7, ptr noundef %88) #13
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  call fastcc void @bm_face_bisect_verts(ptr noundef %0, ptr noundef nonnull %195, ptr noundef %1, i16 noundef signext %4) #15
  %198 = load ptr, ptr %7, align 8, !tbaa !34
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %194, !llvm.loop !71

200:                                              ; preds = %194, %197, %190
  call void @BLI_mempool_destroy(ptr noundef %88) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !72 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #15
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @edge_is_cut_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !73 {
  %2 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0) #15
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !75
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @edge_is_cut_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !79 {
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @face_in_stack_disable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !80 {
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !75
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @vert_is_center_disable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !82 {
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc signext i16 @plane_point_test_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !83 {
  %5 = tail call fastcc float @plane_point_side_v3(ptr noundef %0, ptr noundef %1) #15
  store float %5, ptr %3, align 4, !tbaa !55
  %6 = fneg float %2
  %7 = fcmp ugt float %5, %6
  %8 = fcmp oge float %5, %2
  %9 = zext i1 %8 to i16
  %10 = select i1 %7, i16 %9, i16 -1
  ret i16 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !84 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !86
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !86
  ret void
}

; Function Attrs: optsize
declare void @closest_to_plane_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @face_in_stack_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !88 {
  %2 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0) #15
  %3 = icmp eq i8 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @face_in_stack_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !89 {
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @vert_is_center_enable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !90 {
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @vert_is_center_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !91 {
  %2 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0) #15
  %3 = icmp ne i8 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_bisect_verts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #0 !PGOFuncName !92 {
  %5 = alloca [3 x i8], align 1
  %6 = alloca ptr, align 8
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !93
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = alloca i8, i64 %12, align 16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i64 3, i1 false)
  %14 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  br label %16

16:                                               ; preds = %45, %4
  %17 = phi ptr [ %15, %4 ], [ %46, %45 ]
  %18 = phi i32 [ 0, %4 ], [ %47, %45 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = tail call fastcc zeroext i8 @vert_is_center_test(ptr noundef %20) #15, !range !44
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  br label %45

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !96
  %37 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 1
  %38 = load i16, ptr %37, align 8, !tbaa !54
  %39 = icmp eq i16 %32, %38
  %40 = zext i1 %39 to i16
  %41 = getelementptr inbounds i8, ptr %20, i64 10
  store i16 %40, ptr %41, align 2, !tbaa !54
  %42 = add i32 %18, 1
  %43 = zext i32 %18 to i64
  %44 = getelementptr inbounds ptr, ptr %13, i64 %43
  store ptr %20, ptr %44, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %23, %26
  %46 = phi ptr [ %34, %26 ], [ %25, %23 ]
  %47 = phi i32 [ %42, %26 ], [ %18, %23 ]
  %48 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 1
  %49 = load i16, ptr %48, align 8, !tbaa !54
  %50 = sext i16 %49 to i64
  %51 = add nsw i64 %50, 1
  %52 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 %51
  store i8 1, ptr %52, align 1, !tbaa !99
  %53 = icmp eq ptr %46, %15
  br i1 %53, label %54, label %16, !llvm.loop !100

54:                                               ; preds = %45
  %55 = icmp ugt i32 %47, 1
  %56 = load i8, ptr %5, align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  %59 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 2
  %60 = load i8, ptr %59, align 1
  %61 = icmp ne i8 %60, 0
  %62 = select i1 %58, i1 %61, i1 false
  br i1 %62, label %63, label %193

63:                                               ; preds = %54
  %64 = icmp eq i32 %47, 2
  br i1 %64, label %65, label %89

65:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %66 = load ptr, ptr %13, align 16, !tbaa !34
  %67 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %66) #13
  %68 = getelementptr inbounds ptr, ptr %13, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = tail call ptr @BM_face_vert_share_loop(ptr noundef %1, ptr noundef %69) #13
  %71 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %1, ptr noundef %67, ptr noundef %70, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 1) #13
  %72 = load ptr, ptr %6, align 8, !tbaa !34
  %73 = icmp ne ptr %72, null
  %74 = icmp ne i16 %3, 0
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %88

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !101
  %79 = getelementptr inbounds %struct.BMEdge, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !69
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %80, i16 noundef signext %3) #15
  %81 = load ptr, ptr %6, align 8, !tbaa !34
  %82 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !63
  %84 = getelementptr inbounds %struct.BMFace, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !102
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %85, i16 noundef signext %3) #15
  %86 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !102
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %87, i16 noundef signext %3) #15
  br label %88

88:                                               ; preds = %76, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %193

89:                                               ; preds = %63
  %90 = alloca i8, i64 %12, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #14
  %91 = zext i32 %47 to i64
  %92 = shl nuw nsw i64 %91, 3
  %93 = alloca i8, i64 %92, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  %94 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %94, ptr noundef %2) #15
  %95 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #15
  %96 = fcmp oeq float %95, 0.000000e+00
  br i1 %96, label %97, label %112

97:                                               ; preds = %89
  %98 = load ptr, ptr %13, align 16, !tbaa !34
  %99 = getelementptr inbounds %struct.BMVert, ptr %98, i64 0, i32 2
  br label %100

100:                                              ; preds = %97, %109
  %101 = phi i64 [ 0, %97 ], [ %110, %109 ]
  %102 = getelementptr inbounds ptr, ptr %13, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = getelementptr inbounds %struct.BMVert, ptr %103, i64 0, i32 2
  %105 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %99, ptr noundef nonnull %104) #15, !range !44
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %99, ptr noundef nonnull %104) #15
  %108 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #15
  br label %109

109:                                              ; preds = %100, %107
  %110 = add nuw nsw i64 %101, 1
  %111 = icmp eq i64 %110, %91
  br i1 %111, label %192, label %100, !llvm.loop !103

112:                                              ; preds = %89
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %7, ptr noundef nonnull %94) #13
  br label %113

113:                                              ; preds = %113, %112
  %114 = phi i32 [ 0, %112 ], [ %122, %113 ]
  %115 = phi ptr [ %15, %112 ], [ %124, %113 ]
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !96
  %118 = getelementptr inbounds %struct.BMVert, ptr %117, i64 0, i32 3, i64 2
  store i32 %114, ptr %118, align 4, !tbaa !61
  %119 = zext i32 %114 to i64
  %120 = getelementptr inbounds [2 x float], ptr %90, i64 %119
  %121 = getelementptr inbounds %struct.BMVert, ptr %117, i64 0, i32 2
  call void @mul_v2_m3v3(ptr noundef nonnull %120, ptr noundef nonnull %7, ptr noundef nonnull %121) #13
  %122 = add i32 %114, 1
  %123 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !97
  %125 = icmp eq ptr %124, %15
  br i1 %125, label %126, label %113, !llvm.loop !104

126:                                              ; preds = %113
  %127 = call i32 @llvm.umax.i32(i32 %47, i32 1)
  %128 = zext i32 %127 to i64
  br label %129

129:                                              ; preds = %126, %129
  %130 = phi i64 [ 0, %126 ], [ %136, %129 ]
  %131 = getelementptr inbounds ptr, ptr %13, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !34
  %133 = getelementptr inbounds %struct.BMVert, ptr %132, i64 0, i32 2
  %134 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %133) #15
  %135 = getelementptr inbounds %struct.BMVert, ptr %132, i64 0, i32 3, i64 1
  store float %134, ptr %135, align 4, !tbaa !55
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %128
  br i1 %137, label %138, label %129, !llvm.loop !105

138:                                              ; preds = %129
  call void @qsort(ptr noundef nonnull %13, i64 noundef %91, i64 noundef 8, ptr noundef nonnull @bm_vert_sortval_cb) #13
  store ptr %1, ptr %93, align 16, !tbaa !34
  %139 = add i32 %47, -1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %192, label %141

141:                                              ; preds = %138
  %142 = zext i32 %139 to i64
  br label %143

143:                                              ; preds = %141, %189
  %144 = phi i64 [ 0, %141 ], [ %149, %189 ]
  %145 = phi i8 [ 0, %141 ], [ %157, %189 ]
  %146 = phi i32 [ 1, %141 ], [ %190, %189 ]
  %147 = getelementptr inbounds ptr, ptr %13, i64 %144
  %148 = load ptr, ptr %147, align 8, !tbaa !34
  %149 = add nuw nsw i64 %144, 1
  %150 = getelementptr inbounds ptr, ptr %13, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !34
  %152 = getelementptr inbounds i8, ptr %148, i64 10
  %153 = load i16, ptr %152, align 2, !tbaa !54
  %154 = icmp eq i16 %153, 0
  %155 = icmp eq i8 %145, 0
  %156 = zext i1 %155 to i8
  %157 = select i1 %154, i8 %156, i8 %145
  %158 = icmp ne i8 %157, 0
  %159 = icmp ne i32 %146, 0
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %161, label %189

161:                                              ; preds = %143
  %162 = zext i32 %146 to i64
  br label %163

163:                                              ; preds = %161, %172
  %164 = phi i64 [ 0, %161 ], [ %173, %172 ]
  %165 = getelementptr inbounds ptr, ptr %93, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !34
  %167 = call ptr @BM_face_vert_share_loop(ptr noundef %166, ptr noundef %148) #13
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %163
  %170 = call ptr @BM_face_vert_share_loop(ptr noundef %166, ptr noundef %151) #13
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %163, %169
  %173 = add nuw nsw i64 %164, 1
  %174 = icmp eq i64 %173, %162
  br i1 %174, label %189, label %163, !llvm.loop !106

175:                                              ; preds = %169
  %176 = call fastcc zeroext i8 @BM_loop_is_adjacent(ptr noundef nonnull %167, ptr noundef nonnull %170) #15, !range !44
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = and i64 %164, 4294967295
  %180 = getelementptr inbounds ptr, ptr %93, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !34
  %182 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %181, ptr noundef nonnull %167, ptr noundef nonnull %170, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #13
  %183 = icmp eq ptr %182, null
  %184 = icmp eq ptr %182, %181
  %185 = or i1 %183, %184
  br i1 %185, label %189, label %186

186:                                              ; preds = %178
  %187 = add i32 %146, 1
  %188 = getelementptr inbounds ptr, ptr %93, i64 %162
  store ptr %182, ptr %188, align 8, !tbaa !34
  br label %189

189:                                              ; preds = %172, %175, %186, %178, %143
  %190 = phi i32 [ %146, %143 ], [ %146, %175 ], [ %187, %186 ], [ %146, %178 ], [ %146, %172 ]
  %191 = icmp eq i64 %149, %142
  br i1 %191, label %192, label %143, !llvm.loop !107

192:                                              ; preds = %189, %109, %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #14
  br label %193

193:                                              ; preds = %192, %54, %88
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !108 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !109
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %21 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !110
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  br label %22

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !110
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  br label %22

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !110
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !77
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  br label %22

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !110
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !77
  br label %22

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !110
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !77
  br label %22

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !110
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !77
  br label %22

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !110
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !77
  br label %22

21:                                               ; preds = %4
  unreachable

22:                                               ; preds = %20, %19, %18, %17, %14, %11, %8
  %23 = phi ptr [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %24 = phi ptr [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %23, ptr %0, align 8, !tbaa !99
  tail call void %24(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !75
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @plane_point_side_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !115 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %0) #15
  %4 = getelementptr inbounds float, ptr %0, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = fadd float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !116 {
  %3 = load float, ptr %0, align 4, !tbaa !55
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !117 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !55
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !55
  %15 = load float, ptr %8, align 4, !tbaa !55
  %16 = load float, ptr %2, align 4, !tbaa !55
  %17 = load float, ptr %1, align 4, !tbaa !55
  %18 = load float, ptr %6, align 4, !tbaa !55
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !55
  %23 = load float, ptr %1, align 4, !tbaa !55
  %24 = load float, ptr %10, align 4, !tbaa !55
  %25 = load float, ptr %4, align 4, !tbaa !55
  %26 = load float, ptr %2, align 4, !tbaa !55
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !118 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !119 {
  %3 = load float, ptr %0, align 4, !tbaa !55
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !55
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !120 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = load float, ptr %2, align 4, !tbaa !55
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !55
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @bm_vert_sortval_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !PGOFuncName !121 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 3, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = fcmp ogt float %5, %8
  %10 = fcmp olt float %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_loop_is_adjacent(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !123 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !124 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !125 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !55
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }

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
!38 = !{!39, !40, i64 4}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{i8 0, i8 2}
!45 = !{!46, !35, i64 24}
!46 = !{!"BMEdge", !47, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !48, i64 48, !48, i64 64}
!47 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!48 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!49 = !{!46, !35, i64 32}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = !{!42, !42, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !36, i64 0}
!57 = !{i16 -1, i16 2}
!58 = !{!59, !35, i64 16}
!59 = !{!"BMVert", !47, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!60 = distinct !{!60, !51}
!61 = !{!40, !40, i64 0}
!62 = !{!46, !35, i64 40}
!63 = !{!64, !35, i64 32}
!64 = !{!"BMLoop", !47, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!65 = !{!64, !35, i64 40}
!66 = distinct !{!66, !51}
!67 = distinct !{!67, !51}
!68 = distinct !{!68, !51}
!69 = !{!46, !35, i64 16}
!70 = distinct !{!70, !51}
!71 = distinct !{!71, !51}
!72 = !{!"bmesh_bisect_plane.c:BM_iter_new"}
!73 = !{!"bmesh_bisect_plane.c:edge_is_cut_test"}
!74 = !{!"bmesh_bisect_plane.c:_bm_elem_flag_enable"}
!75 = !{!47, !36, i64 13}
!76 = !{!"bmesh_bisect_plane.c:BM_iter_step"}
!77 = !{!78, !35, i64 48}
!78 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!79 = !{!"bmesh_bisect_plane.c:edge_is_cut_enable"}
!80 = !{!"bmesh_bisect_plane.c:face_in_stack_disable"}
!81 = !{!"bmesh_bisect_plane.c:_bm_elem_flag_test"}
!82 = !{!"bmesh_bisect_plane.c:vert_is_center_disable"}
!83 = !{!"bmesh_bisect_plane.c:plane_point_test_v3"}
!84 = !{!"bmesh_bisect_plane.c:_bmo_elem_flag_enable"}
!85 = !{!39, !40, i64 128}
!86 = !{!87, !42, i64 0}
!87 = !{!"BMFlagLayer", !42, i64 0}
!88 = !{!"bmesh_bisect_plane.c:face_in_stack_test"}
!89 = !{!"bmesh_bisect_plane.c:face_in_stack_enable"}
!90 = !{!"bmesh_bisect_plane.c:vert_is_center_enable"}
!91 = !{!"bmesh_bisect_plane.c:vert_is_center_test"}
!92 = !{!"bmesh_bisect_plane.c:bm_face_bisect_verts"}
!93 = !{!94, !40, i64 32}
!94 = !{!"BMFace", !47, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!95 = !{!94, !35, i64 24}
!96 = !{!64, !35, i64 16}
!97 = !{!64, !35, i64 56}
!98 = !{!64, !35, i64 64}
!99 = !{!36, !36, i64 0}
!100 = distinct !{!100, !51}
!101 = !{!64, !35, i64 24}
!102 = !{!94, !35, i64 16}
!103 = distinct !{!103, !51}
!104 = distinct !{!104, !51}
!105 = distinct !{!105, !51}
!106 = distinct !{!106, !51}
!107 = distinct !{!107, !51}
!108 = !{!"bmesh_bisect_plane.c:BM_iter_init"}
!109 = !{!78, !36, i64 60}
!110 = !{!78, !35, i64 40}
!111 = !{!39, !35, i64 32}
!112 = !{!39, !35, i64 40}
!113 = !{!39, !35, i64 56}
!114 = !{!"bmesh_bisect_plane.c:_bm_elem_flag_disable"}
!115 = !{!"bmesh_bisect_plane.c:plane_point_side_v3"}
!116 = !{!"bmesh_bisect_plane.c:dot_v3v3"}
!117 = !{!"bmesh_bisect_plane.c:cross_v3_v3v3"}
!118 = !{!"bmesh_bisect_plane.c:normalize_v3"}
!119 = !{!"bmesh_bisect_plane.c:equals_v3v3"}
!120 = !{!"bmesh_bisect_plane.c:sub_v3_v3v3"}
!121 = !{!"bmesh_bisect_plane.c:bm_vert_sortval_cb"}
!122 = !{!"bmesh_bisect_plane.c:BM_loop_is_adjacent"}
!123 = !{!"bmesh_bisect_plane.c:normalize_v3_v3"}
!124 = !{!"bmesh_bisect_plane.c:mul_v3_v3fl"}
!125 = !{!"bmesh_bisect_plane.c:zero_v3"}
