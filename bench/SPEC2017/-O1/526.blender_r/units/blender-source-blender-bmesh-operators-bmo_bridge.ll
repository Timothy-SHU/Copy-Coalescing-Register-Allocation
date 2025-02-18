; ModuleID = 'blender/source/blender/bmesh/operators/bmo_bridge.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [10 x i8] c"use_pairs\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"use_merge\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"merge_factor\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"use_cyclic\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"twist_offset\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Select at least two edge loops\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Select an even number of loops to bridge pairs\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Selected loops must have equal edge counts\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"triangulate faces=%hf\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"beautify_fill faces=%hf edges=ae use_restrict_tag=%b method=%i\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_bridge_loops_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x ptr], align 16
  %6 = alloca ptr, align 8
  %7 = alloca [4 x ptr], align 16
  %8 = alloca [3 x ptr], align 16
  %9 = alloca [2 x ptr], align 16
  %10 = alloca %struct.BMOperator, align 8
  %11 = alloca %struct.BMOIter, align 8
  %12 = alloca %struct.BMOIter, align 8
  %13 = alloca %struct.BMOIter, align 8
  %14 = alloca [2 x ptr], align 16
  %15 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %16 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #7
  %17 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %18 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %19 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %20 = icmp ne i8 %19, 0
  %21 = icmp eq i8 %17, 0
  %22 = select i1 %20, i1 %21, i1 false
  %23 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, i16 noundef signext 4) #7
  %24 = call i32 @BM_mesh_edgeloops_find(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull @bm_edge_test_cb, ptr noundef %0) #7
  call void @BM_mesh_edgeloops_calc_center(ptr noundef %0, ptr noundef nonnull %15) #7
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %813, label %26

26:                                               ; preds = %2
  %27 = icmp eq i8 %16, 0
  %28 = and i32 %24, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %813

31:                                               ; preds = %26
  br i1 %21, label %43, label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %15, align 8, !tbaa !34
  %34 = call i32 @BM_edgeloop_length_get(ptr noundef %33) #7
  br label %35

35:                                               ; preds = %39, %32
  %36 = phi ptr [ %15, %32 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = call i32 @BM_edgeloop_length_get(ptr noundef nonnull %37) #7
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %35, label %42, !llvm.loop !40

42:                                               ; preds = %39
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.8) #7
  br i1 %38, label %43, label %815

43:                                               ; preds = %35, %42, %31
  %44 = icmp ne i32 %24, 2
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  br i1 %27, label %47, label %46

46:                                               ; preds = %45
  call void @BM_mesh_edgeloops_calc_normal(ptr noundef %0, ptr noundef nonnull %15) #7
  br label %47

47:                                               ; preds = %46, %45
  call void @BM_mesh_edgeloops_calc_order(ptr noundef %0, ptr noundef nonnull %15, i8 noundef zeroext %16) #7
  br label %48

48:                                               ; preds = %47, %43
  %49 = and i1 %22, %44
  %50 = getelementptr inbounds float, ptr %4, i64 1
  %51 = getelementptr inbounds float, ptr %4, i64 2
  %52 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %53 = getelementptr inbounds ptr, ptr %5, i64 1
  %54 = icmp eq i32 %23, 0
  %55 = getelementptr inbounds ptr, ptr %7, i64 1
  %56 = getelementptr inbounds ptr, ptr %7, i64 2
  %57 = getelementptr inbounds ptr, ptr %7, i64 3
  %58 = getelementptr inbounds ptr, ptr %8, i64 1
  %59 = getelementptr inbounds ptr, ptr %8, i64 2
  %60 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %61 = getelementptr inbounds ptr, ptr %9, i64 1
  %62 = getelementptr inbounds %struct.BMOperator, ptr %10, i64 0, i32 1
  %63 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %64 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %65 = getelementptr inbounds ptr, ptr %14, i64 1
  %66 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %67

67:                                               ; preds = %803, %48
  %68 = phi i8 [ 0, %48 ], [ %804, %803 ]
  %69 = phi ptr [ %15, %48 ], [ %805, %803 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !39
  %71 = icmp eq ptr %70, null
  br i1 %71, label %807, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %70, align 8, !tbaa !43
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  br i1 %49, label %76, label %803

76:                                               ; preds = %75
  %77 = load ptr, ptr %15, align 8, !tbaa !34
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi ptr [ %77, %76 ], [ %73, %72 ]
  %80 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef nonnull %70) #7
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %79) #7
  %84 = icmp ne i8 %83, 0
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i1 [ false, %78 ], [ %84, %82 ]
  %87 = call i32 @BM_edgeloop_length_get(ptr noundef nonnull %70) #7
  %88 = call i32 @BM_edgeloop_length_get(ptr noundef %79) #7
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ %87, %90 ], [ %88, %85 ]
  %93 = phi i32 [ %88, %90 ], [ %87, %85 ]
  %94 = phi ptr [ %70, %90 ], [ %79, %85 ]
  %95 = phi ptr [ %79, %90 ], [ %70, %85 ]
  %96 = icmp eq i32 %93, %92
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  br label %98

98:                                               ; preds = %97, %91
  %99 = call ptr @BM_edgeloop_center_get(ptr noundef %95) #7
  %100 = call ptr @BM_edgeloop_center_get(ptr noundef %94) #7
  %101 = load float, ptr %99, align 4, !tbaa !45
  %102 = load float, ptr %100, align 4, !tbaa !45
  %103 = fsub float %101, %102
  %104 = getelementptr inbounds float, ptr %99, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !45
  %106 = getelementptr inbounds float, ptr %100, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !45
  %108 = fsub float %105, %107
  %109 = getelementptr inbounds float, ptr %99, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !45
  %111 = getelementptr inbounds float, ptr %100, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !45
  %113 = fsub float %110, %112
  br i1 %86, label %114, label %117

114:                                              ; preds = %98
  %115 = call zeroext i8 @BM_edgeloop_calc_normal(ptr noundef %0, ptr noundef %95) #7
  %116 = call zeroext i8 @BM_edgeloop_calc_normal(ptr noundef %0, ptr noundef %94) #7
  br label %221

117:                                              ; preds = %98
  %118 = call ptr @BM_edgeloop_verts_get(ptr noundef %95) #7
  %119 = call ptr @BM_edgeloop_verts_get(ptr noundef %94) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  %120 = load ptr, ptr %118, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.LinkData, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !47
  %123 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2
  %124 = getelementptr inbounds %struct.ListBase, ptr %118, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !48
  %126 = getelementptr inbounds %struct.LinkData, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !47
  %128 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2
  %129 = load float, ptr %123, align 4, !tbaa !45
  %130 = load float, ptr %128, align 4, !tbaa !45
  %131 = fsub float %129, %130
  %132 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !45
  %134 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !45
  %136 = fsub float %133, %135
  %137 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !45
  %139 = getelementptr inbounds %struct.BMVert, ptr %127, i64 0, i32 2, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !45
  %141 = fsub float %138, %140
  %142 = load ptr, ptr %119, align 8, !tbaa !34
  %143 = getelementptr inbounds %struct.LinkData, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !47
  %145 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 2
  %146 = getelementptr inbounds %struct.ListBase, ptr %119, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !48
  %148 = getelementptr inbounds %struct.LinkData, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !47
  %150 = getelementptr inbounds %struct.BMVert, ptr %149, i64 0, i32 2
  %151 = load float, ptr %145, align 4, !tbaa !45
  %152 = load float, ptr %150, align 4, !tbaa !45
  %153 = fsub float %151, %152
  %154 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 2, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !45
  %156 = getelementptr inbounds %struct.BMVert, ptr %149, i64 0, i32 2, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !45
  %158 = fsub float %155, %157
  %159 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 2, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !45
  %161 = getelementptr inbounds %struct.BMVert, ptr %149, i64 0, i32 2, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !45
  %163 = fsub float %160, %162
  %164 = fneg float %141
  %165 = fmul float %108, %164
  %166 = call float @llvm.fmuladd.f32(float %136, float %113, float %165)
  store float %166, ptr %4, align 4, !tbaa !45
  %167 = fneg float %131
  %168 = fmul float %113, %167
  %169 = call float @llvm.fmuladd.f32(float %141, float %103, float %168)
  store float %169, ptr %50, align 4, !tbaa !45
  %170 = fneg float %136
  %171 = fmul float %103, %170
  %172 = call float @llvm.fmuladd.f32(float %131, float %108, float %171)
  store float %172, ptr %51, align 4, !tbaa !45
  %173 = fneg float %172
  %174 = fmul float %108, %173
  %175 = call float @llvm.fmuladd.f32(float %169, float %113, float %174)
  %176 = fneg float %166
  %177 = fmul float %113, %176
  %178 = call float @llvm.fmuladd.f32(float %172, float %103, float %177)
  %179 = fneg float %169
  %180 = fmul float %103, %179
  %181 = call float @llvm.fmuladd.f32(float %166, float %108, float %180)
  %182 = fneg float %163
  %183 = fmul float %108, %182
  %184 = call float @llvm.fmuladd.f32(float %158, float %113, float %183)
  store float %184, ptr %4, align 4, !tbaa !45
  %185 = fneg float %153
  %186 = fmul float %113, %185
  %187 = call float @llvm.fmuladd.f32(float %163, float %103, float %186)
  store float %187, ptr %50, align 4, !tbaa !45
  %188 = fneg float %158
  %189 = fmul float %103, %188
  %190 = call float @llvm.fmuladd.f32(float %153, float %108, float %189)
  store float %190, ptr %51, align 4, !tbaa !45
  %191 = fneg float %190
  %192 = fmul float %108, %191
  %193 = call float @llvm.fmuladd.f32(float %187, float %113, float %192)
  %194 = fneg float %184
  %195 = fmul float %113, %194
  %196 = call float @llvm.fmuladd.f32(float %190, float %103, float %195)
  %197 = fneg float %187
  %198 = fmul float %103, %197
  %199 = call float @llvm.fmuladd.f32(float %184, float %108, float %198)
  %200 = fmul float %178, %196
  %201 = call float @llvm.fmuladd.f32(float %175, float %193, float %200)
  %202 = call float @llvm.fmuladd.f32(float %181, float %199, float %201)
  %203 = fcmp olt float %202, 0.000000e+00
  br i1 %203, label %204, label %205

204:                                              ; preds = %117
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %94) #7
  br label %205

205:                                              ; preds = %204, %117
  %206 = fmul float %108, %108
  %207 = call float @llvm.fmuladd.f32(float %103, float %103, float %206)
  %208 = call float @llvm.fmuladd.f32(float %113, float %113, float %207)
  %209 = fcmp ogt float %208, 0x38AA95A5C0000000
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = call float @sqrtf(float noundef %208) #7
  %212 = fdiv float 1.000000e+00, %211
  %213 = fmul float %103, %212
  store float %213, ptr %4, align 4, !tbaa !45
  %214 = fmul float %108, %212
  store float %214, ptr %50, align 4, !tbaa !45
  %215 = fmul float %113, %212
  br label %217

216:                                              ; preds = %205
  store float 0.000000e+00, ptr %4, align 4, !tbaa !45
  store float 0.000000e+00, ptr %50, align 4, !tbaa !45
  br label %217

217:                                              ; preds = %216, %210
  %218 = phi float [ 0.000000e+00, %216 ], [ %215, %210 ]
  store float %218, ptr %51, align 4, !tbaa !45
  %219 = call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef %0, ptr noundef %95, ptr noundef nonnull %4) #7
  %220 = call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef %0, ptr noundef %94, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  br label %221

221:                                              ; preds = %217, %114
  %222 = call ptr @BM_edgeloop_normal_get(ptr noundef %95) #7
  %223 = load float, ptr %222, align 4, !tbaa !45
  %224 = getelementptr inbounds float, ptr %222, i64 1
  %225 = load float, ptr %224, align 4, !tbaa !45
  %226 = fmul float %108, %225
  %227 = call float @llvm.fmuladd.f32(float %223, float %103, float %226)
  %228 = getelementptr inbounds float, ptr %222, i64 2
  %229 = load float, ptr %228, align 4, !tbaa !45
  %230 = call float @llvm.fmuladd.f32(float %229, float %113, float %227)
  %231 = call ptr @BM_edgeloop_normal_get(ptr noundef %94) #7
  %232 = load float, ptr %231, align 4, !tbaa !45
  %233 = getelementptr inbounds float, ptr %231, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !45
  %235 = fmul float %108, %234
  %236 = call float @llvm.fmuladd.f32(float %232, float %103, float %235)
  %237 = getelementptr inbounds float, ptr %231, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !45
  %239 = call float @llvm.fmuladd.f32(float %238, float %113, float %236)
  %240 = fmul float %108, %108
  %241 = call float @llvm.fmuladd.f32(float %103, float %103, float %240)
  %242 = call float @llvm.fmuladd.f32(float %113, float %113, float %241)
  %243 = fcmp olt float %242, 0x3EE4F8B580000000
  br i1 %243, label %250, label %244

244:                                              ; preds = %221
  %245 = call float @llvm.fabs.f32(float %230)
  %246 = fcmp olt float %245, 0x3EE4F8B580000000
  %247 = call float @llvm.fabs.f32(float %239)
  %248 = fcmp olt float %247, 0x3EE4F8B580000000
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %250, label %267

250:                                              ; preds = %244, %221
  %251 = call ptr @BM_edgeloop_normal_get(ptr noundef %95) #7
  %252 = call ptr @BM_edgeloop_normal_get(ptr noundef %94) #7
  %253 = load float, ptr %251, align 4, !tbaa !45
  %254 = load float, ptr %252, align 4, !tbaa !45
  %255 = getelementptr inbounds float, ptr %251, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !45
  %257 = getelementptr inbounds float, ptr %252, i64 1
  %258 = load float, ptr %257, align 4, !tbaa !45
  %259 = fmul float %256, %258
  %260 = call float @llvm.fmuladd.f32(float %253, float %254, float %259)
  %261 = getelementptr inbounds float, ptr %251, i64 2
  %262 = load float, ptr %261, align 4, !tbaa !45
  %263 = getelementptr inbounds float, ptr %252, i64 2
  %264 = load float, ptr %263, align 4, !tbaa !45
  %265 = call float @llvm.fmuladd.f32(float %262, float %264, float %260)
  %266 = fcmp olt float %265, 0.000000e+00
  br i1 %266, label %271, label %272

267:                                              ; preds = %244
  %268 = fcmp olt float %230, 0.000000e+00
  %269 = fcmp uge float %239, 0.000000e+00
  %270 = xor i1 %268, %269
  br i1 %270, label %272, label %271

271:                                              ; preds = %267, %250
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %94) #7
  br label %272

272:                                              ; preds = %271, %267, %250
  br i1 %21, label %273, label %362

273:                                              ; preds = %272
  %274 = call ptr @BM_edgeloop_normal_get(ptr noundef %95) #7
  %275 = call ptr @BM_edgeloop_normal_get(ptr noundef %94) #7
  %276 = load float, ptr %274, align 4, !tbaa !45
  %277 = load float, ptr %275, align 4, !tbaa !45
  %278 = fadd float %276, %277
  %279 = getelementptr inbounds float, ptr %274, i64 1
  %280 = load float, ptr %279, align 4, !tbaa !45
  %281 = getelementptr inbounds float, ptr %275, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !45
  %283 = fadd float %280, %282
  %284 = getelementptr inbounds float, ptr %274, i64 2
  %285 = load float, ptr %284, align 4, !tbaa !45
  %286 = getelementptr inbounds float, ptr %275, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !45
  %288 = fadd float %285, %287
  %289 = fmul float %108, %283
  %290 = call float @llvm.fmuladd.f32(float %278, float %103, float %289)
  %291 = call float @llvm.fmuladd.f32(float %288, float %113, float %290)
  %292 = fcmp olt float %291, 0.000000e+00
  br i1 %292, label %293, label %294

293:                                              ; preds = %273
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %95) #7
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %94) #7
  br label %294

294:                                              ; preds = %293, %273
  %295 = load i32, ptr %52, align 4, !tbaa !49
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %362, label %297

297:                                              ; preds = %294
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  store ptr %95, ptr %5, align 16, !tbaa !39
  store ptr %94, ptr %53, align 8, !tbaa !39
  br label %298

298:                                              ; preds = %297, %353
  %299 = phi i64 [ 0, %297 ], [ %355, %353 ]
  %300 = phi i32 [ 0, %297 ], [ %354, %353 ]
  %301 = phi i32 [ 1, %297 ], [ %356, %353 ]
  %302 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %299
  %303 = load ptr, ptr %302, align 8, !tbaa !39
  %304 = call ptr @BM_edgeloop_verts_get(ptr noundef %303) #7
  %305 = load ptr, ptr %304, align 8, !tbaa !39
  %306 = icmp eq ptr %305, null
  br i1 %306, label %353, label %307

307:                                              ; preds = %298
  %308 = sub nsw i32 0, %301
  br label %309

309:                                              ; preds = %307, %349
  %310 = phi ptr [ %305, %307 ], [ %351, %349 ]
  %311 = phi i32 [ %300, %307 ], [ %350, %349 ]
  %312 = load ptr, ptr %310, align 8, !tbaa !43
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %303) #7
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %314
  %318 = call ptr @BM_edgeloop_verts_get(ptr noundef %303) #7
  %319 = load ptr, ptr %318, align 8, !tbaa !34
  br label %320

320:                                              ; preds = %317, %314, %309
  %321 = phi ptr [ %319, %317 ], [ null, %314 ], [ %312, %309 ]
  %322 = icmp eq ptr %321, null
  br i1 %322, label %349, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.LinkData, ptr %310, i64 0, i32 2
  %325 = load ptr, ptr %324, align 8, !tbaa !47
  %326 = getelementptr inbounds %struct.LinkData, ptr %321, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !47
  %328 = call ptr @BM_edge_exists(ptr noundef %325, ptr noundef %327) #7
  %329 = icmp eq ptr %328, null
  br i1 %329, label %349, label %330

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.BMEdge, ptr %328, i64 0, i32 4
  %332 = load ptr, ptr %331, align 8, !tbaa !54
  %333 = icmp eq ptr %332, null
  br i1 %333, label %339, label %334

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.BMLoop, ptr %332, i64 0, i32 4
  %336 = load ptr, ptr %335, align 8, !tbaa !58
  %337 = icmp eq ptr %336, %332
  %338 = zext i1 %337 to i8
  br label %339

339:                                              ; preds = %334, %330
  %340 = phi i8 [ 0, %330 ], [ %338, %334 ]
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.BMLoop, ptr %332, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !60
  %345 = load ptr, ptr %324, align 8, !tbaa !47
  %346 = icmp eq ptr %344, %345
  %347 = select i1 %346, i32 %301, i32 %308
  %348 = add nsw i32 %347, %311
  br label %349

349:                                              ; preds = %342, %339, %323, %320
  %350 = phi i32 [ %311, %320 ], [ %348, %342 ], [ %311, %339 ], [ %311, %323 ]
  %351 = load ptr, ptr %310, align 8, !tbaa !39
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %309, !llvm.loop !61

353:                                              ; preds = %349, %298
  %354 = phi i32 [ %300, %298 ], [ %350, %349 ]
  %355 = add nuw nsw i64 %299, 1
  %356 = sub nsw i32 0, %301
  %357 = icmp eq i64 %299, 0
  br i1 %357, label %298, label %358, !llvm.loop !62

358:                                              ; preds = %353
  %359 = icmp slt i32 %354, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %358
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %95) #7
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %94) #7
  br label %361

361:                                              ; preds = %360, %358
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %362

362:                                              ; preds = %361, %294, %272
  %363 = icmp sgt i32 %93, %92
  br i1 %363, label %364, label %366

364:                                              ; preds = %362
  %365 = call ptr @BM_edgeloop_copy(ptr noundef %94) #7
  call void @BM_edgeloop_expand(ptr noundef %0, ptr noundef %365, i32 noundef %93) #7
  br label %366

366:                                              ; preds = %364, %362
  %367 = phi ptr [ %365, %364 ], [ %94, %362 ]
  br i1 %86, label %368, label %430

368:                                              ; preds = %366
  %369 = call ptr @BM_edgeloop_verts_get(ptr noundef %95) #7
  %370 = call ptr @BM_edgeloop_verts_get(ptr noundef %367) #7
  %371 = load ptr, ptr %369, align 8, !tbaa !34
  %372 = load ptr, ptr %370, align 8, !tbaa !34
  %373 = icmp eq ptr %372, null
  br i1 %373, label %418, label %374

374:                                              ; preds = %368, %413
  %375 = phi ptr [ %416, %413 ], [ %372, %368 ]
  %376 = phi float [ %415, %413 ], [ 0x47EFFFFFE0000000, %368 ]
  %377 = phi ptr [ %414, %413 ], [ null, %368 ]
  br label %378

378:                                              ; preds = %374, %378
  %379 = phi ptr [ %408, %378 ], [ %375, %374 ]
  %380 = phi ptr [ %409, %378 ], [ %371, %374 ]
  %381 = phi float [ %405, %378 ], [ 0.000000e+00, %374 ]
  %382 = getelementptr inbounds %struct.LinkData, ptr %380, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !47
  %384 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 2
  %385 = getelementptr inbounds %struct.LinkData, ptr %379, i64 0, i32 2
  %386 = load ptr, ptr %385, align 8, !tbaa !47
  %387 = getelementptr inbounds %struct.BMVert, ptr %386, i64 0, i32 2
  %388 = load float, ptr %387, align 4, !tbaa !45
  %389 = load float, ptr %384, align 4, !tbaa !45
  %390 = fsub float %388, %389
  %391 = getelementptr inbounds %struct.BMVert, ptr %386, i64 0, i32 2, i64 1
  %392 = load float, ptr %391, align 4, !tbaa !45
  %393 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 2, i64 1
  %394 = load float, ptr %393, align 4, !tbaa !45
  %395 = fsub float %392, %394
  %396 = getelementptr inbounds %struct.BMVert, ptr %386, i64 0, i32 2, i64 2
  %397 = load float, ptr %396, align 4, !tbaa !45
  %398 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 2, i64 2
  %399 = load float, ptr %398, align 4, !tbaa !45
  %400 = fsub float %397, %399
  %401 = fmul float %395, %395
  %402 = call float @llvm.fmuladd.f32(float %390, float %390, float %401)
  %403 = call float @llvm.fmuladd.f32(float %400, float %400, float %402)
  %404 = call float @sqrtf(float noundef %403) #7
  %405 = fadd float %381, %404
  %406 = load ptr, ptr %379, align 8, !tbaa !43
  %407 = icmp eq ptr %406, null
  %408 = select i1 %407, ptr %372, ptr %406
  %409 = load ptr, ptr %380, align 8, !tbaa !43
  %410 = icmp ne ptr %409, null
  %411 = fcmp olt float %405, %376
  %412 = select i1 %410, i1 %411, i1 false
  br i1 %412, label %378, label %413, !llvm.loop !63

413:                                              ; preds = %378
  %414 = select i1 %411, ptr %375, ptr %377
  %415 = select i1 %411, float %405, float %376
  %416 = load ptr, ptr %375, align 8, !tbaa !43
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %374, !llvm.loop !64

418:                                              ; preds = %413, %368
  %419 = phi ptr [ null, %368 ], [ %414, %413 ]
  %420 = icmp eq ptr %419, null
  br i1 %420, label %422, label %421

421:                                              ; preds = %418
  call void @BLI_listbase_rotate_first(ptr noundef nonnull %370, ptr noundef nonnull %419) #7
  br label %422

422:                                              ; preds = %421, %418
  br i1 %54, label %430, label %423

423:                                              ; preds = %422
  %424 = call i32 @BM_edgeloop_length_get(ptr noundef %367) #7
  %425 = call ptr @BM_edgeloop_verts_get(ptr noundef %367) #7
  %426 = srem i32 %23, %424
  %427 = add nsw i32 %426, %424
  %428 = srem i32 %427, %424
  %429 = call ptr @BLI_rfindlink(ptr noundef %425, i32 noundef %428) #7
  call void @BLI_listbase_rotate_first(ptr noundef %425, ptr noundef %429) #7
  br label %430

430:                                              ; preds = %423, %422, %366
  %431 = call ptr @BM_edgeloop_verts_get(ptr noundef %95) #7
  %432 = load ptr, ptr %431, align 8, !tbaa !34
  %433 = call ptr @BM_edgeloop_verts_get(ptr noundef %367) #7
  %434 = load ptr, ptr %433, align 8, !tbaa !34
  br i1 %21, label %450, label %435

435:                                              ; preds = %430
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #7
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull @.str.15) #7
  %436 = call ptr @BMO_slot_get(ptr noundef nonnull %3, ptr noundef nonnull @.str.16) #7
  br label %437

437:                                              ; preds = %437, %435
  %438 = phi ptr [ %434, %435 ], [ %446, %437 ]
  %439 = phi ptr [ %432, %435 ], [ %447, %437 ]
  %440 = getelementptr inbounds %struct.LinkData, ptr %439, i64 0, i32 2
  %441 = load ptr, ptr %440, align 8, !tbaa !47
  %442 = getelementptr inbounds %struct.LinkData, ptr %438, i64 0, i32 2
  %443 = load ptr, ptr %442, align 8, !tbaa !47
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %441, ptr noundef %443, ptr noundef %443, float noundef %18) #7
  %444 = getelementptr inbounds %struct.BMVert, ptr %443, i64 0, i32 2
  %445 = getelementptr inbounds %struct.BMVert, ptr %441, i64 0, i32 2
  call void @interp_v3_v3v3(ptr noundef nonnull %444, ptr noundef nonnull %445, ptr noundef nonnull %444, float noundef %18) #7
  call void @BMO_slot_map_insert(ptr noundef nonnull %3, ptr noundef %436, ptr noundef %441, ptr noundef %443) #7
  %446 = load ptr, ptr %438, align 8, !tbaa !43
  %447 = load ptr, ptr %439, align 8, !tbaa !43
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %437, !llvm.loop !65

449:                                              ; preds = %437
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %3) #7
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #7
  br label %656

450:                                              ; preds = %430, %651
  %451 = phi ptr [ %652, %651 ], [ %432, %430 ]
  %452 = phi ptr [ %653, %651 ], [ %434, %430 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %453 = load ptr, ptr %451, align 8, !tbaa !43
  br i1 %86, label %454, label %472

454:                                              ; preds = %450
  %455 = icmp eq ptr %453, null
  br i1 %455, label %456, label %462

456:                                              ; preds = %454
  %457 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %95) #7
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %462, label %459

459:                                              ; preds = %456
  %460 = call ptr @BM_edgeloop_verts_get(ptr noundef %95) #7
  %461 = load ptr, ptr %460, align 8, !tbaa !34
  br label %462

462:                                              ; preds = %459, %456, %454
  %463 = phi ptr [ %461, %459 ], [ null, %456 ], [ %453, %454 ]
  %464 = load ptr, ptr %452, align 8, !tbaa !43
  %465 = icmp eq ptr %464, null
  br i1 %465, label %466, label %477

466:                                              ; preds = %462
  %467 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %367) #7
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %477, label %469

469:                                              ; preds = %466
  %470 = call ptr @BM_edgeloop_verts_get(ptr noundef %367) #7
  %471 = load ptr, ptr %470, align 8, !tbaa !34
  br label %477

472:                                              ; preds = %450
  %473 = load ptr, ptr %452, align 8, !tbaa !43
  %474 = icmp eq ptr %453, null
  %475 = icmp eq ptr %473, null
  %476 = select i1 %474, i1 true, i1 %475
  br i1 %476, label %651, label %477

477:                                              ; preds = %472, %469, %466, %462
  %478 = phi ptr [ %453, %472 ], [ %463, %462 ], [ %463, %469 ], [ %463, %466 ]
  %479 = phi ptr [ %473, %472 ], [ %464, %462 ], [ %471, %469 ], [ null, %466 ]
  %480 = getelementptr inbounds %struct.LinkData, ptr %451, i64 0, i32 2
  %481 = load ptr, ptr %480, align 8, !tbaa !47
  %482 = getelementptr inbounds %struct.LinkData, ptr %452, i64 0, i32 2
  %483 = load ptr, ptr %482, align 8, !tbaa !47
  %484 = getelementptr inbounds %struct.LinkData, ptr %478, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !47
  %486 = getelementptr inbounds %struct.LinkData, ptr %479, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !47
  %488 = icmp eq ptr %483, %487
  %489 = call ptr @BM_edge_exists(ptr noundef %481, ptr noundef %485) #7
  %490 = getelementptr inbounds %struct.BMEdge, ptr %489, i64 0, i32 4
  %491 = load ptr, ptr %490, align 8, !tbaa !54
  %492 = icmp eq ptr %491, null
  br i1 %488, label %523, label %493

493:                                              ; preds = %477
  br i1 %492, label %502, label %494

494:                                              ; preds = %493
  %495 = getelementptr inbounds %struct.BMLoop, ptr %491, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !60
  %497 = icmp eq ptr %496, %481
  %498 = getelementptr inbounds %struct.BMLoop, ptr %491, i64 0, i32 6
  %499 = load ptr, ptr %498, align 8, !tbaa !66
  %500 = select i1 %497, ptr %491, ptr %499
  %501 = select i1 %497, ptr %499, ptr %491
  br label %505

502:                                              ; preds = %493
  %503 = call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %481, i32 noundef 0) #7
  %504 = call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %485, i32 noundef 0) #7
  br label %505

505:                                              ; preds = %494, %502
  %506 = phi ptr [ %503, %502 ], [ %500, %494 ]
  %507 = phi ptr [ %504, %502 ], [ %501, %494 ]
  %508 = call ptr @BM_edge_exists(ptr noundef %483, ptr noundef %487) #7
  %509 = getelementptr inbounds %struct.BMEdge, ptr %508, i64 0, i32 4
  %510 = load ptr, ptr %509, align 8, !tbaa !54
  %511 = icmp eq ptr %510, null
  br i1 %511, label %520, label %512

512:                                              ; preds = %505
  %513 = getelementptr inbounds %struct.BMLoop, ptr %510, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !60
  %515 = icmp eq ptr %514, %483
  %516 = getelementptr inbounds %struct.BMLoop, ptr %510, i64 0, i32 6
  %517 = load ptr, ptr %516, align 8, !tbaa !66
  %518 = select i1 %515, ptr %510, ptr %517
  %519 = select i1 %515, ptr %517, ptr %510
  br label %539

520:                                              ; preds = %505
  %521 = call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %483, i32 noundef 0) #7
  %522 = call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %487, i32 noundef 0) #7
  br label %539

523:                                              ; preds = %477
  br i1 %492, label %532, label %524

524:                                              ; preds = %523
  %525 = getelementptr inbounds %struct.BMLoop, ptr %491, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !60
  %527 = icmp eq ptr %526, %481
  %528 = getelementptr inbounds %struct.BMLoop, ptr %491, i64 0, i32 6
  %529 = load ptr, ptr %528, align 8, !tbaa !66
  %530 = select i1 %527, ptr %491, ptr %529
  %531 = select i1 %527, ptr %529, ptr %491
  br label %535

532:                                              ; preds = %523
  %533 = call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %481, i32 noundef 0) #7
  %534 = call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %485, i32 noundef 0) #7
  br label %535

535:                                              ; preds = %524, %532
  %536 = phi ptr [ %533, %532 ], [ %530, %524 ]
  %537 = phi ptr [ %534, %532 ], [ %531, %524 ]
  %538 = call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %483, i32 noundef 0) #7
  br label %539

539:                                              ; preds = %512, %520, %535
  %540 = phi ptr [ %536, %535 ], [ %506, %520 ], [ %506, %512 ]
  %541 = phi ptr [ %538, %535 ], [ %521, %520 ], [ %518, %512 ]
  %542 = phi ptr [ %537, %535 ], [ %507, %520 ], [ %507, %512 ]
  %543 = phi ptr [ %538, %535 ], [ %522, %520 ], [ %519, %512 ]
  %544 = icmp ne ptr %540, null
  %545 = icmp eq ptr %542, null
  %546 = select i1 %544, i1 %545, i1 false
  %547 = select i1 %546, ptr %540, ptr %542
  %548 = icmp ne ptr %547, null
  %549 = icmp eq ptr %540, null
  %550 = and i1 %549, %548
  %551 = select i1 %550, ptr %547, ptr %540
  %552 = icmp ne ptr %541, null
  %553 = icmp eq ptr %543, null
  %554 = select i1 %552, i1 %553, i1 false
  %555 = select i1 %554, ptr %541, ptr %543
  %556 = icmp ne ptr %555, null
  %557 = icmp eq ptr %541, null
  %558 = select i1 %556, i1 %557, i1 false
  %559 = select i1 %558, ptr %555, ptr %541
  %560 = icmp eq ptr %551, null
  br i1 %560, label %561, label %563

561:                                              ; preds = %539
  %562 = icmp eq ptr %559, null
  br i1 %562, label %567, label %563

563:                                              ; preds = %561, %539
  %564 = phi ptr [ %551, %539 ], [ %559, %561 ]
  %565 = getelementptr inbounds %struct.BMLoop, ptr %564, i64 0, i32 3
  %566 = load ptr, ptr %565, align 8, !tbaa !67
  br label %567

567:                                              ; preds = %563, %561
  %568 = phi ptr [ null, %561 ], [ %566, %563 ]
  br i1 %488, label %593, label %569

569:                                              ; preds = %567
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  store ptr %481, ptr %7, align 16, !tbaa !39
  store ptr %483, ptr %55, align 8, !tbaa !39
  store ptr %487, ptr %56, align 16, !tbaa !39
  store ptr %485, ptr %57, align 8, !tbaa !39
  %570 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull %6) #7
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %572, label %592

572:                                              ; preds = %569
  %573 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #7
  store ptr %573, ptr %6, align 8, !tbaa !39
  %574 = getelementptr inbounds %struct.BMFace, ptr %573, i64 0, i32 2
  %575 = load ptr, ptr %574, align 8, !tbaa !68
  %576 = icmp eq ptr %559, null
  br i1 %576, label %578, label %577

577:                                              ; preds = %572
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %559, ptr noundef %575) #7
  br label %578

578:                                              ; preds = %577, %572
  %579 = getelementptr inbounds %struct.BMLoop, ptr %575, i64 0, i32 6
  %580 = load ptr, ptr %579, align 8, !tbaa !66
  %581 = icmp eq ptr %555, null
  br i1 %581, label %583, label %582

582:                                              ; preds = %578
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %555, ptr noundef %580) #7
  br label %583

583:                                              ; preds = %582, %578
  %584 = getelementptr inbounds %struct.BMLoop, ptr %580, i64 0, i32 6
  %585 = load ptr, ptr %584, align 8, !tbaa !66
  %586 = icmp eq ptr %547, null
  br i1 %586, label %588, label %587

587:                                              ; preds = %583
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %547, ptr noundef %585) #7
  br label %588

588:                                              ; preds = %587, %583
  br i1 %560, label %592, label %589

589:                                              ; preds = %588
  %590 = getelementptr inbounds %struct.BMLoop, ptr %585, i64 0, i32 6
  %591 = load ptr, ptr %590, align 8, !tbaa !66
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %551, ptr noundef %591) #7
  br label %592

592:                                              ; preds = %589, %588, %569
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  br label %612

593:                                              ; preds = %567
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  store ptr %481, ptr %8, align 16, !tbaa !39
  store ptr %483, ptr %58, align 8, !tbaa !39
  store ptr %485, ptr %59, align 16, !tbaa !39
  %594 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull %6) #7
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %596, label %611

596:                                              ; preds = %593
  %597 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 3, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #7
  store ptr %597, ptr %6, align 8, !tbaa !39
  %598 = getelementptr inbounds %struct.BMFace, ptr %597, i64 0, i32 2
  %599 = load ptr, ptr %598, align 8, !tbaa !68
  %600 = icmp eq ptr %559, null
  br i1 %600, label %602, label %601

601:                                              ; preds = %596
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %559, ptr noundef %599) #7
  br label %602

602:                                              ; preds = %601, %596
  %603 = getelementptr inbounds %struct.BMLoop, ptr %599, i64 0, i32 6
  %604 = load ptr, ptr %603, align 8, !tbaa !66
  %605 = icmp eq ptr %547, null
  br i1 %605, label %607, label %606

606:                                              ; preds = %602
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %547, ptr noundef %604) #7
  br label %607

607:                                              ; preds = %606, %602
  br i1 %560, label %611, label %608

608:                                              ; preds = %607
  %609 = getelementptr inbounds %struct.BMLoop, ptr %604, i64 0, i32 6
  %610 = load ptr, ptr %609, align 8, !tbaa !66
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %551, ptr noundef %610) #7
  br label %611

611:                                              ; preds = %608, %607, %593
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  br label %612

612:                                              ; preds = %611, %592
  %613 = icmp eq ptr %568, null
  br i1 %613, label %618, label %614

614:                                              ; preds = %612
  %615 = load ptr, ptr %6, align 8, !tbaa !39
  %616 = icmp eq ptr %568, %615
  br i1 %616, label %618, label %617

617:                                              ; preds = %614
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %568, ptr noundef %615) #7
  br label %618

618:                                              ; preds = %617, %614, %612
  %619 = load ptr, ptr %6, align 8, !tbaa !39
  %620 = getelementptr inbounds %struct.BMFace, ptr %619, i64 0, i32 1
  %621 = load ptr, ptr %620, align 8, !tbaa !70
  %622 = load i32, ptr %60, align 8, !tbaa !71
  %623 = sext i32 %622 to i64
  %624 = getelementptr %struct.BMFlagLayer, ptr %621, i64 %623
  %625 = getelementptr %struct.BMFlagLayer, ptr %624, i64 -1
  %626 = load i16, ptr %625, align 2, !tbaa !72
  %627 = or i16 %626, 16
  store i16 %627, ptr %625, align 2, !tbaa !72
  %628 = getelementptr inbounds %struct.BMHeader, ptr %619, i64 0, i32 3
  %629 = load i8, ptr %628, align 1, !tbaa !74
  %630 = or i8 %629, 16
  store i8 %630, ptr %628, align 1, !tbaa !74
  %631 = getelementptr inbounds %struct.BMFace, ptr %619, i64 0, i32 2
  %632 = load ptr, ptr %631, align 8, !tbaa !68
  br label %633

633:                                              ; preds = %633, %618
  %634 = phi ptr [ %632, %618 ], [ %644, %633 ]
  %635 = getelementptr inbounds %struct.BMLoop, ptr %634, i64 0, i32 2
  %636 = load ptr, ptr %635, align 8, !tbaa !75
  %637 = getelementptr inbounds %struct.BMEdge, ptr %636, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !76
  %639 = getelementptr %struct.BMFlagLayer, ptr %638, i64 %623
  %640 = getelementptr %struct.BMFlagLayer, ptr %639, i64 -1
  %641 = load i16, ptr %640, align 2, !tbaa !72
  %642 = or i16 %641, 8
  store i16 %642, ptr %640, align 2, !tbaa !72
  %643 = getelementptr inbounds %struct.BMLoop, ptr %634, i64 0, i32 6
  %644 = load ptr, ptr %643, align 8, !tbaa !66
  %645 = icmp eq ptr %644, %632
  br i1 %645, label %646, label %633, !llvm.loop !77

646:                                              ; preds = %633
  %647 = icmp eq ptr %478, %432
  %648 = select i1 %647, ptr %451, ptr %478
  %649 = select i1 %647, ptr %452, ptr %479
  %650 = select i1 %647, i32 9, i32 0
  br label %651

651:                                              ; preds = %646, %472
  %652 = phi ptr [ %451, %472 ], [ %648, %646 ]
  %653 = phi ptr [ %452, %472 ], [ %649, %646 ]
  %654 = phi i32 [ 9, %472 ], [ %650, %646 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %450, label %656

656:                                              ; preds = %651, %449
  br i1 %96, label %753, label %657

657:                                              ; preds = %656
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  store ptr %95, ptr %9, align 16, !tbaa !39
  store ptr %367, ptr %61, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %10) #7
  %658 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 16, i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #7
  %659 = call ptr @BMO_iter_new(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull @.str.12, i8 noundef zeroext 8) #7
  %660 = icmp eq ptr %659, null
  br i1 %660, label %665, label %661

661:                                              ; preds = %657, %661
  %662 = phi ptr [ %663, %661 ], [ %659, %657 ]
  call void @BM_face_normal_update(ptr noundef nonnull %662) #7
  %663 = call ptr @BMO_iter_step(ptr noundef nonnull %11) #7
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %661, !llvm.loop !78

665:                                              ; preds = %661, %657
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #7
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %10) #7
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %62, ptr noundef nonnull @.str.9, i8 noundef zeroext 8, i16 noundef signext 16) #7
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef nonnull %62, ptr noundef nonnull @.str.9, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %10) #7
  br label %666

666:                                              ; preds = %665, %686
  %667 = phi i64 [ 0, %665 ], [ %687, %686 ]
  %668 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 %667
  %669 = load ptr, ptr %668, align 8, !tbaa !39
  %670 = call ptr @BM_edgeloop_verts_get(ptr noundef %669) #7
  %671 = load ptr, ptr %670, align 8, !tbaa !39
  %672 = icmp eq ptr %671, null
  br i1 %672, label %686, label %673

673:                                              ; preds = %666
  %674 = icmp eq i64 %667, 0
  %675 = select i1 %674, i8 0, i8 16
  br label %676

676:                                              ; preds = %673, %676
  %677 = phi ptr [ %671, %673 ], [ %684, %676 ]
  %678 = getelementptr inbounds %struct.LinkData, ptr %677, i64 0, i32 2
  %679 = load ptr, ptr %678, align 8, !tbaa !47
  %680 = getelementptr inbounds %struct.BMHeader, ptr %679, i64 0, i32 3
  %681 = load i8, ptr %680, align 1, !tbaa !74
  %682 = and i8 %681, -17
  %683 = or disjoint i8 %682, %675
  store i8 %683, ptr %680, align 1, !tbaa !74
  %684 = load ptr, ptr %677, align 8, !tbaa !39
  %685 = icmp eq ptr %684, null
  br i1 %685, label %686, label %676, !llvm.loop !79

686:                                              ; preds = %676, %666
  %687 = add nuw nsw i64 %667, 1
  %688 = icmp eq i64 %667, 0
  br i1 %688, label %666, label %689, !llvm.loop !80

689:                                              ; preds = %686
  %690 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef 16, i32 noundef 1, i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #7
  %691 = call ptr @BMO_iter_new(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull @.str.12, i8 noundef zeroext 8) #7
  %692 = icmp eq ptr %691, null
  br i1 %692, label %721, label %693

693:                                              ; preds = %689, %718
  %694 = phi ptr [ %719, %718 ], [ %691, %689 ]
  %695 = getelementptr inbounds %struct.BMFace, ptr %694, i64 0, i32 1
  %696 = load ptr, ptr %695, align 8, !tbaa !70
  %697 = load i32, ptr %63, align 8, !tbaa !71
  %698 = sext i32 %697 to i64
  %699 = getelementptr %struct.BMFlagLayer, ptr %696, i64 %698
  %700 = getelementptr %struct.BMFlagLayer, ptr %699, i64 -1
  %701 = load i16, ptr %700, align 2, !tbaa !72
  %702 = or i16 %701, 16
  store i16 %702, ptr %700, align 2, !tbaa !72
  %703 = getelementptr inbounds %struct.BMFace, ptr %694, i64 0, i32 2
  %704 = load ptr, ptr %703, align 8, !tbaa !68
  br label %705

705:                                              ; preds = %705, %693
  %706 = phi ptr [ %704, %693 ], [ %716, %705 ]
  %707 = getelementptr inbounds %struct.BMLoop, ptr %706, i64 0, i32 2
  %708 = load ptr, ptr %707, align 8, !tbaa !75
  %709 = getelementptr inbounds %struct.BMEdge, ptr %708, i64 0, i32 1
  %710 = load ptr, ptr %709, align 8, !tbaa !76
  %711 = getelementptr %struct.BMFlagLayer, ptr %710, i64 %698
  %712 = getelementptr %struct.BMFlagLayer, ptr %711, i64 -1
  %713 = load i16, ptr %712, align 2, !tbaa !72
  %714 = or i16 %713, 8
  store i16 %714, ptr %712, align 2, !tbaa !72
  %715 = getelementptr inbounds %struct.BMLoop, ptr %706, i64 0, i32 6
  %716 = load ptr, ptr %715, align 8, !tbaa !66
  %717 = icmp eq ptr %716, %704
  br i1 %717, label %718, label %705, !llvm.loop !77

718:                                              ; preds = %705
  %719 = call ptr @BMO_iter_step(ptr noundef nonnull %12) #7
  %720 = icmp eq ptr %719, null
  br i1 %720, label %721, label %693, !llvm.loop !81

721:                                              ; preds = %718, %689
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #7
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #7
  %722 = call ptr @BMO_iter_new(ptr noundef nonnull %13, ptr noundef nonnull %62, ptr noundef nonnull @.str.14, i8 noundef zeroext 8) #7
  %723 = icmp eq ptr %722, null
  br i1 %723, label %752, label %724

724:                                              ; preds = %721, %749
  %725 = phi ptr [ %750, %749 ], [ %722, %721 ]
  %726 = getelementptr inbounds %struct.BMFace, ptr %725, i64 0, i32 1
  %727 = load ptr, ptr %726, align 8, !tbaa !70
  %728 = load i32, ptr %64, align 8, !tbaa !71
  %729 = sext i32 %728 to i64
  %730 = getelementptr %struct.BMFlagLayer, ptr %727, i64 %729
  %731 = getelementptr %struct.BMFlagLayer, ptr %730, i64 -1
  %732 = load i16, ptr %731, align 2, !tbaa !72
  %733 = or i16 %732, 16
  store i16 %733, ptr %731, align 2, !tbaa !72
  %734 = getelementptr inbounds %struct.BMFace, ptr %725, i64 0, i32 2
  %735 = load ptr, ptr %734, align 8, !tbaa !68
  br label %736

736:                                              ; preds = %736, %724
  %737 = phi ptr [ %735, %724 ], [ %747, %736 ]
  %738 = getelementptr inbounds %struct.BMLoop, ptr %737, i64 0, i32 2
  %739 = load ptr, ptr %738, align 8, !tbaa !75
  %740 = getelementptr inbounds %struct.BMEdge, ptr %739, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !76
  %742 = getelementptr %struct.BMFlagLayer, ptr %741, i64 %729
  %743 = getelementptr %struct.BMFlagLayer, ptr %742, i64 -1
  %744 = load i16, ptr %743, align 2, !tbaa !72
  %745 = or i16 %744, 8
  store i16 %745, ptr %743, align 2, !tbaa !72
  %746 = getelementptr inbounds %struct.BMLoop, ptr %737, i64 0, i32 6
  %747 = load ptr, ptr %746, align 8, !tbaa !66
  %748 = icmp eq ptr %747, %735
  br i1 %748, label %749, label %736, !llvm.loop !77

749:                                              ; preds = %736
  %750 = call ptr @BMO_iter_step(ptr noundef nonnull %13) #7
  %751 = icmp eq ptr %750, null
  br i1 %751, label %752, label %724, !llvm.loop !82

752:                                              ; preds = %749, %721
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #7
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  br label %753

753:                                              ; preds = %752, %656
  br i1 %21, label %754, label %798

754:                                              ; preds = %753
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #7
  store ptr %95, ptr %14, align 16, !tbaa !39
  store ptr %367, ptr %65, align 8, !tbaa !39
  br label %755

755:                                              ; preds = %754, %794
  %756 = phi i64 [ 0, %754 ], [ %795, %794 ]
  %757 = getelementptr inbounds [2 x ptr], ptr %14, i64 0, i64 %756
  %758 = load ptr, ptr %757, align 8, !tbaa !39
  %759 = call ptr @BM_edgeloop_verts_get(ptr noundef %758) #7
  %760 = load ptr, ptr %759, align 8, !tbaa !39
  %761 = icmp eq ptr %760, null
  br i1 %761, label %794, label %762

762:                                              ; preds = %755, %791
  %763 = phi ptr [ %792, %791 ], [ %760, %755 ]
  %764 = load ptr, ptr %763, align 8, !tbaa !43
  %765 = icmp eq ptr %764, null
  br i1 %765, label %766, label %772

766:                                              ; preds = %762
  %767 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %758) #7
  %768 = icmp eq i8 %767, 0
  br i1 %768, label %772, label %769

769:                                              ; preds = %766
  %770 = call ptr @BM_edgeloop_verts_get(ptr noundef %758) #7
  %771 = load ptr, ptr %770, align 8, !tbaa !34
  br label %772

772:                                              ; preds = %769, %766, %762
  %773 = phi ptr [ %771, %769 ], [ null, %766 ], [ %764, %762 ]
  %774 = icmp eq ptr %773, null
  br i1 %774, label %791, label %775

775:                                              ; preds = %772
  %776 = getelementptr inbounds %struct.LinkData, ptr %763, i64 0, i32 2
  %777 = load ptr, ptr %776, align 8, !tbaa !47
  %778 = getelementptr inbounds %struct.LinkData, ptr %773, i64 0, i32 2
  %779 = load ptr, ptr %778, align 8, !tbaa !47
  %780 = icmp eq ptr %777, %779
  br i1 %780, label %791, label %781

781:                                              ; preds = %775
  %782 = call ptr @BM_edge_exists(ptr noundef %777, ptr noundef %779) #7
  %783 = getelementptr inbounds %struct.BMEdge, ptr %782, i64 0, i32 1
  %784 = load ptr, ptr %783, align 8, !tbaa !76
  %785 = load i32, ptr %66, align 8, !tbaa !71
  %786 = sext i32 %785 to i64
  %787 = getelementptr %struct.BMFlagLayer, ptr %784, i64 %786
  %788 = getelementptr %struct.BMFlagLayer, ptr %787, i64 -1
  %789 = load i16, ptr %788, align 2, !tbaa !72
  %790 = and i16 %789, -9
  store i16 %790, ptr %788, align 2, !tbaa !72
  br label %791

791:                                              ; preds = %781, %775, %772
  %792 = load ptr, ptr %763, align 8, !tbaa !39
  %793 = icmp eq ptr %792, null
  br i1 %793, label %794, label %762, !llvm.loop !83

794:                                              ; preds = %791, %755
  %795 = add nuw nsw i64 %756, 1
  %796 = icmp eq i64 %756, 0
  br i1 %796, label %755, label %797, !llvm.loop !84

797:                                              ; preds = %794
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #7
  br label %798

798:                                              ; preds = %797, %753
  br i1 %363, label %799, label %800

799:                                              ; preds = %798
  call void @BM_edgeloop_free(ptr noundef %367) #7
  br label %800

800:                                              ; preds = %798, %799
  br i1 %27, label %803, label %801

801:                                              ; preds = %800
  %802 = load ptr, ptr %70, align 8, !tbaa !43
  br label %803

803:                                              ; preds = %800, %801, %75
  %804 = phi i8 [ %68, %75 ], [ 1, %801 ], [ 1, %800 ]
  %805 = phi ptr [ %70, %75 ], [ %802, %801 ], [ %70, %800 ]
  %806 = phi i1 [ false, %75 ], [ true, %801 ], [ true, %800 ]
  br i1 %806, label %67, label %807, !llvm.loop !85

807:                                              ; preds = %67, %803
  %808 = phi i8 [ %804, %803 ], [ %68, %67 ]
  %809 = icmp ne i8 %808, 0
  %810 = select i1 %809, i1 %21, i1 false
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %15) #7
  br i1 %810, label %811, label %816

811:                                              ; preds = %807
  %812 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %812, ptr noundef nonnull @.str.9, i8 noundef zeroext 8, i16 noundef signext 16) #7
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %812, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, i16 noundef signext 8) #7
  br label %816

813:                                              ; preds = %26, %2
  %814 = phi ptr [ @.str.6, %2 ], [ @.str.7, %26 ]
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull %814) #7
  br label %815

815:                                              ; preds = %813, %42
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %15) #7
  br label %816

816:                                              ; preds = %815, %811, %807
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare i32 @BM_mesh_edgeloops_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_edge_test_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !71
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %4, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !72
  %11 = trunc i16 %10 to i8
  %12 = and i8 %11, 4
  ret i8 %12
}

declare void @BM_mesh_edgeloops_calc_center(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BM_edgeloop_length_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BM_mesh_edgeloops_calc_normal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_mesh_edgeloops_calc_order(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_mesh_edgeloops_free(ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare zeroext i8 @BM_edgeloop_is_closed(ptr noundef) local_unnamed_addr #3

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BM_edgeloop_center_get(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_edgeloop_calc_normal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_edgeloop_verts_get(ptr noundef) local_unnamed_addr #3

declare void @BM_edgeloop_flip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_edgeloop_normal_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_edgeloop_copy(ptr noundef) local_unnamed_addr #3

declare void @BM_edgeloop_expand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_rfindlink(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_listbase_rotate_first(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #3

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_edgeloop_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_data_interp_from_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!36, !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !36, i64 0}
!44 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !37, i64 0}
!47 = !{!44, !36, i64 16}
!48 = !{!35, !36, i64 8}
!49 = !{!50, !51, i64 12}
!50 = !{!"BMesh", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !51, i64 88, !51, i64 92, !51, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !51, i64 128, !36, i64 136, !52, i64 144, !52, i64 344, !52, i64 544, !52, i64 744, !53, i64 944, !51, i64 948, !51, i64 952, !51, i64 956, !35, i64 960, !36, i64 976, !35, i64 984, !36, i64 1000}
!51 = !{!"int", !37, i64 0}
!52 = !{!"CustomData", !36, i64 0, !37, i64 8, !51, i64 172, !51, i64 176, !51, i64 180, !36, i64 184, !36, i64 192}
!53 = !{!"short", !37, i64 0}
!54 = !{!55, !36, i64 40}
!55 = !{!"BMEdge", !56, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !57, i64 48, !57, i64 64}
!56 = !{!"BMHeader", !36, i64 0, !51, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!57 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!58 = !{!59, !36, i64 40}
!59 = !{!"BMLoop", !56, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!60 = !{!59, !36, i64 16}
!61 = distinct !{!61, !41, !42}
!62 = distinct !{!62, !41, !42}
!63 = distinct !{!63, !41, !42}
!64 = distinct !{!64, !41, !42}
!65 = distinct !{!65, !41, !42}
!66 = !{!59, !36, i64 56}
!67 = !{!59, !36, i64 32}
!68 = !{!69, !36, i64 24}
!69 = !{!"BMFace", !56, i64 0, !36, i64 16, !36, i64 24, !51, i64 32, !37, i64 36, !53, i64 48}
!70 = !{!69, !36, i64 16}
!71 = !{!50, !51, i64 128}
!72 = !{!73, !53, i64 0}
!73 = !{!"BMFlagLayer", !53, i64 0}
!74 = !{!56, !37, i64 13}
!75 = !{!59, !36, i64 24}
!76 = !{!55, !36, i64 16}
!77 = distinct !{!77, !41, !42}
!78 = distinct !{!78, !41, !42}
!79 = distinct !{!79, !41, !42}
!80 = distinct !{!80, !41, !42}
!81 = distinct !{!81, !41, !42}
!82 = distinct !{!82, !41, !42}
!83 = distinct !{!83, !41, !42}
!84 = distinct !{!84, !41, !42}
!85 = distinct !{!85, !41, !42}
