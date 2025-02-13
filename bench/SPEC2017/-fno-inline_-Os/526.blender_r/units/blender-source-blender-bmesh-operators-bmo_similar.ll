; ModuleID = 'blender/source/blender/bmesh/operators/bmo_similar.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_similar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.SimSel_FaceExt = type { ptr, [3 x float], %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.SimSel_EdgeExt = type { ptr, %union.anon.2, %union.anon.3 }
%union.anon.2 = type { [3 x float] }
%union.anon.3 = type { float }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.SimSel_VertExt = type { ptr, %union.anon.4 }
%union.anon.4 = type { ptr }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"face indices util.c\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"f_ext util.c\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@__func__.bmo_similar_edges_exec = private unnamed_addr constant [23 x i8] c"bmo_similar_edges_exec\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"vertex indices\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"vertex extra\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_similar_faces_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMOIter, align 8
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %6 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #11
  %7 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  %8 = fmul float %7, 0x400921FB60000000
  %9 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #11
  %10 = tail call i32 @BM_mesh_elem_count(ptr noundef %0, i8 noundef zeroext 8) #11
  %11 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 8) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %2, %22
  %14 = phi ptr [ %24, %22 ], [ %11, %2 ]
  %15 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.BMFace, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %17) #12
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %17) #12
  %21 = add nsw i32 %15, 1
  br label %22

22:                                               ; preds = %13, %20
  %23 = phi i32 [ %15, %13 ], [ %21, %20 ]
  %24 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %13, !llvm.loop !42

26:                                               ; preds = %22, %2
  %27 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %29 = sext i32 %27 to i64
  %30 = shl nsw i64 %29, 2
  %31 = call ptr %28(i64 noundef %30, ptr noundef nonnull @.str.4) #11
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %33 = sext i32 %10 to i64
  %34 = shl nsw i64 %33, 5
  %35 = call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.5) #11
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %26, %52
  %39 = phi i64 [ %54, %52 ], [ 0, %26 ]
  %40 = phi ptr [ %55, %52 ], [ %36, %26 ]
  %41 = phi i32 [ %53, %52 ], [ 0, %26 ]
  %42 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %39
  store ptr %40, ptr %42, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.BMFace, ptr %40, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %44) #12
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = sext i32 %41 to i64
  %49 = getelementptr inbounds i32, ptr %31, i64 %48
  %50 = trunc i64 %39 to i32
  store i32 %50, ptr %49, align 4, !tbaa !47
  %51 = add nsw i32 %41, 1
  br label %52

52:                                               ; preds = %47, %38
  %53 = phi i32 [ %51, %47 ], [ %41, %38 ]
  %54 = add nuw i64 %39, 1
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %38, !llvm.loop !48

57:                                               ; preds = %52, %26
  switch i32 %6, label %96 [
    i32 207, label %58
    i32 205, label %58
    i32 203, label %58
    i32 202, label %58
  ]

58:                                               ; preds = %57, %57, %57, %57
  %59 = icmp sgt i32 %10, 0
  br i1 %59, label %60, label %181

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %62 = zext nneg i32 %10 to i64
  br label %63

63:                                               ; preds = %60, %93
  %64 = phi i64 [ 0, %60 ], [ %94, %93 ]
  switch i32 %6, label %93 [
    i32 205, label %65
    i32 207, label %70
    i32 203, label %78
    i32 202, label %83
  ]

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = call float @BM_face_calc_perimeter(ptr noundef %67) #11
  %69 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64, i32 2
  store float %68, ptr %69, align 8, !tbaa !49
  br label %93

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  %73 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64, i32 1
  call void @BM_face_calc_center_mean(ptr noundef %72, ptr noundef nonnull %73) #11
  %74 = load ptr, ptr %71, align 8, !tbaa !45
  %75 = getelementptr inbounds %struct.BMFace, ptr %74, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %75) #12
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #12
  %76 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %73) #12
  %77 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64, i32 2
  store float %76, ptr %77, align 8, !tbaa !49
  br label %93

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64
  %80 = load ptr, ptr %79, align 8, !tbaa !45
  %81 = call float @BM_face_calc_area(ptr noundef %80) #11
  %82 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64, i32 2
  store float %81, ptr %82, align 8, !tbaa !49
  br label %93

83:                                               ; preds = %63
  %84 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64, i32 2
  store ptr null, ptr %84, align 8, !tbaa !49
  %85 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %61, i32 noundef 15) #11
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %64
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = load ptr, ptr %89, align 8, !tbaa !50
  %91 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %61, ptr noundef %90, i32 noundef 15) #11
  %92 = load ptr, ptr %91, align 8, !tbaa !51
  store ptr %92, ptr %84, align 8, !tbaa !49
  br label %93

93:                                               ; preds = %65, %70, %78, %63, %87, %83
  %94 = add nuw nsw i64 %64, 1
  %95 = icmp eq i64 %94, %62
  br i1 %95, label %96, label %63, !llvm.loop !53

96:                                               ; preds = %93, %57
  %97 = icmp sgt i32 %10, 0
  br i1 %97, label %98, label %181

98:                                               ; preds = %96
  %99 = icmp slt i32 %27, 1
  %100 = zext nneg i32 %10 to i64
  br label %101

101:                                              ; preds = %98, %178
  %102 = phi i64 [ 0, %98 ], [ %179, %178 ]
  %103 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !45
  %105 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %106) #12
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %178

109:                                              ; preds = %101
  %110 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %104, i8 noundef zeroext 2) #12, !range !54
  %111 = icmp ne i8 %110, 0
  %112 = or i1 %111, %99
  br i1 %112, label %178, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %102, i32 2
  %115 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 3
  %116 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 4
  %117 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 5
  br label %118

118:                                              ; preds = %113, %173
  %119 = phi i64 [ 0, %113 ], [ %174, %173 ]
  %120 = getelementptr inbounds i32, ptr %31, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !47
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !45
  switch i32 %6, label %173 [
    i32 201, label %125
    i32 202, label %130
    i32 206, label %135
    i32 207, label %139
    i32 203, label %152
    i32 204, label %159
    i32 205, label %166
  ]

125:                                              ; preds = %118
  %126 = load i16, ptr %117, align 8, !tbaa !55
  %127 = getelementptr inbounds %struct.BMFace, ptr %124, i64 0, i32 5
  %128 = load i16, ptr %127, align 8, !tbaa !55
  %129 = icmp eq i16 %126, %128
  br i1 %129, label %176, label %173

130:                                              ; preds = %118
  %131 = load ptr, ptr %114, align 8, !tbaa !49
  %132 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %122, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !49
  %134 = icmp eq ptr %131, %133
  br i1 %134, label %176, label %173

135:                                              ; preds = %118
  %136 = getelementptr inbounds %struct.BMFace, ptr %124, i64 0, i32 4
  %137 = call float @angle_normalized_v3v3(ptr noundef nonnull %136, ptr noundef nonnull %116) #11
  %138 = fcmp ugt float %137, %8
  br i1 %138, label %173, label %176

139:                                              ; preds = %118
  %140 = getelementptr inbounds %struct.BMFace, ptr %124, i64 0, i32 4
  %141 = call float @angle_normalized_v3v3(ptr noundef nonnull %140, ptr noundef nonnull %116) #11
  %142 = fcmp ugt float %141, %8
  br i1 %142, label %173, label %143

143:                                              ; preds = %139
  %144 = load float, ptr %114, align 8, !tbaa !49
  %145 = load i32, ptr %120, align 4, !tbaa !47
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %146, i32 2
  %148 = load float, ptr %147, align 8, !tbaa !49
  %149 = fsub float %144, %148
  %150 = call fastcc i32 @bm_sel_similar_cmp_fl(float noundef %149, float noundef %7, i32 noundef %9) #12, !range !56
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %173, label %176

152:                                              ; preds = %118
  %153 = load float, ptr %114, align 8, !tbaa !49
  %154 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %122, i32 2
  %155 = load float, ptr %154, align 8, !tbaa !49
  %156 = fsub float %153, %155
  %157 = call fastcc i32 @bm_sel_similar_cmp_fl(float noundef %156, float noundef %7, i32 noundef %9) #12, !range !56
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %173, label %176

159:                                              ; preds = %118
  %160 = load i32, ptr %115, align 8, !tbaa !57
  %161 = getelementptr inbounds %struct.BMFace, ptr %124, i64 0, i32 3
  %162 = load i32, ptr %161, align 8, !tbaa !57
  %163 = sub nsw i32 %160, %162
  %164 = call fastcc i32 @bm_sel_similar_cmp_i(i32 noundef %163, i32 noundef %9) #12, !range !56
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %173, label %176

166:                                              ; preds = %118
  %167 = load float, ptr %114, align 8, !tbaa !49
  %168 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %35, i64 %122, i32 2
  %169 = load float, ptr %168, align 8, !tbaa !49
  %170 = fsub float %167, %169
  %171 = call fastcc i32 @bm_sel_similar_cmp_fl(float noundef %170, float noundef %7, i32 noundef %9) #12, !range !56
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %125, %130, %135, %143, %139, %152, %159, %166, %118
  %174 = add nuw nsw i64 %119, 1
  %175 = icmp slt i64 %174, %29
  br i1 %175, label %118, label %178, !llvm.loop !58

176:                                              ; preds = %166, %159, %152, %143, %135, %130, %125
  %177 = load ptr, ptr %105, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %177) #12
  br label %178

178:                                              ; preds = %173, %176, %109, %101
  %179 = add nuw nsw i64 %102, 1
  %180 = icmp eq i64 %179, %100
  br i1 %180, label %181, label %101, !llvm.loop !59

181:                                              ; preds = %178, %58, %96
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %182(ptr noundef %35) #11
  %183 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %183(ptr noundef %31) #11
  %184 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %184, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_mesh_elem_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !65
  %9 = and i16 %8, 1
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 !PGOFuncName !67 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !65
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 2, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !68 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #12
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = tail call ptr %3(ptr noundef %0) #11
  ret ptr %4
}

; Function Attrs: optsize
declare float @BM_face_calc_perimeter(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !72 {
  %3 = load float, ptr %1, align 4, !tbaa !73
  store float %3, ptr %0, align 4, !tbaa !73
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !75 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !76 {
  %3 = load float, ptr %0, align 4, !tbaa !73
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare float @BM_face_calc_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !78
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @bm_sel_similar_cmp_fl(float noundef %0, float noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !79 {
  switch i32 %2, label %13 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
  ]

4:                                                ; preds = %3
  %5 = tail call float @llvm.fabs.f32(float %0)
  %6 = fcmp ole float %5, %1
  br label %13

7:                                                ; preds = %3
  %8 = fadd float %0, %1
  %9 = fcmp oge float %8, 0.000000e+00
  br label %13

10:                                               ; preds = %3
  %11 = fsub float %0, %1
  %12 = fcmp ole float %11, 0.000000e+00
  br label %13

13:                                               ; preds = %3, %10, %7, %4
  %14 = phi i1 [ %12, %10 ], [ %9, %7 ], [ %6, %4 ], [ false, %3 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @bm_sel_similar_cmp_i(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !80 {
  switch i32 %1, label %11 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
  ]

3:                                                ; preds = %2
  %4 = icmp eq i32 %0, 0
  %5 = zext i1 %4 to i32
  br label %11

6:                                                ; preds = %2
  %7 = icmp sgt i32 %0, 0
  %8 = zext i1 %7 to i32
  br label %11

9:                                                ; preds = %2
  %10 = lshr i32 %0, 31
  br label %11

11:                                               ; preds = %2, %9, %6, %3
  %12 = phi i32 [ %10, %9 ], [ %8, %6 ], [ %5, %3 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_similar_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #11
  %6 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  %7 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #11
  switch i32 %5, label %16 [
    i32 105, label %8
    i32 106, label %12
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %9, i32 noundef 30) #11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %211, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %14 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %13, i32 noundef 29) #11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %211, label %16

16:                                               ; preds = %12, %8, %2
  %17 = tail call i32 @BM_mesh_elem_count(ptr noundef %0, i8 noundef zeroext 2) #11
  %18 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 2) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %26, %20 ], [ %18, %16 ]
  %22 = phi i32 [ %25, %20 ], [ 0, %16 ]
  %23 = getelementptr inbounds %struct.BMEdge, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %24) #12
  %25 = add nuw nsw i32 %22, 1
  %26 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20, !llvm.loop !84

28:                                               ; preds = %20, %16
  %29 = phi i32 [ 0, %16 ], [ %25, %20 ]
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %31 = zext i32 %29 to i64
  %32 = shl nuw nsw i64 %31, 2
  %33 = call ptr %30(i64 noundef %32, ptr noundef nonnull @__func__.bmo_similar_edges_exec) #11
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %35 = sext i32 %17 to i64
  %36 = mul nsw i64 %35, 24
  %37 = call ptr %34(i64 noundef %36, ptr noundef nonnull @__func__.bmo_similar_edges_exec) #11
  %38 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %28, %54
  %41 = phi i64 [ %56, %54 ], [ 0, %28 ]
  %42 = phi ptr [ %57, %54 ], [ %38, %28 ]
  %43 = phi i32 [ %55, %54 ], [ 0, %28 ]
  %44 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %41
  store ptr %42, ptr %44, align 8, !tbaa !85
  %45 = getelementptr inbounds %struct.BMEdge, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !81
  %47 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %46) #12
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = sext i32 %43 to i64
  %51 = getelementptr inbounds i32, ptr %33, i64 %50
  %52 = trunc i64 %41 to i32
  store i32 %52, ptr %51, align 4, !tbaa !47
  %53 = add nsw i32 %43, 1
  br label %54

54:                                               ; preds = %49, %40
  %55 = phi i32 [ %53, %49 ], [ %43, %40 ]
  %56 = add nuw i64 %41, 1
  %57 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %40, !llvm.loop !87

59:                                               ; preds = %54, %28
  %60 = add i32 %5, -101
  %61 = icmp ult i32 %60, 4
  %62 = icmp sgt i32 %17, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %107

64:                                               ; preds = %59
  %65 = zext nneg i32 %17 to i64
  br label %66

66:                                               ; preds = %64, %104
  %67 = phi i64 [ 0, %64 ], [ %105, %104 ]
  switch i32 %5, label %104 [
    i32 101, label %68
    i32 102, label %79
    i32 103, label %89
    i32 104, label %94
  ]

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !85
  %71 = getelementptr inbounds %struct.BMEdge, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !88
  %73 = getelementptr inbounds %struct.BMVert, ptr %72, i64 0, i32 2
  %74 = getelementptr inbounds %struct.BMEdge, ptr %70, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !89
  %76 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 2
  %77 = call fastcc float @len_v3v3(ptr noundef nonnull %73, ptr noundef nonnull %76) #12
  %78 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67, i32 2
  store float %77, ptr %78, align 4, !tbaa !49
  br label %104

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67
  %81 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67, i32 1
  %82 = load ptr, ptr %80, align 8, !tbaa !85
  %83 = getelementptr inbounds %struct.BMEdge, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !88
  %85 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 2
  %86 = getelementptr inbounds %struct.BMEdge, ptr %82, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !89
  %88 = getelementptr inbounds %struct.BMVert, ptr %87, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %81, ptr noundef nonnull %85, ptr noundef nonnull %88) #12
  call fastcc void @normalize_v3(ptr noundef nonnull %81) #12
  br label %104

89:                                               ; preds = %66
  %90 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67
  %91 = load ptr, ptr %90, align 8, !tbaa !85
  %92 = call i32 @BM_edge_face_count(ptr noundef %91) #11
  %93 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67, i32 2
  store i32 %92, ptr %93, align 4, !tbaa !49
  br label %104

94:                                               ; preds = %66
  %95 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67
  %96 = load ptr, ptr %95, align 8, !tbaa !85
  %97 = call i32 @BM_edge_face_count(ptr noundef %96) #11
  %98 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67, i32 2
  store i32 %97, ptr %98, align 4, !tbaa !49
  %99 = icmp eq i32 %97, 2
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load ptr, ptr %95, align 8, !tbaa !85
  %102 = call float @BM_edge_calc_face_angle(ptr noundef %101) #11
  %103 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %67, i32 1
  store float %102, ptr %103, align 8, !tbaa !49
  br label %104

104:                                              ; preds = %68, %79, %89, %66, %100, %94
  %105 = add nuw nsw i64 %67, 1
  %106 = icmp eq i64 %105, %65
  br i1 %106, label %107, label %66, !llvm.loop !90

107:                                              ; preds = %104, %59
  br i1 %62, label %108, label %207

108:                                              ; preds = %107
  %109 = icmp eq i32 %29, 0
  %110 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %111 = zext nneg i32 %17 to i64
  br label %112

112:                                              ; preds = %108, %204
  %113 = phi i64 [ 0, %108 ], [ %205, %204 ]
  %114 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !85
  %116 = getelementptr inbounds %struct.BMEdge, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !81
  %118 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %117) #12
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %204

120:                                              ; preds = %112
  %121 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %115, i8 noundef zeroext 2) #12, !range !54
  %122 = icmp ne i8 %121, 0
  %123 = or i1 %122, %109
  br i1 %123, label %204, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %113, i32 2
  %126 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %113, i32 1
  br label %127

127:                                              ; preds = %124, %199
  %128 = phi i64 [ 0, %124 ], [ %200, %199 ]
  %129 = getelementptr inbounds i32, ptr %33, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !47
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !85
  switch i32 %5, label %199 [
    i32 101, label %134
    i32 102, label %141
    i32 103, label %150
    i32 104, label %157
    i32 105, label %171
    i32 106, label %181
    i32 107, label %191
    i32 108, label %195
  ]

134:                                              ; preds = %127
  %135 = load float, ptr %125, align 4, !tbaa !49
  %136 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %131, i32 2
  %137 = load float, ptr %136, align 4, !tbaa !49
  %138 = fsub float %135, %137
  %139 = call fastcc i32 @bm_sel_similar_cmp_fl(float noundef %138, float noundef %6, i32 noundef %7) #12, !range !56
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %199, label %202

141:                                              ; preds = %127
  %142 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %131, i32 1
  %143 = call float @angle_normalized_v3v3(ptr noundef nonnull %126, ptr noundef nonnull %142) #11
  %144 = fcmp ogt float %143, 0x3FF921FB60000000
  %145 = fadd float %143, 0xC00921FB60000000
  %146 = call float @llvm.fabs.f32(float %145)
  %147 = select i1 %144, float %146, float %143
  %148 = fdiv float %147, 0x3FF921FB60000000
  %149 = fcmp ugt float %148, %6
  br i1 %149, label %199, label %202

150:                                              ; preds = %127
  %151 = load i32, ptr %125, align 4, !tbaa !49
  %152 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %131, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !49
  %154 = sub nsw i32 %151, %153
  %155 = call fastcc i32 @bm_sel_similar_cmp_i(i32 noundef %154, i32 noundef %7) #12, !range !56
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %199, label %202

157:                                              ; preds = %127
  %158 = load i32, ptr %125, align 4, !tbaa !49
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %204

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %131, i32 2
  %162 = load i32, ptr %161, align 4, !tbaa !49
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %199

164:                                              ; preds = %160
  %165 = load float, ptr %126, align 8, !tbaa !49
  %166 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %37, i64 %131, i32 1
  %167 = load float, ptr %166, align 8, !tbaa !49
  %168 = fsub float %165, %167
  %169 = call float @llvm.fabs.f32(float %168)
  %170 = fcmp ugt float %169, %6
  br i1 %170, label %199, label %202

171:                                              ; preds = %127
  %172 = load ptr, ptr %115, align 8, !tbaa !91
  %173 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %110, ptr noundef %172, i32 noundef 30) #11
  %174 = load ptr, ptr %133, align 8, !tbaa !91
  %175 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %110, ptr noundef %174, i32 noundef 30) #11
  %176 = load float, ptr %173, align 4, !tbaa !73
  %177 = load float, ptr %175, align 4, !tbaa !73
  %178 = fsub float %176, %177
  %179 = call fastcc i32 @bm_sel_similar_cmp_fl(float noundef %178, float noundef %6, i32 noundef %7) #12, !range !56
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %199, label %202

181:                                              ; preds = %127
  %182 = load ptr, ptr %115, align 8, !tbaa !91
  %183 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %110, ptr noundef %182, i32 noundef 29) #11
  %184 = load ptr, ptr %133, align 8, !tbaa !91
  %185 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %110, ptr noundef %184, i32 noundef 29) #11
  %186 = load float, ptr %183, align 4, !tbaa !73
  %187 = load float, ptr %185, align 4, !tbaa !73
  %188 = fsub float %186, %187
  %189 = call fastcc i32 @bm_sel_similar_cmp_fl(float noundef %188, float noundef %6, i32 noundef %7) #12, !range !56
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %199, label %202

191:                                              ; preds = %127
  %192 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %115, i8 noundef zeroext 4) #12, !range !54
  %193 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %133, i8 noundef zeroext 4) #12, !range !54
  %194 = icmp eq i8 %192, %193
  br i1 %194, label %202, label %199

195:                                              ; preds = %127
  %196 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %115, i8 noundef zeroext 8) #12, !range !54
  %197 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %133, i8 noundef zeroext 8) #12, !range !54
  %198 = icmp eq i8 %196, %197
  br i1 %198, label %202, label %199

199:                                              ; preds = %181, %171, %134, %141, %150, %160, %164, %191, %195, %127
  %200 = add nuw nsw i64 %128, 1
  %201 = icmp ult i64 %200, %31
  br i1 %201, label %127, label %204, !llvm.loop !92

202:                                              ; preds = %195, %191, %181, %171, %164, %150, %141, %134
  %203 = load ptr, ptr %116, align 8, !tbaa !81
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %203) #12
  br label %204

204:                                              ; preds = %157, %199, %202, %120, %112
  %205 = add nuw nsw i64 %113, 1
  %206 = icmp eq i64 %205, %111
  br i1 %206, label %207, label %112, !llvm.loop !93

207:                                              ; preds = %204, %107
  %208 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %208(ptr noundef %37) #11
  %209 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %209(ptr noundef %33) #11
  %210 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %210, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #11
  br label %211

211:                                              ; preds = %12, %8, %207
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !94 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #12
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !95 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = load float, ptr %2, align 4, !tbaa !73
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !73
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !73
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BM_edge_calc_face_angle(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_similar_verts_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 2) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %7 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #11
  %8 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  %9 = fmul float %8, 0x400921FB60000000
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #11
  %11 = tail call i32 @BM_mesh_elem_count(ptr noundef %0, i8 noundef zeroext 1) #11
  %12 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 1) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %20, %14 ], [ %12, %2 ]
  %16 = phi i32 [ %19, %14 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %18) #12
  %19 = add nuw nsw i32 %16, 1
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %14, !llvm.loop !98

22:                                               ; preds = %14, %2
  %23 = phi i32 [ 0, %2 ], [ %19, %14 ]
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %25 = zext i32 %23 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = call ptr %24(i64 noundef %26, ptr noundef nonnull @.str.10) #11
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %29 = sext i32 %11 to i64
  %30 = shl nsw i64 %29, 4
  %31 = call ptr %28(i64 noundef %30, ptr noundef nonnull @.str.11) #11
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = icmp eq i32 %6, -1
  %36 = sext i32 %6 to i64
  br label %42

37:                                               ; preds = %71, %22
  %38 = icmp sgt i32 %11, 0
  br i1 %38, label %39, label %133

39:                                               ; preds = %37
  %40 = icmp eq i32 %23, 0
  %41 = zext nneg i32 %11 to i64
  br label %75

42:                                               ; preds = %34, %71
  %43 = phi i64 [ 0, %34 ], [ %72, %71 ]
  %44 = phi ptr [ %32, %34 ], [ %73, %71 ]
  %45 = phi i32 [ 0, %34 ], [ %57, %71 ]
  %46 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %43
  store ptr %44, ptr %46, align 8, !tbaa !99
  %47 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  %49 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %48) #12
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = sext i32 %45 to i64
  %53 = getelementptr inbounds i32, ptr %27, i64 %52
  %54 = trunc i64 %43 to i32
  store i32 %54, ptr %53, align 4, !tbaa !47
  %55 = add nsw i32 %45, 1
  br label %56

56:                                               ; preds = %51, %42
  %57 = phi i32 [ %55, %51 ], [ %45, %42 ]
  switch i32 %7, label %71 [
    i32 1, label %58
    i32 2, label %61
    i32 3, label %68
  ]

58:                                               ; preds = %56
  %59 = call i32 @BM_vert_face_count(ptr noundef nonnull %44) #11
  %60 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %43, i32 1
  store i32 %59, ptr %60, align 8, !tbaa !49
  br label %71

61:                                               ; preds = %56
  br i1 %35, label %65, label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %44, align 8, !tbaa !101
  %64 = getelementptr inbounds i8, ptr %63, i64 %36
  br label %65

65:                                               ; preds = %61, %62
  %66 = phi ptr [ %64, %62 ], [ null, %61 ]
  %67 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %43, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !49
  br label %71

68:                                               ; preds = %56
  %69 = call i32 @BM_vert_edge_count(ptr noundef nonnull %44) #11
  %70 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %43, i32 1
  store i32 %69, ptr %70, align 8, !tbaa !49
  br label %71

71:                                               ; preds = %56, %68, %65, %58
  %72 = add nuw i64 %43, 1
  %73 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %37, label %42, !llvm.loop !102

75:                                               ; preds = %39, %130
  %76 = phi i64 [ 0, %39 ], [ %131, %130 ]
  %77 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !99
  %79 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !96
  %81 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %80) #12
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %75
  %84 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %78, i8 noundef zeroext 2) #12, !range !54
  %85 = icmp ne i8 %84, 0
  %86 = or i1 %85, %40
  br i1 %86, label %130, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %76, i32 1
  %89 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 3
  br label %90

90:                                               ; preds = %87, %125
  %91 = phi i64 [ 0, %87 ], [ %126, %125 ]
  %92 = getelementptr inbounds i32, ptr %27, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !47
  %94 = sext i32 %93 to i64
  switch i32 %7, label %125 [
    i32 0, label %95
    i32 1, label %101
    i32 2, label %108
    i32 3, label %118
  ]

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %94
  %97 = load ptr, ptr %96, align 8, !tbaa !99
  %98 = getelementptr inbounds %struct.BMVert, ptr %97, i64 0, i32 3
  %99 = call float @angle_normalized_v3v3(ptr noundef nonnull %89, ptr noundef nonnull %98) #11
  %100 = fcmp ugt float %99, %9
  br i1 %100, label %125, label %128

101:                                              ; preds = %90
  %102 = load i32, ptr %88, align 8, !tbaa !49
  %103 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %94, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !49
  %105 = sub nsw i32 %102, %104
  %106 = call fastcc i32 @bm_sel_similar_cmp_i(i32 noundef %105, i32 noundef %10) #12, !range !56
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %125, label %128

108:                                              ; preds = %90
  %109 = load ptr, ptr %88, align 8, !tbaa !49
  %110 = icmp eq ptr %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %94, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !49
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = call i32 @defvert_find_shared(ptr noundef nonnull %109, ptr noundef nonnull %113) #11
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %125, label %128

118:                                              ; preds = %90
  %119 = load i32, ptr %88, align 8, !tbaa !49
  %120 = getelementptr inbounds %struct.SimSel_VertExt, ptr %31, i64 %94, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !49
  %122 = sub nsw i32 %119, %121
  %123 = call fastcc i32 @bm_sel_similar_cmp_i(i32 noundef %122, i32 noundef %10) #12, !range !56
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %95, %101, %115, %111, %108, %118, %90
  %126 = add nuw nsw i64 %91, 1
  %127 = icmp ult i64 %126, %25
  br i1 %127, label %90, label %130, !llvm.loop !103

128:                                              ; preds = %118, %115, %101, %95
  %129 = load ptr, ptr %79, align 8, !tbaa !96
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %129) #12
  br label %130

130:                                              ; preds = %125, %128, %83, %75
  %131 = add nuw nsw i64 %76, 1
  %132 = icmp eq i64 %131, %41
  br i1 %132, label %133, label %75, !llvm.loop !104

133:                                              ; preds = %130, %37
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %134(ptr noundef %27) #11
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %135(ptr noundef %31) #11
  %136 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %136, ptr noundef nonnull @.str.12, i8 noundef zeroext 1, i16 noundef signext 1) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_vert_edge_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @defvert_find_shared(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !105 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !106
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !70
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  store ptr %16, ptr %0, align 8, !tbaa !49
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !108 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !109 {
  %4 = load float, ptr %1, align 4, !tbaa !73
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !73
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !73
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !73
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !73
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #9 !PGOFuncName !110 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !73
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !111 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #12
  %3 = tail call float @sqrtf(float noundef %2) #11
  ret float %3
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
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
!34 = !{!35, !37, i64 16}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!37, !37, i64 0}
!45 = !{!46, !37, i64 0}
!46 = !{!"SimSel_FaceExt", !37, i64 0, !38, i64 8, !38, i64 24}
!47 = !{!40, !40, i64 0}
!48 = distinct !{!48, !43}
!49 = !{!38, !38, i64 0}
!50 = !{!35, !37, i64 0}
!51 = !{!52, !37, i64 0}
!52 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !41, i64 10, !41, i64 12, !41, i64 14}
!53 = distinct !{!53, !43}
!54 = !{i8 0, i8 9}
!55 = !{!35, !41, i64 48}
!56 = !{i32 0, i32 2}
!57 = !{!35, !40, i64 32}
!58 = distinct !{!58, !43}
!59 = distinct !{!59, !43}
!60 = !{!"bmo_similar.c:_bmo_elem_flag_test"}
!61 = !{!62, !40, i64 128}
!62 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !63, i64 144, !63, i64 344, !63, i64 544, !63, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !64, i64 960, !37, i64 976, !64, i64 984, !37, i64 1000}
!63 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!64 = !{!"ListBase", !37, i64 0, !37, i64 8}
!65 = !{!66, !41, i64 0}
!66 = !{!"BMFlagLayer", !41, i64 0}
!67 = !{!"bmo_similar.c:_bmo_elem_flag_enable"}
!68 = !{!"bmo_similar.c:BM_iter_new"}
!69 = !{!"bmo_similar.c:BM_iter_step"}
!70 = !{!71, !37, i64 48}
!71 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!72 = !{!"bmo_similar.c:copy_v3_v3"}
!73 = !{!74, !74, i64 0}
!74 = !{!"float", !38, i64 0}
!75 = !{!"bmo_similar.c:normalize_v3"}
!76 = !{!"bmo_similar.c:dot_v3v3"}
!77 = !{!"bmo_similar.c:_bm_elem_flag_test"}
!78 = !{!36, !38, i64 13}
!79 = !{!"bmo_similar.c:bm_sel_similar_cmp_fl"}
!80 = !{!"bmo_similar.c:bm_sel_similar_cmp_i"}
!81 = !{!82, !37, i64 16}
!82 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !83, i64 48, !83, i64 64}
!83 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!84 = distinct !{!84, !43}
!85 = !{!86, !37, i64 0}
!86 = !{!"SimSel_EdgeExt", !37, i64 0, !38, i64 8, !38, i64 20}
!87 = distinct !{!87, !43}
!88 = !{!82, !37, i64 24}
!89 = !{!82, !37, i64 32}
!90 = distinct !{!90, !43}
!91 = !{!82, !37, i64 0}
!92 = distinct !{!92, !43}
!93 = distinct !{!93, !43}
!94 = !{!"bmo_similar.c:len_v3v3"}
!95 = !{!"bmo_similar.c:sub_v3_v3v3"}
!96 = !{!97, !37, i64 16}
!97 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!98 = distinct !{!98, !43}
!99 = !{!100, !37, i64 0}
!100 = !{!"SimSel_VertExt", !37, i64 0, !38, i64 8}
!101 = !{!97, !37, i64 0}
!102 = distinct !{!102, !43}
!103 = distinct !{!103, !43}
!104 = distinct !{!104, !43}
!105 = !{!"bmo_similar.c:BM_iter_init"}
!106 = !{!71, !38, i64 60}
!107 = !{!71, !37, i64 40}
!108 = !{!"bmo_similar.c:normalize_v3_v3"}
!109 = !{!"bmo_similar.c:mul_v3_v3fl"}
!110 = !{!"bmo_similar.c:zero_v3"}
!111 = !{!"bmo_similar.c:len_v3"}
