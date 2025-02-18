; ModuleID = 'blender/source/blender/editors/mesh/editmesh_rip.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_rip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.EdgeLoopPair = type { ptr, ptr }
%struct.UnorderedLoopPair = type { [2 x ptr], i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@.str = private unnamed_addr constant [4 x i8] c"Rip\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"MESH_OT_rip\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Disconnect vertex or edges from connected geometry\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"use_fill\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Fill the ripped region\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Cannot rip selected faces\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Cannot rip multiple disconnected vertices\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"Error ripping vertex from faces\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Selected vertex has no edge/face pairs attached\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"No vertices could be ripped\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.edbm_tagged_loop_pairs_to_fill = private unnamed_addr constant [31 x i8] c"edbm_tagged_loop_pairs_to_fill\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"No edges could be ripped\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"BLI_array.eloop_pairs\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_rip(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_rip_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 515) #6
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_rip_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca %struct.BMIter, align 8
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [3 x float], align 4
  %18 = alloca %struct.BMIter, align 8
  %19 = alloca %struct.BMIter, align 8
  %20 = alloca [4 x [4 x float]], align 16
  %21 = alloca [3 x float], align 4
  %22 = alloca %struct.BMEditSelection, align 8
  %23 = alloca [3 x ptr], align 16
  %24 = alloca [3 x ptr], align 16
  %25 = alloca [3 x float], align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca %struct.BMIter, align 8
  %32 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %33 = tail call ptr @BKE_editmesh_from_object(ptr noundef %32) #6
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %31) #6
  %35 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !52
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !55
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !56
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %42, %38, %3
  %47 = phi i1 [ true, %38 ], [ true, %3 ], [ %45, %42 ]
  %48 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !56
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  tail call void @BKE_report(ptr noundef %53, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  br label %1236

54:                                               ; preds = %46
  %55 = icmp sgt i32 %36, 1
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  tail call void @BKE_report(ptr noundef %62, i32 noundef 32, ptr noundef nonnull @.str.7) #6
  br label %1236

63:                                               ; preds = %56, %54
  %64 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 4
  store i8 2, ptr %64, align 4, !tbaa !59
  %65 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %65, align 8, !tbaa !61
  %66 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %66, align 8, !tbaa !62
  %67 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 10
  %68 = load ptr, ptr %67, align 8, !tbaa !63
  store ptr %68, ptr %31, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %31) #6
  %69 = load ptr, ptr %66, align 8, !tbaa !62
  %70 = call ptr %69(ptr noundef nonnull %31) #6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %63, %72
  %73 = phi ptr [ %82, %72 ], [ %70, %63 ]
  %74 = getelementptr inbounds %struct.BMHeader, ptr %73, i64 0, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !65
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  %78 = or i8 %75, 16
  %79 = and i8 %75, -18
  %80 = select i1 %77, i8 %79, i8 %78
  store i8 %80, ptr %74, align 1, !tbaa !65
  %81 = load ptr, ptr %66, align 8, !tbaa !62
  %82 = call ptr %81(ptr noundef nonnull %31) #6
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72, !llvm.loop !67

84:                                               ; preds = %72, %63
  %85 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !70
  %87 = call i32 @RNA_boolean_get(ptr noundef %86, ptr noundef nonnull @.str.3) #6
  %88 = call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %89 = call ptr @CTX_wm_region(ptr noundef %0) #6
  %90 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #6
  %91 = call ptr @BKE_editmesh_from_object(ptr noundef %88) #6
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  br i1 %47, label %650, label %93

93:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #6
  %94 = load i32, ptr %92, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #6
  %95 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %96 = load i32, ptr %95, align 4, !tbaa !72
  %97 = sitofp i32 %96 to float
  store float %97, ptr %21, align 4, !tbaa !73
  %98 = getelementptr inbounds float, ptr %21, i64 1
  %99 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %100 = load i32, ptr %99, align 4, !tbaa !72
  %101 = sitofp i32 %100 to float
  store float %101, ptr %98, align 4, !tbaa !73
  %102 = getelementptr inbounds i8, ptr %21, i64 8
  store float 0.000000e+00, ptr %102, align 4, !tbaa !73
  %103 = trunc i32 %87 to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #6
  call void @ED_view3d_ob_project_mat_get(ptr noundef %90, ptr noundef %88, ptr noundef nonnull %20) #6
  %104 = call zeroext i8 @BM_select_history_active_get(ptr noundef nonnull %92, ptr noundef nonnull %22) #6
  %105 = icmp ne i8 %104, 0
  %106 = getelementptr inbounds %struct.BMEditSelection, ptr %22, i64 0, i32 3
  %107 = load i8, ptr %106, align 8
  %108 = icmp eq i8 %107, 1
  %109 = select i1 %105, i1 %108, i1 false
  %110 = getelementptr inbounds %struct.BMEditSelection, ptr %22, i64 0, i32 2
  br i1 %109, label %111, label %113

111:                                              ; preds = %93
  %112 = load ptr, ptr %110, align 8, !tbaa !75
  br label %132

113:                                              ; preds = %93
  store ptr null, ptr %110, align 8, !tbaa !75
  %114 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  store i8 1, ptr %114, align 4, !tbaa !59
  %115 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %115, align 8, !tbaa !61
  %116 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %116, align 8, !tbaa !62
  %117 = getelementptr inbounds %struct.BMesh, ptr %92, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !77
  store ptr %118, ptr %18, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %18) #6
  %119 = load ptr, ptr %116, align 8, !tbaa !62
  %120 = call ptr %119(ptr noundef nonnull %18) #6
  %121 = icmp eq ptr %120, null
  br i1 %121, label %132, label %122

122:                                              ; preds = %113, %128
  %123 = phi ptr [ %130, %128 ], [ %120, %113 ]
  %124 = getelementptr inbounds %struct.BMHeader, ptr %123, i64 0, i32 3
  %125 = load i8, ptr %124, align 1, !tbaa !65
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load ptr, ptr %116, align 8, !tbaa !62
  %130 = call ptr %129(ptr noundef nonnull %18) #6
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %122, !llvm.loop !78

132:                                              ; preds = %128, %122, %113, %111
  %133 = phi ptr [ %112, %111 ], [ null, %113 ], [ %123, %122 ], [ null, %128 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %648, label %135

135:                                              ; preds = %132
  %136 = call zeroext i8 @BM_vert_is_wire(ptr noundef nonnull %133) #6
  %137 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !79
  %139 = icmp eq ptr %138, null
  br i1 %139, label %278, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  store i8 4, ptr %141, align 4, !tbaa !59
  %142 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %142, align 8, !tbaa !61
  %143 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %143, align 8, !tbaa !62
  store ptr %133, ptr %18, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %18) #6
  %144 = load ptr, ptr %143, align 8, !tbaa !62
  %145 = call ptr %144(ptr noundef nonnull %18) #6
  %146 = icmp eq ptr %145, null
  br i1 %146, label %202, label %147

147:                                              ; preds = %140, %196
  %148 = phi i32 [ %165, %196 ], [ 0, %140 ]
  %149 = phi ptr [ %200, %196 ], [ %145, %140 ]
  %150 = phi float [ %198, %196 ], [ 0x47EFFFFFE0000000, %140 ]
  %151 = phi ptr [ %197, %196 ], [ null, %140 ]
  %152 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !81
  %154 = icmp eq ptr %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.BMLoop, ptr %153, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !84
  %158 = icmp eq ptr %157, %153
  %159 = zext i1 %158 to i8
  br label %160

160:                                              ; preds = %155, %147
  %161 = phi i8 [ 0, %147 ], [ %159, %155 ]
  %162 = icmp ne i8 %161, 0
  %163 = or i1 %154, %162
  %164 = zext i1 %163 to i32
  %165 = add nuw nsw i32 %148, %164
  %166 = getelementptr inbounds %struct.BMHeader, ptr %149, i64 0, i32 3
  %167 = load i8, ptr %166, align 1, !tbaa !65
  %168 = and i8 %167, 2
  %169 = or disjoint i8 %168, %161
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %160
  br i1 %154, label %181, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.BMLoop, ptr %153, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !84
  %175 = icmp eq ptr %174, %153
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.BMLoop, ptr %174, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !84
  %179 = icmp eq ptr %178, %153
  %180 = zext i1 %179 to i8
  br label %181

181:                                              ; preds = %176, %172, %171
  %182 = phi i8 [ 0, %172 ], [ 0, %171 ], [ %180, %176 ]
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !86
  %187 = getelementptr inbounds %struct.BMVert, ptr %186, i64 0, i32 2
  %188 = getelementptr inbounds %struct.BMEdge, ptr %149, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !87
  %190 = getelementptr inbounds %struct.BMVert, ptr %189, i64 0, i32 2
  %191 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %89, ptr noundef nonnull %20, ptr noundef nonnull %187, ptr noundef nonnull %190, ptr noundef nonnull %21)
  %192 = icmp eq ptr %151, null
  %193 = fcmp olt float %191, %150
  %194 = select i1 %192, i1 true, i1 %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %184, %181, %160
  %197 = phi ptr [ %149, %195 ], [ %151, %181 ], [ %151, %160 ], [ %151, %184 ]
  %198 = phi float [ %191, %195 ], [ %150, %181 ], [ %150, %160 ], [ %150, %184 ]
  %199 = load ptr, ptr %143, align 8, !tbaa !62
  %200 = call ptr %199(ptr noundef nonnull %18) #6
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %147, !llvm.loop !88

202:                                              ; preds = %196, %140
  %203 = phi ptr [ null, %140 ], [ %197, %196 ]
  %204 = phi float [ 0x47EFFFFFE0000000, %140 ], [ %198, %196 ]
  %205 = phi i32 [ 0, %140 ], [ %165, %196 ]
  %206 = call i32 @BM_vert_face_count(ptr noundef nonnull %133) #6
  %207 = icmp eq i32 %206, 3
  br i1 %207, label %208, label %278

208:                                              ; preds = %202
  %209 = call i32 @BM_vert_edge_count(ptr noundef nonnull %133) #6
  %210 = icmp eq i32 %209, 3
  br i1 %210, label %211, label %278

211:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #6
  %212 = call i32 @BM_iter_as_array(ptr noundef nonnull %92, i8 noundef zeroext 4, ptr noundef nonnull %133, ptr noundef nonnull %23, i32 noundef 3) #6
  %213 = call i32 @BM_iter_as_array(ptr noundef nonnull %92, i8 noundef zeroext 6, ptr noundef nonnull %133, ptr noundef nonnull %24, i32 noundef 3) #6
  %214 = getelementptr inbounds float, ptr %25, i64 1
  %215 = getelementptr inbounds float, ptr %25, i64 2
  br label %216

216:                                              ; preds = %211, %272
  %217 = phi i64 [ 0, %211 ], [ %275, %272 ]
  %218 = phi float [ %204, %211 ], [ %274, %272 ]
  %219 = phi ptr [ %203, %211 ], [ %273, %272 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #6
  %220 = getelementptr inbounds [3 x ptr], ptr %24, i64 0, i64 %217
  %221 = load ptr, ptr %220, align 8, !tbaa !89
  call void @BM_loop_calc_face_tangent(ptr noundef %221, ptr noundef nonnull %25) #6
  %222 = getelementptr inbounds %struct.BMLoop, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !90
  %224 = call float @BM_edge_calc_length(ptr noundef %223) #6
  %225 = getelementptr inbounds %struct.BMLoop, ptr %221, i64 0, i32 7
  %226 = load ptr, ptr %225, align 8, !tbaa !91
  %227 = getelementptr inbounds %struct.BMLoop, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !90
  %229 = call float @BM_edge_calc_length(ptr noundef %228) #6
  %230 = fadd float %224, %229
  %231 = fmul float %230, 5.000000e-01
  %232 = load float, ptr %25, align 4, !tbaa !73
  %233 = fmul float %232, %231
  store float %233, ptr %25, align 4, !tbaa !73
  %234 = load float, ptr %214, align 4, !tbaa !73
  %235 = fmul float %231, %234
  store float %235, ptr %214, align 4, !tbaa !73
  %236 = load float, ptr %215, align 4, !tbaa !73
  %237 = fmul float %231, %236
  store float %237, ptr %215, align 4, !tbaa !73
  %238 = getelementptr inbounds %struct.BMLoop, ptr %221, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !92
  %240 = getelementptr inbounds %struct.BMVert, ptr %239, i64 0, i32 2
  %241 = load float, ptr %240, align 4, !tbaa !73
  %242 = fadd float %233, %241
  store float %242, ptr %25, align 4, !tbaa !73
  %243 = getelementptr inbounds %struct.BMVert, ptr %239, i64 0, i32 2, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !73
  %245 = fadd float %235, %244
  store float %245, ptr %214, align 4, !tbaa !73
  %246 = getelementptr inbounds %struct.BMVert, ptr %239, i64 0, i32 2, i64 2
  %247 = load float, ptr %246, align 4, !tbaa !73
  %248 = fadd float %237, %247
  store float %248, ptr %215, align 4, !tbaa !73
  %249 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %89, ptr noundef nonnull %20, ptr noundef nonnull %240, ptr noundef nonnull %25, ptr noundef nonnull %21)
  %250 = icmp eq ptr %219, null
  %251 = fcmp olt float %249, %218
  %252 = select i1 %250, i1 true, i1 %251
  br i1 %252, label %253, label %272

253:                                              ; preds = %216
  %254 = load ptr, ptr %222, align 8, !tbaa !90
  br label %258

255:                                              ; preds = %269
  %256 = add nuw nsw i64 %259, 1
  %257 = icmp eq i64 %256, 3
  br i1 %257, label %272, label %258, !llvm.loop !93

258:                                              ; preds = %253, %255
  %259 = phi i64 [ 0, %253 ], [ %256, %255 ]
  %260 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !89
  %262 = icmp eq ptr %254, %261
  br i1 %262, label %269, label %263

263:                                              ; preds = %258
  %264 = load ptr, ptr %225, align 8, !tbaa !91
  %265 = getelementptr inbounds %struct.BMLoop, ptr %264, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !90
  %267 = icmp eq ptr %266, %261
  %268 = zext i1 %267 to i8
  br label %269

269:                                              ; preds = %263, %258
  %270 = phi i8 [ 1, %258 ], [ %268, %263 ]
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %255

272:                                              ; preds = %269, %255, %216
  %273 = phi ptr [ %219, %216 ], [ null, %255 ], [ %261, %269 ]
  %274 = phi float [ %218, %216 ], [ %249, %255 ], [ %249, %269 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #6
  %275 = add nuw nsw i64 %217, 1
  %276 = icmp eq i64 %275, 3
  br i1 %276, label %277, label %216, !llvm.loop !94

277:                                              ; preds = %272
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #6
  br label %278

278:                                              ; preds = %277, %208, %202, %135
  %279 = phi ptr [ %273, %277 ], [ %203, %208 ], [ %203, %202 ], [ null, %135 ]
  %280 = phi i32 [ %205, %277 ], [ %205, %208 ], [ %205, %202 ], [ 0, %135 ]
  %281 = icmp eq i8 %136, 0
  %282 = icmp sgt i32 %280, 2
  %283 = select i1 %281, i1 %282, i1 false
  br i1 %283, label %288, label %284

284:                                              ; preds = %278
  %285 = icmp eq i8 %136, 1
  %286 = icmp sgt i32 %280, 1
  %287 = select i1 %285, i1 %286, i1 false
  br i1 %287, label %288, label %461

288:                                              ; preds = %284, %278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #6
  call void @BM_vert_select_set(ptr noundef nonnull %92, ptr noundef nonnull %133, i8 noundef zeroext 0) #6
  call void @bmesh_vert_separate(ptr noundef nonnull %92, ptr noundef nonnull %133, ptr noundef nonnull %26, ptr noundef nonnull %27, i8 noundef zeroext 1) #6
  %289 = load i32, ptr %27, align 4, !tbaa !72
  %290 = icmp slt i32 %289, 2
  br i1 %290, label %291, label %296

291:                                              ; preds = %288
  %292 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  %293 = load ptr, ptr %26, align 8, !tbaa !89
  call void %292(ptr noundef %293) #6
  call void @BM_vert_select_set(ptr noundef nonnull %92, ptr noundef nonnull %133, i8 noundef zeroext 1) #6
  %294 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %295 = load ptr, ptr %294, align 8, !tbaa !57
  call void @BKE_report(ptr noundef %295, i32 noundef 32, ptr noundef nonnull @.str.8) #6
  br label %459

296:                                              ; preds = %288
  %297 = getelementptr inbounds %struct.BMEditSelection, ptr %22, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !75
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = call zeroext i8 @_bm_select_history_remove(ptr noundef nonnull %92, ptr noundef nonnull %298) #6
  br label %302

302:                                              ; preds = %300, %296
  %303 = load i32, ptr %27, align 4, !tbaa !72
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %420

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  %307 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  %308 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  %309 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2
  %310 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  %311 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  %312 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  %313 = getelementptr inbounds float, ptr %28, i64 1
  %314 = getelementptr inbounds float, ptr %28, i64 2
  %315 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2
  br label %316

316:                                              ; preds = %305, %413
  %317 = phi i64 [ 0, %305 ], [ %416, %413 ]
  %318 = phi i32 [ 0, %305 ], [ %415, %413 ]
  %319 = phi float [ 0x47EFFFFFE0000000, %305 ], [ %414, %413 ]
  %320 = load ptr, ptr %26, align 8, !tbaa !89
  %321 = getelementptr inbounds ptr, ptr %320, i64 %317
  %322 = load ptr, ptr %321, align 8, !tbaa !89
  %323 = call zeroext i8 @BM_vert_is_wire(ptr noundef %322) #6
  %324 = icmp eq i8 %323, 0
  %325 = load ptr, ptr %26, align 8, !tbaa !89
  %326 = getelementptr inbounds ptr, ptr %325, i64 %317
  %327 = load ptr, ptr %326, align 8, !tbaa !89
  br i1 %324, label %328, label %382

328:                                              ; preds = %316
  store i8 6, ptr %310, align 4, !tbaa !59
  store ptr @bmiter__loop_of_vert_begin, ptr %311, align 8, !tbaa !61
  store ptr @bmiter__loop_of_vert_step, ptr %312, align 8, !tbaa !62
  store ptr %327, ptr %18, align 8, !tbaa !64
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %18) #6
  %329 = load ptr, ptr %312, align 8, !tbaa !62
  %330 = call ptr %329(ptr noundef nonnull %18) #6
  %331 = icmp eq ptr %330, null
  br i1 %331, label %413, label %332

332:                                              ; preds = %328
  %333 = trunc i64 %317 to i32
  br label %334

334:                                              ; preds = %332, %376
  %335 = phi i32 [ %378, %376 ], [ %318, %332 ]
  %336 = phi ptr [ %380, %376 ], [ %330, %332 ]
  %337 = phi float [ %377, %376 ], [ %319, %332 ]
  %338 = getelementptr inbounds %struct.BMLoop, ptr %336, i64 0, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !95
  %340 = getelementptr inbounds %struct.BMHeader, ptr %339, i64 0, i32 3
  %341 = load i8, ptr %340, align 1, !tbaa !65
  %342 = and i8 %341, 2
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %376

344:                                              ; preds = %334
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #6
  call void @BM_loop_calc_face_tangent(ptr noundef nonnull %336, ptr noundef nonnull %28) #6
  %345 = getelementptr inbounds %struct.BMLoop, ptr %336, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !90
  %347 = call float @BM_edge_calc_length(ptr noundef %346) #6
  %348 = getelementptr inbounds %struct.BMLoop, ptr %336, i64 0, i32 7
  %349 = load ptr, ptr %348, align 8, !tbaa !91
  %350 = getelementptr inbounds %struct.BMLoop, ptr %349, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !90
  %352 = call float @BM_edge_calc_length(ptr noundef %351) #6
  %353 = fadd float %347, %352
  %354 = fmul float %353, 5.000000e-01
  %355 = load float, ptr %28, align 4, !tbaa !73
  %356 = fmul float %355, %354
  store float %356, ptr %28, align 4, !tbaa !73
  %357 = load float, ptr %313, align 4, !tbaa !73
  %358 = fmul float %354, %357
  store float %358, ptr %313, align 4, !tbaa !73
  %359 = load float, ptr %314, align 4, !tbaa !73
  %360 = fmul float %354, %359
  store float %360, ptr %314, align 4, !tbaa !73
  %361 = getelementptr inbounds %struct.BMLoop, ptr %336, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !92
  %363 = getelementptr inbounds %struct.BMVert, ptr %362, i64 0, i32 2
  %364 = load float, ptr %363, align 4, !tbaa !73
  %365 = fadd float %356, %364
  store float %365, ptr %28, align 4, !tbaa !73
  %366 = getelementptr inbounds %struct.BMVert, ptr %362, i64 0, i32 2, i64 1
  %367 = load float, ptr %366, align 4, !tbaa !73
  %368 = fadd float %358, %367
  store float %368, ptr %313, align 4, !tbaa !73
  %369 = getelementptr inbounds %struct.BMVert, ptr %362, i64 0, i32 2, i64 2
  %370 = load float, ptr %369, align 4, !tbaa !73
  %371 = fadd float %360, %370
  store float %371, ptr %314, align 4, !tbaa !73
  %372 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %89, ptr noundef nonnull %20, ptr noundef nonnull %315, ptr noundef nonnull %28, ptr noundef nonnull %21)
  %373 = fcmp olt float %372, %337
  %374 = select i1 %373, float %372, float %337
  %375 = select i1 %373, i32 %333, i32 %335
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #6
  br label %376

376:                                              ; preds = %344, %334
  %377 = phi float [ %337, %334 ], [ %374, %344 ]
  %378 = phi i32 [ %335, %334 ], [ %375, %344 ]
  %379 = load ptr, ptr %312, align 8, !tbaa !62
  %380 = call ptr %379(ptr noundef nonnull %18) #6
  %381 = icmp eq ptr %380, null
  br i1 %381, label %413, label %334, !llvm.loop !96

382:                                              ; preds = %316
  store i8 4, ptr %306, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %307, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %308, align 8, !tbaa !62
  store ptr %327, ptr %18, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %18) #6
  %383 = load ptr, ptr %308, align 8, !tbaa !62
  %384 = call ptr %383(ptr noundef nonnull %18) #6
  %385 = icmp eq ptr %384, null
  br i1 %385, label %413, label %386

386:                                              ; preds = %382
  %387 = trunc i64 %317 to i32
  br label %388

388:                                              ; preds = %386, %407
  %389 = phi i32 [ %409, %407 ], [ %318, %386 ]
  %390 = phi ptr [ %411, %407 ], [ %384, %386 ]
  %391 = phi float [ %408, %407 ], [ %319, %386 ]
  %392 = getelementptr inbounds %struct.BMHeader, ptr %390, i64 0, i32 3
  %393 = load i8, ptr %392, align 1, !tbaa !65
  %394 = and i8 %393, 2
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %396, label %407

396:                                              ; preds = %388
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #6
  %397 = getelementptr inbounds %struct.BMEdge, ptr %390, i64 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !86
  %399 = getelementptr inbounds %struct.BMVert, ptr %398, i64 0, i32 2
  %400 = getelementptr inbounds %struct.BMEdge, ptr %390, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !87
  %402 = getelementptr inbounds %struct.BMVert, ptr %401, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %29, ptr noundef nonnull %399, ptr noundef nonnull %402) #6
  %403 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %89, ptr noundef nonnull %20, ptr noundef nonnull %309, ptr noundef nonnull %29, ptr noundef nonnull %21)
  %404 = fcmp olt float %403, %391
  %405 = select i1 %404, float %403, float %391
  %406 = select i1 %404, i32 %387, i32 %389
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #6
  br label %407

407:                                              ; preds = %396, %388
  %408 = phi float [ %391, %388 ], [ %405, %396 ]
  %409 = phi i32 [ %389, %388 ], [ %406, %396 ]
  %410 = load ptr, ptr %308, align 8, !tbaa !62
  %411 = call ptr %410(ptr noundef nonnull %18) #6
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %388, !llvm.loop !97

413:                                              ; preds = %407, %376, %382, %328
  %414 = phi float [ %319, %328 ], [ %319, %382 ], [ %377, %376 ], [ %408, %407 ]
  %415 = phi i32 [ %318, %328 ], [ %318, %382 ], [ %378, %376 ], [ %409, %407 ]
  %416 = add nuw nsw i64 %317, 1
  %417 = load i32, ptr %27, align 4, !tbaa !72
  %418 = sext i32 %417 to i64
  %419 = icmp slt i64 %416, %418
  br i1 %419, label %316, label %420, !llvm.loop !98

420:                                              ; preds = %413, %302
  %421 = phi i32 [ 0, %302 ], [ %415, %413 ]
  %422 = load ptr, ptr %26, align 8, !tbaa !89
  %423 = sext i32 %421 to i64
  %424 = getelementptr inbounds ptr, ptr %422, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !89
  call void @BM_vert_select_set(ptr noundef nonnull %92, ptr noundef %425, i8 noundef zeroext 1) #6
  %426 = load ptr, ptr %297, align 8, !tbaa !75
  %427 = icmp eq ptr %426, null
  br i1 %427, label %429, label %428

428:                                              ; preds = %420
  call void @_bm_select_history_store(ptr noundef nonnull %92, ptr noundef %425) #6
  br label %429

429:                                              ; preds = %428, %420
  %430 = load i32, ptr %27, align 4, !tbaa !72
  %431 = icmp sgt i32 %430, 2
  br i1 %431, label %432, label %456

432:                                              ; preds = %429
  %433 = icmp eq i32 %421, 0
  br i1 %433, label %441, label %434

434:                                              ; preds = %432
  %435 = load ptr, ptr %26, align 8, !tbaa !89
  %436 = load ptr, ptr %435, align 8, !tbaa !89
  %437 = getelementptr inbounds ptr, ptr %435, i64 %423
  %438 = load ptr, ptr %437, align 8, !tbaa !89
  store ptr %438, ptr %435, align 8, !tbaa !89
  %439 = load ptr, ptr %26, align 8, !tbaa !89
  %440 = getelementptr inbounds ptr, ptr %439, i64 %423
  store ptr %436, ptr %440, align 8, !tbaa !89
  br label %441

441:                                              ; preds = %434, %432
  %442 = load i32, ptr %27, align 4, !tbaa !72
  %443 = icmp sgt i32 %442, 2
  br i1 %443, label %444, label %456

444:                                              ; preds = %441, %444
  %445 = phi i64 [ %452, %444 ], [ 2, %441 ]
  %446 = load ptr, ptr %26, align 8, !tbaa !89
  %447 = getelementptr inbounds ptr, ptr %446, i64 %445
  %448 = load ptr, ptr %447, align 8, !tbaa !89
  %449 = getelementptr inbounds ptr, ptr %446, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !89
  %451 = call zeroext i8 @BM_vert_splice(ptr noundef nonnull %92, ptr noundef %448, ptr noundef %450) #6
  %452 = add nuw nsw i64 %445, 1
  %453 = load i32, ptr %27, align 4, !tbaa !72
  %454 = sext i32 %453 to i64
  %455 = icmp slt i64 %452, %454
  br i1 %455, label %444, label %456, !llvm.loop !99

456:                                              ; preds = %444, %441, %429
  %457 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  %458 = load ptr, ptr %26, align 8, !tbaa !89
  call void %457(ptr noundef %458) #6
  br label %459

459:                                              ; preds = %456, %291
  %460 = phi i32 [ 2, %291 ], [ 4, %456 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #6
  br label %648

461:                                              ; preds = %284
  %462 = icmp eq ptr %279, null
  br i1 %462, label %463, label %466

463:                                              ; preds = %461
  %464 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %465 = load ptr, ptr %464, align 8, !tbaa !57
  call void @BKE_report(ptr noundef %465, i32 noundef 32, ptr noundef nonnull @.str.9) #6
  br label %648

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.BMEdge, ptr %279, i64 0, i32 4
  %468 = load ptr, ptr %467, align 8, !tbaa !81
  %469 = icmp eq ptr %468, null
  br i1 %469, label %475, label %470

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.BMLoop, ptr %468, i64 0, i32 4
  %472 = load ptr, ptr %471, align 8, !tbaa !84
  %473 = icmp eq ptr %472, %468
  %474 = zext i1 %473 to i8
  br label %475

475:                                              ; preds = %470, %466
  %476 = phi i8 [ 0, %466 ], [ %474, %470 ]
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %475
  %479 = call i32 @BM_vert_face_count(ptr noundef nonnull %133) #6
  %480 = icmp eq i32 %479, 2
  br i1 %480, label %481, label %518

481:                                              ; preds = %478, %475
  %482 = load ptr, ptr %467, align 8, !tbaa !81
  %483 = call ptr @BM_edge_vert_share_loop(ptr noundef %482, ptr noundef nonnull %133) #6
  %484 = load ptr, ptr %467, align 8, !tbaa !81
  %485 = icmp eq ptr %484, null
  br i1 %485, label %490, label %486

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.BMLoop, ptr %484, i64 0, i32 4
  %488 = load ptr, ptr %487, align 8, !tbaa !84
  %489 = icmp eq ptr %488, %484
  br i1 %489, label %500, label %490

490:                                              ; preds = %481, %486
  %491 = getelementptr inbounds %struct.BMLoop, ptr %483, i64 0, i32 2
  %492 = load ptr, ptr %491, align 8, !tbaa !90
  %493 = getelementptr inbounds %struct.BMHeader, ptr %492, i64 0, i32 3
  %494 = load i8, ptr %493, align 1, !tbaa !65
  %495 = or i8 %494, 16
  store i8 %495, ptr %493, align 1, !tbaa !65
  %496 = getelementptr inbounds %struct.BMLoop, ptr %483, i64 0, i32 7
  %497 = load ptr, ptr %496, align 8, !tbaa !91
  %498 = getelementptr inbounds %struct.BMLoop, ptr %497, i64 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !90
  br label %500

500:                                              ; preds = %486, %490
  %501 = phi ptr [ %499, %490 ], [ %279, %486 ]
  %502 = getelementptr inbounds %struct.BMHeader, ptr %501, i64 0, i32 3
  %503 = load i8, ptr %502, align 1, !tbaa !65
  %504 = or i8 %503, 16
  store i8 %504, ptr %502, align 1, !tbaa !65
  %505 = icmp eq i8 %103, 0
  br i1 %505, label %508, label %506

506:                                              ; preds = %500
  %507 = call fastcc ptr @edbm_tagged_loop_pairs_to_fill(ptr noundef nonnull %92)
  br label %508

508:                                              ; preds = %506, %500
  %509 = phi ptr [ %507, %506 ], [ null, %500 ]
  %510 = call ptr @BM_face_loop_separate(ptr noundef nonnull %92, ptr noundef %483) #6
  %511 = icmp eq ptr %510, null
  br i1 %511, label %513, label %512

512:                                              ; preds = %508
  call void @BM_vert_select_set(ptr noundef nonnull %92, ptr noundef nonnull %510, i8 noundef zeroext 1) #6
  br label %517

513:                                              ; preds = %508
  %514 = icmp eq ptr %509, null
  br i1 %514, label %517, label %515

515:                                              ; preds = %513
  %516 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %516(ptr noundef nonnull %509) #6
  br label %517

517:                                              ; preds = %515, %513, %512
  br i1 %511, label %648, label %552

518:                                              ; preds = %478
  %519 = load ptr, ptr %467, align 8, !tbaa !81
  %520 = icmp eq ptr %519, null
  br i1 %520, label %545, label %521

521:                                              ; preds = %518
  %522 = getelementptr inbounds %struct.BMLoop, ptr %519, i64 0, i32 4
  %523 = load ptr, ptr %522, align 8, !tbaa !84
  %524 = icmp eq ptr %523, %519
  br i1 %524, label %545, label %525

525:                                              ; preds = %521
  %526 = getelementptr inbounds %struct.BMLoop, ptr %523, i64 0, i32 4
  %527 = load ptr, ptr %526, align 8, !tbaa !84
  %528 = icmp eq ptr %527, %519
  br i1 %528, label %529, label %545

529:                                              ; preds = %525
  %530 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %519, ptr noundef nonnull %133) #6
  %531 = getelementptr inbounds %struct.BMLoop, ptr %530, i64 0, i32 2
  %532 = load ptr, ptr %531, align 8, !tbaa !90
  %533 = getelementptr inbounds %struct.BMHeader, ptr %532, i64 0, i32 3
  %534 = load i8, ptr %533, align 1, !tbaa !65
  %535 = or i8 %534, 16
  store i8 %535, ptr %533, align 1, !tbaa !65
  %536 = load ptr, ptr %467, align 8, !tbaa !81
  %537 = getelementptr inbounds %struct.BMLoop, ptr %536, i64 0, i32 4
  %538 = load ptr, ptr %537, align 8, !tbaa !84
  %539 = call ptr @BM_loop_other_edge_loop(ptr noundef %538, ptr noundef nonnull %133) #6
  %540 = getelementptr inbounds %struct.BMLoop, ptr %539, i64 0, i32 2
  %541 = load ptr, ptr %540, align 8, !tbaa !90
  %542 = getelementptr inbounds %struct.BMHeader, ptr %541, i64 0, i32 3
  %543 = load i8, ptr %542, align 1, !tbaa !65
  %544 = or i8 %543, 16
  store i8 %544, ptr %542, align 1, !tbaa !65
  br label %545

545:                                              ; preds = %521, %518, %529, %525
  %546 = icmp eq i8 %103, 0
  br i1 %546, label %549, label %547

547:                                              ; preds = %545
  %548 = call fastcc ptr @edbm_tagged_loop_pairs_to_fill(ptr noundef nonnull %92)
  br label %549

549:                                              ; preds = %547, %545
  %550 = phi ptr [ %548, %547 ], [ null, %545 ]
  %551 = load ptr, ptr %91, align 8, !tbaa !48
  call void @BM_mesh_edgesplit(ptr noundef %551, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %552

552:                                              ; preds = %549, %517
  %553 = phi ptr [ %509, %517 ], [ %550, %549 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #6
  %554 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  store i8 1, ptr %554, align 4, !tbaa !59
  %555 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %555, align 8, !tbaa !61
  %556 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %556, align 8, !tbaa !62
  %557 = getelementptr inbounds %struct.BMesh, ptr %92, i64 0, i32 9
  %558 = load ptr, ptr %557, align 8, !tbaa !77
  store ptr %558, ptr %18, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %18) #6
  %559 = load ptr, ptr %556, align 8, !tbaa !62
  %560 = call ptr %559(ptr noundef nonnull %18) #6
  %561 = icmp eq ptr %560, null
  br i1 %561, label %627, label %562

562:                                              ; preds = %552
  %563 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 4
  %564 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 1
  %565 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 2
  %566 = getelementptr inbounds float, ptr %30, i64 1
  %567 = getelementptr inbounds float, ptr %30, i64 2
  br label %568

568:                                              ; preds = %562, %621
  %569 = phi ptr [ null, %562 ], [ %623, %621 ]
  %570 = phi float [ 0x47EFFFFFE0000000, %562 ], [ %622, %621 ]
  %571 = phi ptr [ %560, %562 ], [ %625, %621 ]
  %572 = getelementptr inbounds %struct.BMHeader, ptr %571, i64 0, i32 3
  %573 = load i8, ptr %572, align 1, !tbaa !65
  %574 = and i8 %573, 1
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %621, label %576

576:                                              ; preds = %568
  call void @BM_vert_select_set(ptr noundef nonnull %92, ptr noundef nonnull %571, i8 noundef zeroext 0) #6
  %577 = call zeroext i8 @_bm_select_history_remove(ptr noundef nonnull %92, ptr noundef nonnull %571) #6
  store i8 6, ptr %563, align 4, !tbaa !59
  store ptr @bmiter__loop_of_vert_begin, ptr %564, align 8, !tbaa !61
  store ptr @bmiter__loop_of_vert_step, ptr %565, align 8, !tbaa !62
  store ptr %571, ptr %19, align 8, !tbaa !64
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %19) #6
  %578 = load ptr, ptr %565, align 8, !tbaa !62
  %579 = call ptr %578(ptr noundef nonnull %19) #6
  %580 = icmp eq ptr %579, null
  br i1 %580, label %621, label %581

581:                                              ; preds = %576, %581
  %582 = phi ptr [ %617, %581 ], [ %569, %576 ]
  %583 = phi ptr [ %619, %581 ], [ %579, %576 ]
  %584 = phi float [ %616, %581 ], [ %570, %576 ]
  call void @BM_loop_calc_face_tangent(ptr noundef nonnull %583, ptr noundef nonnull %30) #6
  %585 = getelementptr inbounds %struct.BMLoop, ptr %583, i64 0, i32 2
  %586 = load ptr, ptr %585, align 8, !tbaa !90
  %587 = call float @BM_edge_calc_length(ptr noundef %586) #6
  %588 = getelementptr inbounds %struct.BMLoop, ptr %583, i64 0, i32 7
  %589 = load ptr, ptr %588, align 8, !tbaa !91
  %590 = getelementptr inbounds %struct.BMLoop, ptr %589, i64 0, i32 2
  %591 = load ptr, ptr %590, align 8, !tbaa !90
  %592 = call float @BM_edge_calc_length(ptr noundef %591) #6
  %593 = fadd float %587, %592
  %594 = fmul float %593, 5.000000e-01
  %595 = load float, ptr %30, align 4, !tbaa !73
  %596 = fmul float %595, %594
  store float %596, ptr %30, align 4, !tbaa !73
  %597 = load float, ptr %566, align 4, !tbaa !73
  %598 = fmul float %594, %597
  store float %598, ptr %566, align 4, !tbaa !73
  %599 = load float, ptr %567, align 4, !tbaa !73
  %600 = fmul float %594, %599
  store float %600, ptr %567, align 4, !tbaa !73
  %601 = getelementptr inbounds %struct.BMLoop, ptr %583, i64 0, i32 1
  %602 = load ptr, ptr %601, align 8, !tbaa !92
  %603 = getelementptr inbounds %struct.BMVert, ptr %602, i64 0, i32 2
  %604 = load float, ptr %603, align 4, !tbaa !73
  %605 = fadd float %596, %604
  store float %605, ptr %30, align 4, !tbaa !73
  %606 = getelementptr inbounds %struct.BMVert, ptr %602, i64 0, i32 2, i64 1
  %607 = load float, ptr %606, align 4, !tbaa !73
  %608 = fadd float %598, %607
  store float %608, ptr %566, align 4, !tbaa !73
  %609 = getelementptr inbounds %struct.BMVert, ptr %602, i64 0, i32 2, i64 2
  %610 = load float, ptr %609, align 4, !tbaa !73
  %611 = fadd float %600, %610
  store float %611, ptr %567, align 4, !tbaa !73
  %612 = call fastcc float @edbm_rip_edgedist_squared(ptr noundef %89, ptr noundef nonnull %20, ptr noundef nonnull %603, ptr noundef nonnull %30, ptr noundef nonnull %21)
  %613 = icmp eq ptr %582, null
  %614 = fcmp olt float %612, %584
  %615 = select i1 %613, i1 true, i1 %614
  %616 = select i1 %615, float %612, float %584
  %617 = select i1 %615, ptr %571, ptr %582
  %618 = load ptr, ptr %565, align 8, !tbaa !62
  %619 = call ptr %618(ptr noundef nonnull %19) #6
  %620 = icmp eq ptr %619, null
  br i1 %620, label %621, label %581, !llvm.loop !100

621:                                              ; preds = %581, %576, %568
  %622 = phi float [ %570, %568 ], [ %570, %576 ], [ %616, %581 ]
  %623 = phi ptr [ %569, %568 ], [ %569, %576 ], [ %617, %581 ]
  %624 = load ptr, ptr %556, align 8, !tbaa !62
  %625 = call ptr %624(ptr noundef nonnull %18) #6
  %626 = icmp eq ptr %625, null
  br i1 %626, label %627, label %568, !llvm.loop !101

627:                                              ; preds = %621, %552
  %628 = phi ptr [ null, %552 ], [ %623, %621 ]
  %629 = icmp eq ptr %628, null
  br i1 %629, label %635, label %630

630:                                              ; preds = %627
  call void @BM_vert_select_set(ptr noundef nonnull %92, ptr noundef nonnull %628, i8 noundef zeroext 1) #6
  %631 = getelementptr inbounds %struct.BMEditSelection, ptr %22, i64 0, i32 2
  %632 = load ptr, ptr %631, align 8, !tbaa !75
  %633 = icmp eq ptr %632, null
  br i1 %633, label %635, label %634

634:                                              ; preds = %630
  call void @_bm_select_history_store(ptr noundef nonnull %92, ptr noundef nonnull %628) #6
  br label %635

635:                                              ; preds = %634, %630, %627
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #6
  %636 = and i32 %87, 255
  %637 = icmp ne i32 %636, 0
  %638 = icmp ne ptr %553, null
  %639 = select i1 %637, i1 %638, i1 false
  br i1 %639, label %640, label %642

640:                                              ; preds = %635
  call fastcc void @edbm_tagged_loop_pairs_do_fill_faces(ptr noundef nonnull %92, ptr noundef nonnull %553)
  %641 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %641(ptr noundef nonnull %553) #6
  br label %642

642:                                              ; preds = %640, %635
  %643 = load i32, ptr %92, align 8, !tbaa !71
  %644 = icmp eq i32 %94, %643
  br i1 %644, label %645, label %648

645:                                              ; preds = %642
  %646 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %647 = load ptr, ptr %646, align 8, !tbaa !57
  call void @BKE_report(ptr noundef %647, i32 noundef 32, ptr noundef nonnull @.str.10) #6
  br label %648

648:                                              ; preds = %132, %459, %463, %517, %642, %645
  %649 = phi i32 [ %460, %459 ], [ 2, %645 ], [ 2, %517 ], [ 2, %463 ], [ 2, %132 ], [ 4, %642 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #6
  br label %1229

650:                                              ; preds = %84
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #6
  %651 = getelementptr inbounds %struct.BMesh, ptr %92, i64 0, i32 1
  %652 = load i32, ptr %651, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #6
  %653 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %654 = load i32, ptr %653, align 4, !tbaa !72
  %655 = sitofp i32 %654 to float
  store float %655, ptr %17, align 4, !tbaa !73
  %656 = getelementptr inbounds float, ptr %17, i64 1
  %657 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %658 = load i32, ptr %657, align 4, !tbaa !72
  %659 = sitofp i32 %658 to float
  store float %659, ptr %656, align 4, !tbaa !73
  %660 = getelementptr inbounds i8, ptr %17, i64 8
  store float 0.000000e+00, ptr %660, align 4, !tbaa !73
  call void @ED_view3d_ob_project_mat_get(ptr noundef %90, ptr noundef %88, ptr noundef nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #6
  %661 = load i32, ptr %651, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  store ptr null, ptr %12, align 8, !tbaa !89
  %662 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 3, ptr %662, align 4, !tbaa !59
  %663 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %663, align 8, !tbaa !61
  %664 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %664, align 8, !tbaa !62
  %665 = getelementptr inbounds %struct.BMesh, ptr %92, i64 0, i32 12
  %666 = load ptr, ptr %665, align 8, !tbaa !103
  store ptr %666, ptr %10, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #6
  %667 = load ptr, ptr %664, align 8, !tbaa !62
  %668 = call ptr %667(ptr noundef nonnull %10) #6
  %669 = icmp eq ptr %668, null
  br i1 %669, label %689, label %670

670:                                              ; preds = %650
  %671 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %672 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %673 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  br label %674

674:                                              ; preds = %670, %685
  %675 = phi ptr [ %668, %670 ], [ %687, %685 ]
  store i8 11, ptr %671, align 4, !tbaa !59
  store ptr @bmiter__loop_of_face_begin, ptr %672, align 8, !tbaa !61
  store ptr @bmiter__loop_of_face_step, ptr %673, align 8, !tbaa !62
  store ptr %675, ptr %11, align 8, !tbaa !64
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %11) #6
  %676 = load ptr, ptr %673, align 8, !tbaa !62
  %677 = call ptr %676(ptr noundef nonnull %11) #6
  %678 = icmp eq ptr %677, null
  br i1 %678, label %685, label %679

679:                                              ; preds = %674, %679
  %680 = phi ptr [ %683, %679 ], [ %677, %674 ]
  %681 = getelementptr inbounds %struct.BMHeader, ptr %680, i64 0, i32 1
  store i32 -2147483648, ptr %681, align 8, !tbaa !104
  %682 = load ptr, ptr %673, align 8, !tbaa !62
  %683 = call ptr %682(ptr noundef nonnull %11) #6
  %684 = icmp eq ptr %683, null
  br i1 %684, label %685, label %679, !llvm.loop !105

685:                                              ; preds = %679, %674
  %686 = load ptr, ptr %664, align 8, !tbaa !62
  %687 = call ptr %686(ptr noundef nonnull %10) #6
  %688 = icmp eq ptr %687, null
  br i1 %688, label %689, label %674, !llvm.loop !106

689:                                              ; preds = %685, %650
  %690 = getelementptr inbounds %struct.BMesh, ptr %92, i64 0, i32 7
  %691 = load i8, ptr %690, align 4, !tbaa !107
  %692 = or i8 %691, 4
  store i8 %692, ptr %690, align 4, !tbaa !107
  %693 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  %694 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  %695 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  %696 = getelementptr inbounds %struct.BMesh, ptr %92, i64 0, i32 10
  br label %697

697:                                              ; preds = %800, %689
  %698 = phi i32 [ %661, %689 ], [ %802, %800 ]
  %699 = phi i32 [ 0, %689 ], [ %803, %800 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #6
  store i8 2, ptr %693, align 4, !tbaa !59
  store ptr @bmiter__elem_of_mesh_begin, ptr %694, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %695, align 8, !tbaa !62
  %700 = load ptr, ptr %696, align 8, !tbaa !63
  store ptr %700, ptr %13, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %13) #6
  %701 = load ptr, ptr %695, align 8, !tbaa !62
  %702 = call ptr %701(ptr noundef nonnull %13) #6
  %703 = icmp eq ptr %702, null
  br i1 %703, label %800, label %704

704:                                              ; preds = %697, %732
  %705 = phi i1 [ %735, %732 ], [ %703, %697 ]
  %706 = phi ptr [ %734, %732 ], [ %702, %697 ]
  %707 = getelementptr inbounds %struct.BMEdge, ptr %706, i64 0, i32 4
  %708 = load ptr, ptr %707, align 8, !tbaa !81
  %709 = icmp eq ptr %708, null
  br i1 %709, label %719, label %710

710:                                              ; preds = %704
  %711 = getelementptr inbounds %struct.BMLoop, ptr %708, i64 0, i32 4
  %712 = load ptr, ptr %711, align 8, !tbaa !84
  %713 = icmp eq ptr %712, %708
  br i1 %713, label %719, label %714

714:                                              ; preds = %710
  %715 = getelementptr inbounds %struct.BMLoop, ptr %712, i64 0, i32 4
  %716 = load ptr, ptr %715, align 8, !tbaa !84
  %717 = icmp eq ptr %716, %708
  %718 = zext i1 %717 to i8
  br label %719

719:                                              ; preds = %714, %710, %704
  %720 = phi i8 [ 0, %710 ], [ 0, %704 ], [ %718, %714 ]
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %732, label %722

722:                                              ; preds = %719
  %723 = getelementptr inbounds %struct.BMHeader, ptr %706, i64 0, i32 3
  %724 = load i8, ptr %723, align 1, !tbaa !65
  %725 = and i8 %724, 16
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %732, label %727

727:                                              ; preds = %722
  br i1 %709, label %736, label %728

728:                                              ; preds = %727
  %729 = getelementptr inbounds %struct.BMHeader, ptr %708, i64 0, i32 1
  %730 = load i32, ptr %729, align 8, !tbaa !104
  %731 = icmp eq i32 %730, -2147483648
  br i1 %731, label %736, label %732

732:                                              ; preds = %728, %722, %719
  %733 = load ptr, ptr %695, align 8, !tbaa !62
  %734 = call ptr %733(ptr noundef nonnull %13) #6
  %735 = icmp eq ptr %734, null
  br i1 %735, label %800, label %704, !llvm.loop !108

736:                                              ; preds = %728, %727
  %737 = getelementptr inbounds %struct.BMEdge, ptr %706, i64 0, i32 2
  %738 = load ptr, ptr %737, align 8, !tbaa !86
  %739 = call fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %738, i32 noundef %698)
  %740 = icmp eq ptr %739, null
  br i1 %740, label %756, label %741

741:                                              ; preds = %736, %741
  %742 = phi ptr [ %754, %741 ], [ %739, %736 ]
  %743 = phi ptr [ %752, %741 ], [ %738, %736 ]
  %744 = phi i32 [ %753, %741 ], [ %698, %736 ]
  %745 = getelementptr inbounds %struct.BMEdge, ptr %742, i64 0, i32 2
  %746 = load ptr, ptr %745, align 8, !tbaa !86
  %747 = icmp eq ptr %746, %743
  %748 = getelementptr inbounds %struct.BMEdge, ptr %742, i64 0, i32 3
  %749 = load ptr, ptr %748, align 8, !tbaa !87
  %750 = icmp eq ptr %749, %743
  %751 = select i1 %750, ptr %746, ptr null
  %752 = select i1 %747, ptr %749, ptr %751
  %753 = add nsw i32 %744, 1
  %754 = call fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %752, i32 noundef %753)
  %755 = icmp eq ptr %754, null
  br i1 %755, label %756, label %741, !llvm.loop !109

756:                                              ; preds = %741, %736
  %757 = phi i32 [ %698, %736 ], [ %753, %741 ]
  %758 = phi ptr [ null, %736 ], [ %742, %741 ]
  %759 = add nsw i32 %757, -1
  %760 = load ptr, ptr %737, align 8, !tbaa !86
  %761 = add nsw i32 %698, -1
  %762 = call fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %760, i32 noundef %761)
  %763 = icmp eq ptr %762, null
  br i1 %763, label %779, label %764

764:                                              ; preds = %756, %764
  %765 = phi ptr [ %777, %764 ], [ %762, %756 ]
  %766 = phi i32 [ %776, %764 ], [ %761, %756 ]
  %767 = phi ptr [ %775, %764 ], [ %760, %756 ]
  %768 = getelementptr inbounds %struct.BMEdge, ptr %765, i64 0, i32 2
  %769 = load ptr, ptr %768, align 8, !tbaa !86
  %770 = icmp eq ptr %769, %767
  %771 = getelementptr inbounds %struct.BMEdge, ptr %765, i64 0, i32 3
  %772 = load ptr, ptr %771, align 8, !tbaa !87
  %773 = icmp eq ptr %772, %767
  %774 = select i1 %773, ptr %769, ptr null
  %775 = select i1 %770, ptr %772, ptr %774
  %776 = add nsw i32 %766, -1
  %777 = call fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %775, i32 noundef %776)
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %764, !llvm.loop !110

779:                                              ; preds = %764, %756
  %780 = load i32, ptr %651, align 4, !tbaa !102
  %781 = add nsw i32 %759, %780
  %782 = load ptr, ptr %12, align 8
  %783 = icmp eq ptr %782, null
  br i1 %783, label %788, label %784

784:                                              ; preds = %779
  %785 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !89
  %786 = call i64 %785(ptr noundef nonnull %782) #6
  %787 = lshr i64 %786, 4
  br label %788

788:                                              ; preds = %784, %779
  %789 = phi i64 [ 0, %779 ], [ %787, %784 ]
  %790 = add nsw i32 %699, 1
  %791 = sext i32 %790 to i64
  %792 = icmp ult i64 %789, %791
  br i1 %792, label %793, label %794

793:                                              ; preds = %788
  call void @_bli_array_grow_func(ptr noundef nonnull %12, ptr noundef null, i32 noundef 16, i32 noundef %699, i32 noundef 1, ptr noundef nonnull @.str.12) #6
  br label %794

794:                                              ; preds = %793, %788
  %795 = load ptr, ptr %12, align 8, !tbaa !89
  %796 = sext i32 %699 to i64
  %797 = getelementptr inbounds %struct.EdgeLoopPair, ptr %795, i64 %796
  %798 = getelementptr inbounds %struct.EdgeLoopPair, ptr %795, i64 %796, i32 1
  %799 = call zeroext i8 @BM_edge_loop_pair(ptr noundef %758, ptr noundef %797, ptr noundef nonnull %798) #6
  br label %800

800:                                              ; preds = %732, %697, %794
  %801 = phi i1 [ %705, %794 ], [ %703, %697 ], [ %735, %732 ]
  %802 = phi i32 [ %781, %794 ], [ %698, %697 ], [ %698, %732 ]
  %803 = phi i32 [ %790, %794 ], [ %699, %697 ], [ %699, %732 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #6
  br i1 %801, label %804, label %697

804:                                              ; preds = %800
  %805 = load ptr, ptr %12, align 8
  %806 = icmp eq ptr %805, null
  br i1 %806, label %811, label %807

807:                                              ; preds = %804
  %808 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !89
  %809 = call i64 %808(ptr noundef nonnull %805) #6
  %810 = lshr i64 %809, 4
  br label %811

811:                                              ; preds = %807, %804
  %812 = phi i64 [ 0, %804 ], [ %810, %807 ]
  %813 = add nsw i32 %803, 1
  %814 = sext i32 %813 to i64
  %815 = icmp ult i64 %812, %814
  br i1 %815, label %816, label %817

816:                                              ; preds = %811
  call void @_bli_array_grow_func(ptr noundef nonnull %12, ptr noundef null, i32 noundef 16, i32 noundef %803, i32 noundef 1, ptr noundef nonnull @.str.12) #6
  br label %817

817:                                              ; preds = %816, %811
  %818 = load ptr, ptr %12, align 8, !tbaa !89
  %819 = sext i32 %803 to i64
  %820 = getelementptr inbounds %struct.EdgeLoopPair, ptr %818, i64 %819
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %820, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  %821 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 4
  store i8 1, ptr %821, align 4, !tbaa !59
  %822 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %822, align 8, !tbaa !61
  %823 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %823, align 8, !tbaa !62
  %824 = getelementptr inbounds %struct.BMesh, ptr %92, i64 0, i32 9
  %825 = load ptr, ptr %824, align 8, !tbaa !77
  store ptr %825, ptr %14, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %14) #6
  %826 = load ptr, ptr %823, align 8, !tbaa !62
  %827 = call ptr %826(ptr noundef nonnull %14) #6
  %828 = icmp eq ptr %827, null
  br i1 %828, label %947, label %829

829:                                              ; preds = %817
  %830 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  %831 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  %832 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  br label %833

833:                                              ; preds = %829, %943
  %834 = phi ptr [ %827, %829 ], [ %945, %943 ]
  store i8 4, ptr %830, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %831, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %832, align 8, !tbaa !62
  store ptr %834, ptr %15, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %15) #6
  %835 = load ptr, ptr %832, align 8, !tbaa !62
  %836 = call ptr %835(ptr noundef nonnull %15) #6
  %837 = icmp eq ptr %836, null
  br i1 %837, label %883, label %838

838:                                              ; preds = %833, %878
  %839 = phi i32 [ %862, %878 ], [ 0, %833 ]
  %840 = phi i32 [ %861, %878 ], [ 0, %833 ]
  %841 = phi i8 [ %879, %878 ], [ 1, %833 ]
  %842 = phi ptr [ %881, %878 ], [ %836, %833 ]
  %843 = phi ptr [ %860, %878 ], [ null, %833 ]
  %844 = getelementptr inbounds %struct.BMEdge, ptr %842, i64 0, i32 4
  %845 = load ptr, ptr %844, align 8, !tbaa !81
  %846 = icmp eq ptr %845, null
  br i1 %846, label %859, label %847

847:                                              ; preds = %838
  %848 = getelementptr inbounds %struct.BMHeader, ptr %842, i64 0, i32 3
  %849 = load i8, ptr %848, align 1, !tbaa !65
  %850 = and i8 %849, 2
  %851 = icmp eq i8 %850, 0
  br i1 %851, label %852, label %859

852:                                              ; preds = %847
  %853 = and i8 %849, 1
  %854 = icmp eq i8 %853, 0
  %855 = select i1 %854, ptr %843, ptr %842
  %856 = zext nneg i8 %853 to i32
  %857 = add i32 %839, %856
  %858 = add nsw i32 %840, 1
  br label %859

859:                                              ; preds = %852, %847, %838
  %860 = phi ptr [ %843, %838 ], [ %843, %847 ], [ %855, %852 ]
  %861 = phi i32 [ %840, %838 ], [ %840, %847 ], [ %858, %852 ]
  %862 = phi i32 [ %839, %838 ], [ %839, %847 ], [ %857, %852 ]
  %863 = icmp eq i8 %841, 1
  br i1 %863, label %864, label %878

864:                                              ; preds = %859
  br i1 %846, label %874, label %865

865:                                              ; preds = %864
  %866 = getelementptr inbounds %struct.BMLoop, ptr %845, i64 0, i32 4
  %867 = load ptr, ptr %866, align 8, !tbaa !84
  %868 = icmp eq ptr %867, %845
  br i1 %868, label %874, label %869

869:                                              ; preds = %865
  %870 = getelementptr inbounds %struct.BMLoop, ptr %867, i64 0, i32 4
  %871 = load ptr, ptr %870, align 8, !tbaa !84
  %872 = icmp eq ptr %871, %845
  %873 = zext i1 %872 to i8
  br label %874

874:                                              ; preds = %869, %865, %864
  %875 = phi i8 [ 0, %865 ], [ 0, %864 ], [ %873, %869 ]
  %876 = icmp eq i8 %875, 0
  %877 = select i1 %876, i8 0, i8 %841
  br label %878

878:                                              ; preds = %874, %859
  %879 = phi i8 [ %841, %859 ], [ %877, %874 ]
  %880 = load ptr, ptr %832, align 8, !tbaa !62
  %881 = call ptr %880(ptr noundef nonnull %15) #6
  %882 = icmp eq ptr %881, null
  br i1 %882, label %883, label %838, !llvm.loop !111

883:                                              ; preds = %878, %833
  %884 = phi ptr [ null, %833 ], [ %860, %878 ]
  %885 = phi i8 [ 1, %833 ], [ %879, %878 ]
  %886 = phi i32 [ 0, %833 ], [ %861, %878 ]
  %887 = phi i32 [ 0, %833 ], [ %862, %878 ]
  %888 = icmp eq i32 %887, 1
  br i1 %888, label %889, label %943

889:                                              ; preds = %883
  %890 = getelementptr inbounds %struct.BMEdge, ptr %884, i64 0, i32 4
  %891 = load ptr, ptr %890, align 8, !tbaa !81
  %892 = icmp eq ptr %891, null
  br i1 %892, label %943, label %893

893:                                              ; preds = %889
  %894 = add i32 %886, -3
  %895 = icmp ult i32 %894, 2
  %896 = icmp eq i8 %885, 0
  %897 = select i1 %895, i1 true, i1 %896
  br i1 %897, label %898, label %935

898:                                              ; preds = %893
  %899 = getelementptr inbounds %struct.BMLoop, ptr %891, i64 0, i32 4
  %900 = load ptr, ptr %899, align 8, !tbaa !84
  %901 = call fastcc float @edbm_rip_edge_side_measure(ptr noundef %884, ptr noundef nonnull %891, ptr noundef %89, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %902 = call fastcc float @edbm_rip_edge_side_measure(ptr noundef %884, ptr noundef %900, ptr noundef %89, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %903 = fcmp olt float %901, %902
  %904 = select i1 %903, ptr %891, ptr %900
  %905 = call ptr @BM_loop_other_edge_loop(ptr noundef %904, ptr noundef nonnull %834) #6
  %906 = getelementptr inbounds %struct.BMLoop, ptr %905, i64 0, i32 2
  %907 = load ptr, ptr %906, align 8, !tbaa !90
  %908 = getelementptr inbounds %struct.BMEdge, ptr %907, i64 0, i32 4
  %909 = load ptr, ptr %908, align 8, !tbaa !81
  %910 = icmp eq ptr %909, null
  br i1 %910, label %920, label %911

911:                                              ; preds = %898
  %912 = getelementptr inbounds %struct.BMLoop, ptr %909, i64 0, i32 4
  %913 = load ptr, ptr %912, align 8, !tbaa !84
  %914 = icmp eq ptr %913, %909
  br i1 %914, label %920, label %915

915:                                              ; preds = %911
  %916 = getelementptr inbounds %struct.BMLoop, ptr %913, i64 0, i32 4
  %917 = load ptr, ptr %916, align 8, !tbaa !84
  %918 = icmp eq ptr %917, %909
  %919 = zext i1 %918 to i8
  br label %920

920:                                              ; preds = %915, %911, %898
  %921 = phi i8 [ 0, %911 ], [ 0, %898 ], [ %919, %915 ]
  %922 = icmp eq i8 %921, 0
  br i1 %922, label %943, label %923

923:                                              ; preds = %920
  %924 = getelementptr inbounds %struct.BMLoop, ptr %905, i64 0, i32 4
  %925 = load ptr, ptr %924, align 8, !tbaa !84
  %926 = icmp eq i32 %886, 3
  br i1 %926, label %929, label %927

927:                                              ; preds = %923
  %928 = call ptr @BM_loop_other_edge_loop(ptr noundef %925, ptr noundef nonnull %834) #6
  br label %929

929:                                              ; preds = %927, %923
  %930 = phi ptr [ %928, %927 ], [ %925, %923 ]
  %931 = icmp eq ptr %930, null
  br i1 %931, label %943, label %932

932:                                              ; preds = %929
  %933 = getelementptr inbounds %struct.BMLoop, ptr %930, i64 0, i32 2
  %934 = load ptr, ptr %933, align 8, !tbaa !90
  br label %938

935:                                              ; preds = %893
  %936 = call ptr @BM_vert_other_disk_edge(ptr noundef nonnull %834, ptr noundef %884) #6
  %937 = icmp eq ptr %936, null
  br i1 %937, label %943, label %938

938:                                              ; preds = %935, %932
  %939 = phi ptr [ %934, %932 ], [ %936, %935 ]
  %940 = getelementptr inbounds %struct.BMHeader, ptr %939, i64 0, i32 3
  %941 = load i8, ptr %940, align 1, !tbaa !65
  %942 = or i8 %941, 16
  store i8 %942, ptr %940, align 1, !tbaa !65
  br label %943

943:                                              ; preds = %938, %935, %929, %920, %889, %883
  %944 = load ptr, ptr %823, align 8, !tbaa !62
  %945 = call ptr %944(ptr noundef nonnull %14) #6
  %946 = icmp eq ptr %945, null
  br i1 %946, label %947, label %833, !llvm.loop !112

947:                                              ; preds = %943, %817
  %948 = and i32 %87, 255
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %952, label %950

950:                                              ; preds = %947
  %951 = call fastcc ptr @edbm_tagged_loop_pairs_to_fill(ptr noundef %92)
  br label %952

952:                                              ; preds = %950, %947
  %953 = phi ptr [ %951, %950 ], [ null, %947 ]
  %954 = load ptr, ptr %91, align 8, !tbaa !48
  call void @BM_mesh_edgesplit(ptr noundef %954, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %955 = load ptr, ptr %818, align 8, !tbaa !113
  %956 = icmp eq ptr %955, null
  br i1 %956, label %1213, label %957

957:                                              ; preds = %952
  %958 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %959 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %960 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %961 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %962 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %963 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %964 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %965 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %966 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %967 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %968 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %969 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %970 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %971 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %972 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %973 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %974 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %975 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %976

976:                                              ; preds = %957, %1209
  %977 = phi ptr [ %955, %957 ], [ %1211, %1209 ]
  %978 = phi ptr [ %818, %957 ], [ %1210, %1209 ]
  %979 = getelementptr inbounds %struct.BMLoop, ptr %977, i64 0, i32 2
  %980 = load ptr, ptr %979, align 8, !tbaa !90
  %981 = getelementptr inbounds %struct.BMEdge, ptr %980, i64 0, i32 2
  %982 = load ptr, ptr %981, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #6
  %983 = load ptr, ptr %981, align 8, !tbaa !86
  %984 = icmp eq ptr %983, %982
  %985 = getelementptr inbounds %struct.BMEdge, ptr %980, i64 0, i32 3
  %986 = load ptr, ptr %985, align 8, !tbaa !87
  %987 = icmp eq ptr %986, %982
  %988 = select i1 %987, ptr %983, ptr null
  %989 = select i1 %984, ptr %986, ptr %988
  %990 = getelementptr inbounds %struct.BMEdge, ptr %980, i64 0, i32 4
  %991 = load ptr, ptr %990, align 8, !tbaa !81
  %992 = getelementptr inbounds %struct.BMHeader, ptr %991, i64 0, i32 1
  %993 = load i32, ptr %992, align 8, !tbaa !104
  %994 = add nsw i32 %993, -1
  store i8 4, ptr %958, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %959, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %960, align 8, !tbaa !62
  store ptr %989, ptr %9, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %9) #6
  %995 = load ptr, ptr %960, align 8, !tbaa !62
  %996 = call ptr %995(ptr noundef nonnull %9) #6
  %997 = icmp eq ptr %996, null
  br i1 %997, label %1009, label %998

998:                                              ; preds = %976, %1005
  %999 = phi ptr [ %1007, %1005 ], [ %996, %976 ]
  %1000 = getelementptr inbounds %struct.BMEdge, ptr %999, i64 0, i32 4
  %1001 = load ptr, ptr %1000, align 8, !tbaa !81
  %1002 = getelementptr inbounds %struct.BMHeader, ptr %1001, i64 0, i32 1
  %1003 = load i32, ptr %1002, align 8, !tbaa !104
  %1004 = icmp ne i32 %1003, %994
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %998
  %1006 = load ptr, ptr %960, align 8, !tbaa !62
  %1007 = call ptr %1006(ptr noundef nonnull %9) #6
  %1008 = icmp eq ptr %1007, null
  br i1 %1008, label %1009, label %998, !llvm.loop !115

1009:                                             ; preds = %998, %1005, %976
  %1010 = phi i1 [ true, %976 ], [ %1004, %1005 ], [ %1004, %998 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #6
  %1011 = icmp eq ptr %980, null
  br i1 %1011, label %1054, label %1012

1012:                                             ; preds = %1009
  %1013 = getelementptr inbounds %struct.BMEdge, ptr %980, i64 0, i32 3
  %1014 = select i1 %1010, ptr %1013, ptr %981
  %1015 = load ptr, ptr %1014, align 8, !tbaa !89
  br label %1016

1016:                                             ; preds = %1012, %1050
  %1017 = phi float [ %1023, %1050 ], [ 0.000000e+00, %1012 ]
  %1018 = phi ptr [ %1052, %1050 ], [ %980, %1012 ]
  %1019 = phi ptr [ %1051, %1050 ], [ %1015, %1012 ]
  %1020 = getelementptr inbounds %struct.BMEdge, ptr %1018, i64 0, i32 4
  %1021 = load ptr, ptr %1020, align 8, !tbaa !81
  %1022 = call fastcc float @edbm_rip_edge_side_measure(ptr noundef nonnull %1018, ptr noundef %1021, ptr noundef %89, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %1023 = fadd float %1017, %1022
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #6
  %1024 = getelementptr inbounds %struct.BMEdge, ptr %1018, i64 0, i32 2
  %1025 = load ptr, ptr %1024, align 8, !tbaa !86
  %1026 = icmp eq ptr %1025, %1019
  %1027 = getelementptr inbounds %struct.BMEdge, ptr %1018, i64 0, i32 3
  %1028 = load ptr, ptr %1027, align 8, !tbaa !87
  %1029 = icmp eq ptr %1028, %1019
  %1030 = select i1 %1029, ptr %1025, ptr null
  %1031 = select i1 %1026, ptr %1028, ptr %1030
  %1032 = load ptr, ptr %1020, align 8, !tbaa !81
  %1033 = getelementptr inbounds %struct.BMHeader, ptr %1032, i64 0, i32 1
  %1034 = load i32, ptr %1033, align 8, !tbaa !104
  %1035 = add nsw i32 %1034, -1
  store i8 4, ptr %961, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %962, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %963, align 8, !tbaa !62
  store ptr %1031, ptr %8, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %8) #6
  %1036 = load ptr, ptr %963, align 8, !tbaa !62
  %1037 = call ptr %1036(ptr noundef nonnull %8) #6
  %1038 = icmp eq ptr %1037, null
  br i1 %1038, label %1050, label %1039

1039:                                             ; preds = %1016, %1046
  %1040 = phi ptr [ %1048, %1046 ], [ %1037, %1016 ]
  %1041 = getelementptr inbounds %struct.BMEdge, ptr %1040, i64 0, i32 4
  %1042 = load ptr, ptr %1041, align 8, !tbaa !81
  %1043 = getelementptr inbounds %struct.BMHeader, ptr %1042, i64 0, i32 1
  %1044 = load i32, ptr %1043, align 8, !tbaa !104
  %1045 = icmp eq i32 %1044, %1035
  br i1 %1045, label %1050, label %1046

1046:                                             ; preds = %1039
  %1047 = load ptr, ptr %963, align 8, !tbaa !62
  %1048 = call ptr %1047(ptr noundef nonnull %8) #6
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1050, label %1039, !llvm.loop !115

1050:                                             ; preds = %1039, %1046, %1016
  %1051 = phi ptr [ %1019, %1016 ], [ %1019, %1046 ], [ %1031, %1039 ]
  %1052 = phi ptr [ null, %1016 ], [ null, %1046 ], [ %1040, %1039 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #6
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1054, label %1016, !llvm.loop !116

1054:                                             ; preds = %1050, %1009
  %1055 = phi float [ 0.000000e+00, %1009 ], [ %1023, %1050 ]
  %1056 = getelementptr inbounds %struct.EdgeLoopPair, ptr %978, i64 0, i32 1
  %1057 = load ptr, ptr %1056, align 8, !tbaa !117
  %1058 = getelementptr inbounds %struct.BMLoop, ptr %1057, i64 0, i32 2
  %1059 = load ptr, ptr %1058, align 8, !tbaa !90
  %1060 = getelementptr inbounds %struct.BMEdge, ptr %1059, i64 0, i32 2
  %1061 = load ptr, ptr %1060, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  %1062 = load ptr, ptr %1060, align 8, !tbaa !86
  %1063 = icmp eq ptr %1062, %1061
  %1064 = getelementptr inbounds %struct.BMEdge, ptr %1059, i64 0, i32 3
  %1065 = load ptr, ptr %1064, align 8, !tbaa !87
  %1066 = icmp eq ptr %1065, %1061
  %1067 = select i1 %1066, ptr %1062, ptr null
  %1068 = select i1 %1063, ptr %1065, ptr %1067
  %1069 = getelementptr inbounds %struct.BMEdge, ptr %1059, i64 0, i32 4
  %1070 = load ptr, ptr %1069, align 8, !tbaa !81
  %1071 = getelementptr inbounds %struct.BMHeader, ptr %1070, i64 0, i32 1
  %1072 = load i32, ptr %1071, align 8, !tbaa !104
  %1073 = add nsw i32 %1072, -1
  store i8 4, ptr %964, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %965, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %966, align 8, !tbaa !62
  store ptr %1068, ptr %7, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #6
  %1074 = load ptr, ptr %966, align 8, !tbaa !62
  %1075 = call ptr %1074(ptr noundef nonnull %7) #6
  %1076 = icmp eq ptr %1075, null
  br i1 %1076, label %1088, label %1077

1077:                                             ; preds = %1054, %1084
  %1078 = phi ptr [ %1086, %1084 ], [ %1075, %1054 ]
  %1079 = getelementptr inbounds %struct.BMEdge, ptr %1078, i64 0, i32 4
  %1080 = load ptr, ptr %1079, align 8, !tbaa !81
  %1081 = getelementptr inbounds %struct.BMHeader, ptr %1080, i64 0, i32 1
  %1082 = load i32, ptr %1081, align 8, !tbaa !104
  %1083 = icmp ne i32 %1082, %1073
  br i1 %1083, label %1084, label %1088

1084:                                             ; preds = %1077
  %1085 = load ptr, ptr %966, align 8, !tbaa !62
  %1086 = call ptr %1085(ptr noundef nonnull %7) #6
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1088, label %1077, !llvm.loop !115

1088:                                             ; preds = %1077, %1084, %1054
  %1089 = phi i1 [ true, %1054 ], [ %1083, %1084 ], [ %1083, %1077 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  %1090 = icmp eq ptr %1059, null
  br i1 %1090, label %1133, label %1091

1091:                                             ; preds = %1088
  %1092 = getelementptr inbounds %struct.BMEdge, ptr %1059, i64 0, i32 3
  %1093 = select i1 %1089, ptr %1092, ptr %1060
  %1094 = load ptr, ptr %1093, align 8, !tbaa !89
  br label %1095

1095:                                             ; preds = %1091, %1129
  %1096 = phi float [ %1102, %1129 ], [ 0.000000e+00, %1091 ]
  %1097 = phi ptr [ %1131, %1129 ], [ %1059, %1091 ]
  %1098 = phi ptr [ %1130, %1129 ], [ %1094, %1091 ]
  %1099 = getelementptr inbounds %struct.BMEdge, ptr %1097, i64 0, i32 4
  %1100 = load ptr, ptr %1099, align 8, !tbaa !81
  %1101 = call fastcc float @edbm_rip_edge_side_measure(ptr noundef nonnull %1097, ptr noundef %1100, ptr noundef %89, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %1102 = fadd float %1096, %1101
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %1103 = getelementptr inbounds %struct.BMEdge, ptr %1097, i64 0, i32 2
  %1104 = load ptr, ptr %1103, align 8, !tbaa !86
  %1105 = icmp eq ptr %1104, %1098
  %1106 = getelementptr inbounds %struct.BMEdge, ptr %1097, i64 0, i32 3
  %1107 = load ptr, ptr %1106, align 8, !tbaa !87
  %1108 = icmp eq ptr %1107, %1098
  %1109 = select i1 %1108, ptr %1104, ptr null
  %1110 = select i1 %1105, ptr %1107, ptr %1109
  %1111 = load ptr, ptr %1099, align 8, !tbaa !81
  %1112 = getelementptr inbounds %struct.BMHeader, ptr %1111, i64 0, i32 1
  %1113 = load i32, ptr %1112, align 8, !tbaa !104
  %1114 = add nsw i32 %1113, -1
  store i8 4, ptr %967, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %968, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %969, align 8, !tbaa !62
  store ptr %1110, ptr %6, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #6
  %1115 = load ptr, ptr %969, align 8, !tbaa !62
  %1116 = call ptr %1115(ptr noundef nonnull %6) #6
  %1117 = icmp eq ptr %1116, null
  br i1 %1117, label %1129, label %1118

1118:                                             ; preds = %1095, %1125
  %1119 = phi ptr [ %1127, %1125 ], [ %1116, %1095 ]
  %1120 = getelementptr inbounds %struct.BMEdge, ptr %1119, i64 0, i32 4
  %1121 = load ptr, ptr %1120, align 8, !tbaa !81
  %1122 = getelementptr inbounds %struct.BMHeader, ptr %1121, i64 0, i32 1
  %1123 = load i32, ptr %1122, align 8, !tbaa !104
  %1124 = icmp eq i32 %1123, %1114
  br i1 %1124, label %1129, label %1125

1125:                                             ; preds = %1118
  %1126 = load ptr, ptr %969, align 8, !tbaa !62
  %1127 = call ptr %1126(ptr noundef nonnull %6) #6
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1129, label %1118, !llvm.loop !115

1129:                                             ; preds = %1118, %1125, %1095
  %1130 = phi ptr [ %1098, %1095 ], [ %1098, %1125 ], [ %1110, %1118 ]
  %1131 = phi ptr [ null, %1095 ], [ null, %1125 ], [ %1119, %1118 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1133, label %1095, !llvm.loop !118

1133:                                             ; preds = %1129, %1088
  %1134 = phi float [ 0.000000e+00, %1088 ], [ %1102, %1129 ]
  %1135 = fcmp ogt float %1055, %1134
  %1136 = select i1 %1135, ptr %978, ptr %1056
  %1137 = load ptr, ptr %1136, align 8, !tbaa !89
  %1138 = getelementptr inbounds %struct.BMLoop, ptr %1137, i64 0, i32 2
  %1139 = load ptr, ptr %1138, align 8, !tbaa !90
  %1140 = getelementptr inbounds %struct.BMEdge, ptr %1139, i64 0, i32 2
  %1141 = load ptr, ptr %1140, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %1142 = load ptr, ptr %1140, align 8, !tbaa !86
  %1143 = icmp eq ptr %1142, %1141
  %1144 = getelementptr inbounds %struct.BMEdge, ptr %1139, i64 0, i32 3
  %1145 = load ptr, ptr %1144, align 8, !tbaa !87
  %1146 = icmp eq ptr %1145, %1141
  %1147 = select i1 %1146, ptr %1142, ptr null
  %1148 = select i1 %1143, ptr %1145, ptr %1147
  %1149 = getelementptr inbounds %struct.BMEdge, ptr %1139, i64 0, i32 4
  %1150 = load ptr, ptr %1149, align 8, !tbaa !81
  %1151 = getelementptr inbounds %struct.BMHeader, ptr %1150, i64 0, i32 1
  %1152 = load i32, ptr %1151, align 8, !tbaa !104
  %1153 = add nsw i32 %1152, -1
  store i8 4, ptr %970, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %971, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %972, align 8, !tbaa !62
  store ptr %1148, ptr %5, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #6
  %1154 = load ptr, ptr %972, align 8, !tbaa !62
  %1155 = call ptr %1154(ptr noundef nonnull %5) #6
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1168, label %1157

1157:                                             ; preds = %1133, %1164
  %1158 = phi ptr [ %1166, %1164 ], [ %1155, %1133 ]
  %1159 = getelementptr inbounds %struct.BMEdge, ptr %1158, i64 0, i32 4
  %1160 = load ptr, ptr %1159, align 8, !tbaa !81
  %1161 = getelementptr inbounds %struct.BMHeader, ptr %1160, i64 0, i32 1
  %1162 = load i32, ptr %1161, align 8, !tbaa !104
  %1163 = icmp ne i32 %1162, %1153
  br i1 %1163, label %1164, label %1168

1164:                                             ; preds = %1157
  %1165 = load ptr, ptr %972, align 8, !tbaa !62
  %1166 = call ptr %1165(ptr noundef nonnull %5) #6
  %1167 = icmp eq ptr %1166, null
  br i1 %1167, label %1168, label %1157, !llvm.loop !115

1168:                                             ; preds = %1157, %1164, %1133
  %1169 = phi i1 [ true, %1133 ], [ %1163, %1164 ], [ %1163, %1157 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  %1170 = icmp eq ptr %1139, null
  br i1 %1170, label %1209, label %1171

1171:                                             ; preds = %1168
  %1172 = getelementptr inbounds %struct.BMEdge, ptr %1139, i64 0, i32 3
  %1173 = select i1 %1169, ptr %1172, ptr %1140
  %1174 = load ptr, ptr %1173, align 8, !tbaa !89
  br label %1175

1175:                                             ; preds = %1171, %1205
  %1176 = phi ptr [ %1207, %1205 ], [ %1139, %1171 ]
  %1177 = phi ptr [ %1206, %1205 ], [ %1174, %1171 ]
  call void @BM_edge_select_set(ptr noundef %92, ptr noundef nonnull %1176, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %1178 = getelementptr inbounds %struct.BMEdge, ptr %1176, i64 0, i32 2
  %1179 = load ptr, ptr %1178, align 8, !tbaa !86
  %1180 = icmp eq ptr %1179, %1177
  %1181 = getelementptr inbounds %struct.BMEdge, ptr %1176, i64 0, i32 3
  %1182 = load ptr, ptr %1181, align 8, !tbaa !87
  %1183 = icmp eq ptr %1182, %1177
  %1184 = select i1 %1183, ptr %1179, ptr null
  %1185 = select i1 %1180, ptr %1182, ptr %1184
  %1186 = getelementptr inbounds %struct.BMEdge, ptr %1176, i64 0, i32 4
  %1187 = load ptr, ptr %1186, align 8, !tbaa !81
  %1188 = getelementptr inbounds %struct.BMHeader, ptr %1187, i64 0, i32 1
  %1189 = load i32, ptr %1188, align 8, !tbaa !104
  %1190 = add nsw i32 %1189, -1
  store i8 4, ptr %973, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %974, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %975, align 8, !tbaa !62
  store ptr %1185, ptr %4, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #6
  %1191 = load ptr, ptr %975, align 8, !tbaa !62
  %1192 = call ptr %1191(ptr noundef nonnull %4) #6
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1205, label %1194

1194:                                             ; preds = %1175, %1201
  %1195 = phi ptr [ %1203, %1201 ], [ %1192, %1175 ]
  %1196 = getelementptr inbounds %struct.BMEdge, ptr %1195, i64 0, i32 4
  %1197 = load ptr, ptr %1196, align 8, !tbaa !81
  %1198 = getelementptr inbounds %struct.BMHeader, ptr %1197, i64 0, i32 1
  %1199 = load i32, ptr %1198, align 8, !tbaa !104
  %1200 = icmp eq i32 %1199, %1190
  br i1 %1200, label %1205, label %1201

1201:                                             ; preds = %1194
  %1202 = load ptr, ptr %975, align 8, !tbaa !62
  %1203 = call ptr %1202(ptr noundef nonnull %4) #6
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %1205, label %1194, !llvm.loop !115

1205:                                             ; preds = %1194, %1201, %1175
  %1206 = phi ptr [ %1177, %1175 ], [ %1177, %1201 ], [ %1185, %1194 ]
  %1207 = phi ptr [ null, %1175 ], [ null, %1201 ], [ %1195, %1194 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %1208 = icmp eq ptr %1207, null
  br i1 %1208, label %1209, label %1175, !llvm.loop !119

1209:                                             ; preds = %1205, %1168
  %1210 = getelementptr inbounds %struct.EdgeLoopPair, ptr %978, i64 1
  %1211 = load ptr, ptr %1210, align 8, !tbaa !113
  %1212 = icmp eq ptr %1211, null
  br i1 %1212, label %1213, label %976, !llvm.loop !120

1213:                                             ; preds = %1209, %952
  %1214 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %1214(ptr noundef nonnull %818) #6
  call void @BM_mesh_select_mode_clean_ex(ptr noundef %92, i16 noundef signext 2) #6
  %1215 = icmp ne i32 %948, 0
  %1216 = icmp ne ptr %953, null
  %1217 = select i1 %1215, i1 %1216, i1 false
  br i1 %1217, label %1218, label %1220

1218:                                             ; preds = %1213
  call fastcc void @edbm_tagged_loop_pairs_do_fill_faces(ptr noundef %92, ptr noundef nonnull %953)
  %1219 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %1219(ptr noundef nonnull %953) #6
  br label %1220

1220:                                             ; preds = %1218, %1213
  %1221 = load i32, ptr %651, align 4, !tbaa !102
  %1222 = icmp eq i32 %652, %1221
  br i1 %1222, label %1223, label %1226

1223:                                             ; preds = %1220
  %1224 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %1225 = load ptr, ptr %1224, align 8, !tbaa !57
  call void @BKE_report(ptr noundef %1225, i32 noundef 32, ptr noundef nonnull @.str.11) #6
  br label %1227

1226:                                             ; preds = %1220
  call void @BM_select_history_validate(ptr noundef %92) #6
  br label %1227

1227:                                             ; preds = %1223, %1226
  %1228 = phi i32 [ 2, %1223 ], [ 4, %1226 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #6
  br label %1229

1229:                                             ; preds = %1227, %648
  %1230 = phi i32 [ %649, %648 ], [ %1228, %1227 ]
  %1231 = icmp eq i32 %1230, 2
  br i1 %1231, label %1236, label %1232

1232:                                             ; preds = %1229
  %1233 = load i32, ptr %35, align 8, !tbaa !52
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1236, label %1235

1235:                                             ; preds = %1232
  call void @EDBM_update_generic(ptr noundef nonnull %33, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %1236

1236:                                             ; preds = %1232, %1229, %1235, %60, %51
  %1237 = phi i32 [ 2, %51 ], [ 2, %60 ], [ 4, %1235 ], [ 2, %1229 ], [ 2, %1232 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %31) #6
  ret i32 %1237
}

declare i32 @EDBM_view3d_poll(ptr noundef) #1

declare void @Transform_Properties(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

declare void @bmiter__loop_of_face_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BM_vert_is_wire(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc float @edbm_rip_edgedist_squared(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @ED_view3d_project_float_v2_m4(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %1) #6
  call void @ED_view3d_project_float_v2_m4(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %1) #6
  %8 = load float, ptr %6, align 4, !tbaa !73
  %9 = load float, ptr %7, align 4, !tbaa !73
  %10 = fsub float %8, %9
  %11 = getelementptr inbounds float, ptr %6, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !73
  %13 = getelementptr inbounds float, ptr %7, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !73
  %15 = fsub float %12, %14
  %16 = fmul float %15, %15
  %17 = call float @llvm.fmuladd.f32(float %10, float %10, float %16)
  %18 = call float @sqrtf(float noundef %17) #6
  %19 = fcmp ogt float %18, 0x3E80000000000000
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = fdiv float 0x3EE4F8B580000000, %18
  call void @interp_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %21) #6
  call void @interp_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %21) #6
  br label %22

22:                                               ; preds = %5, %20
  %23 = call float @dist_squared_to_line_segment_v2(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  ret float %23
}

declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #1

declare i32 @BM_vert_edge_count(ptr noundef) local_unnamed_addr #1

declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @bmesh_vert_separate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BM_vert_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_edge_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @edbm_tagged_loop_pairs_to_fill(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 2, ptr %5, align 4, !tbaa !59
  %6 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  store ptr %9, ptr %2, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !62
  %11 = call ptr %10(ptr noundef nonnull %2) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %1, %13
  %14 = phi ptr [ %23, %13 ], [ %11, %1 ]
  %15 = phi i32 [ %21, %13 ], [ 0, %1 ]
  %16 = getelementptr inbounds %struct.BMHeader, ptr %14, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !65
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 1
  %20 = zext nneg i8 %19 to i32
  %21 = add i32 %15, %20
  %22 = load ptr, ptr %7, align 8, !tbaa !62
  %23 = call ptr %22(ptr noundef nonnull %2) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %13, !llvm.loop !121

25:                                               ; preds = %13, %1
  %26 = phi i32 [ 0, %1 ], [ %21, %13 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %75, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !89
  %30 = zext i32 %26 to i64
  %31 = mul nuw nsw i64 %30, 24
  %32 = call ptr %29(i64 noundef %31, ptr noundef nonnull @__func__.edbm_tagged_loop_pairs_to_fill) #6
  store i8 2, ptr %5, align 4, !tbaa !59
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !61
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !62
  %33 = load ptr, ptr %8, align 8, !tbaa !63
  store ptr %33, ptr %2, align 8, !tbaa !64
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #6
  %34 = load ptr, ptr %7, align 8, !tbaa !62
  %35 = call ptr %34(ptr noundef nonnull %2) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %75, label %37

37:                                               ; preds = %28, %70
  %38 = phi ptr [ %71, %70 ], [ %32, %28 ]
  %39 = phi ptr [ %73, %70 ], [ %35, %28 ]
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !65
  %42 = and i8 %41, 16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %45 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %39, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %3, align 8, !tbaa !89
  %49 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !90
  %51 = getelementptr inbounds %struct.BMEdge, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !86
  %53 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !92
  %55 = icmp ne ptr %54, %52
  %56 = zext i1 %55 to i8
  %57 = load ptr, ptr %4, align 8, !tbaa !89
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !92
  %60 = icmp eq ptr %59, %52
  %61 = select i1 %60, i8 2, i8 0
  %62 = or disjoint i8 %61, %56
  br label %63

63:                                               ; preds = %44, %47
  %64 = phi i8 [ %62, %47 ], [ 0, %44 ]
  %65 = getelementptr inbounds %struct.UnorderedLoopPair, ptr %38, i64 0, i32 1
  store i8 %64, ptr %65, align 8, !tbaa !122
  %66 = load ptr, ptr %3, align 8, !tbaa !89
  store ptr %66, ptr %38, align 8, !tbaa !89
  %67 = load ptr, ptr %4, align 8, !tbaa !89
  %68 = getelementptr inbounds [2 x ptr], ptr %38, i64 0, i64 1
  store ptr %67, ptr %68, align 8, !tbaa !89
  %69 = getelementptr inbounds %struct.UnorderedLoopPair, ptr %38, i64 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %70

70:                                               ; preds = %37, %63
  %71 = phi ptr [ %69, %63 ], [ %38, %37 ]
  %72 = load ptr, ptr %7, align 8, !tbaa !62
  %73 = call ptr %72(ptr noundef nonnull %2) #6
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %37, !llvm.loop !124

75:                                               ; preds = %70, %28, %25
  %76 = phi ptr [ null, %25 ], [ %32, %28 ], [ %32, %70 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret ptr %76
}

declare ptr @BM_face_loop_separate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_mesh_edgesplit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @edbm_tagged_loop_pairs_do_fill_faces(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x ptr], align 16
  %4 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !89
  %5 = tail call i64 %4(ptr noundef %1) #6
  %6 = udiv i64 %5, 24
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %131, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %11 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 2
  %12 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %13 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %14 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 2
  %15 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  %16 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  br label %17

17:                                               ; preds = %9, %127
  %18 = phi ptr [ %1, %9 ], [ %129, %127 ]
  %19 = phi i32 [ 0, %9 ], [ %128, %127 ]
  %20 = load ptr, ptr %18, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %127, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [2 x ptr], ptr %18, i64 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = icmp eq ptr %24, null
  br i1 %25, label %127, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %127, label %32

32:                                               ; preds = %26
  %33 = call ptr @BM_edge_share_vert(ptr noundef %28, ptr noundef %30) #6
  %34 = load ptr, ptr %18, align 8, !tbaa !89
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  %37 = icmp eq ptr %33, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !90
  %41 = getelementptr inbounds %struct.BMEdge, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  store ptr %42, ptr %3, align 16, !tbaa !89
  %43 = load ptr, ptr %23, align 8, !tbaa !89
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !90
  %46 = getelementptr inbounds %struct.BMEdge, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !86
  store ptr %47, ptr %13, align 8, !tbaa !89
  %48 = getelementptr inbounds %struct.BMEdge, ptr %45, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !87
  store ptr %49, ptr %14, align 16, !tbaa !89
  %50 = getelementptr inbounds %struct.BMEdge, ptr %40, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !87
  store ptr %51, ptr %15, align 8, !tbaa !89
  %52 = getelementptr inbounds %struct.UnorderedLoopPair, ptr %18, i64 0, i32 1
  %53 = load i8, ptr %52, align 8, !tbaa !122
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %38
  store ptr %51, ptr %3, align 16, !tbaa !89
  store ptr %42, ptr %15, align 8, !tbaa !89
  br label %57

57:                                               ; preds = %56, %38
  %58 = and i8 %53, 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %87, label %60

60:                                               ; preds = %57
  store ptr %49, ptr %13, align 8, !tbaa !89
  store ptr %47, ptr %14, align 16, !tbaa !89
  br label %87

61:                                               ; preds = %32
  store ptr %33, ptr %3, align 16, !tbaa !89
  %62 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !90
  %64 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !86
  %66 = icmp eq ptr %65, %33
  %67 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !87
  %69 = icmp eq ptr %68, %33
  %70 = select i1 %69, ptr %65, ptr null
  %71 = select i1 %66, ptr %68, ptr %70
  store ptr %71, ptr %10, align 8, !tbaa !89
  %72 = load ptr, ptr %23, align 8, !tbaa !89
  %73 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !90
  %75 = getelementptr inbounds %struct.BMEdge, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !86
  %77 = icmp eq ptr %76, %33
  %78 = getelementptr inbounds %struct.BMEdge, ptr %74, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !87
  %80 = icmp eq ptr %79, %33
  %81 = select i1 %80, ptr %76, ptr null
  %82 = select i1 %77, ptr %79, ptr %81
  store ptr %82, ptr %11, align 16, !tbaa !89
  store ptr null, ptr %12, align 8, !tbaa !89
  %83 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !92
  %85 = icmp eq ptr %33, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %61
  store ptr %71, ptr %3, align 16, !tbaa !89
  store ptr %33, ptr %10, align 8, !tbaa !89
  br label %87

87:                                               ; preds = %61, %86, %57, %60
  %88 = load ptr, ptr %16, align 8, !tbaa !89
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, i32 3, i32 4
  %91 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %90, ptr noundef %36, i32 noundef 0, i8 noundef zeroext 1) #6
  %92 = getelementptr inbounds %struct.BMFace, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !125
  %94 = load ptr, ptr %16, align 8, !tbaa !89
  %95 = icmp eq ptr %94, null
  %96 = load ptr, ptr %18, align 8, !tbaa !89
  %97 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !90
  %99 = call ptr @BM_edge_other_loop(ptr noundef %98, ptr noundef %93) #6
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %99, ptr noundef %93) #6
  %100 = getelementptr inbounds %struct.BMLoop, ptr %93, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !127
  %102 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 6
  br i1 %95, label %114, label %103

103:                                              ; preds = %87
  %104 = load ptr, ptr %23, align 8, !tbaa !89
  %105 = getelementptr inbounds %struct.BMLoop, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !90
  %107 = call ptr @BM_edge_other_loop(ptr noundef %106, ptr noundef %101) #6
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %107, ptr noundef %101) #6
  %108 = load ptr, ptr %102, align 8, !tbaa !127
  %109 = load ptr, ptr %23, align 8, !tbaa !89
  %110 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !90
  %112 = call ptr @BM_edge_other_loop(ptr noundef %111, ptr noundef %108) #6
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %112, ptr noundef %108) #6
  %113 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 6
  br label %119

114:                                              ; preds = %87
  %115 = load ptr, ptr %18, align 8, !tbaa !89
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !90
  %118 = call ptr @BM_edge_other_loop(ptr noundef %117, ptr noundef %101) #6
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %118, ptr noundef %101) #6
  br label %119

119:                                              ; preds = %114, %103
  %120 = phi ptr [ %102, %114 ], [ %113, %103 ]
  %121 = phi ptr [ %23, %114 ], [ %18, %103 ]
  %122 = load ptr, ptr %120, align 8, !tbaa !127
  %123 = load ptr, ptr %121, align 8, !tbaa !89
  %124 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !90
  %126 = call ptr @BM_edge_other_loop(ptr noundef %125, ptr noundef %122) #6
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %126, ptr noundef %122) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  br label %127

127:                                              ; preds = %17, %22, %26, %119
  %128 = add nuw i32 %19, 1
  %129 = getelementptr inbounds %struct.UnorderedLoopPair, ptr %18, i64 1
  %130 = icmp eq i32 %128, %7
  br i1 %130, label %131, label %17, !llvm.loop !128

131:                                              ; preds = %127, %2
  ret void
}

declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @BM_loop_calc_face_tangent(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_edge_share_vert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_edge_other_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc float @edbm_rip_edge_side_measure(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %11 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = tail call ptr @BM_face_other_vert_loop(ptr noundef %12, ptr noundef %14, ptr noundef %16) #6
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = load ptr, ptr %11, align 8, !tbaa !95
  %21 = load ptr, ptr %15, align 8, !tbaa !86
  %22 = load ptr, ptr %13, align 8, !tbaa !87
  %23 = tail call ptr @BM_face_other_vert_loop(ptr noundef %20, ptr noundef %21, ptr noundef %22) #6
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %26, ptr noundef nonnull %27) #6
  %28 = load ptr, ptr %15, align 8, !tbaa !86
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %13, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %29, ptr noundef nonnull %31) #6
  call void @ED_view3d_project_float_v2_m4(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %3) #6
  call void @ED_view3d_project_float_v2_m4(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %3) #6
  %32 = load ptr, ptr %15, align 8, !tbaa !86
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %2, ptr noundef nonnull %33, ptr noundef nonnull %9, ptr noundef %3) #6
  %34 = load ptr, ptr %13, align 8, !tbaa !87
  %35 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %2, ptr noundef nonnull %35, ptr noundef nonnull %10, ptr noundef %3) #6
  %36 = load float, ptr %6, align 4, !tbaa !73
  %37 = load float, ptr %7, align 4, !tbaa !73
  %38 = fsub float %36, %37
  %39 = getelementptr inbounds float, ptr %6, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !73
  %41 = getelementptr inbounds float, ptr %7, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !73
  %43 = fsub float %40, %42
  %44 = fmul float %43, %43
  %45 = call float @llvm.fmuladd.f32(float %38, float %38, float %44)
  %46 = fcmp ogt float %45, 0x38AA95A5C0000000
  br i1 %46, label %47, label %54

47:                                               ; preds = %5
  %48 = call float @sqrtf(float noundef %45) #6
  %49 = fdiv float 1.000000e+00, %48
  %50 = fmul float %38, %49
  %51 = fmul float %43, %49
  %52 = fmul float %50, 0x3F847AE140000000
  %53 = fmul float %51, 0x3F847AE140000000
  br label %54

54:                                               ; preds = %5, %47
  %55 = phi float [ %52, %47 ], [ 0.000000e+00, %5 ]
  %56 = phi float [ %53, %47 ], [ 0.000000e+00, %5 ]
  %57 = load float, ptr %4, align 4, !tbaa !73
  %58 = fsub float %57, %55
  store float %58, ptr %8, align 4, !tbaa !73
  %59 = getelementptr inbounds float, ptr %4, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !73
  %61 = fsub float %60, %56
  %62 = getelementptr inbounds float, ptr %8, i64 1
  store float %61, ptr %62, align 4, !tbaa !73
  %63 = load float, ptr %9, align 4, !tbaa !73
  %64 = load float, ptr %10, align 4, !tbaa !73
  %65 = fsub float %63, %64
  %66 = getelementptr inbounds float, ptr %9, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !73
  %68 = getelementptr inbounds float, ptr %10, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !73
  %70 = fsub float %67, %69
  %71 = fmul float %70, %70
  %72 = call float @llvm.fmuladd.f32(float %65, float %65, float %71)
  %73 = call float @sqrtf(float noundef %72) #6
  %74 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #6
  %75 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #6
  %76 = fcmp ogt float %74, %75
  %77 = fneg float %73
  %78 = select i1 %76, float %73, float %77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  ret float %78
}

declare ptr @BM_vert_other_disk_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_mesh_select_mode_clean_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BM_select_history_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @edbm_ripsel_edge_mark_step(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %6 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 4, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %7, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %8, align 8, !tbaa !62
  store ptr %0, ptr %3, align 8, !tbaa !64
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #6
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = call ptr %9(ptr noundef nonnull %3) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %2, %45
  %13 = phi ptr [ %47, %45 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = icmp eq ptr %19, %15
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !84
  %24 = icmp eq ptr %23, %15
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %12, %17, %21
  %27 = phi i8 [ 0, %17 ], [ 0, %12 ], [ %25, %21 ]
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BMHeader, ptr %13, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !65
  %32 = and i8 %31, 16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  br i1 %16, label %39, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.BMHeader, ptr %15, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !104
  %38 = icmp eq i32 %37, -2147483648
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %40 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %41 = load ptr, ptr %4, align 8, !tbaa !89
  %42 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 1
  store i32 %1, ptr %42, align 8, !tbaa !104
  %43 = load ptr, ptr %5, align 8, !tbaa !89
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 1
  store i32 %1, ptr %44, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %49

45:                                               ; preds = %26, %29, %35
  %46 = load ptr, ptr %8, align 8, !tbaa !62
  %47 = call ptr %46(ptr noundef nonnull %3) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %12, !llvm.loop !129

49:                                               ; preds = %45, %2, %39
  %50 = phi ptr [ %13, %39 ], [ null, %2 ], [ null, %45 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret ptr %50
}

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @BM_face_other_vert_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 0}
!49 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !50, i64 16, !36, i64 24, !50, i64 32, !36, i64 40, !36, i64 48, !51, i64 56, !36, i64 64, !50, i64 72, !36, i64 80, !50, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !50, i64 104}
!50 = !{!"int", !37, i64 0}
!51 = !{!"long", !37, i64 0}
!52 = !{!53, !50, i64 16}
!53 = !{!"BMesh", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !50, i64 88, !50, i64 92, !50, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !50, i64 128, !36, i64 136, !54, i64 144, !54, i64 344, !54, i64 544, !54, i64 744, !41, i64 944, !50, i64 948, !50, i64 952, !50, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!54 = !{!"CustomData", !36, i64 0, !37, i64 8, !50, i64 172, !50, i64 176, !50, i64 180, !36, i64 184, !36, i64 192}
!55 = !{!53, !50, i64 20}
!56 = !{!53, !50, i64 24}
!57 = !{!58, !36, i64 120}
!58 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!59 = !{!60, !37, i64 60}
!60 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !50, i64 56, !37, i64 60}
!61 = !{!60, !36, i64 40}
!62 = !{!60, !36, i64 48}
!63 = !{!53, !36, i64 40}
!64 = !{!37, !37, i64 0}
!65 = !{!66, !37, i64 13}
!66 = !{!"BMHeader", !36, i64 0, !50, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!58, !36, i64 112}
!71 = !{!53, !50, i64 0}
!72 = !{!50, !50, i64 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"float", !37, i64 0}
!75 = !{!76, !36, i64 16}
!76 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!77 = !{!53, !36, i64 32}
!78 = distinct !{!78, !68, !69}
!79 = !{!80, !36, i64 48}
!80 = !{!"BMVert", !66, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!81 = !{!82, !36, i64 40}
!82 = !{!"BMEdge", !66, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !83, i64 48, !83, i64 64}
!83 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!84 = !{!85, !36, i64 40}
!85 = !{!"BMLoop", !66, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!86 = !{!82, !36, i64 24}
!87 = !{!82, !36, i64 32}
!88 = distinct !{!88, !68, !69}
!89 = !{!36, !36, i64 0}
!90 = !{!85, !36, i64 24}
!91 = !{!85, !36, i64 64}
!92 = !{!85, !36, i64 16}
!93 = distinct !{!93, !68, !69}
!94 = distinct !{!94, !68, !69}
!95 = !{!85, !36, i64 32}
!96 = distinct !{!96, !68, !69}
!97 = distinct !{!97, !68, !69}
!98 = distinct !{!98, !68, !69}
!99 = distinct !{!99, !68, !69}
!100 = distinct !{!100, !68, !69}
!101 = distinct !{!101, !68, !69}
!102 = !{!53, !50, i64 4}
!103 = !{!53, !36, i64 56}
!104 = !{!66, !50, i64 8}
!105 = distinct !{!105, !68, !69}
!106 = distinct !{!106, !68, !69}
!107 = !{!53, !37, i64 28}
!108 = distinct !{!108, !68, !69}
!109 = distinct !{!109, !68, !69}
!110 = distinct !{!110, !68, !69}
!111 = distinct !{!111, !68, !69}
!112 = distinct !{!112, !68, !69}
!113 = !{!114, !36, i64 0}
!114 = !{!"EdgeLoopPair", !36, i64 0, !36, i64 8}
!115 = distinct !{!115, !68, !69}
!116 = distinct !{!116, !68, !69}
!117 = !{!114, !36, i64 8}
!118 = distinct !{!118, !68, !69}
!119 = distinct !{!119, !68, !69}
!120 = distinct !{!120, !68, !69}
!121 = distinct !{!121, !68, !69}
!122 = !{!123, !37, i64 16}
!123 = !{!"UnorderedLoopPair", !37, i64 0, !37, i64 16}
!124 = distinct !{!124, !68, !69}
!125 = !{!126, !36, i64 24}
!126 = !{!"BMFace", !66, i64 0, !36, i64 16, !36, i64 24, !50, i64 32, !37, i64 36, !41, i64 48}
!127 = !{!85, !36, i64 56}
!128 = distinct !{!128, !68, !69}
!129 = distinct !{!129, !68, !69}
