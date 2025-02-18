; ModuleID = 'blender/source/blender/bmesh/operators/bmo_create.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMElemF = type { %struct.BMHeader, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@.str = private unnamed_addr constant [7 x i8] c"mat_nr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"use_smooth\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"edgenet_prepare edges=%fe\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"edgenet_fill edges=%fe mat_nr=%i use_smooth=%b sides=%i\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"dissolve_faces faces=%ff\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"region.out\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"edgeloop_fill edges=%fe\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_contextual_create_exec = private unnamed_addr constant [27 x i8] c"bmo_contextual_create_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @bmo_contextual_create_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca [2 x ptr], align 16
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca %struct.BMOperator, align 8
  %7 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #3
  %8 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #3
  %9 = trunc i32 %8 to i16
  %10 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #3
  %11 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 11) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %15

15:                                               ; preds = %13, %28
  %16 = phi ptr [ %11, %13 ], [ %40, %28 ]
  %17 = phi i32 [ 0, %13 ], [ %31, %28 ]
  %18 = phi i32 [ 0, %13 ], [ %30, %28 ]
  %19 = phi i32 [ 0, %13 ], [ %29, %28 ]
  %20 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !34
  switch i8 %21, label %28 [
    i8 1, label %22
    i8 2, label %24
    i8 8, label %26
  ]

22:                                               ; preds = %15
  %23 = add nsw i32 %17, 1
  br label %28

24:                                               ; preds = %15
  %25 = add nsw i32 %18, 1
  br label %28

26:                                               ; preds = %15
  %27 = add nsw i32 %19, 1
  br label %28

28:                                               ; preds = %15, %26, %24, %22
  %29 = phi i32 [ %19, %15 ], [ %27, %26 ], [ %19, %24 ], [ %19, %22 ]
  %30 = phi i32 [ %18, %15 ], [ %18, %26 ], [ %25, %24 ], [ %18, %22 ]
  %31 = phi i32 [ %17, %15 ], [ %17, %26 ], [ %17, %24 ], [ %23, %22 ]
  %32 = getelementptr inbounds %struct.BMElemF, ptr %16, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = load i32, ptr %14, align 8, !tbaa !42
  %35 = sext i32 %34 to i64
  %36 = getelementptr %struct.BMFlagLayer, ptr %33, i64 %35
  %37 = getelementptr %struct.BMFlagLayer, ptr %36, i64 -1
  %38 = load i16, ptr %37, align 2, !tbaa !47
  %39 = or i16 %38, 1
  store i16 %39, ptr %37, align 2, !tbaa !47
  %40 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #3
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %15, !llvm.loop !49

42:                                               ; preds = %28
  %43 = icmp eq i32 %29, 0
  br label %44

44:                                               ; preds = %42, %2
  %45 = phi i1 [ true, %2 ], [ %43, %42 ]
  %46 = phi i32 [ 0, %2 ], [ %30, %42 ]
  %47 = phi i32 [ 0, %2 ], [ %31, %42 ]
  %48 = icmp eq i32 %47, 2
  %49 = icmp eq i32 %46, 0
  %50 = select i1 %48, i1 %49, i1 false
  %51 = select i1 %50, i1 %45, i1 false
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #3
  %53 = call i32 @BMO_iter_as_array(ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, ptr noundef nonnull %4, i32 noundef 2) #3
  %54 = load ptr, ptr %4, align 16, !tbaa !52
  %55 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %54, ptr noundef %56, ptr noundef null, i32 noundef 2) #3
  %58 = getelementptr inbounds %struct.BMEdge, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !53
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %61 = load i32, ptr %60, align 8, !tbaa !42
  %62 = sext i32 %61 to i64
  %63 = getelementptr %struct.BMFlagLayer, ptr %59, i64 %62
  %64 = getelementptr %struct.BMFlagLayer, ptr %63, i64 -1
  %65 = load i16, ptr %64, align 2, !tbaa !47
  %66 = or i16 %65, 2
  store i16 %66, ptr %64, align 2, !tbaa !47
  %67 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %67, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, i16 noundef signext 2) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #3
  br label %216

68:                                               ; preds = %44
  %69 = icmp sgt i32 %47, 3
  %70 = and i1 %45, %69
  br i1 %70, label %71, label %137

71:                                               ; preds = %68
  %72 = add nsw i32 %46, 2
  %73 = icmp eq i32 %47, %72
  br i1 %73, label %74, label %137

74:                                               ; preds = %71
  %75 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1) #3
  %76 = icmp eq ptr %75, null
  br i1 %76, label %106, label %77

77:                                               ; preds = %74, %101
  %78 = phi i8 [ %99, %101 ], [ 1, %74 ]
  %79 = phi ptr [ %98, %101 ], [ null, %74 ]
  %80 = phi ptr [ %97, %101 ], [ null, %74 ]
  %81 = phi ptr [ %96, %101 ], [ null, %74 ]
  %82 = phi ptr [ %102, %101 ], [ %75, %74 ]
  %83 = call i32 @BMO_iter_elem_count_flag(ptr noundef %0, i8 noundef zeroext 4, ptr noundef nonnull %82, i16 noundef signext 1, i8 noundef zeroext 1) #3
  switch i32 %83, label %94 [
    i32 0, label %84
    i32 1, label %88
    i32 2, label %95
  ]

84:                                               ; preds = %77
  %85 = icmp eq ptr %81, null
  %86 = select i1 %85, ptr %82, ptr %81
  %87 = select i1 %85, i8 %78, i8 0
  br label %95

88:                                               ; preds = %77
  %89 = icmp eq ptr %80, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %88
  %91 = icmp eq ptr %79, null
  %92 = select i1 %91, ptr %82, ptr %79
  %93 = select i1 %91, i8 %78, i8 0
  br label %95

94:                                               ; preds = %77
  br label %95

95:                                               ; preds = %77, %90, %88, %84, %94
  %96 = phi ptr [ %81, %94 ], [ %86, %84 ], [ %81, %88 ], [ %81, %90 ], [ %81, %77 ]
  %97 = phi ptr [ %80, %94 ], [ %80, %84 ], [ %82, %88 ], [ %80, %90 ], [ %80, %77 ]
  %98 = phi ptr [ %79, %94 ], [ %79, %84 ], [ %79, %88 ], [ %92, %90 ], [ %79, %77 ]
  %99 = phi i8 [ 0, %94 ], [ %87, %84 ], [ %78, %88 ], [ %93, %90 ], [ %78, %77 ]
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #3
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %77, !llvm.loop !56

104:                                              ; preds = %95, %101
  %105 = icmp eq i8 %99, 1
  br label %106

106:                                              ; preds = %104, %74
  %107 = phi ptr [ null, %74 ], [ %96, %104 ]
  %108 = phi ptr [ null, %74 ], [ %97, %104 ]
  %109 = phi ptr [ null, %74 ], [ %98, %104 ]
  %110 = phi i1 [ true, %74 ], [ %105, %104 ]
  %111 = icmp ne ptr %107, null
  %112 = select i1 %110, i1 %111, i1 false
  %113 = icmp ne ptr %108, null
  %114 = select i1 %112, i1 %113, i1 false
  %115 = icmp ne ptr %109, null
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %137

117:                                              ; preds = %106
  %118 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef nonnull %107, ptr noundef nonnull %108, ptr noundef null, i32 noundef 2) #3
  %119 = getelementptr inbounds %struct.BMEdge, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !53
  %121 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %122 = load i32, ptr %121, align 8, !tbaa !42
  %123 = sext i32 %122 to i64
  %124 = getelementptr %struct.BMFlagLayer, ptr %120, i64 %123
  %125 = getelementptr %struct.BMFlagLayer, ptr %124, i64 -1
  %126 = load i16, ptr %125, align 2, !tbaa !47
  %127 = or i16 %126, 1
  store i16 %127, ptr %125, align 2, !tbaa !47
  %128 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef nonnull %107, ptr noundef nonnull %109, ptr noundef null, i32 noundef 2) #3
  %129 = getelementptr inbounds %struct.BMEdge, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !53
  %131 = load i32, ptr %121, align 8, !tbaa !42
  %132 = sext i32 %131 to i64
  %133 = getelementptr %struct.BMFlagLayer, ptr %130, i64 %132
  %134 = getelementptr %struct.BMFlagLayer, ptr %133, i64 -1
  %135 = load i16, ptr %134, align 2, !tbaa !47
  %136 = or i16 %135, 1
  store i16 %136, ptr %134, align 2, !tbaa !47
  br label %137

137:                                              ; preds = %106, %117, %71, %68
  %138 = phi i32 [ %46, %71 ], [ %46, %68 ], [ %72, %117 ], [ %46, %106 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #3
  %141 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !57
  %143 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %142, ptr noundef nonnull @.str.4, i32 noundef 1) #3
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %5) #3
  %144 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %144, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, i16 noundef signext 1) #3
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #3
  %145 = load i32, ptr %141, align 8, !tbaa !57
  %146 = shl i32 %8, 16
  %147 = ashr exact i32 %146, 16
  %148 = zext i8 %10 to i32
  %149 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %145, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %147, i32 noundef %148, i32 noundef 10000) #3
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %5) #3
  %150 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %144, ptr noundef nonnull @.str.6) #3
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %154 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !59
  call void @_bmo_slot_copy(ptr noundef nonnull %144, ptr noundef nonnull @.str.6, ptr noundef nonnull %153, ptr noundef nonnull @.str.6, ptr noundef %155) #3
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #3
  br label %216

156:                                              ; preds = %140
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #3
  br label %157

157:                                              ; preds = %156, %137
  br i1 %45, label %170, label %158

158:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %6) #3
  %159 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %160 = load i32, ptr %159, align 8, !tbaa !57
  %161 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %160, ptr noundef nonnull @.str.7, i32 noundef 1) #3
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %6) #3
  %162 = getelementptr inbounds %struct.BMOperator, ptr %6, i64 0, i32 1
  %163 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %162, ptr noundef nonnull @.str.8) #3
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %167 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !59
  call void @_bmo_slot_copy(ptr noundef nonnull %162, ptr noundef nonnull @.str.8, ptr noundef nonnull %166, ptr noundef nonnull @.str.6, ptr noundef %168) #3
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %6) #3
  br label %216

169:                                              ; preds = %158
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %6) #3
  br label %170

170:                                              ; preds = %169, %157
  %171 = icmp sgt i32 %138, 2
  br i1 %171, label %172, label %186

172:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %7) #3
  %173 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %174 = load i32, ptr %173, align 8, !tbaa !57
  %175 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %174, ptr noundef nonnull @.str.9, i32 noundef 1) #3
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %7) #3
  %176 = getelementptr inbounds %struct.BMOperator, ptr %7, i64 0, i32 1
  %177 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %176, ptr noundef nonnull @.str.6) #3
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %181 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !59
  call void @_bmo_slot_copy(ptr noundef nonnull %176, ptr noundef nonnull @.str.6, ptr noundef nonnull %180, ptr noundef nonnull @.str.6, ptr noundef %182) #3
  br label %183

183:                                              ; preds = %172, %179
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %7) #3
  %184 = icmp sgt i32 %47, 2
  %185 = and i1 %178, %184
  br i1 %185, label %188, label %216

186:                                              ; preds = %170
  %187 = icmp sgt i32 %47, 2
  br i1 %187, label %188, label %216

188:                                              ; preds = %183, %186
  %189 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %190 = zext nneg i32 %47 to i64
  %191 = shl nuw nsw i64 %190, 3
  %192 = call ptr %189(i64 noundef %191, ptr noundef nonnull @__func__.bmo_contextual_create_exec) #3
  %193 = call i32 @BMO_iter_as_array(ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, ptr noundef %192, i32 noundef %47) #3
  %194 = call ptr @BM_face_create_ngon_vcloud(ptr noundef %0, ptr noundef %192, i32 noundef %47, ptr noundef null, i32 noundef 2) #3
  %195 = icmp eq ptr %194, null
  br i1 %195, label %214, label %196

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.BMFace, ptr %194, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !60
  %199 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %200 = load i32, ptr %199, align 8, !tbaa !42
  %201 = sext i32 %200 to i64
  %202 = getelementptr %struct.BMFlagLayer, ptr %198, i64 %201
  %203 = getelementptr %struct.BMFlagLayer, ptr %202, i64 -1
  %204 = load i16, ptr %203, align 2, !tbaa !47
  %205 = or i16 %204, 2
  store i16 %205, ptr %203, align 2, !tbaa !47
  %206 = getelementptr inbounds %struct.BMFace, ptr %194, i64 0, i32 5
  store i16 %9, ptr %206, align 8, !tbaa !62
  %207 = icmp eq i8 %10, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %196
  %209 = getelementptr inbounds %struct.BMHeader, ptr %194, i64 0, i32 3
  %210 = load i8, ptr %209, align 1, !tbaa !63
  %211 = or i8 %210, 8
  store i8 %211, ptr %209, align 1, !tbaa !63
  br label %212

212:                                              ; preds = %208, %196
  %213 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %213, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 2) #3
  br label %214

214:                                              ; preds = %212, %188
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %215(ptr noundef %192) #3
  br label %216

216:                                              ; preds = %165, %152, %186, %214, %183, %52
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare i32 @BMO_iter_as_array(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @BMO_iter_elem_count_flag(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_ngon_vcloud(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
!34 = !{!35, !37, i64 12}
!35 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 16}
!41 = !{!"BMElemF", !35, i64 0, !36, i64 16}
!42 = !{!43, !39, i64 128}
!43 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !46, i64 960, !36, i64 976, !46, i64 984, !36, i64 1000}
!44 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!45 = !{!"short", !37, i64 0}
!46 = !{!"ListBase", !36, i64 0, !36, i64 8}
!47 = !{!48, !45, i64 0}
!48 = !{!"BMFlagLayer", !45, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!36, !36, i64 0}
!53 = !{!54, !36, i64 16}
!54 = !{!"BMEdge", !35, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !55, i64 48, !55, i64 64}
!55 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!56 = distinct !{!56, !50, !51}
!57 = !{!58, !39, i64 1304}
!58 = !{!"BMOperator", !37, i64 0, !37, i64 640, !36, i64 1280, !36, i64 1288, !39, i64 1296, !39, i64 1300, !39, i64 1304}
!59 = !{!58, !36, i64 1288}
!60 = !{!61, !36, i64 16}
!61 = !{!"BMFace", !35, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !45, i64 48}
!62 = !{!61, !45, i64 48}
!63 = !{!35, !37, i64 13}
