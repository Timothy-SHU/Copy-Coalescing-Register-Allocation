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
%struct.BMFlagLayer = type { i16 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
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

; Function Attrs: nounwind uwtable
define dso_local void @bmo_dissolve_faces_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMWalker, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store ptr null, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store ptr null, ptr %5, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #5
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #5
  %14 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %14, align 4, !tbaa !44
  %15 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  store ptr %18, ptr %7, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #5
  %19 = load ptr, ptr %16, align 8, !tbaa !47
  %20 = call ptr %19(ptr noundef nonnull %7) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %25

25:                                               ; preds = %22, %45
  %26 = phi ptr [ %20, %22 ], [ %47, %45 ]
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %26) #5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, ptr %24, align 8, !tbaa !53
  %33 = sext i32 %32 to i64
  %34 = getelementptr %struct.BMFlagLayer, ptr %28, i64 %33
  %35 = getelementptr %struct.BMFlagLayer, ptr %34, i64 -1
  %36 = load i16, ptr %35, align 2, !tbaa !54
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 2, !tbaa !54
  br label %45

38:                                               ; preds = %25
  %39 = load i32, ptr %23, align 8, !tbaa !53
  %40 = sext i32 %39 to i64
  %41 = getelementptr %struct.BMFlagLayer, ptr %28, i64 %40
  %42 = getelementptr %struct.BMFlagLayer, ptr %41, i64 -1
  %43 = load i16, ptr %42, align 2, !tbaa !54
  %44 = and i16 %43, -2
  store i16 %44, ptr %42, align 2, !tbaa !54
  br label %45

45:                                               ; preds = %31, %38
  %46 = load ptr, ptr %16, align 8, !tbaa !47
  %47 = call ptr %46(ptr noundef nonnull %7) #5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %25, !llvm.loop !56

49:                                               ; preds = %45, %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  br label %50

50:                                               ; preds = %49, %2
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8, i16 noundef signext 1) #5
  %51 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8) #5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %62

55:                                               ; preds = %161, %50
  %56 = phi i32 [ 0, %50 ], [ %159, %161 ]
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %200

58:                                               ; preds = %55
  %59 = icmp eq ptr %10, null
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %61 = zext nneg i32 %56 to i64
  br label %164

62:                                               ; preds = %53, %161
  %63 = phi ptr [ %51, %53 ], [ %162, %161 ]
  %64 = phi i32 [ 0, %53 ], [ %159, %161 ]
  %65 = getelementptr inbounds %struct.BMFace, ptr %63, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = load i32, ptr %54, align 8, !tbaa !53
  %68 = sext i32 %67 to i64
  %69 = getelementptr %struct.BMFlagLayer, ptr %66, i64 %68
  %70 = getelementptr %struct.BMFlagLayer, ptr %69, i64 -1
  %71 = load i16, ptr %70, align 2, !tbaa !54
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %158, label %74

74:                                               ; preds = %62
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @BMW_init(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 8, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 1, i32 noundef 0, i32 noundef 0) #5
  %75 = call ptr @BMW_begin(ptr noundef nonnull %6, ptr noundef nonnull %63) #5
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %74, %92
  %78 = phi i64 [ %88, %92 ], [ 0, %74 ]
  %79 = phi ptr [ %95, %92 ], [ %75, %74 ]
  %80 = load ptr, ptr %5, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %84 = call i64 %83(ptr noundef nonnull %80) #5
  %85 = lshr i64 %84, 3
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i64 [ %85, %82 ], [ 0, %77 ]
  %88 = add nuw i64 %78, 1
  %89 = icmp ugt i64 %87, %78
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = trunc i64 %78 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 8, i32 noundef %91, i32 noundef 1, ptr noundef nonnull @.str.2) #5
  br label %92

92:                                               ; preds = %90, %86
  %93 = load ptr, ptr %5, align 8, !tbaa !34
  %94 = getelementptr inbounds ptr, ptr %93, i64 %78
  store ptr %79, ptr %94, align 8, !tbaa !34
  %95 = call ptr @BMW_step(ptr noundef nonnull %6) #5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %77, !llvm.loop !61

97:                                               ; preds = %92
  %98 = trunc i64 %88 to i32
  br label %99

99:                                               ; preds = %97, %74
  %100 = phi i32 [ 0, %74 ], [ %98, %97 ]
  call void @BMW_end(ptr noundef nonnull %6) #5
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %5, align 8, !tbaa !34
  %104 = load i32, ptr %54, align 8, !tbaa !53
  %105 = sext i32 %104 to i64
  %106 = zext i32 %100 to i64
  br label %107

107:                                              ; preds = %102, %107
  %108 = phi i64 [ 0, %102 ], [ %118, %107 ]
  %109 = getelementptr inbounds ptr, ptr %103, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !34
  %111 = getelementptr inbounds %struct.BMFace, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !59
  %113 = getelementptr %struct.BMFlagLayer, ptr %112, i64 %105
  %114 = getelementptr %struct.BMFlagLayer, ptr %113, i64 -1
  %115 = load i16, ptr %114, align 2, !tbaa !54
  %116 = and i16 %115, -4
  %117 = or disjoint i16 %116, 2
  store i16 %117, ptr %114, align 2, !tbaa !54
  %118 = add nuw nsw i64 %108, 1
  %119 = icmp eq i64 %118, %106
  br i1 %119, label %120, label %107, !llvm.loop !62

120:                                              ; preds = %107, %99
  %121 = call zeroext i8 @BMO_error_occurred(ptr noundef %0) #5
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  call void @BMO_error_clear(ptr noundef %0) #5
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef null) #5
  br label %158

124:                                              ; preds = %120
  %125 = load ptr, ptr %5, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %129 = call i64 %128(ptr noundef nonnull %125) #5
  %130 = lshr i64 %129, 3
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i64 [ %130, %127 ], [ 0, %124 ]
  %133 = add nuw nsw i32 %100, 1
  %134 = zext nneg i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 8, i32 noundef %100, i32 noundef 1, ptr noundef nonnull @.str.2) #5
  br label %137

137:                                              ; preds = %136, %131
  %138 = load ptr, ptr %5, align 8, !tbaa !34
  %139 = zext nneg i32 %100 to i64
  %140 = getelementptr inbounds ptr, ptr %138, i64 %139
  store ptr null, ptr %140, align 8, !tbaa !34
  %141 = load ptr, ptr %4, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %137
  %144 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %145 = call i64 %144(ptr noundef nonnull %141) #5
  %146 = lshr i64 %145, 3
  br label %147

147:                                              ; preds = %143, %137
  %148 = phi i64 [ %146, %143 ], [ 0, %137 ]
  %149 = add nsw i32 %64, 1
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 8, i32 noundef %64, i32 noundef 1, ptr noundef nonnull @.str.3) #5
  br label %153

153:                                              ; preds = %152, %147
  %154 = load ptr, ptr %5, align 8, !tbaa !34
  %155 = load ptr, ptr %4, align 8, !tbaa !34
  %156 = sext i32 %64 to i64
  %157 = getelementptr inbounds ptr, ptr %155, i64 %156
  store ptr %154, ptr %157, align 8, !tbaa !34
  br label %158

158:                                              ; preds = %62, %123, %153
  %159 = phi i32 [ %64, %123 ], [ %149, %153 ], [ %64, %62 ]
  %160 = phi i1 [ true, %123 ], [ false, %153 ], [ false, %62 ]
  br i1 %160, label %246, label %161

161:                                              ; preds = %158
  %162 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %163 = icmp eq ptr %162, null
  br i1 %163, label %55, label %62, !llvm.loop !63

164:                                              ; preds = %58, %188
  %165 = phi i64 [ 0, %58 ], [ %198, %188 ]
  %166 = load ptr, ptr %4, align 8, !tbaa !34
  %167 = getelementptr inbounds ptr, ptr %166, i64 %165
  %168 = load ptr, ptr %167, align 8, !tbaa !34
  store ptr %168, ptr %5, align 8, !tbaa !34
  %169 = load ptr, ptr %168, align 8, !tbaa !34
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.4) #5
  br label %246

172:                                              ; preds = %164, %172
  %173 = phi i64 [ %177, %172 ], [ 0, %164 ]
  %174 = getelementptr inbounds ptr, ptr %168, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !34
  %176 = icmp eq ptr %175, null
  %177 = add nuw i64 %173, 1
  br i1 %176, label %178, label %172, !llvm.loop !64

178:                                              ; preds = %172
  %179 = trunc i64 %173 to i32
  %180 = call ptr @BM_faces_join(ptr noundef %0, ptr noundef nonnull %168, i32 noundef %179, i8 noundef zeroext 1) #5
  %181 = icmp eq ptr %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  br i1 %59, label %188, label %183

183:                                              ; preds = %182
  %184 = load ptr, ptr %9, align 8, !tbaa !38
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  store ptr %180, ptr %9, align 8, !tbaa !38
  br label %188

187:                                              ; preds = %178
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.5) #5
  br label %246

188:                                              ; preds = %182, %183, %186
  %189 = getelementptr inbounds %struct.BMFace, ptr %180, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !59
  %191 = load i32, ptr %60, align 8, !tbaa !53
  %192 = sext i32 %191 to i64
  %193 = getelementptr %struct.BMFlagLayer, ptr %190, i64 %192
  %194 = getelementptr %struct.BMFlagLayer, ptr %193, i64 -1
  %195 = load i16, ptr %194, align 2, !tbaa !54
  %196 = and i16 %195, -7
  %197 = or disjoint i16 %196, 4
  store i16 %197, ptr %194, align 2, !tbaa !54
  %198 = add nuw nsw i64 %165, 1
  %199 = icmp eq i64 %198, %61
  br i1 %199, label %200, label %164, !llvm.loop !65

200:                                              ; preds = %188, %55
  %201 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %202 = load i32, ptr %201, align 8, !tbaa !66
  %203 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %202, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 5) #5
  br i1 %12, label %241, label %204

204:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  %205 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %205, align 4, !tbaa !44
  %206 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %206, align 8, !tbaa !46
  %207 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %207, align 8, !tbaa !47
  %208 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %209 = load ptr, ptr %208, align 8, !tbaa !48
  store ptr %209, ptr %8, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #5
  %210 = load ptr, ptr %207, align 8, !tbaa !47
  %211 = call ptr %210(ptr noundef nonnull %8) #5
  %212 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %213

213:                                              ; preds = %232, %204
  %214 = phi ptr [ %211, %204 ], [ %221, %232 ]
  %215 = phi ptr [ undef, %204 ], [ %221, %232 ]
  %216 = icmp eq ptr %214, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %207, align 8, !tbaa !47
  %219 = call ptr %218(ptr noundef nonnull %8) #5
  br label %220

220:                                              ; preds = %213, %217
  %221 = phi ptr [ %219, %217 ], [ %215, %213 ]
  br i1 %216, label %240, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.BMVert, ptr %214, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !50
  %225 = load i32, ptr %212, align 8, !tbaa !53
  %226 = sext i32 %225 to i64
  %227 = getelementptr %struct.BMFlagLayer, ptr %224, i64 %226
  %228 = getelementptr %struct.BMFlagLayer, ptr %227, i64 -1
  %229 = load i16, ptr %228, align 2, !tbaa !54
  %230 = and i16 %229, 1
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %222, %236, %233
  br label %213, !llvm.loop !68

233:                                              ; preds = %222
  %234 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %214) #5
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %232, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.BMVert, ptr %214, i64 0, i32 4
  %238 = load ptr, ptr %237, align 8, !tbaa !69
  %239 = call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %238, ptr noundef nonnull %214, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %232

240:                                              ; preds = %220
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  br label %241

241:                                              ; preds = %240, %200
  %242 = call zeroext i8 @BMO_error_occurred(ptr noundef %0) #5
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %245, ptr noundef nonnull @.str.7, i8 noundef zeroext 8, i16 noundef signext 4) #5
  br label %246

246:                                              ; preds = %158, %171, %187, %241, %244
  %247 = phi i32 [ %56, %241 ], [ %56, %244 ], [ %56, %187 ], [ %56, %171 ], [ %159, %158 ]
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %246
  %250 = zext nneg i32 %247 to i64
  br label %251

251:                                              ; preds = %249, %259
  %252 = phi i64 [ 0, %249 ], [ %260, %259 ]
  %253 = load ptr, ptr %4, align 8, !tbaa !34
  %254 = getelementptr inbounds ptr, ptr %253, i64 %252
  %255 = load ptr, ptr %254, align 8, !tbaa !34
  %256 = icmp eq ptr %255, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %251
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %258(ptr noundef nonnull %255) #5
  br label %259

259:                                              ; preds = %251, %257
  %260 = add nuw nsw i64 %252, 1
  %261 = icmp eq i64 %260, %250
  br i1 %261, label %262, label %251, !llvm.loop !70

262:                                              ; preds = %259, %246
  %263 = load ptr, ptr %4, align 8, !tbaa !34
  %264 = icmp eq ptr %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %266(ptr noundef nonnull %263) #5
  br label %267

267:                                              ; preds = %265, %262
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_edge_pair(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

declare void @BMW_end(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_error_occurred(ptr noundef) local_unnamed_addr #2

declare void @BMO_error_clear(ptr noundef) local_unnamed_addr #2

declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare ptr @BM_faces_join(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BM_vert_collapse_edge(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_dissolve_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [2 x ptr], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.8) #5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %68, label %14

14:                                               ; preds = %2
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, i16 noundef signext 2) #5
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %15, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  store ptr %19, ptr %4, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %20 = load ptr, ptr %17, align 8, !tbaa !47
  %21 = call ptr %20(ptr noundef nonnull %4) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %67, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %28 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %29

29:                                               ; preds = %23, %63
  %30 = phi ptr [ %21, %23 ], [ %65, %63 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  store i8 4, ptr %24, align 4, !tbaa !44
  store ptr @bmiter__edge_of_vert_begin, ptr %25, align 8, !tbaa !46
  store ptr @bmiter__edge_of_vert_step, ptr %26, align 8, !tbaa !47
  store ptr %30, ptr %5, align 8, !tbaa !49
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #5
  %31 = load ptr, ptr %26, align 8, !tbaa !47
  %32 = call ptr %31(ptr noundef nonnull %5) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %29, %34
  %35 = phi ptr [ %49, %34 ], [ %32, %29 ]
  %36 = phi i32 [ %47, %34 ], [ 0, %29 ]
  %37 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = load i32, ptr %27, align 8, !tbaa !53
  %40 = sext i32 %39 to i64
  %41 = getelementptr %struct.BMFlagLayer, ptr %38, i64 %40
  %42 = getelementptr %struct.BMFlagLayer, ptr %41, i64 -1
  %43 = load i16, ptr %42, align 2, !tbaa !54
  %44 = and i16 %43, 2
  %45 = icmp eq i16 %44, 0
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %36, %46
  %48 = load ptr, ptr %26, align 8, !tbaa !47
  %49 = call ptr %48(ptr noundef nonnull %5) #5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %34, !llvm.loop !74

51:                                               ; preds = %34, %29
  %52 = phi i32 [ 0, %29 ], [ %47, %34 ]
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = load i32, ptr %28, align 8, !tbaa !53
  %58 = sext i32 %57 to i64
  %59 = getelementptr %struct.BMFlagLayer, ptr %56, i64 %58
  %60 = getelementptr %struct.BMFlagLayer, ptr %59, i64 -1
  %61 = load i16, ptr %60, align 2, !tbaa !54
  %62 = or i16 %61, 2
  store i16 %62, ptr %60, align 2, !tbaa !54
  br label %63

63:                                               ; preds = %54, %51
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  %64 = load ptr, ptr %17, align 8, !tbaa !47
  %65 = call ptr %64(ptr noundef nonnull %4) #5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %29, !llvm.loop !75

67:                                               ; preds = %63, %14
  call fastcc void @bm_face_split(ptr noundef %0, i16 noundef signext 2, i8 noundef zeroext 0)
  br label %68

68:                                               ; preds = %67, %2
  %69 = icmp eq i8 %11, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %71, align 4, !tbaa !44
  %72 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %72, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %73, align 8, !tbaa !47
  %74 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  store ptr %75, ptr %4, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %76 = load ptr, ptr %73, align 8, !tbaa !47
  %77 = call ptr %76(ptr noundef nonnull %4) #5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %106, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %81 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %82

82:                                               ; preds = %79, %102
  %83 = phi ptr [ %77, %79 ], [ %104, %102 ]
  %84 = getelementptr inbounds %struct.BMVert, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !50
  %86 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %83) #5
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, ptr %81, align 8, !tbaa !53
  %90 = sext i32 %89 to i64
  %91 = getelementptr %struct.BMFlagLayer, ptr %85, i64 %90
  %92 = getelementptr %struct.BMFlagLayer, ptr %91, i64 -1
  %93 = load i16, ptr %92, align 2, !tbaa !54
  %94 = or i16 %93, 1
  store i16 %94, ptr %92, align 2, !tbaa !54
  br label %102

95:                                               ; preds = %82
  %96 = load i32, ptr %80, align 8, !tbaa !53
  %97 = sext i32 %96 to i64
  %98 = getelementptr %struct.BMFlagLayer, ptr %85, i64 %97
  %99 = getelementptr %struct.BMFlagLayer, ptr %98, i64 -1
  %100 = load i16, ptr %99, align 2, !tbaa !54
  %101 = and i16 %100, -2
  store i16 %101, ptr %99, align 2, !tbaa !54
  br label %102

102:                                              ; preds = %88, %95
  %103 = load ptr, ptr %73, align 8, !tbaa !47
  %104 = call ptr %103(ptr noundef nonnull %4) #5
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %82, !llvm.loop !76

106:                                              ; preds = %102, %70, %68
  %107 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 2) #5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %152, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  %111 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %112

112:                                              ; preds = %109, %149
  %113 = phi ptr [ %107, %109 ], [ %150, %149 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %114 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %113, ptr noundef nonnull %6, ptr noundef nonnull %110) #5
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %149, label %116

116:                                              ; preds = %112
  %117 = load i32, ptr %111, align 8, !tbaa !53
  %118 = sext i32 %117 to i64
  br label %119

119:                                              ; preds = %116, %146
  %120 = phi i64 [ 0, %116 ], [ %147, %146 ]
  %121 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = getelementptr inbounds %struct.BMFace, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !77
  br label %125

125:                                              ; preds = %125, %119
  %126 = phi ptr [ %124, %119 ], [ %144, %125 ]
  %127 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !78
  %129 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !50
  %131 = getelementptr %struct.BMFlagLayer, ptr %130, i64 %118
  %132 = getelementptr %struct.BMFlagLayer, ptr %131, i64 -1
  %133 = load i16, ptr %132, align 2, !tbaa !54
  %134 = or i16 %133, 8
  store i16 %134, ptr %132, align 2, !tbaa !54
  %135 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !80
  %137 = getelementptr inbounds %struct.BMEdge, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !71
  %139 = getelementptr %struct.BMFlagLayer, ptr %138, i64 %118
  %140 = getelementptr %struct.BMFlagLayer, ptr %139, i64 -1
  %141 = load i16, ptr %140, align 2, !tbaa !54
  %142 = or i16 %141, 8
  store i16 %142, ptr %140, align 2, !tbaa !54
  %143 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !81
  %145 = icmp eq ptr %144, %124
  br i1 %145, label %146, label %125, !llvm.loop !82

146:                                              ; preds = %125
  %147 = add nuw nsw i64 %120, 1
  %148 = icmp eq i64 %120, 0
  br i1 %148, label %119, label %149, !llvm.loop !83

149:                                              ; preds = %146, %112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  %150 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %112, !llvm.loop !84

152:                                              ; preds = %149, %106
  %153 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 2) #5
  %154 = icmp eq ptr %153, null
  br i1 %154, label %174, label %155

155:                                              ; preds = %152
  %156 = icmp ne ptr %10, null
  br label %157

157:                                              ; preds = %155, %171
  %158 = phi ptr [ %153, %155 ], [ %172, %171 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  %159 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %158, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %7, align 8, !tbaa !34
  %163 = load ptr, ptr %8, align 8, !tbaa !34
  %164 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %162, ptr noundef %163, ptr noundef nonnull %158, i8 noundef zeroext 0) #5
  %165 = icmp ne ptr %164, null
  %166 = select i1 %165, i1 %156, i1 false
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load ptr, ptr %9, align 8, !tbaa !38
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store ptr %164, ptr %9, align 8, !tbaa !38
  br label %171

171:                                              ; preds = %161, %170, %167, %157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  %172 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %157, !llvm.loop !85

174:                                              ; preds = %171, %152
  %175 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %175, align 4, !tbaa !44
  %176 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %176, align 8, !tbaa !46
  %177 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %177, align 8, !tbaa !47
  %178 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %179 = load ptr, ptr %178, align 8, !tbaa !86
  store ptr %179, ptr %4, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %180 = load ptr, ptr %177, align 8, !tbaa !47
  %181 = call ptr %180(ptr noundef nonnull %4) #5
  %182 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %183

183:                                              ; preds = %196, %174
  %184 = phi ptr [ undef, %174 ], [ %191, %196 ]
  %185 = phi ptr [ %181, %174 ], [ %191, %196 ]
  %186 = icmp eq ptr %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %177, align 8, !tbaa !47
  %189 = call ptr %188(ptr noundef nonnull %4) #5
  br label %190

190:                                              ; preds = %183, %187
  %191 = phi ptr [ %189, %187 ], [ %184, %183 ]
  br i1 %186, label %208, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.BMEdge, ptr %185, i64 0, i32 4
  %194 = load ptr, ptr %193, align 8, !tbaa !87
  %195 = icmp eq ptr %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %192, %197, %207
  br label %183, !llvm.loop !88

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.BMEdge, ptr %185, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !71
  %200 = load i32, ptr %182, align 8, !tbaa !53
  %201 = sext i32 %200 to i64
  %202 = getelementptr %struct.BMFlagLayer, ptr %199, i64 %201
  %203 = getelementptr %struct.BMFlagLayer, ptr %202, i64 -1
  %204 = load i16, ptr %203, align 2, !tbaa !54
  %205 = and i16 %204, 8
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %196, label %207

207:                                              ; preds = %197
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %185) #5
  br label %196

208:                                              ; preds = %190
  store i8 1, ptr %175, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %176, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %177, align 8, !tbaa !47
  %209 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %210 = load ptr, ptr %209, align 8, !tbaa !48
  store ptr %210, ptr %4, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %211 = load ptr, ptr %177, align 8, !tbaa !47
  %212 = call ptr %211(ptr noundef nonnull %4) #5
  %213 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %214

214:                                              ; preds = %227, %208
  %215 = phi ptr [ undef, %208 ], [ %222, %227 ]
  %216 = phi ptr [ %212, %208 ], [ %222, %227 ]
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = load ptr, ptr %177, align 8, !tbaa !47
  %220 = call ptr %219(ptr noundef nonnull %4) #5
  br label %221

221:                                              ; preds = %214, %218
  %222 = phi ptr [ %220, %218 ], [ %215, %214 ]
  br i1 %217, label %239, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.BMVert, ptr %216, i64 0, i32 4
  %225 = load ptr, ptr %224, align 8, !tbaa !69
  %226 = icmp eq ptr %225, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %223, %228, %238
  br label %214, !llvm.loop !89

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.BMVert, ptr %216, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !50
  %231 = load i32, ptr %213, align 8, !tbaa !53
  %232 = sext i32 %231 to i64
  %233 = getelementptr %struct.BMFlagLayer, ptr %230, i64 %232
  %234 = getelementptr %struct.BMFlagLayer, ptr %233, i64 -1
  %235 = load i16, ptr %234, align 2, !tbaa !54
  %236 = and i16 %235, 8
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %227, label %238

238:                                              ; preds = %228
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %216) #5
  br label %227

239:                                              ; preds = %221
  br i1 %69, label %272, label %240

240:                                              ; preds = %239
  store i8 1, ptr %175, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %176, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %177, align 8, !tbaa !47
  %241 = load ptr, ptr %209, align 8, !tbaa !48
  store ptr %241, ptr %4, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %242 = load ptr, ptr %177, align 8, !tbaa !47
  %243 = call ptr %242(ptr noundef nonnull %4) #5
  %244 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %245

245:                                              ; preds = %264, %240
  %246 = phi ptr [ %222, %240 ], [ %253, %264 ]
  %247 = phi ptr [ %243, %240 ], [ %253, %264 ]
  %248 = icmp eq ptr %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr %177, align 8, !tbaa !47
  %251 = call ptr %250(ptr noundef nonnull %4) #5
  br label %252

252:                                              ; preds = %245, %249
  %253 = phi ptr [ %251, %249 ], [ %246, %245 ]
  br i1 %248, label %272, label %254

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.BMVert, ptr %247, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !50
  %257 = load i32, ptr %244, align 8, !tbaa !53
  %258 = sext i32 %257 to i64
  %259 = getelementptr %struct.BMFlagLayer, ptr %256, i64 %258
  %260 = getelementptr %struct.BMFlagLayer, ptr %259, i64 -1
  %261 = load i16, ptr %260, align 2, !tbaa !54
  %262 = and i16 %261, 1
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %254, %268, %265
  br label %245, !llvm.loop !90

265:                                              ; preds = %254
  %266 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %247) #5
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %264, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.BMVert, ptr %247, i64 0, i32 4
  %270 = load ptr, ptr %269, align 8, !tbaa !69
  %271 = call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %270, ptr noundef nonnull %247, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  br label %264

272:                                              ; preds = %252, %239
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_face_split(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @BLI_stack_new(i64 noundef 8, ptr noundef nonnull @__func__.bm_face_split) #5
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ undef, %3 ]
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  store ptr %16, ptr %4, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %17 = load ptr, ptr %14, align 8, !tbaa !47
  %18 = call ptr %17(ptr noundef nonnull %4) #5
  store ptr %18, ptr %5, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %90, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %22 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %23 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %25

25:                                               ; preds = %20, %86
  %26 = phi ptr [ %18, %20 ], [ %88, %86 ]
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = load i32, ptr %21, align 8, !tbaa !53
  %30 = sext i32 %29 to i64
  %31 = getelementptr %struct.BMFlagLayer, ptr %28, i64 %30
  %32 = getelementptr %struct.BMFlagLayer, ptr %31, i64 -1
  %33 = load i16, ptr %32, align 2, !tbaa !54
  %34 = and i16 %33, %1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %86, label %36

36:                                               ; preds = %25
  %37 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %26) #5
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  %40 = load ptr, ptr %5, align 8, !tbaa !34
  store i8 6, ptr %22, align 4, !tbaa !44
  store ptr @bmiter__loop_of_vert_begin, ptr %23, align 8, !tbaa !46
  store ptr @bmiter__loop_of_vert_step, ptr %24, align 8, !tbaa !47
  store ptr %40, ptr %6, align 8, !tbaa !49
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %6) #5
  %41 = load ptr, ptr %24, align 8, !tbaa !47
  %42 = call ptr %41(ptr noundef nonnull %6) #5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %39, %79
  %45 = phi ptr [ %81, %79 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  %48 = getelementptr inbounds %struct.BMFace, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !92
  %50 = icmp sgt i32 %49, 3
  br i1 %50, label %51, label %79

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !81
  %54 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !78
  %56 = getelementptr inbounds %struct.BMVert, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  %58 = load i32, ptr %21, align 8, !tbaa !53
  %59 = sext i32 %58 to i64
  %60 = getelementptr %struct.BMFlagLayer, ptr %57, i64 %59
  %61 = getelementptr %struct.BMFlagLayer, ptr %60, i64 -1
  %62 = load i16, ptr %61, align 2, !tbaa !54
  %63 = and i16 %62, %1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !93
  %68 = getelementptr inbounds %struct.BMLoop, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !78
  %70 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !50
  %72 = getelementptr %struct.BMFlagLayer, ptr %71, i64 %59
  %73 = getelementptr %struct.BMFlagLayer, ptr %72, i64 -1
  %74 = load i16, ptr %73, align 2, !tbaa !54
  %75 = and i16 %74, %1
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %47, ptr noundef %53, ptr noundef %67, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #5
  br label %79

79:                                               ; preds = %44, %77, %65, %51
  %80 = load ptr, ptr %24, align 8, !tbaa !47
  %81 = call ptr %80(ptr noundef nonnull %6) #5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %44, !llvm.loop !94

83:                                               ; preds = %79, %39
  br i1 %7, label %85, label %84

84:                                               ; preds = %83
  call void @BLI_stack_push(ptr noundef %11, ptr noundef nonnull %5) #5
  br label %85

85:                                               ; preds = %84, %83
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  br label %86

86:                                               ; preds = %25, %85, %36
  %87 = load ptr, ptr %14, align 8, !tbaa !47
  %88 = call ptr %87(ptr noundef nonnull %4) #5
  store ptr %88, ptr %5, align 8, !tbaa !34
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %25, !llvm.loop !95

90:                                               ; preds = %86, %10
  br i1 %7, label %109, label %91

91:                                               ; preds = %90
  %92 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %11) #5
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %97, label %108

94:                                               ; preds = %102, %97
  %95 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %11) #5
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %108, !llvm.loop !96

97:                                               ; preds = %91, %94
  call void @BLI_stack_pop(ptr noundef %11, ptr noundef nonnull %5) #5
  %98 = load ptr, ptr %5, align 8, !tbaa !34
  %99 = getelementptr inbounds %struct.BMVert, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !69
  %101 = icmp eq ptr %100, null
  br i1 %101, label %94, label %102

102:                                              ; preds = %97, %102
  %103 = phi ptr [ %106, %102 ], [ %100, %97 ]
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %103) #5
  %104 = load ptr, ptr %5, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !69
  %107 = icmp eq ptr %106, null
  br i1 %107, label %94, label %102, !llvm.loop !97

108:                                              ; preds = %94, %91
  call void @BLI_stack_free(ptr noundef %11) #5
  br label %109

109:                                              ; preds = %108, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  ret void
}

declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_faces_join_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_dissolve_verts_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.8) #5
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #5
  %13 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %13, %15 ], [ %27, %17 ]
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = load i32, ptr %16, align 8, !tbaa !53
  %22 = sext i32 %21 to i64
  %23 = getelementptr %struct.BMFlagLayer, ptr %20, i64 %22
  %24 = getelementptr %struct.BMFlagLayer, ptr %23, i64 -1
  %25 = load i16, ptr %24, align 2, !tbaa !54
  %26 = or i16 %25, 9
  store i16 %26, ptr %24, align 2, !tbaa !54
  %27 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !98

29:                                               ; preds = %17, %2
  %30 = icmp eq i8 %11, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call fastcc void @bm_face_split(ptr noundef %0, i16 noundef signext 1, i8 noundef zeroext 0)
  br label %32

32:                                               ; preds = %31, %29
  %33 = icmp eq i8 %12, 0
  br i1 %33, label %80, label %34

34:                                               ; preds = %32
  %35 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %79, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %39 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %40 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %41 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %42

42:                                               ; preds = %37, %76
  %43 = phi ptr [ %35, %37 ], [ %77, %76 ]
  %44 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %43) #5
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  store i8 4, ptr %38, align 4, !tbaa !44
  store ptr @bmiter__edge_of_vert_begin, ptr %39, align 8, !tbaa !46
  store ptr @bmiter__edge_of_vert_step, ptr %40, align 8, !tbaa !47
  store ptr %43, ptr %4, align 8, !tbaa !49
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #5
  %47 = load ptr, ptr %40, align 8, !tbaa !47
  %48 = call ptr %47(ptr noundef nonnull %4) #5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %76, label %50

50:                                               ; preds = %46, %72
  %51 = phi ptr [ %74, %72 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !87
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !99
  %58 = icmp eq ptr %57, %53
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %50, %55
  %61 = phi i8 [ 0, %50 ], [ %59, %55 ]
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  %66 = load i32, ptr %41, align 8, !tbaa !53
  %67 = sext i32 %66 to i64
  %68 = getelementptr %struct.BMFlagLayer, ptr %65, i64 %67
  %69 = getelementptr %struct.BMFlagLayer, ptr %68, i64 -1
  %70 = load i16, ptr %69, align 2, !tbaa !54
  %71 = or i16 %70, 16
  store i16 %71, ptr %69, align 2, !tbaa !54
  br label %76

72:                                               ; preds = %60
  %73 = load ptr, ptr %40, align 8, !tbaa !47
  %74 = call ptr %73(ptr noundef nonnull %4) #5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %50, !llvm.loop !100

76:                                               ; preds = %72, %46, %42, %63
  %77 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %42, !llvm.loop !101

79:                                               ; preds = %76, %34
  call fastcc void @bm_face_split(ptr noundef %0, i16 noundef signext 16, i8 noundef zeroext 1)
  br label %80

80:                                               ; preds = %79, %32
  %81 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %147, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %85 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %86 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %87 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %88

88:                                               ; preds = %83, %143
  %89 = phi ptr [ %81, %83 ], [ %145, %143 ]
  %90 = phi ptr [ undef, %83 ], [ %144, %143 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  store i8 6, ptr %84, align 4, !tbaa !44
  store ptr @bmiter__loop_of_vert_begin, ptr %85, align 8, !tbaa !46
  store ptr @bmiter__loop_of_vert_step, ptr %86, align 8, !tbaa !47
  store ptr %89, ptr %5, align 8, !tbaa !49
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %5) #5
  %91 = load ptr, ptr %86, align 8, !tbaa !47
  %92 = call ptr %91(ptr noundef nonnull %5) #5
  %93 = icmp eq ptr %92, null
  br i1 %93, label %125, label %94

94:                                               ; preds = %88, %119
  %95 = phi ptr [ %123, %119 ], [ %92, %88 ]
  %96 = load i32, ptr %87, align 8, !tbaa !53
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %94, %98
  %99 = phi ptr [ %117, %98 ], [ %95, %94 ]
  %100 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !78
  %102 = getelementptr inbounds %struct.BMVert, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !50
  %104 = getelementptr %struct.BMFlagLayer, ptr %103, i64 %97
  %105 = getelementptr %struct.BMFlagLayer, ptr %104, i64 -1
  %106 = load i16, ptr %105, align 2, !tbaa !54
  %107 = or i16 %106, 8
  store i16 %107, ptr %105, align 2, !tbaa !54
  %108 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !80
  %110 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !71
  %112 = getelementptr %struct.BMFlagLayer, ptr %111, i64 %97
  %113 = getelementptr %struct.BMFlagLayer, ptr %112, i64 -1
  %114 = load i16, ptr %113, align 2, !tbaa !54
  %115 = or i16 %114, 8
  store i16 %115, ptr %113, align 2, !tbaa !54
  %116 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !81
  %118 = icmp eq ptr %117, %95
  br i1 %118, label %119, label %98, !llvm.loop !102

119:                                              ; preds = %98
  %120 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !80
  %122 = load ptr, ptr %86, align 8, !tbaa !47
  %123 = call ptr %122(ptr noundef nonnull %5) #5
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %94, !llvm.loop !103

125:                                              ; preds = %119, %88
  %126 = phi ptr [ null, %88 ], [ %121, %119 ]
  %127 = icmp eq ptr %126, null
  br i1 %127, label %143, label %128

128:                                              ; preds = %125, %141
  %129 = phi ptr [ %136, %141 ], [ %126, %125 ]
  %130 = getelementptr inbounds %struct.BMEdge, ptr %129, i64 0, i32 5
  %131 = getelementptr inbounds %struct.BMEdge, ptr %129, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !104
  %133 = icmp eq ptr %89, %132
  %134 = zext i1 %133 to i64
  %135 = getelementptr inbounds %struct.BMDiskLink, ptr %130, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !105
  %137 = getelementptr inbounds %struct.BMEdge, ptr %129, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !87
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  call void @BM_edge_kill(ptr noundef %0, ptr noundef %129) #5
  br label %141

141:                                              ; preds = %128, %140
  %142 = icmp eq ptr %136, %126
  br i1 %142, label %143, label %128, !llvm.loop !106

143:                                              ; preds = %141, %125
  %144 = phi ptr [ %90, %125 ], [ %136, %141 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  %145 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %88, !llvm.loop !107

147:                                              ; preds = %143, %80
  %148 = phi ptr [ undef, %80 ], [ %144, %143 ]
  %149 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #5
  %150 = icmp eq ptr %149, null
  br i1 %150, label %169, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %153

153:                                              ; preds = %151, %166
  %154 = phi ptr [ %149, %151 ], [ %167, %166 ]
  %155 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %154) #5
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.BMVert, ptr %154, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !50
  %160 = load i32, ptr %152, align 8, !tbaa !53
  %161 = sext i32 %160 to i64
  %162 = getelementptr %struct.BMFlagLayer, ptr %159, i64 %161
  %163 = getelementptr %struct.BMFlagLayer, ptr %162, i64 -1
  %164 = load i16, ptr %163, align 2, !tbaa !54
  %165 = or i16 %164, 4
  store i16 %165, ptr %163, align 2, !tbaa !54
  br label %166

166:                                              ; preds = %153, %157
  %167 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %153, !llvm.loop !108

169:                                              ; preds = %166, %147
  %170 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #5
  %171 = icmp eq ptr %170, null
  br i1 %171, label %212, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %174 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %175 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %176 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %177 = icmp eq ptr %10, null
  br label %178

178:                                              ; preds = %172, %209
  %179 = phi ptr [ %170, %172 ], [ %210, %209 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  %180 = getelementptr inbounds %struct.BMVert, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !50
  %182 = load i32, ptr %173, align 8, !tbaa !53
  %183 = sext i32 %182 to i64
  %184 = getelementptr %struct.BMFlagLayer, ptr %181, i64 %183
  %185 = getelementptr %struct.BMFlagLayer, ptr %184, i64 -1
  %186 = load i16, ptr %185, align 2, !tbaa !54
  %187 = and i16 %186, 4
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %209

189:                                              ; preds = %178
  store i8 4, ptr %174, align 4, !tbaa !44
  store ptr @bmiter__edge_of_vert_begin, ptr %175, align 8, !tbaa !46
  store ptr @bmiter__edge_of_vert_step, ptr %176, align 8, !tbaa !47
  store ptr %179, ptr %6, align 8, !tbaa !49
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #5
  %190 = load ptr, ptr %176, align 8, !tbaa !47
  %191 = call ptr %190(ptr noundef nonnull %6) #5
  %192 = icmp eq ptr %191, null
  br i1 %192, label %209, label %193

193:                                              ; preds = %189, %205
  %194 = phi ptr [ %207, %205 ], [ %191, %189 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  %195 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %194, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %7, align 8, !tbaa !34
  %199 = load ptr, ptr %8, align 8, !tbaa !34
  %200 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %198, ptr noundef %199, ptr noundef nonnull %194, i8 noundef zeroext 0) #5
  br i1 %177, label %205, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr %9, align 8, !tbaa !38
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store ptr %200, ptr %9, align 8, !tbaa !38
  br label %205

205:                                              ; preds = %197, %201, %204, %193
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  %206 = load ptr, ptr %176, align 8, !tbaa !47
  %207 = call ptr %206(ptr noundef nonnull %6) #5
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %193, !llvm.loop !109

209:                                              ; preds = %205, %189, %178
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  %210 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %178, !llvm.loop !110

212:                                              ; preds = %209, %169
  %213 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %213, align 4, !tbaa !44
  %214 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %214, align 8, !tbaa !46
  %215 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %215, align 8, !tbaa !47
  %216 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %217 = load ptr, ptr %216, align 8, !tbaa !86
  store ptr %217, ptr %4, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %218 = load ptr, ptr %215, align 8, !tbaa !47
  %219 = call ptr %218(ptr noundef nonnull %4) #5
  %220 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %221

221:                                              ; preds = %234, %212
  %222 = phi ptr [ %148, %212 ], [ %229, %234 ]
  %223 = phi ptr [ %219, %212 ], [ %229, %234 ]
  %224 = icmp eq ptr %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %215, align 8, !tbaa !47
  %227 = call ptr %226(ptr noundef nonnull %4) #5
  br label %228

228:                                              ; preds = %221, %225
  %229 = phi ptr [ %227, %225 ], [ %222, %221 ]
  br i1 %224, label %246, label %230

230:                                              ; preds = %228
  %231 = getelementptr inbounds %struct.BMEdge, ptr %223, i64 0, i32 4
  %232 = load ptr, ptr %231, align 8, !tbaa !87
  %233 = icmp eq ptr %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %230, %235, %245
  br label %221, !llvm.loop !111

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.BMEdge, ptr %223, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !71
  %238 = load i32, ptr %220, align 8, !tbaa !53
  %239 = sext i32 %238 to i64
  %240 = getelementptr %struct.BMFlagLayer, ptr %237, i64 %239
  %241 = getelementptr %struct.BMFlagLayer, ptr %240, i64 -1
  %242 = load i16, ptr %241, align 2, !tbaa !54
  %243 = and i16 %242, 8
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %234, label %245

245:                                              ; preds = %235
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %223) #5
  br label %234

246:                                              ; preds = %228
  %247 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 1) #5
  %248 = icmp eq ptr %247, null
  br i1 %248, label %260, label %249

249:                                              ; preds = %246, %257
  %250 = phi ptr [ %258, %257 ], [ %247, %246 ]
  %251 = call zeroext i8 @BM_vert_is_edge_pair(ptr noundef nonnull %250) #5
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.BMVert, ptr %250, i64 0, i32 4
  %255 = load ptr, ptr %254, align 8, !tbaa !69
  %256 = call ptr @BM_vert_collapse_edge(ptr noundef %0, ptr noundef %255, ptr noundef nonnull %250, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  br label %257

257:                                              ; preds = %249, %253
  %258 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %249, !llvm.loop !112

260:                                              ; preds = %257, %246
  store i8 1, ptr %213, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %214, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %215, align 8, !tbaa !47
  %261 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %262 = load ptr, ptr %261, align 8, !tbaa !48
  store ptr %262, ptr %4, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %263 = load ptr, ptr %215, align 8, !tbaa !47
  %264 = call ptr %263(ptr noundef nonnull %4) #5
  %265 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %266

266:                                              ; preds = %279, %260
  %267 = phi ptr [ undef, %260 ], [ %274, %279 ]
  %268 = phi ptr [ %264, %260 ], [ %274, %279 ]
  %269 = icmp eq ptr %268, null
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = load ptr, ptr %215, align 8, !tbaa !47
  %272 = call ptr %271(ptr noundef nonnull %4) #5
  br label %273

273:                                              ; preds = %266, %270
  %274 = phi ptr [ %272, %270 ], [ %267, %266 ]
  br i1 %269, label %291, label %275

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.BMVert, ptr %268, i64 0, i32 4
  %277 = load ptr, ptr %276, align 8, !tbaa !69
  %278 = icmp eq ptr %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %275, %280, %290
  br label %266, !llvm.loop !113

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.BMVert, ptr %268, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !50
  %283 = load i32, ptr %265, align 8, !tbaa !53
  %284 = sext i32 %283 to i64
  %285 = getelementptr %struct.BMFlagLayer, ptr %282, i64 %284
  %286 = getelementptr %struct.BMFlagLayer, ptr %285, i64 -1
  %287 = load i16, ptr %286, align 2, !tbaa !54
  %288 = and i16 %287, 8
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %279, label %290

290:                                              ; preds = %280
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %268) #5
  br label %279

291:                                              ; preds = %273
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmo_dissolve_limit_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.9) #5
  %4 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.11) #5
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.12) #5
  %6 = fcmp ogt float %5, 0x3FF921FB60000000
  %7 = select i1 %6, float 0x3FF921FB60000000, float %5
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.13) #5
  %9 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.14) #5
  %10 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.BMOpSlot, ptr %4, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %3, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !114
  tail call void @BM_mesh_decimate_dissolve_ex(ptr noundef %0, float noundef %7, i8 noundef zeroext %8, i32 noundef %9, ptr noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17, i16 noundef signext 4) #5
  %18 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %18, ptr noundef nonnull @.str.7, i8 noundef zeroext 8, i16 noundef signext 4) #5
  ret void
}

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_decimate_dissolve_ex(ptr noundef, float noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_dissolve_degenerate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.15) #5
  %10 = fmul float %9, %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, i16 noundef signext 1) #5
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %11, align 4, !tbaa !44
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  store ptr %15, ptr %3, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #5
  %16 = load ptr, ptr %13, align 8, !tbaa !47
  %17 = call ptr %16(ptr noundef nonnull %3) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %67, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %21

21:                                               ; preds = %19, %57
  %22 = phi i8 [ 0, %19 ], [ %45, %57 ]
  %23 = phi ptr [ %17, %19 ], [ %59, %57 ]
  %24 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = load i32, ptr %20, align 8, !tbaa !53
  %27 = sext i32 %26 to i64
  %28 = getelementptr %struct.BMFlagLayer, ptr %25, i64 %27
  %29 = getelementptr %struct.BMFlagLayer, ptr %28, i64 -1
  %30 = load i16, ptr %29, align 2, !tbaa !54
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %21
  %34 = call float @BM_edge_calc_length_squared(ptr noundef nonnull %23) #5
  %35 = fcmp olt float %34, %10
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load ptr, ptr %24, align 8, !tbaa !71
  %38 = load i32, ptr %20, align 8, !tbaa !53
  %39 = sext i32 %38 to i64
  %40 = getelementptr %struct.BMFlagLayer, ptr %37, i64 %39
  %41 = getelementptr %struct.BMFlagLayer, ptr %40, i64 -1
  %42 = load i16, ptr %41, align 2, !tbaa !54
  %43 = or i16 %42, 2
  store i16 %43, ptr %41, align 2, !tbaa !54
  br label %44

44:                                               ; preds = %33, %36, %21
  %45 = phi i8 [ 1, %36 ], [ %22, %33 ], [ %22, %21 ]
  %46 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %44, %49
  %50 = phi ptr [ %55, %49 ], [ %47, %44 ]
  %51 = getelementptr inbounds %struct.BMHeader, ptr %50, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !116
  %53 = and i8 %52, -17
  store i8 %53, ptr %51, align 1, !tbaa !116
  %54 = getelementptr inbounds %struct.BMLoop, ptr %50, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !99
  %56 = icmp eq ptr %55, %47
  br i1 %56, label %57, label %49, !llvm.loop !117

57:                                               ; preds = %49, %44
  %58 = load ptr, ptr %13, align 8, !tbaa !47
  %59 = call ptr %58(ptr noundef nonnull %3) #5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %21, !llvm.loop !118

61:                                               ; preds = %57
  %62 = icmp eq i8 %45, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !66
  %66 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %65, ptr noundef nonnull @.str.16, i32 noundef 2) #5
  br label %67

67:                                               ; preds = %2, %63, %61
  store i8 2, ptr %11, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !47
  %68 = load ptr, ptr %14, align 8, !tbaa !86
  store ptr %68, ptr %3, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #5
  %69 = load ptr, ptr %13, align 8, !tbaa !47
  %70 = call ptr %69(ptr noundef nonnull %3) #5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %317, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %74

74:                                               ; preds = %72, %306
  %75 = phi i8 [ 0, %72 ], [ %307, %306 ]
  %76 = phi ptr [ %70, %72 ], [ %309, %306 ]
  %77 = getelementptr inbounds %struct.BMEdge, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !87
  %79 = icmp eq ptr %78, null
  br i1 %79, label %306, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.BMEdge, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  %83 = load i32, ptr %73, align 8, !tbaa !53
  %84 = sext i32 %83 to i64
  %85 = getelementptr %struct.BMFlagLayer, ptr %82, i64 %84
  %86 = getelementptr %struct.BMFlagLayer, ptr %85, i64 -1
  %87 = load i16, ptr %86, align 2, !tbaa !54
  %88 = and i16 %87, 1
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %306, label %90

90:                                               ; preds = %80, %300
  %91 = phi ptr [ %301, %300 ], [ %78, %80 ]
  %92 = phi ptr [ %304, %300 ], [ %78, %80 ]
  %93 = phi i8 [ %302, %300 ], [ %75, %80 ]
  %94 = getelementptr inbounds %struct.BMHeader, ptr %92, i64 0, i32 3
  %95 = load i8, ptr %94, align 1, !tbaa !116
  %96 = and i8 %95, 16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %300

98:                                               ; preds = %90
  %99 = or disjoint i8 %95, 16
  store i8 %99, ptr %94, align 1, !tbaa !116
  %100 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !93
  %102 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !80
  %104 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !71
  %106 = load i32, ptr %73, align 8, !tbaa !53
  %107 = sext i32 %106 to i64
  %108 = getelementptr %struct.BMFlagLayer, ptr %105, i64 %107
  %109 = getelementptr %struct.BMFlagLayer, ptr %108, i64 -1
  %110 = load i16, ptr %109, align 2, !tbaa !54
  %111 = and i16 %110, 1
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %300, label %113

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !80
  %116 = getelementptr inbounds %struct.BMEdge, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !71
  %118 = getelementptr %struct.BMFlagLayer, ptr %117, i64 %107
  %119 = getelementptr %struct.BMFlagLayer, ptr %118, i64 -1
  %120 = load i16, ptr %119, align 2, !tbaa !54
  %121 = or i16 %120, %110
  %122 = and i16 %121, 2
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %300

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !78
  %127 = getelementptr inbounds %struct.BMVert, ptr %126, i64 0, i32 2
  %128 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !78
  %130 = getelementptr inbounds %struct.BMVert, ptr %129, i64 0, i32 2
  %131 = load float, ptr %127, align 4, !tbaa !119
  %132 = load float, ptr %130, align 4, !tbaa !119
  %133 = fsub float %131, %132
  %134 = getelementptr inbounds %struct.BMVert, ptr %126, i64 0, i32 2, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !119
  %136 = getelementptr inbounds %struct.BMVert, ptr %129, i64 0, i32 2, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !119
  %138 = fsub float %135, %137
  %139 = getelementptr inbounds %struct.BMVert, ptr %126, i64 0, i32 2, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !119
  %141 = getelementptr inbounds %struct.BMVert, ptr %129, i64 0, i32 2, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !119
  %143 = fsub float %140, %142
  %144 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !81
  %146 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !78
  %148 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 2
  %149 = load float, ptr %148, align 4, !tbaa !119
  %150 = fsub float %149, %132
  %151 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 2, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !119
  %153 = fsub float %152, %137
  %154 = getelementptr inbounds %struct.BMVert, ptr %147, i64 0, i32 2, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !119
  %156 = fsub float %155, %142
  %157 = fmul float %138, %138
  %158 = call float @llvm.fmuladd.f32(float %133, float %133, float %157)
  %159 = call float @llvm.fmuladd.f32(float %143, float %143, float %158)
  %160 = fcmp ogt float %159, 0x38AA95A5C0000000
  br i1 %160, label %161, label %167

161:                                              ; preds = %124
  %162 = call float @sqrtf(float noundef %159) #5
  %163 = fdiv float 1.000000e+00, %162
  %164 = fmul float %133, %163
  %165 = fmul float %138, %163
  %166 = fmul float %143, %163
  br label %167

167:                                              ; preds = %124, %161
  %168 = phi float [ %165, %161 ], [ 0.000000e+00, %124 ]
  %169 = phi float [ %164, %161 ], [ 0.000000e+00, %124 ]
  %170 = phi float [ %166, %161 ], [ 0.000000e+00, %124 ]
  %171 = phi float [ %162, %161 ], [ 0.000000e+00, %124 ]
  %172 = fmul float %153, %153
  %173 = call float @llvm.fmuladd.f32(float %150, float %150, float %172)
  %174 = call float @llvm.fmuladd.f32(float %156, float %156, float %173)
  %175 = fcmp ogt float %174, 0x38AA95A5C0000000
  br i1 %175, label %176, label %182

176:                                              ; preds = %167
  %177 = call float @sqrtf(float noundef %174) #5
  %178 = fdiv float 1.000000e+00, %177
  %179 = fmul float %150, %178
  %180 = fmul float %153, %178
  %181 = fmul float %156, %178
  br label %182

182:                                              ; preds = %167, %176
  %183 = phi float [ %180, %176 ], [ 0.000000e+00, %167 ]
  %184 = phi float [ %179, %176 ], [ 0.000000e+00, %167 ]
  %185 = phi float [ %181, %176 ], [ 0.000000e+00, %167 ]
  %186 = phi float [ %177, %176 ], [ 0.000000e+00, %167 ]
  %187 = fsub float %184, %169
  %188 = fsub float %183, %168
  %189 = fsub float %185, %170
  %190 = fmul float %188, %188
  %191 = call float @llvm.fmuladd.f32(float %187, float %187, float %190)
  %192 = call float @llvm.fmuladd.f32(float %189, float %189, float %191)
  %193 = call float @sqrtf(float noundef %192) #5
  %194 = fcmp olt float %171, %186
  %195 = select i1 %194, float %171, float %186
  %196 = fmul float %193, %195
  %197 = fcmp ugt float %196, %9
  br i1 %197, label %300, label %198

198:                                              ; preds = %182
  %199 = fsub float %171, %186
  %200 = call float @llvm.fabs.f32(float %199)
  %201 = fcmp ugt float %200, %9
  br i1 %201, label %240, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !91
  %205 = getelementptr inbounds %struct.BMFace, ptr %204, i64 0, i32 3
  %206 = load i32, ptr %205, align 8, !tbaa !92
  %207 = icmp eq i32 %206, 3
  br i1 %207, label %208, label %220

208:                                              ; preds = %202
  %209 = load ptr, ptr %144, align 8, !tbaa !81
  %210 = getelementptr inbounds %struct.BMLoop, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !80
  %212 = getelementptr inbounds %struct.BMEdge, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !71
  %214 = load i32, ptr %73, align 8, !tbaa !53
  %215 = sext i32 %214 to i64
  %216 = getelementptr %struct.BMFlagLayer, ptr %213, i64 %215
  %217 = getelementptr %struct.BMFlagLayer, ptr %216, i64 -1
  %218 = load i16, ptr %217, align 2, !tbaa !54
  %219 = or i16 %218, 2
  store i16 %219, ptr %217, align 2, !tbaa !54
  br label %295

220:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %221 = load ptr, ptr %100, align 8, !tbaa !93
  %222 = load ptr, ptr %144, align 8, !tbaa !81
  %223 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %204, ptr noundef %221, ptr noundef %222, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 1) #5
  %224 = icmp eq ptr %223, null
  br i1 %224, label %237, label %225

225:                                              ; preds = %220
  %226 = load ptr, ptr %4, align 8, !tbaa !34
  %227 = getelementptr inbounds %struct.BMLoop, ptr %226, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !80
  %229 = getelementptr inbounds %struct.BMEdge, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !71
  %231 = load i32, ptr %73, align 8, !tbaa !53
  %232 = sext i32 %231 to i64
  %233 = getelementptr %struct.BMFlagLayer, ptr %230, i64 %232
  %234 = getelementptr %struct.BMFlagLayer, ptr %233, i64 -1
  %235 = load i16, ptr %234, align 2, !tbaa !54
  %236 = or i16 %235, 2
  store i16 %236, ptr %234, align 2, !tbaa !54
  br label %237

237:                                              ; preds = %225, %220
  %238 = phi i8 [ 1, %225 ], [ 0, %220 ]
  %239 = phi i8 [ 1, %225 ], [ %93, %220 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %295

240:                                              ; preds = %198
  br i1 %194, label %241, label %266

241:                                              ; preds = %240
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %242 = load ptr, ptr %114, align 8, !tbaa !80
  %243 = load ptr, ptr %128, align 8, !tbaa !78
  %244 = fdiv float %171, %186
  %245 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef %242, ptr noundef %243, ptr noundef nonnull %5, float noundef %244) #5
  %246 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !91
  %248 = load ptr, ptr %100, align 8, !tbaa !93
  %249 = load ptr, ptr %144, align 8, !tbaa !81
  %250 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %247, ptr noundef %248, ptr noundef %249, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 1) #5
  %251 = icmp eq ptr %250, null
  br i1 %251, label %264, label %252

252:                                              ; preds = %241
  %253 = load ptr, ptr %6, align 8, !tbaa !34
  %254 = getelementptr inbounds %struct.BMLoop, ptr %253, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !80
  %256 = getelementptr inbounds %struct.BMEdge, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !71
  %258 = load i32, ptr %73, align 8, !tbaa !53
  %259 = sext i32 %258 to i64
  %260 = getelementptr %struct.BMFlagLayer, ptr %257, i64 %259
  %261 = getelementptr %struct.BMFlagLayer, ptr %260, i64 -1
  %262 = load i16, ptr %261, align 2, !tbaa !54
  %263 = or i16 %262, 2
  store i16 %263, ptr %261, align 2, !tbaa !54
  br label %264

264:                                              ; preds = %252, %241
  %265 = phi i8 [ 1, %252 ], [ %93, %241 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %295

266:                                              ; preds = %240
  %267 = fcmp olt float %186, %171
  br i1 %267, label %268, label %295

268:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  %269 = load ptr, ptr %100, align 8, !tbaa !93
  %270 = getelementptr inbounds %struct.BMLoop, ptr %269, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !80
  %272 = load ptr, ptr %128, align 8, !tbaa !78
  %273 = fdiv float %186, %171
  %274 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef %271, ptr noundef %272, ptr noundef nonnull %7, float noundef %273) #5
  %275 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !91
  %277 = load ptr, ptr %100, align 8, !tbaa !93
  %278 = load ptr, ptr %144, align 8, !tbaa !81
  %279 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %276, ptr noundef %277, ptr noundef %278, ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 1) #5
  %280 = icmp eq ptr %279, null
  br i1 %280, label %293, label %281

281:                                              ; preds = %268
  %282 = load ptr, ptr %8, align 8, !tbaa !34
  %283 = getelementptr inbounds %struct.BMLoop, ptr %282, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !80
  %285 = getelementptr inbounds %struct.BMEdge, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !71
  %287 = load i32, ptr %73, align 8, !tbaa !53
  %288 = sext i32 %287 to i64
  %289 = getelementptr %struct.BMFlagLayer, ptr %286, i64 %288
  %290 = getelementptr %struct.BMFlagLayer, ptr %289, i64 -1
  %291 = load i16, ptr %290, align 2, !tbaa !54
  %292 = or i16 %291, 2
  store i16 %292, ptr %290, align 2, !tbaa !54
  br label %293

293:                                              ; preds = %281, %268
  %294 = phi i8 [ 1, %281 ], [ %93, %268 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  br label %295

295:                                              ; preds = %264, %293, %266, %208, %237
  %296 = phi i8 [ 0, %208 ], [ %238, %237 ], [ 1, %264 ], [ 1, %293 ], [ 0, %266 ]
  %297 = phi i8 [ 1, %208 ], [ %239, %237 ], [ %265, %264 ], [ %294, %293 ], [ %93, %266 ]
  %298 = icmp eq i8 %296, 0
  %299 = select i1 %298, ptr %91, ptr %92
  br label %300

300:                                              ; preds = %182, %295, %90, %98, %113
  %301 = phi ptr [ %91, %90 ], [ %91, %113 ], [ %91, %98 ], [ %299, %295 ], [ %91, %182 ]
  %302 = phi i8 [ %93, %90 ], [ %93, %113 ], [ %93, %98 ], [ %297, %295 ], [ %93, %182 ]
  %303 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 4
  %304 = load ptr, ptr %303, align 8, !tbaa !99
  %305 = icmp eq ptr %304, %301
  br i1 %305, label %306, label %90, !llvm.loop !121

306:                                              ; preds = %300, %74, %80
  %307 = phi i8 [ %75, %80 ], [ %75, %74 ], [ %302, %300 ]
  %308 = load ptr, ptr %13, align 8, !tbaa !47
  %309 = call ptr %308(ptr noundef nonnull %3) #5
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %74, !llvm.loop !122

311:                                              ; preds = %306
  %312 = icmp eq i8 %307, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %315 = load i32, ptr %314, align 8, !tbaa !66
  %316 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %315, ptr noundef nonnull @.str.16, i32 noundef 2) #5
  br label %317

317:                                              ; preds = %67, %313, %311
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  ret void
}

declare float @BM_edge_calc_length_squared(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_stack_is_empty(ptr noundef) local_unnamed_addr #2

declare void @BLI_stack_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!38 = !{!39, !35, i64 976}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!45, !36, i64 60}
!45 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!46 = !{!45, !35, i64 40}
!47 = !{!45, !35, i64 48}
!48 = !{!39, !35, i64 32}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !35, i64 16}
!51 = !{!"BMVert", !52, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!52 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!53 = !{!39, !40, i64 128}
!54 = !{!55, !42, i64 0}
!55 = !{!"BMFlagLayer", !42, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!60, !35, i64 16}
!60 = !{!"BMFace", !52, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!61 = distinct !{!61, !57, !58}
!62 = distinct !{!62, !57, !58}
!63 = distinct !{!63, !57, !58}
!64 = distinct !{!64, !57, !58}
!65 = distinct !{!65, !57, !58}
!66 = !{!67, !40, i64 1304}
!67 = !{!"BMOperator", !36, i64 0, !36, i64 640, !35, i64 1280, !35, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!68 = distinct !{!68, !57, !58}
!69 = !{!51, !35, i64 48}
!70 = distinct !{!70, !57, !58}
!71 = !{!72, !35, i64 16}
!72 = !{!"BMEdge", !52, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !73, i64 48, !73, i64 64}
!73 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!74 = distinct !{!74, !57, !58}
!75 = distinct !{!75, !57, !58}
!76 = distinct !{!76, !57, !58}
!77 = !{!60, !35, i64 24}
!78 = !{!79, !35, i64 16}
!79 = !{!"BMLoop", !52, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!80 = !{!79, !35, i64 24}
!81 = !{!79, !35, i64 56}
!82 = distinct !{!82, !57, !58}
!83 = distinct !{!83, !57, !58}
!84 = distinct !{!84, !57, !58}
!85 = distinct !{!85, !57, !58}
!86 = !{!39, !35, i64 40}
!87 = !{!72, !35, i64 40}
!88 = distinct !{!88, !57, !58}
!89 = distinct !{!89, !57, !58}
!90 = distinct !{!90, !57, !58}
!91 = !{!79, !35, i64 32}
!92 = !{!60, !40, i64 32}
!93 = !{!79, !35, i64 64}
!94 = distinct !{!94, !57, !58}
!95 = distinct !{!95, !57, !58}
!96 = distinct !{!96, !57, !58}
!97 = distinct !{!97, !57, !58}
!98 = distinct !{!98, !57, !58}
!99 = !{!79, !35, i64 40}
!100 = distinct !{!100, !57, !58}
!101 = distinct !{!101, !57, !58}
!102 = distinct !{!102, !57, !58}
!103 = distinct !{!103, !57, !58}
!104 = !{!72, !35, i64 32}
!105 = !{!72, !35, i64 48}
!106 = distinct !{!106, !57, !58}
!107 = distinct !{!107, !57, !58}
!108 = distinct !{!108, !57, !58}
!109 = distinct !{!109, !57, !58}
!110 = distinct !{!110, !57, !58}
!111 = distinct !{!111, !57, !58}
!112 = distinct !{!112, !57, !58}
!113 = distinct !{!113, !57, !58}
!114 = !{!115, !40, i64 16}
!115 = !{!"BMOpSlot", !35, i64 0, !40, i64 8, !36, i64 12, !40, i64 16, !36, i64 24}
!116 = !{!52, !36, i64 13}
!117 = distinct !{!117, !57, !58}
!118 = distinct !{!118, !57, !58}
!119 = !{!120, !120, i64 0}
!120 = !{!"float", !36, i64 0}
!121 = distinct !{!121, !57, !58}
!122 = distinct !{!122, !57, !58}
