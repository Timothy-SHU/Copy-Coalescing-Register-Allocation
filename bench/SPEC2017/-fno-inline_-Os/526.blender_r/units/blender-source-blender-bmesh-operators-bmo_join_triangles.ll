; ModuleID = 'blender/source/blender/bmesh/operators/bmo_join_triangles.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_join_triangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.SortPointerByFloat = type { float, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [10 x i8] c"cmp_sharp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cmp_uvs\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cmp_vcols\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"cmp_materials\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_join_triangles_exec = private unnamed_addr constant [24 x i8] c"bmo_join_triangles_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_join_triangles_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMOIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #11
  %10 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #11
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #11
  %13 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  %14 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %2, %24
  %17 = phi ptr [ %25, %24 ], [ %14, %2 ]
  %18 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %23, i16 noundef signext 2) #13
  br label %24

24:                                               ; preds = %16, %21
  %25 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %16, !llvm.loop !43

27:                                               ; preds = %24, %2
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %277, label %30

30:                                               ; preds = %27, %51
  %31 = phi ptr [ %53, %51 ], [ %28, %27 ]
  %32 = phi i32 [ %52, %51 ], [ 0, %27 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %33 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %38, i16 noundef signext 2) #13, !range !46
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %6, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.BMFace, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %44, i16 noundef signext 2) #13, !range !46
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %49, i16 noundef signext 1) #13
  %50 = add i32 %32, 1
  br label %51

51:                                               ; preds = %47, %41, %35, %30
  %52 = phi i32 [ %50, %47 ], [ %32, %41 ], [ %32, %35 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %30, !llvm.loop !50

55:                                               ; preds = %51
  %56 = icmp eq i32 %52, 0
  br i1 %56, label %277, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %59 = zext i32 %52 to i64
  %60 = shl nuw nsw i64 %59, 4
  %61 = call ptr %58(i64 noundef %60, ptr noundef nonnull @__func__.bmo_join_triangles_exec) #11
  %62 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  call void @qsort(ptr noundef %61, i64 noundef 0, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float) #11
  br label %169

65:                                               ; preds = %57
  %66 = icmp eq i8 %9, 0
  %67 = icmp eq i8 %12, 0
  %68 = icmp ne i8 %10, 0
  %69 = icmp ne i8 %11, 0
  %70 = select i1 %68, i1 true, i1 %69
  br label %71

71:                                               ; preds = %65, %133
  %72 = phi ptr [ %62, %65 ], [ %135, %133 ]
  %73 = phi i32 [ 0, %65 ], [ %134, %133 ]
  %74 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %75, i16 noundef signext 1) #13, !range !46
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %133, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !51
  %81 = getelementptr inbounds %struct.BMLoop, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  %83 = getelementptr inbounds %struct.BMLoop, ptr %80, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !54
  %85 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !52
  br i1 %66, label %90, label %87

87:                                               ; preds = %78
  %88 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %72) #13
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %133, label %90

90:                                               ; preds = %87, %78
  br i1 %67, label %97, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.BMFace, ptr %82, i64 0, i32 5
  %93 = load i16, ptr %92, align 8, !tbaa !55
  %94 = getelementptr inbounds %struct.BMFace, ptr %86, i64 0, i32 5
  %95 = load i16, ptr %94, align 8, !tbaa !55
  %96 = icmp eq i16 %93, %95
  br i1 %96, label %97, label %133

97:                                               ; preds = %91, %90
  br i1 %70, label %98, label %105

98:                                               ; preds = %97
  %99 = call fastcc zeroext i8 @bm_edge_faces_cmp(ptr noundef %0, ptr noundef nonnull %72, i8 noundef zeroext %10, i8 noundef zeroext %10, i8 noundef zeroext %11) #13, !range !56
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %133, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %79, align 8, !tbaa !51
  %103 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !54
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi ptr [ %104, %101 ], [ %84, %97 ]
  %107 = phi ptr [ %102, %101 ], [ %80, %97 ]
  %108 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !57
  %110 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 7
  %111 = load ptr, ptr %110, align 8, !tbaa !58
  %112 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !57
  %114 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !59
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !57
  %118 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !58
  %120 = getelementptr inbounds %struct.BMLoop, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !57
  %122 = getelementptr inbounds %struct.BMVert, ptr %109, i64 0, i32 2
  %123 = getelementptr inbounds %struct.BMVert, ptr %113, i64 0, i32 2
  %124 = getelementptr inbounds %struct.BMVert, ptr %117, i64 0, i32 2
  %125 = getelementptr inbounds %struct.BMVert, ptr %121, i64 0, i32 2
  %126 = call fastcc float @measure_facepair(ptr noundef nonnull %122, ptr noundef nonnull %123, ptr noundef nonnull %124, ptr noundef nonnull %125, float noundef %13) #13
  %127 = fcmp olt float %126, %13
  br i1 %127, label %128, label %133

128:                                              ; preds = %105
  %129 = zext i32 %73 to i64
  %130 = getelementptr inbounds %struct.SortPointerByFloat, ptr %61, i64 %129
  %131 = getelementptr inbounds %struct.SortPointerByFloat, ptr %61, i64 %129, i32 1
  store ptr %72, ptr %131, align 8, !tbaa !60
  store float %126, ptr %130, align 8, !tbaa !63
  %132 = add i32 %73, 1
  br label %133

133:                                              ; preds = %105, %128, %98, %91, %87, %71
  %134 = phi i32 [ %73, %71 ], [ %73, %87 ], [ %73, %91 ], [ %73, %98 ], [ %132, %128 ], [ %73, %105 ]
  %135 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %71, !llvm.loop !64

137:                                              ; preds = %133
  %138 = zext i32 %134 to i64
  call void @qsort(ptr noundef %61, i64 noundef %138, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float) #11
  %139 = icmp eq i32 %134, 0
  br i1 %139, label %169, label %140

140:                                              ; preds = %137, %166
  %141 = phi i64 [ %167, %166 ], [ 0, %137 ]
  %142 = getelementptr inbounds %struct.SortPointerByFloat, ptr %61, i64 %141, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !60
  %144 = getelementptr inbounds %struct.BMEdge, ptr %143, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !51
  %146 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !52
  %148 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !54
  %150 = getelementptr inbounds %struct.BMLoop, ptr %149, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !52
  %152 = getelementptr inbounds %struct.BMFace, ptr %147, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !42
  %154 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %153, i16 noundef signext 1) #13, !range !46
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %140
  %157 = getelementptr inbounds %struct.BMFace, ptr %151, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !42
  %159 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %158, i16 noundef signext 1) #13, !range !46
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156, %140
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %153, i16 noundef signext 1) #13
  %162 = getelementptr inbounds %struct.BMFace, ptr %151, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !42
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %163, i16 noundef signext 1) #13
  %164 = getelementptr inbounds %struct.BMEdge, ptr %143, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !47
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %165, i16 noundef signext 2) #13
  br label %166

166:                                              ; preds = %161, %156
  %167 = add nuw nsw i64 %141, 1
  %168 = icmp eq i64 %167, %138
  br i1 %168, label %169, label %140, !llvm.loop !65

169:                                              ; preds = %166, %64, %137
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %170(ptr noundef %61) #11
  %171 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0) #13
  %172 = icmp eq ptr %171, null
  br i1 %172, label %199, label %173

173:                                              ; preds = %169, %197
  %174 = phi ptr [ %175, %197 ], [ %171, %169 ]
  %175 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  %176 = getelementptr inbounds %struct.BMEdge, ptr %174, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !47
  %178 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %177, i16 noundef signext 2) #13, !range !46
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %197, label %180

180:                                              ; preds = %173
  %181 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %174, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %182 = load ptr, ptr %7, align 8, !tbaa !45
  %183 = getelementptr inbounds %struct.BMFace, ptr %182, i64 0, i32 3
  %184 = load i32, ptr %183, align 8, !tbaa !34
  %185 = icmp eq i32 %184, 3
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load ptr, ptr %8, align 8, !tbaa !45
  %188 = getelementptr inbounds %struct.BMFace, ptr %187, i64 0, i32 3
  %189 = load i32, ptr %188, align 8, !tbaa !34
  %190 = icmp eq i32 %189, 3
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef nonnull %182, ptr noundef nonnull %187, ptr noundef nonnull %174, i8 noundef zeroext 1) #11
  %193 = icmp eq ptr %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.BMFace, ptr %192, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !42
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %196, i16 noundef signext 1) #13
  br label %197

197:                                              ; preds = %180, %186, %194, %191, %173
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  %198 = icmp eq ptr %175, null
  br i1 %198, label %199, label %173, !llvm.loop !66

199:                                              ; preds = %197, %169
  %200 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0) #13
  %201 = icmp eq ptr %200, null
  br i1 %201, label %275, label %202

202:                                              ; preds = %199, %273
  %203 = phi ptr [ %204, %273 ], [ %200, %199 ]
  %204 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %205 = getelementptr inbounds %struct.BMEdge, ptr %203, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !47
  %207 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %206, i16 noundef signext 1) #13, !range !46
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %273, label %209

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.BMEdge, ptr %203, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !51
  %212 = getelementptr inbounds %struct.BMLoop, ptr %211, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !54
  %214 = getelementptr inbounds %struct.BMLoop, ptr %211, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !52
  %216 = getelementptr inbounds %struct.BMLoop, ptr %213, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !52
  %218 = getelementptr inbounds %struct.BMFace, ptr %215, i64 0, i32 3
  %219 = load i32, ptr %218, align 8, !tbaa !34
  %220 = icmp eq i32 %219, 3
  br i1 %220, label %221, label %273

221:                                              ; preds = %209
  %222 = getelementptr inbounds %struct.BMFace, ptr %217, i64 0, i32 3
  %223 = load i32, ptr %222, align 8, !tbaa !34
  %224 = icmp eq i32 %223, 3
  br i1 %224, label %225, label %273

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.BMLoop, ptr %211, i64 0, i32 6
  %227 = load ptr, ptr %226, align 8, !tbaa !59
  %228 = getelementptr inbounds %struct.BMLoop, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !67
  %230 = getelementptr inbounds %struct.BMEdge, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !47
  %232 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %231, i16 noundef signext 1) #13, !range !46
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %234, label %273

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.BMLoop, ptr %211, i64 0, i32 7
  %236 = load ptr, ptr %235, align 8, !tbaa !58
  %237 = getelementptr inbounds %struct.BMLoop, ptr %236, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !67
  %239 = getelementptr inbounds %struct.BMEdge, ptr %238, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !47
  %241 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %240, i16 noundef signext 1) #13, !range !46
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %243, label %273

243:                                              ; preds = %234
  %244 = getelementptr inbounds %struct.BMLoop, ptr %213, i64 0, i32 6
  %245 = load ptr, ptr %244, align 8, !tbaa !59
  %246 = getelementptr inbounds %struct.BMLoop, ptr %245, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !67
  %248 = getelementptr inbounds %struct.BMEdge, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !47
  %250 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %249, i16 noundef signext 1) #13, !range !46
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %252, label %273

252:                                              ; preds = %243
  %253 = getelementptr inbounds %struct.BMLoop, ptr %213, i64 0, i32 7
  %254 = load ptr, ptr %253, align 8, !tbaa !58
  %255 = getelementptr inbounds %struct.BMLoop, ptr %254, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !67
  %257 = getelementptr inbounds %struct.BMEdge, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !47
  %259 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %258, i16 noundef signext 1) #13, !range !46
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %252
  %262 = getelementptr inbounds %struct.BMLoop, ptr %236, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !57
  %264 = getelementptr inbounds %struct.BMLoop, ptr %254, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !57
  %266 = icmp eq ptr %263, %265
  br i1 %266, label %273, label %267

267:                                              ; preds = %261
  %268 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef nonnull %215, ptr noundef nonnull %217, ptr noundef nonnull %203, i8 noundef zeroext 1) #11
  %269 = icmp eq ptr %268, null
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.BMFace, ptr %268, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !42
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %272, i16 noundef signext 1) #13
  br label %273

273:                                              ; preds = %209, %221, %225, %234, %243, %252, %261, %270, %267, %202
  %274 = icmp eq ptr %204, null
  br i1 %274, label %275, label %202, !llvm.loop !68

275:                                              ; preds = %273, %199
  %276 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %276, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #11
  br label %277

277:                                              ; preds = %27, %55, %275
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !69 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !74
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !74
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !76 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #13
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !77 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !74
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = tail call ptr %3(ptr noundef %0) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !82
  %4 = and i8 %3, 8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_edge_faces_cmp(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !83 {
  %6 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = icmp eq ptr %11, %13
  %15 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  br i1 %14, label %17, label %20

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  br label %23

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %9, %17 ], [ %22, %20 ]
  %25 = phi ptr [ %19, %17 ], [ %9, %20 ]
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %29 = load ptr, ptr %7, align 8, !tbaa !84
  %30 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %28, ptr noundef %29, i32 noundef 16) #11
  %31 = load ptr, ptr %16, align 8, !tbaa !84
  %32 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %28, ptr noundef %31, i32 noundef 16) #11
  %33 = load ptr, ptr %24, align 8, !tbaa !84
  %34 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %28, ptr noundef %33, i32 noundef 16) #11
  %35 = load ptr, ptr %25, align 8, !tbaa !84
  %36 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %28, ptr noundef %35, i32 noundef 16) #11
  %37 = icmp eq ptr %30, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %27
  %39 = tail call fastcc zeroext i8 @compare_v2v2(ptr noundef nonnull %30, ptr noundef %34) #13
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc zeroext i8 @compare_v2v2(ptr noundef %32, ptr noundef %36) #13
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %81, label %44

44:                                               ; preds = %27, %41, %23
  %45 = icmp eq i8 %3, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %48 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  %51 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %47, ptr noundef %50, i32 noundef 15) #11
  %52 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  %55 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %47, ptr noundef %54, i32 noundef 15) #11
  %56 = icmp eq ptr %51, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %46
  %58 = load ptr, ptr %51, align 8, !tbaa !86
  %59 = load ptr, ptr %55, align 8, !tbaa !86
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %46, %57, %44
  %62 = icmp eq i8 %4, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %65 = load ptr, ptr %7, align 8, !tbaa !84
  %66 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %64, ptr noundef %65, i32 noundef 17) #11
  %67 = load ptr, ptr %16, align 8, !tbaa !84
  %68 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %64, ptr noundef %67, i32 noundef 17) #11
  %69 = load ptr, ptr %24, align 8, !tbaa !84
  %70 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %64, ptr noundef %69, i32 noundef 17) #11
  %71 = load ptr, ptr %25, align 8, !tbaa !84
  %72 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %64, ptr noundef %71, i32 noundef 17) #11
  %73 = icmp eq ptr %66, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %63
  %75 = tail call fastcc i32 @compare_rgb_uchar(ptr noundef nonnull %66, ptr noundef %70) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = tail call fastcc i32 @compare_rgb_uchar(ptr noundef %68, ptr noundef %72) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77, %63
  br label %81

81:                                               ; preds = %61, %80, %77, %74, %57, %41, %38
  %82 = phi i8 [ 0, %38 ], [ 0, %41 ], [ 0, %57 ], [ 0, %74 ], [ 0, %77 ], [ 1, %80 ], [ 1, %61 ]
  ret i8 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @measure_facepair(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !88 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %12 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %13 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %2, ptr noundef %3) #11
  %14 = call fastcc zeroext i8 @compare_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = call float @angle_normalized_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  br label %18

18:                                               ; preds = %5, %16
  %19 = phi float [ %17, %16 ], [ 0.000000e+00, %5 ]
  %20 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  %21 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %0, ptr noundef %1) #11
  %22 = call fastcc zeroext i8 @compare_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call float @angle_normalized_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  br label %26

26:                                               ; preds = %18, %24
  %27 = phi float [ %25, %24 ], [ 0.000000e+00, %18 ]
  %28 = fadd float %19, %27
  %29 = call float @llvm.fmuladd.f32(float %28, float 5.000000e-01, float 0.000000e+00)
  %30 = fcmp ogt float %29, %4
  br i1 %30, label %70, label %31

31:                                               ; preds = %26
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %2, ptr noundef %3) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %3, ptr noundef %0) #13
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #13
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #13
  call fastcc void @normalize_v3(ptr noundef nonnull %10) #13
  call fastcc void @normalize_v3(ptr noundef nonnull %11) #13
  %32 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %33 = call float @angle_normalized_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %34 = insertelement <2 x float> poison, float %32, i64 0
  %35 = insertelement <2 x float> %34, float %33, i64 1
  %36 = fadd <2 x float> %35, <float 0xBFF921FB60000000, float 0xBFF921FB60000000>
  %37 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %36)
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %39 = fadd <2 x float> %37, %38
  %40 = extractelement <2 x float> %39, i64 0
  %41 = call float @angle_normalized_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %42 = fadd float %41, 0xBFF921FB60000000
  %43 = call float @llvm.fabs.f32(float %42)
  %44 = fadd float %40, %43
  %45 = call float @angle_normalized_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %8) #11
  %46 = fadd float %45, 0xBFF921FB60000000
  %47 = call float @llvm.fabs.f32(float %46)
  %48 = fadd float %44, %47
  %49 = fmul float %48, 2.500000e-01
  %50 = fcmp une float %49, 0.000000e+00
  br i1 %50, label %51, label %70

51:                                               ; preds = %31
  %52 = fadd float %29, %49
  %53 = fcmp ogt float %52, %4
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = call float @area_tri_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %56 = call float @area_tri_v3(ptr noundef %0, ptr noundef %2, ptr noundef %3) #11
  %57 = fadd float %55, %56
  %58 = call float @area_tri_v3(ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  %59 = call float @area_tri_v3(ptr noundef %3, ptr noundef %0, ptr noundef %1) #11
  %60 = fadd float %58, %59
  %61 = fcmp ole float %57, %60
  %62 = select i1 %61, float %57, float %60
  %63 = fcmp oge float %57, %60
  %64 = select i1 %63, float %57, float %60
  %65 = fcmp une float %64, 0.000000e+00
  %66 = fdiv float %62, %64
  %67 = fsub float 1.000000e+00, %66
  %68 = select i1 %65, float %67, float 1.000000e+00
  %69 = fadd float %52, %68
  br label %70

70:                                               ; preds = %51, %31, %26, %54
  %71 = phi float [ %69, %54 ], [ %29, %26 ], [ 0.000000e+00, %31 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret float %71
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLI_sortutil_cmp_float(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @BM_faces_join_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !89 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 2, ptr %3, align 4, !tbaa !90
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  store ptr %7, ptr %0, align 8, !tbaa !93
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !94 {
  %3 = load float, ptr %0, align 4, !tbaa !95
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3F747AE140000000
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !95
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3F747AE140000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %8, %2
  br label %17

17:                                               ; preds = %8, %16
  %18 = phi i8 [ 0, %16 ], [ 1, %8 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @compare_rgb_uchar(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !96 {
  %3 = load i8, ptr %0, align 1, !tbaa !93
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %1, align 1, !tbaa !93
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = tail call i32 @llvm.abs.i32(i32 %7, i1 true)
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !93
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !93
  %16 = zext i8 %15 to i32
  %17 = sub nsw i32 %13, %16
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %30

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, ptr %0, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !93
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !93
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = icmp ugt i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %20, %10
  br label %31

31:                                               ; preds = %2, %30, %20
  %32 = phi i32 [ 1, %20 ], [ 0, %30 ], [ 0, %2 ]
  ret i32 %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !97 {
  %3 = load float, ptr %0, align 4, !tbaa !95
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3E80000000000000
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !95
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3E80000000000000
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !95
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !95
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3E80000000000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %8, %16, %2
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %16 ]
  ret i8 %26
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !98 {
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = load float, ptr %2, align 4, !tbaa !95
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !95
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !95
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !95
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !99 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !100 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !101 {
  %3 = load float, ptr %0, align 4, !tbaa !95
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !95
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !95
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !102 {
  %4 = load float, ptr %1, align 4, !tbaa !95
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !95
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !95
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !95
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #9 !PGOFuncName !103 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !95
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !95
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

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
!34 = !{!35, !40, i64 32}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!35, !37, i64 16}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!37, !37, i64 0}
!46 = !{i16 0, i16 3}
!47 = !{!48, !37, i64 16}
!48 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !49, i64 48, !49, i64 64}
!49 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!50 = distinct !{!50, !44}
!51 = !{!48, !37, i64 40}
!52 = !{!53, !37, i64 32}
!53 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!54 = !{!53, !37, i64 40}
!55 = !{!35, !41, i64 48}
!56 = !{i8 0, i8 2}
!57 = !{!53, !37, i64 16}
!58 = !{!53, !37, i64 64}
!59 = !{!53, !37, i64 56}
!60 = !{!61, !37, i64 8}
!61 = !{!"SortPointerByFloat", !62, i64 0, !37, i64 8}
!62 = !{!"float", !38, i64 0}
!63 = !{!61, !62, i64 0}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = !{!53, !37, i64 24}
!68 = distinct !{!68, !44}
!69 = !{!"bmo_join_triangles.c:_bmo_elem_flag_enable"}
!70 = !{!71, !40, i64 128}
!71 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !72, i64 144, !72, i64 344, !72, i64 544, !72, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !73, i64 960, !37, i64 976, !73, i64 984, !37, i64 1000}
!72 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!73 = !{!"ListBase", !37, i64 0, !37, i64 8}
!74 = !{!75, !41, i64 0}
!75 = !{!"BMFlagLayer", !41, i64 0}
!76 = !{!"bmo_join_triangles.c:BM_iter_new"}
!77 = !{!"bmo_join_triangles.c:_bmo_elem_flag_test"}
!78 = !{!"bmo_join_triangles.c:BM_iter_step"}
!79 = !{!80, !37, i64 48}
!80 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!81 = !{!"bmo_join_triangles.c:_bm_elem_flag_test"}
!82 = !{!36, !38, i64 13}
!83 = !{!"bmo_join_triangles.c:bm_edge_faces_cmp"}
!84 = !{!53, !37, i64 0}
!85 = !{!35, !37, i64 0}
!86 = !{!87, !37, i64 0}
!87 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !41, i64 10, !41, i64 12, !41, i64 14}
!88 = !{!"bmo_join_triangles.c:measure_facepair"}
!89 = !{!"bmo_join_triangles.c:BM_iter_init"}
!90 = !{!80, !38, i64 60}
!91 = !{!80, !37, i64 40}
!92 = !{!71, !37, i64 40}
!93 = !{!38, !38, i64 0}
!94 = !{!"bmo_join_triangles.c:compare_v2v2"}
!95 = !{!62, !62, i64 0}
!96 = !{!"bmo_join_triangles.c:compare_rgb_uchar"}
!97 = !{!"bmo_join_triangles.c:compare_v3v3"}
!98 = !{!"bmo_join_triangles.c:sub_v3_v3v3"}
!99 = !{!"bmo_join_triangles.c:normalize_v3"}
!100 = !{!"bmo_join_triangles.c:normalize_v3_v3"}
!101 = !{!"bmo_join_triangles.c:dot_v3v3"}
!102 = !{!"bmo_join_triangles.c:mul_v3_v3fl"}
!103 = !{!"bmo_join_triangles.c:zero_v3"}
