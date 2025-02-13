; ModuleID = 'blender/source/blender/bmesh/operators/bmo_dissolve.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_dissolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"use_verts\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"BLI_array.faces\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"BLI_array.regions\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Could not find boundary of dissolve region\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Could not create merged face\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"delete geom=%ff context=%i\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"region.out\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"use_face_split\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"use_boundary_tear\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"angle_limit\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"use_dissolve_boundaries\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"delimit\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@__func__.bm_face_split = private unnamed_addr constant [14 x i8] c"bm_face_split\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"collapse edges=%fe\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_dissolve_faces_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMWalker, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #11
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %17) #12
  %21 = icmp eq i8 %20, 0
  %22 = zext i1 %21 to i32
  call fastcc void @_bmo_elem_flag_set(ptr noundef %0, ptr noundef %19, i32 noundef %22) #13
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !47

25:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  br label %26

26:                                               ; preds = %25, %2
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8, i16 noundef signext 1) #12
  %27 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %151, label %34

29:                                               ; preds = %117
  %30 = icmp sgt i32 %118, 0
  br i1 %30, label %31, label %151

31:                                               ; preds = %29
  %32 = icmp eq ptr %10, null
  %33 = zext nneg i32 %118 to i64
  br label %121

34:                                               ; preds = %26, %117
  %35 = phi ptr [ %119, %117 ], [ %27, %26 ]
  %36 = phi i32 [ %118, %117 ], [ 0, %26 ]
  %37 = getelementptr inbounds %struct.BMFace, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %38, i16 noundef signext 1) #13, !range !51
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %117, label %41

41:                                               ; preds = %34
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @BMW_init(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 8, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 1, i32 noundef 0, i32 noundef 0) #12
  %42 = call ptr @BMW_begin(ptr noundef nonnull %6, ptr noundef nonnull %35) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @BMW_end(ptr noundef nonnull %6) #12
  br label %80

45:                                               ; preds = %41, %61
  %46 = phi ptr [ %66, %61 ], [ %42, %41 ]
  %47 = phi i32 [ %62, %61 ], [ 0, %41 ]
  %48 = load ptr, ptr %5, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = add nuw nsw i32 %47, 1
  br label %59

52:                                               ; preds = %45
  %53 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %54 = call i64 %53(ptr noundef nonnull %48) #12
  %55 = lshr i64 %54, 3
  %56 = add nuw nsw i32 %47, 1
  %57 = zext nneg i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50, %52
  %60 = phi i32 [ %51, %50 ], [ %56, %52 ]
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 8, i32 noundef %47, i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %61

61:                                               ; preds = %59, %52
  %62 = phi i32 [ %60, %59 ], [ %56, %52 ]
  %63 = load ptr, ptr %5, align 8, !tbaa !34
  %64 = zext nneg i32 %47 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr %46, ptr %65, align 8, !tbaa !34
  %66 = call ptr @BMW_step(ptr noundef nonnull %6) #12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %45, !llvm.loop !52

68:                                               ; preds = %61
  call void @BMW_end(ptr noundef nonnull %6) #12
  %69 = zext i32 %62 to i64
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi i64 [ 0, %68 ], [ %78, %70 ]
  %72 = load ptr, ptr %5, align 8, !tbaa !34
  %73 = getelementptr inbounds ptr, ptr %72, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.BMFace, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !49
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %76, i16 noundef signext 1) #13
  %77 = load ptr, ptr %75, align 8, !tbaa !49
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %77, i16 noundef signext 2) #13
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp eq i64 %78, %69
  br i1 %79, label %80, label %70, !llvm.loop !53

80:                                               ; preds = %70, %44
  %81 = phi i32 [ 0, %44 ], [ %62, %70 ]
  %82 = call zeroext i8 @BMO_error_occurred(ptr noundef %0) #12
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %80
  %85 = load ptr, ptr %5, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %89 = call i64 %88(ptr noundef nonnull %85) #12
  %90 = lshr i64 %89, 3
  %91 = add nuw nsw i32 %81, 1
  %92 = zext nneg i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84, %87
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 8, i32 noundef %81, i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %95

95:                                               ; preds = %94, %87
  %96 = load ptr, ptr %5, align 8, !tbaa !34
  %97 = zext nneg i32 %81 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  store ptr null, ptr %98, align 8, !tbaa !34
  %99 = load ptr, ptr %4, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %103 = call i64 %102(ptr noundef nonnull %99) #12
  %104 = lshr i64 %103, 3
  br label %105

105:                                              ; preds = %101, %95
  %106 = phi i64 [ %104, %101 ], [ 0, %95 ]
  %107 = add nsw i32 %36, 1
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 8, i32 noundef %36, i32 noundef 1, ptr noundef nonnull @.str.3) #12
  br label %111

111:                                              ; preds = %110, %105
  %112 = load ptr, ptr %5, align 8, !tbaa !34
  %113 = load ptr, ptr %4, align 8, !tbaa !34
  %114 = sext i32 %36 to i64
  %115 = getelementptr inbounds ptr, ptr %113, i64 %114
  store ptr %112, ptr %115, align 8, !tbaa !34
  br label %117

116:                                              ; preds = %80
  call void @BMO_error_clear(ptr noundef %0) #12
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef null) #12
  br label %181

117:                                              ; preds = %111, %34
  %118 = phi i32 [ %36, %34 ], [ %107, %111 ]
  %119 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %120 = icmp eq ptr %119, null
  br i1 %120, label %29, label %34, !llvm.loop !54

121:                                              ; preds = %31, %145
  %122 = phi i64 [ 0, %31 ], [ %149, %145 ]
  %123 = load ptr, ptr %4, align 8, !tbaa !34
  %124 = getelementptr inbounds ptr, ptr %123, i64 %122
  %125 = load ptr, ptr %124, align 8, !tbaa !34
  store ptr %125, ptr %5, align 8, !tbaa !34
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.4) #12
  br label %181

129:                                              ; preds = %121, %129
  %130 = phi i64 [ %134, %129 ], [ 0, %121 ]
  %131 = getelementptr inbounds ptr, ptr %125, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !34
  %133 = icmp eq ptr %132, null
  %134 = add nuw i64 %130, 1
  br i1 %133, label %135, label %129, !llvm.loop !55

135:                                              ; preds = %129
  %136 = trunc i64 %130 to i32
  %137 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %125, i32 noundef %136, i8 noundef zeroext 1) #12
  %138 = icmp eq ptr %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  br i1 %32, label %145, label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %9, align 8, !tbaa !38
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  store ptr %137, ptr %9, align 8, !tbaa !38
  br label %145

144:                                              ; preds = %135
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.5) #12
  br label %181

145:                                              ; preds = %139, %140, %143
  %146 = getelementptr inbounds %struct.BMFace, ptr %137, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !49
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %147, i16 noundef signext 2) #13
  %148 = load ptr, ptr %146, align 8, !tbaa !49
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %148, i16 noundef signext 4) #13
  %149 = add nuw nsw i64 %122, 1
  %150 = icmp eq i64 %149, %33
  br i1 %150, label %151, label %121, !llvm.loop !56

151:                                              ; preds = %145, %26, %29
  %152 = phi i32 [ %118, %29 ], [ 0, %26 ], [ %118, %145 ]
  %153 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %154 = load i32, ptr %153, align 8, !tbaa !57
  %155 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %154, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 5) #12
  br i1 %12, label %176, label %156

156:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %157 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  %158 = icmp eq ptr %157, null
  br i1 %158, label %175, label %159

159:                                              ; preds = %156, %173
  %160 = phi ptr [ %161, %173 ], [ %157, %156 ]
  %161 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #13
  %162 = getelementptr inbounds %struct.BMVert, ptr %160, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !44
  %164 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %163, i16 noundef signext 1) #13, !range !51
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %159
  %167 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %160) #12
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.BMVert, ptr %160, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !59
  %172 = call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %171, ptr noundef nonnull %160, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %173

173:                                              ; preds = %159, %169, %166
  %174 = icmp eq ptr %161, null
  br i1 %174, label %175, label %159, !llvm.loop !60

175:                                              ; preds = %173, %156
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  br label %176

176:                                              ; preds = %175, %151
  %177 = call zeroext i8 @BMO_error_occurred(ptr noundef %0) #12
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %180, ptr noundef nonnull @.str.7, i8 noundef zeroext 8, i16 noundef signext 4) #12
  br label %181

181:                                              ; preds = %128, %144, %116, %176, %179
  %182 = phi i32 [ %118, %128 ], [ %118, %144 ], [ %36, %116 ], [ %152, %176 ], [ %152, %179 ]
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %181
  %185 = zext nneg i32 %182 to i64
  br label %186

186:                                              ; preds = %184, %194
  %187 = phi i64 [ 0, %184 ], [ %195, %194 ]
  %188 = load ptr, ptr %4, align 8, !tbaa !34
  %189 = getelementptr inbounds ptr, ptr %188, i64 %187
  %190 = load ptr, ptr %189, align 8, !tbaa !34
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %186
  %193 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %193(ptr noundef nonnull %190) #12
  br label %194

194:                                              ; preds = %186, %192
  %195 = add nuw nsw i64 %187, 1
  %196 = icmp eq i64 %195, %185
  br i1 %196, label %197, label %186, !llvm.loop !61

197:                                              ; preds = %194, %181
  %198 = load ptr, ptr %4, align 8, !tbaa !34
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %201(ptr noundef nonnull %198) #12
  br label %202

202:                                              ; preds = %200, %197
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !62 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #13
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #13
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !63 {
  %4 = icmp ne i32 %2, 0
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !65
  %11 = and i16 %10, -2
  %12 = zext i1 %4 to i16
  %13 = or disjoint i16 %11, %12
  store i16 %13, ptr %9, align 2, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !67 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !70 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !65
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: optsize
declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMW_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !71 {
  %4 = xor i16 %2, -1
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !65
  %11 = and i16 %10, %4
  store i16 %11, ptr %9, align 2, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !72 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !65
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_error_occurred(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_error_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_faces_join(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_collapse_edge(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_dissolve_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [2 x ptr], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #12
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.8) #12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %2
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, i16 noundef signext 2) #12
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %14, %37
  %18 = phi ptr [ %38, %37 ], [ %15, %14 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %18) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %30, %21 ], [ %19, %17 ]
  %23 = phi i32 [ %29, %21 ], [ 0, %17 ]
  %24 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %25, i16 noundef signext 2) #13, !range !51
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %23, %28
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !76

32:                                               ; preds = %21
  %33 = icmp ult i32 %29, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %17, %32
  %35 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %36, i16 noundef signext 2) #13
  br label %37

37:                                               ; preds = %34, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %17, !llvm.loop !77

40:                                               ; preds = %37, %14
  call fastcc void @bm_face_split(ptr noundef %0, i16 noundef signext 2, i8 noundef zeroext 0) #13
  br label %41

41:                                               ; preds = %40, %2
  %42 = icmp eq i8 %11, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %41
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %53, %46 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %47) #12
  %51 = icmp eq i8 %50, 0
  %52 = zext i1 %51 to i32
  call fastcc void @_bmo_elem_flag_set(ptr noundef %0, ptr noundef %49, i32 noundef %52) #13
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %46, !llvm.loop !78

55:                                               ; preds = %46, %43, %41
  %56 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 2) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %88, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  br label %60

60:                                               ; preds = %58, %85
  %61 = phi ptr [ %56, %58 ], [ %86, %85 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %62 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %61, ptr noundef nonnull %6, ptr noundef nonnull %59) #12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %60, %84
  %65 = phi i1 [ false, %84 ], [ true, %60 ]
  %66 = phi i64 [ 1, %84 ], [ 0, %60 ]
  %67 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.BMFace, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !79
  br label %71

71:                                               ; preds = %71, %64
  %72 = phi ptr [ %70, %64 ], [ %82, %71 ]
  %73 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !80
  %75 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %76, i16 noundef signext 8) #13
  %77 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !82
  %79 = getelementptr inbounds %struct.BMEdge, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !73
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %80, i16 noundef signext 8) #13
  %81 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !83
  %83 = icmp eq ptr %82, %70
  br i1 %83, label %84, label %71, !llvm.loop !84

84:                                               ; preds = %71
  br i1 %65, label %64, label %85, !llvm.loop !85

85:                                               ; preds = %84, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  %86 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %60, !llvm.loop !86

88:                                               ; preds = %85, %55
  %89 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 2) #12
  %90 = icmp eq ptr %89, null
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = icmp ne ptr %10, null
  br label %93

93:                                               ; preds = %91, %107
  %94 = phi ptr [ %89, %91 ], [ %108, %107 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %95 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %94, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %7, align 8, !tbaa !34
  %99 = load ptr, ptr %8, align 8, !tbaa !34
  %100 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %98, ptr noundef %99, ptr noundef nonnull %94, i8 noundef zeroext 0) #12
  %101 = icmp ne ptr %100, null
  %102 = select i1 %101, i1 %92, i1 false
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load ptr, ptr %9, align 8, !tbaa !38
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store ptr %100, ptr %9, align 8, !tbaa !38
  br label %107

107:                                              ; preds = %97, %106, %103, %93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %108 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %93, !llvm.loop !87

110:                                              ; preds = %107, %88
  %111 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #13
  %112 = icmp eq ptr %111, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %110, %125
  %114 = phi ptr [ %115, %125 ], [ %111, %110 ]
  %115 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %116 = getelementptr inbounds %struct.BMEdge, ptr %114, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !88
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.BMEdge, ptr %114, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !73
  %122 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %121, i16 noundef signext 8) #13, !range !51
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %114) #12
  br label %125

125:                                              ; preds = %113, %119, %124
  %126 = icmp eq ptr %115, null
  br i1 %126, label %127, label %113, !llvm.loop !89

127:                                              ; preds = %125, %110
  %128 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  %129 = icmp eq ptr %128, null
  br i1 %129, label %144, label %130

130:                                              ; preds = %127, %142
  %131 = phi ptr [ %132, %142 ], [ %128, %127 ]
  %132 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %133 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !59
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !44
  %139 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %138, i16 noundef signext 8) #13, !range !51
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %131) #12
  br label %142

142:                                              ; preds = %130, %136, %141
  %143 = icmp eq ptr %132, null
  br i1 %143, label %144, label %130, !llvm.loop !90

144:                                              ; preds = %142, %127
  br i1 %42, label %164, label %145

145:                                              ; preds = %144
  %146 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  %147 = icmp eq ptr %146, null
  br i1 %147, label %164, label %148

148:                                              ; preds = %145, %162
  %149 = phi ptr [ %150, %162 ], [ %146, %145 ]
  %150 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %151 = getelementptr inbounds %struct.BMVert, ptr %149, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !44
  %153 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %152, i16 noundef signext 1) #13, !range !51
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  %156 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %149) #12
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.BMVert, ptr %149, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !59
  %161 = call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %160, ptr noundef nonnull %149, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %162

162:                                              ; preds = %148, %158, %155
  %163 = icmp eq ptr %150, null
  br i1 %163, label %164, label %148, !llvm.loop !91

164:                                              ; preds = %162, %145, %144
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_split(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !92 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @BLI_stack_new(i64 noundef 8, ptr noundef nonnull @__func__.bm_face_split) #12
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ undef, %3 ]
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  store ptr %12, ptr %5, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %63, label %14

14:                                               ; preds = %10, %60
  %15 = phi ptr [ %61, %60 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %17, i16 noundef signext %1) #13, !range !51
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %14
  %21 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %15) #12
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %24 = load ptr, ptr %5, align 8, !tbaa !34
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 6, ptr noundef %24) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %23, %54
  %28 = phi ptr [ %55, %54 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = getelementptr inbounds %struct.BMFace, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !94
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !80
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %40, i16 noundef signext %1) #13, !range !51
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  %48 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %49, i16 noundef signext %1) #13, !range !51
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %30, ptr noundef nonnull %36, ptr noundef nonnull %45, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #12
  br label %54

54:                                               ; preds = %27, %52, %43, %34
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %27, !llvm.loop !96

57:                                               ; preds = %54, %23
  br i1 %7, label %59, label %58

58:                                               ; preds = %57
  call void @BLI_stack_push(ptr noundef %11, ptr noundef nonnull %5) #12
  br label %59

59:                                               ; preds = %58, %57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %60

60:                                               ; preds = %14, %59, %20
  %61 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  store ptr %61, ptr %5, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %14, !llvm.loop !97

63:                                               ; preds = %60, %10
  br i1 %7, label %82, label %64

64:                                               ; preds = %63
  %65 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %11) #12
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %81

67:                                               ; preds = %75, %70
  %68 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %11) #12
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %81, !llvm.loop !98

70:                                               ; preds = %64, %67
  call void @BLI_stack_pop(ptr noundef %11, ptr noundef nonnull %5) #12
  %71 = load ptr, ptr %5, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.BMVert, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !59
  %74 = icmp eq ptr %73, null
  br i1 %74, label %67, label %75

75:                                               ; preds = %70, %75
  %76 = phi ptr [ %79, %75 ], [ %73, %70 ]
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %76) #12
  %77 = load ptr, ptr %5, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = icmp eq ptr %79, null
  br i1 %80, label %67, label %75, !llvm.loop !99

81:                                               ; preds = %67, %64
  call void @BLI_stack_free(ptr noundef %11) #12
  br label %82

82:                                               ; preds = %81, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_faces_join_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_dissolve_verts_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.8) #12
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  %13 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %2 ]
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %18, i16 noundef signext 9) #13
  %19 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !100

21:                                               ; preds = %15, %2
  %22 = icmp eq i8 %11, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  call fastcc void @bm_face_split(ptr noundef %0, i16 noundef signext 1, i8 noundef zeroext 0) #13
  br label %24

24:                                               ; preds = %23, %21
  %25 = icmp eq i8 %12, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %24
  %27 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %26, %46
  %30 = phi ptr [ %47, %46 ], [ %27, %26 ]
  %31 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %30) #12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %30) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %33, %43
  %37 = phi ptr [ %44, %43 ], [ %34, %33 ]
  %38 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %37) #13, !range !101
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %42, i16 noundef signext 16) #13
  br label %46

43:                                               ; preds = %36
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %36, !llvm.loop !102

46:                                               ; preds = %43, %33, %29, %40
  %47 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %29, !llvm.loop !103

49:                                               ; preds = %46, %26
  call fastcc void @bm_face_split(ptr noundef %0, i16 noundef signext 16, i8 noundef zeroext 1) #13
  br label %50

50:                                               ; preds = %49, %24
  %51 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %96, label %53

53:                                               ; preds = %50, %93
  %54 = phi ptr [ %94, %93 ], [ %51, %50 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %55 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %54) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %93, label %57

57:                                               ; preds = %53, %72
  %58 = phi ptr [ %75, %72 ], [ %55, %53 ]
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %70, %59 ], [ %58, %57 ]
  %61 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  %63 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %64, i16 noundef signext 8) #13
  %65 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !82
  %67 = getelementptr inbounds %struct.BMEdge, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !73
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %68, i16 noundef signext 8) #13
  %69 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !83
  %71 = icmp eq ptr %70, %58
  br i1 %71, label %72, label %59, !llvm.loop !104

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !82
  %75 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %57, !llvm.loop !105

77:                                               ; preds = %72
  %78 = icmp eq ptr %74, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %77, %91
  %80 = phi ptr [ %87, %91 ], [ %74, %77 ]
  %81 = getelementptr inbounds %struct.BMEdge, ptr %80, i64 0, i32 5
  %82 = getelementptr inbounds %struct.BMEdge, ptr %80, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !106
  %84 = icmp eq ptr %54, %83
  %85 = zext i1 %84 to i64
  %86 = getelementptr inbounds %struct.BMDiskLink, ptr %81, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !107
  %88 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %80) #13, !range !101
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %80) #12
  br label %91

91:                                               ; preds = %79, %90
  %92 = icmp eq ptr %87, %74
  br i1 %92, label %93, label %79, !llvm.loop !108

93:                                               ; preds = %91, %53, %77
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  %94 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %53, !llvm.loop !109

96:                                               ; preds = %93, %50
  %97 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #12
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %106
  %100 = phi ptr [ %107, %106 ], [ %97, %96 ]
  %101 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %100) #12
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !44
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %105, i16 noundef signext 4) #13
  br label %106

106:                                              ; preds = %99, %103
  %107 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %99, !llvm.loop !110

109:                                              ; preds = %106, %96
  %110 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #12
  %111 = icmp eq ptr %110, null
  br i1 %111, label %141, label %112

112:                                              ; preds = %109
  %113 = icmp eq ptr %10, null
  br label %114

114:                                              ; preds = %112, %138
  %115 = phi ptr [ %110, %112 ], [ %139, %138 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %116 = getelementptr inbounds %struct.BMVert, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !44
  %118 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %117, i16 noundef signext 4) #13, !range !51
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %114
  %121 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %115) #13
  %122 = icmp eq ptr %121, null
  br i1 %122, label %138, label %123

123:                                              ; preds = %120, %135
  %124 = phi ptr [ %136, %135 ], [ %121, %120 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %125 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %124, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %7, align 8, !tbaa !34
  %129 = load ptr, ptr %8, align 8, !tbaa !34
  %130 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %128, ptr noundef %129, ptr noundef nonnull %124, i8 noundef zeroext 0) #12
  br i1 %113, label %135, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %9, align 8, !tbaa !38
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store ptr %130, ptr %9, align 8, !tbaa !38
  br label %135

135:                                              ; preds = %127, %131, %134, %123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %136 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #13
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %123, !llvm.loop !111

138:                                              ; preds = %135, %120, %114
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  %139 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %114, !llvm.loop !112

141:                                              ; preds = %138, %109
  %142 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #13
  %143 = icmp eq ptr %142, null
  br i1 %143, label %158, label %144

144:                                              ; preds = %141, %156
  %145 = phi ptr [ %146, %156 ], [ %142, %141 ]
  %146 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %147 = getelementptr inbounds %struct.BMEdge, ptr %145, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !88
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.BMEdge, ptr %145, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !73
  %153 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %152, i16 noundef signext 8) #13, !range !51
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %145) #12
  br label %156

156:                                              ; preds = %144, %150, %155
  %157 = icmp eq ptr %146, null
  br i1 %157, label %158, label %144, !llvm.loop !113

158:                                              ; preds = %156, %141
  %159 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #12
  %160 = icmp eq ptr %159, null
  br i1 %160, label %172, label %161

161:                                              ; preds = %158, %169
  %162 = phi ptr [ %170, %169 ], [ %159, %158 ]
  %163 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %162) #12
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.BMVert, ptr %162, i64 0, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !59
  %168 = call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %167, ptr noundef nonnull %162, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  br label %169

169:                                              ; preds = %161, %165
  %170 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %161, !llvm.loop !114

172:                                              ; preds = %169, %158
  %173 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  %174 = icmp eq ptr %173, null
  br i1 %174, label %189, label %175

175:                                              ; preds = %172, %187
  %176 = phi ptr [ %177, %187 ], [ %173, %172 ]
  %177 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %178 = getelementptr inbounds %struct.BMVert, ptr %176, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !59
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.BMVert, ptr %176, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !44
  %184 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %183, i16 noundef signext 8) #13, !range !51
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %181
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %176) #12
  br label %187

187:                                              ; preds = %175, %181, %186
  %188 = icmp eq ptr %177, null
  br i1 %188, label %189, label %175, !llvm.loop !115

189:                                              ; preds = %187, %172
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_dissolve_limit_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.9) #12
  %4 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.11) #12
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.12) #12
  %6 = tail call fastcc float @min_ff(float noundef 0x3FF921FB60000000, float noundef %5) #13
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.13) #12
  %8 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.14) #12
  %9 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !120
  %13 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !119
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !120
  tail call void @BM_mesh_decimate_dissolve_ex(ptr noundef %0, float noundef %6, i8 noundef zeroext %7, i32 noundef %8, ptr noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef %16, i16 noundef signext 4) #12
  %17 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull @.str.7, i8 noundef zeroext 8, i16 noundef signext 4) #12
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !122 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_decimate_dissolve_ex(ptr noundef, float noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_dissolve_degenerate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  %12 = fmul float %11, %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, i16 noundef signext 1) #12
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %2, %37
  %16 = phi i8 [ %28, %37 ], [ 0, %2 ]
  %17 = phi ptr [ %38, %37 ], [ %13, %2 ]
  %18 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %19, i16 noundef signext 1) #13, !range !51
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = call float @BM_edge_calc_length_squared(ptr noundef nonnull %17) #12
  %24 = fcmp olt float %23, %12
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %18, align 8, !tbaa !73
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %26, i16 noundef signext 2) #13
  br label %27

27:                                               ; preds = %22, %25, %15
  %28 = phi i8 [ 1, %25 ], [ %16, %22 ], [ %16, %15 ]
  %29 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !88
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %27 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef %33) #13
  %34 = getelementptr inbounds %struct.BMLoop, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  %36 = icmp eq ptr %35, %30
  br i1 %36, label %37, label %32, !llvm.loop !123

37:                                               ; preds = %32, %27
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %15, !llvm.loop !124

40:                                               ; preds = %37
  %41 = icmp eq i8 %28, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !57
  call fastcc void @bm_mesh_edge_collapse_flagged(ptr noundef %0, i32 noundef %44) #13
  br label %45

45:                                               ; preds = %2, %42, %40
  %46 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %194, label %48

48:                                               ; preds = %45, %185
  %49 = phi i8 [ %186, %185 ], [ 0, %45 ]
  %50 = phi ptr [ %187, %185 ], [ %46, %45 ]
  %51 = getelementptr inbounds %struct.BMEdge, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !88
  %53 = icmp eq ptr %52, null
  br i1 %53, label %185, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.BMEdge, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !73
  %57 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %56, i16 noundef signext 1) #13, !range !51
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %185, label %59

59:                                               ; preds = %54, %179
  %60 = phi ptr [ %180, %179 ], [ %52, %54 ]
  %61 = phi ptr [ %183, %179 ], [ %52, %54 ]
  %62 = phi i8 [ %181, %179 ], [ %49, %54 ]
  %63 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %61) #13
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %179

65:                                               ; preds = %59
  call fastcc void @_bm_elem_flag_enable(ptr noundef %61) #13
  %66 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !95
  %68 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !82
  %70 = getelementptr inbounds %struct.BMEdge, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !73
  %72 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %71, i16 noundef signext 1) #13, !range !51
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %179, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !82
  %77 = getelementptr inbounds %struct.BMEdge, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !73
  %79 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %78, i16 noundef signext 2) #13, !range !51
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %179

81:                                               ; preds = %74
  %82 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %71, i16 noundef signext 2) #13, !range !51
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %179

84:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %85 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !80
  %87 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 2
  %88 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !80
  %90 = getelementptr inbounds %struct.BMVert, ptr %89, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %87, ptr noundef nonnull %90) #13
  %91 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !83
  %93 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !80
  %95 = getelementptr inbounds %struct.BMVert, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %88, align 8, !tbaa !80
  %97 = getelementptr inbounds %struct.BMVert, ptr %96, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %95, ptr noundef nonnull %97) #13
  %98 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #13
  %99 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #13
  %100 = call fastcc float @len_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %101 = call fastcc float @min_ff(float noundef %98, float noundef %99) #13
  %102 = fmul float %100, %101
  %103 = fcmp ugt float %102, %11
  br i1 %103, label %176, label %104

104:                                              ; preds = %84
  %105 = fsub float %98, %99
  %106 = call float @llvm.fabs.f32(float %105)
  %107 = fcmp ugt float %106, %11
  br i1 %107, label %126, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !93
  %111 = getelementptr inbounds %struct.BMFace, ptr %110, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !94
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load ptr, ptr %91, align 8, !tbaa !83
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !82
  %118 = getelementptr inbounds %struct.BMEdge, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !73
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %119, i16 noundef signext 2) #13
  br label %176

120:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %121 = load ptr, ptr %66, align 8, !tbaa !95
  %122 = load ptr, ptr %91, align 8, !tbaa !83
  %123 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %110, ptr noundef %121, ptr noundef %122, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 1) #12
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %170

125:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %176

126:                                              ; preds = %104
  %127 = fcmp olt float %98, %99
  br i1 %127, label %128, label %147

128:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %129 = load ptr, ptr %75, align 8, !tbaa !82
  %130 = load ptr, ptr %88, align 8, !tbaa !80
  %131 = fdiv float %98, %99
  %132 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef %129, ptr noundef %130, ptr noundef nonnull %7, float noundef %131) #12
  %133 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !93
  %135 = load ptr, ptr %66, align 8, !tbaa !95
  %136 = load ptr, ptr %91, align 8, !tbaa !83
  %137 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 1) #12
  %138 = icmp eq ptr %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %128
  %140 = load ptr, ptr %8, align 8, !tbaa !34
  %141 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !82
  %143 = getelementptr inbounds %struct.BMEdge, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !73
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %144, i16 noundef signext 2) #13
  br label %145

145:                                              ; preds = %139, %128
  %146 = phi i8 [ 1, %139 ], [ %62, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %176

147:                                              ; preds = %126
  %148 = fcmp olt float %99, %98
  br i1 %148, label %149, label %176

149:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %150 = load ptr, ptr %66, align 8, !tbaa !95
  %151 = getelementptr inbounds %struct.BMLoop, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !82
  %153 = load ptr, ptr %88, align 8, !tbaa !80
  %154 = fdiv float %99, %98
  %155 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef %152, ptr noundef %153, ptr noundef nonnull %9, float noundef %154) #12
  %156 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !93
  %158 = load ptr, ptr %66, align 8, !tbaa !95
  %159 = load ptr, ptr %91, align 8, !tbaa !83
  %160 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %157, ptr noundef %158, ptr noundef %159, ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 1) #12
  %161 = icmp eq ptr %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %149
  %163 = load ptr, ptr %10, align 8, !tbaa !34
  %164 = getelementptr inbounds %struct.BMLoop, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !82
  %166 = getelementptr inbounds %struct.BMEdge, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !73
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %167, i16 noundef signext 2) #13
  br label %168

168:                                              ; preds = %162, %149
  %169 = phi i8 [ 1, %162 ], [ %62, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %176

170:                                              ; preds = %120
  %171 = load ptr, ptr %6, align 8, !tbaa !34
  %172 = getelementptr inbounds %struct.BMLoop, ptr %171, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !82
  %174 = getelementptr inbounds %struct.BMEdge, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !73
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %175, i16 noundef signext 2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %176

176:                                              ; preds = %168, %145, %147, %114, %170, %125, %84
  %177 = phi ptr [ %60, %84 ], [ %61, %170 ], [ %60, %125 ], [ %60, %114 ], [ %60, %147 ], [ %61, %145 ], [ %61, %168 ]
  %178 = phi i8 [ %62, %84 ], [ 1, %170 ], [ %62, %125 ], [ 1, %114 ], [ %62, %147 ], [ %146, %145 ], [ %169, %168 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %179

179:                                              ; preds = %59, %81, %176, %65, %74
  %180 = phi ptr [ %60, %59 ], [ %60, %74 ], [ %177, %176 ], [ %60, %81 ], [ %60, %65 ]
  %181 = phi i8 [ %62, %59 ], [ %62, %74 ], [ %178, %176 ], [ %62, %81 ], [ %62, %65 ]
  %182 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !117
  %184 = icmp eq ptr %183, %180
  br i1 %184, label %185, label %59, !llvm.loop !125

185:                                              ; preds = %179, %48, %54
  %186 = phi i8 [ %49, %54 ], [ %49, %48 ], [ %181, %179 ]
  %187 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %48, !llvm.loop !126

189:                                              ; preds = %185
  %190 = icmp eq i8 %186, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %193 = load i32, ptr %192, align 8, !tbaa !57
  call fastcc void @bm_mesh_edge_collapse_flagged(ptr noundef %0, i32 noundef %193) #13
  br label %194

194:                                              ; preds = %45, %191, %189
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare float @BM_edge_calc_length_squared(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !127 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !128
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_mesh_edge_collapse_flagged(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !129 {
  %3 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.16, i32 noundef 2) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !130 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !128
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !131 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !128
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !132 {
  %4 = load float, ptr %1, align 4, !tbaa !133
  %5 = load float, ptr %2, align 4, !tbaa !133
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !133
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !133
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !133
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !133
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !133
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !133
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !135 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #13
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !136 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #13
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !137 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !138
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %20 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !139
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  br label %21

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !139
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !141
  br label %21

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !139
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !142
  br label %21

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !139
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !68
  br label %21

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !139
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !68
  br label %21

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !139
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !68
  br label %21

20:                                               ; preds = %4
  unreachable

21:                                               ; preds = %19, %18, %17, %14, %11, %8
  %22 = phi ptr [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %23 = phi ptr [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %22, ptr %0, align 8, !tbaa !119
  tail call void %23(ptr noundef nonnull %0) #12
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
declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_stack_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_stack_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !143 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !144 {
  %3 = load float, ptr %0, align 4, !tbaa !133
  %4 = load float, ptr %1, align 4, !tbaa !133
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !133
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !133
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !133
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !133
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !145 {
  %4 = load float, ptr %1, align 4, !tbaa !133
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !133
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !133
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !133
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !133
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !146 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !133
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !147 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #13
  %3 = tail call float @sqrtf(float noundef %2) #12
  ret float %3
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 976}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!45, !35, i64 16}
!45 = !{!"BMVert", !46, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!46 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !35, i64 16}
!50 = !{!"BMFace", !46, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!51 = !{i16 0, i16 17}
!52 = distinct !{!52, !48}
!53 = distinct !{!53, !48}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = distinct !{!56, !48}
!57 = !{!58, !40, i64 1304}
!58 = !{!"BMOperator", !36, i64 0, !36, i64 640, !35, i64 1280, !35, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!59 = !{!45, !35, i64 48}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = !{!"bmo_dissolve.c:BM_iter_new"}
!63 = !{!"bmo_dissolve.c:_bmo_elem_flag_set"}
!64 = !{!39, !40, i64 128}
!65 = !{!66, !42, i64 0}
!66 = !{!"BMFlagLayer", !42, i64 0}
!67 = !{!"bmo_dissolve.c:BM_iter_step"}
!68 = !{!69, !35, i64 48}
!69 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!70 = !{!"bmo_dissolve.c:_bmo_elem_flag_test"}
!71 = !{!"bmo_dissolve.c:_bmo_elem_flag_disable"}
!72 = !{!"bmo_dissolve.c:_bmo_elem_flag_enable"}
!73 = !{!74, !35, i64 16}
!74 = !{!"BMEdge", !46, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !75, i64 48, !75, i64 64}
!75 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!76 = distinct !{!76, !48}
!77 = distinct !{!77, !48}
!78 = distinct !{!78, !48}
!79 = !{!50, !35, i64 24}
!80 = !{!81, !35, i64 16}
!81 = !{!"BMLoop", !46, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!82 = !{!81, !35, i64 24}
!83 = !{!81, !35, i64 56}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, !48}
!87 = distinct !{!87, !48}
!88 = !{!74, !35, i64 40}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = !{!"bmo_dissolve.c:bm_face_split"}
!93 = !{!81, !35, i64 32}
!94 = !{!50, !40, i64 32}
!95 = !{!81, !35, i64 64}
!96 = distinct !{!96, !48}
!97 = distinct !{!97, !48}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48}
!101 = !{i8 0, i8 2}
!102 = distinct !{!102, !48}
!103 = distinct !{!103, !48}
!104 = distinct !{!104, !48}
!105 = distinct !{!105, !48}
!106 = !{!74, !35, i64 32}
!107 = !{!74, !35, i64 48}
!108 = distinct !{!108, !48}
!109 = distinct !{!109, !48}
!110 = distinct !{!110, !48}
!111 = distinct !{!111, !48}
!112 = distinct !{!112, !48}
!113 = distinct !{!113, !48}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = !{!"bmo_dissolve.c:BM_edge_is_boundary"}
!117 = !{!81, !35, i64 40}
!118 = !{!"bmo_dissolve.c:BM_edge_is_wire"}
!119 = !{!36, !36, i64 0}
!120 = !{!121, !40, i64 16}
!121 = !{!"BMOpSlot", !35, i64 0, !40, i64 8, !36, i64 12, !40, i64 16, !36, i64 24}
!122 = !{!"bmo_dissolve.c:min_ff"}
!123 = distinct !{!123, !48}
!124 = distinct !{!124, !48}
!125 = distinct !{!125, !48}
!126 = distinct !{!126, !48}
!127 = !{!"bmo_dissolve.c:_bm_elem_flag_disable"}
!128 = !{!46, !36, i64 13}
!129 = !{!"bmo_dissolve.c:bm_mesh_edge_collapse_flagged"}
!130 = !{!"bmo_dissolve.c:_bm_elem_flag_test"}
!131 = !{!"bmo_dissolve.c:_bm_elem_flag_enable"}
!132 = !{!"bmo_dissolve.c:sub_v3_v3v3"}
!133 = !{!134, !134, i64 0}
!134 = !{!"float", !36, i64 0}
!135 = !{!"bmo_dissolve.c:normalize_v3"}
!136 = !{!"bmo_dissolve.c:len_v3v3"}
!137 = !{!"bmo_dissolve.c:BM_iter_init"}
!138 = !{!69, !36, i64 60}
!139 = !{!69, !35, i64 40}
!140 = !{!39, !35, i64 32}
!141 = !{!39, !35, i64 40}
!142 = !{!39, !35, i64 56}
!143 = !{!"bmo_dissolve.c:normalize_v3_v3"}
!144 = !{!"bmo_dissolve.c:dot_v3v3"}
!145 = !{!"bmo_dissolve.c:mul_v3_v3fl"}
!146 = !{!"bmo_dissolve.c:zero_v3"}
!147 = !{!"bmo_dissolve.c:len_v3"}
