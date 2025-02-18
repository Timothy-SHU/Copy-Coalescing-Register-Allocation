; ModuleID = 'blender/source/blender/bmesh/operators/bmo_inset.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_inset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.InterpFace = type { ptr, ptr, ptr, ptr, [3 x [3 x float]] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.SplitEdgeInfo = type { [3 x float], float, ptr, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }

@.str = private unnamed_addr constant [10 x i8] c"thickness\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"use_even_offset\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"use_relative_offset\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"use_interpolate\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@__func__.bmo_inset_individual_exec = private unnamed_addr constant [26 x i8] c"bmo_inset_individual_exec\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"use_outset\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"use_boundary\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"use_edge_rail\00", align 1
@__func__.bmo_inset_region_exec = private unnamed_addr constant [22 x i8] c"bmo_inset_region_exec\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"faces_exclude\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @bmo_inset_individual_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  %4 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #6
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.bmo_inset_individual_exec) #6
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  %14 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %19
  %17 = phi ptr [ %20, %19 ], [ %14, %12 ]
  call fastcc void @bmo_face_inset_individual(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %13, float noundef %4, float noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8)
  br i1 %9, label %19, label %18

18:                                               ; preds = %16
  call void @BLI_memarena_clear(ptr noundef %13) #6
  br label %19

19:                                               ; preds = %16, %18
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !34

22:                                               ; preds = %19, %12
  %23 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #6
  br i1 %9, label %25, label %24

24:                                               ; preds = %22
  call void @BLI_memarena_free(ptr noundef %13) #6
  br label %25

25:                                               ; preds = %24, %22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bmo_face_inset_individual(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !37
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = alloca i8, i64 %12, align 16
  %14 = mul nsw i64 %11, 12
  %15 = alloca i8, i64 %14, align 16
  %16 = alloca i8, i64 %14, align 16
  %17 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %30, %8
  %20 = phi i32 [ 0, %8 ], [ %37, %30 ]
  %21 = phi ptr [ %18, %8 ], [ %39, %30 ]
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = call ptr @BM_face_loop_separate(ptr noundef %0, ptr noundef %21) #6
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load ptr, ptr %22, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  %29 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %28, ptr noundef %27, i32 noundef 0) #6
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi ptr [ %29, %26 ], [ %23, %19 ]
  %32 = zext i32 %20 to i64
  %33 = getelementptr inbounds ptr, ptr %13, i64 %32
  store ptr %31, ptr %33, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds [3 x float], ptr %15, i64 %32
  call void @BM_edge_calc_face_tangent(ptr noundef %35, ptr noundef %21, ptr noundef nonnull %36) #6
  %37 = add i32 %20, 1
  %38 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = icmp eq ptr %39, %18
  br i1 %40, label %41, label %19, !llvm.loop !51

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %43 = icmp eq i8 %7, 0
  br label %44

44:                                               ; preds = %41, %86
  %45 = phi i32 [ %50, %86 ], [ 0, %41 ]
  %46 = phi ptr [ %87, %86 ], [ %18, %41 ]
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = add i32 %45, 1
  %51 = load i32, ptr %9, align 8, !tbaa !37
  %52 = urem i32 %50, %51
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %13, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %49, ptr noundef %55, ptr noundef %57, i32 noundef 2) #6
  %59 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !50
  %61 = getelementptr inbounds %struct.BMLoop, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %49, ptr noundef %55, ptr noundef %62, ptr noundef %64, ptr noundef %1, i32 noundef 0) #6
  %66 = getelementptr inbounds %struct.BMFace, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = load i32, ptr %42, align 8, !tbaa !53
  %69 = sext i32 %68 to i64
  %70 = getelementptr %struct.BMFlagLayer, ptr %67, i64 %69
  %71 = getelementptr %struct.BMFlagLayer, ptr %70, i64 -1
  %72 = load i16, ptr %71, align 2, !tbaa !57
  %73 = or i16 %72, 1
  store i16 %73, ptr %71, align 2, !tbaa !57
  %74 = getelementptr inbounds %struct.BMLoop, ptr %46, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !59
  %76 = load ptr, ptr %59, align 8, !tbaa !50
  %77 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !60
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %76, ptr noundef %78) #6
  %79 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.BMLoop, ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %46, ptr noundef %82) #6
  br i1 %43, label %83, label %86

83:                                               ; preds = %44
  %84 = load ptr, ptr %59, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %84, ptr noundef %75) #6
  %85 = load ptr, ptr %79, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %46, ptr noundef %85) #6
  br label %86

86:                                               ; preds = %83, %44
  %87 = load ptr, ptr %59, align 8, !tbaa !50
  %88 = icmp eq ptr %87, %18
  br i1 %88, label %89, label %44, !llvm.loop !61

89:                                               ; preds = %86
  br i1 %43, label %92, label %90

90:                                               ; preds = %89
  %91 = call ptr @BLI_memarena_alloc(ptr noundef %2, i64 noundef 72) #6
  call fastcc void @bm_interp_face_store(ptr noundef %91, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi ptr [ %91, %90 ], [ null, %89 ]
  %94 = fcmp une float %4, 0.000000e+00
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !60
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !49
  %100 = call float @BM_edge_calc_length(ptr noundef %99) #6
  br label %101

101:                                              ; preds = %95, %92
  %102 = phi float [ %100, %95 ], [ undef, %92 ]
  %103 = icmp eq i8 %5, 0
  %104 = icmp eq i8 %6, 0
  %105 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  %106 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 1
  %107 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4, i64 2
  br label %108

108:                                              ; preds = %245, %101
  %109 = phi float [ %102, %101 ], [ %249, %245 ]
  %110 = phi i32 [ 0, %101 ], [ %253, %245 ]
  %111 = phi ptr [ %18, %101 ], [ %255, %245 ]
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, ptr %9, align 8, !tbaa !37
  br label %115

115:                                              ; preds = %108, %113
  %116 = phi i32 [ %114, %113 ], [ %110, %108 ]
  %117 = add i32 %116, -1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [3 x float], ptr %15, i64 %118
  %120 = zext i32 %110 to i64
  %121 = getelementptr inbounds [3 x float], ptr %15, i64 %120
  %122 = load float, ptr %119, align 4, !tbaa !62
  %123 = load float, ptr %121, align 4, !tbaa !62
  %124 = fadd float %122, %123
  %125 = getelementptr inbounds float, ptr %119, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !62
  %127 = getelementptr inbounds float, ptr %121, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !62
  %129 = fadd float %126, %128
  %130 = getelementptr inbounds float, ptr %119, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !62
  %132 = getelementptr inbounds float, ptr %121, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !62
  %134 = fadd float %131, %133
  %135 = fmul float %129, %129
  %136 = call float @llvm.fmuladd.f32(float %124, float %124, float %135)
  %137 = call float @llvm.fmuladd.f32(float %134, float %134, float %136)
  %138 = fcmp ogt float %137, 0x38AA95A5C0000000
  br i1 %138, label %139, label %145

139:                                              ; preds = %115
  %140 = call float @sqrtf(float noundef %137) #6
  %141 = fdiv float 1.000000e+00, %140
  %142 = fmul float %124, %141
  %143 = fmul float %129, %141
  %144 = fmul float %134, %141
  br label %145

145:                                              ; preds = %115, %139
  %146 = phi float [ %143, %139 ], [ 0.000000e+00, %115 ]
  %147 = phi float [ %142, %139 ], [ 0.000000e+00, %115 ]
  %148 = phi float [ %144, %139 ], [ 0.000000e+00, %115 ]
  %149 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !46
  %151 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 2
  %152 = load float, ptr %151, align 4, !tbaa !62
  %153 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 2, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !62
  %155 = getelementptr inbounds %struct.BMVert, ptr %150, i64 0, i32 2, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !62
  br i1 %103, label %199, label %157

157:                                              ; preds = %145
  %158 = load float, ptr %119, align 4, !tbaa !62
  %159 = load float, ptr %121, align 4, !tbaa !62
  %160 = fadd float %158, %159
  %161 = load float, ptr %125, align 4, !tbaa !62
  %162 = load float, ptr %127, align 4, !tbaa !62
  %163 = fadd float %161, %162
  %164 = load float, ptr %130, align 4, !tbaa !62
  %165 = load float, ptr %132, align 4, !tbaa !62
  %166 = fadd float %164, %165
  %167 = fmul float %163, %163
  %168 = call float @llvm.fmuladd.f32(float %160, float %160, float %167)
  %169 = call float @llvm.fmuladd.f32(float %166, float %166, float %168)
  %170 = fcmp ogt float %169, 0x38AA95A5C0000000
  br i1 %170, label %171, label %178

171:                                              ; preds = %157
  %172 = call float @sqrtf(float noundef %169) #6
  %173 = fdiv float 1.000000e+00, %172
  %174 = fmul float %160, %173
  %175 = fmul float %163, %173
  %176 = fmul float %166, %173
  %177 = fcmp une float %172, 0.000000e+00
  br label %178

178:                                              ; preds = %171, %157
  %179 = phi float [ %175, %171 ], [ 0.000000e+00, %157 ]
  %180 = phi float [ %174, %171 ], [ 0.000000e+00, %157 ]
  %181 = phi float [ %176, %171 ], [ 0.000000e+00, %157 ]
  %182 = phi i1 [ %177, %171 ], [ false, %157 ]
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load float, ptr %119, align 4, !tbaa !62
  %185 = load float, ptr %125, align 4, !tbaa !62
  %186 = fmul float %179, %185
  %187 = call float @llvm.fmuladd.f32(float %184, float %180, float %186)
  %188 = load float, ptr %130, align 4, !tbaa !62
  %189 = call float @llvm.fmuladd.f32(float %188, float %181, float %187)
  %190 = call float @llvm.fabs.f32(float %189)
  br label %191

191:                                              ; preds = %178, %183
  %192 = phi float [ %190, %183 ], [ 0.000000e+00, %178 ]
  %193 = fcmp olt float %192, 0x3E45798EE0000000
  %194 = fdiv float 1.000000e+00, %192
  %195 = select i1 %193, float 1.000000e+00, float %194
  %196 = fmul float %147, %195
  %197 = fmul float %146, %195
  %198 = fmul float %148, %195
  br label %199

199:                                              ; preds = %191, %145
  %200 = phi float [ %148, %145 ], [ %198, %191 ]
  %201 = phi float [ %146, %145 ], [ %197, %191 ]
  %202 = phi float [ %147, %145 ], [ %196, %191 ]
  br i1 %104, label %217, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !49
  %206 = call float @BM_edge_calc_length(ptr noundef %205) #6
  %207 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 7
  %208 = load ptr, ptr %207, align 8, !tbaa !60
  %209 = getelementptr inbounds %struct.BMLoop, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !49
  %211 = call float @BM_edge_calc_length(ptr noundef %210) #6
  %212 = fadd float %206, %211
  %213 = fmul float %212, 5.000000e-01
  %214 = fmul float %202, %213
  %215 = fmul float %201, %213
  %216 = fmul float %200, %213
  br label %217

217:                                              ; preds = %203, %199
  %218 = phi float [ %200, %199 ], [ %216, %203 ]
  %219 = phi float [ %201, %199 ], [ %215, %203 ]
  %220 = phi float [ %202, %199 ], [ %214, %203 ]
  %221 = call float @llvm.fmuladd.f32(float %220, float %3, float %152)
  %222 = call float @llvm.fmuladd.f32(float %219, float %3, float %154)
  %223 = call float @llvm.fmuladd.f32(float %218, float %3, float %156)
  %224 = load ptr, ptr %149, align 8, !tbaa !46
  %225 = getelementptr inbounds %struct.BMVert, ptr %224, i64 0, i32 3
  %226 = load float, ptr %105, align 4, !tbaa !62
  store float %226, ptr %225, align 4, !tbaa !62
  %227 = load float, ptr %106, align 4, !tbaa !62
  %228 = getelementptr inbounds %struct.BMVert, ptr %224, i64 0, i32 3, i64 1
  store float %227, ptr %228, align 4, !tbaa !62
  %229 = load float, ptr %107, align 4, !tbaa !62
  %230 = getelementptr inbounds %struct.BMVert, ptr %224, i64 0, i32 3, i64 2
  store float %229, ptr %230, align 4, !tbaa !62
  br i1 %94, label %231, label %245

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !49
  %234 = call float @BM_edge_calc_length(ptr noundef %233) #6
  %235 = fadd float %109, %234
  %236 = fmul float %235, 5.000000e-01
  %237 = select i1 %104, float 1.000000e+00, float %236
  %238 = fmul float %237, %4
  %239 = load float, ptr %105, align 4, !tbaa !62
  %240 = call float @llvm.fmuladd.f32(float %239, float %238, float %221)
  %241 = load float, ptr %106, align 4, !tbaa !62
  %242 = call float @llvm.fmuladd.f32(float %241, float %238, float %222)
  %243 = load float, ptr %107, align 4, !tbaa !62
  %244 = call float @llvm.fmuladd.f32(float %243, float %238, float %223)
  br label %245

245:                                              ; preds = %231, %217
  %246 = phi float [ %244, %231 ], [ %223, %217 ]
  %247 = phi float [ %242, %231 ], [ %222, %217 ]
  %248 = phi float [ %240, %231 ], [ %221, %217 ]
  %249 = phi float [ %234, %231 ], [ %109, %217 ]
  %250 = getelementptr inbounds [3 x float], ptr %16, i64 %120
  store float %248, ptr %250, align 4, !tbaa !62
  %251 = getelementptr inbounds float, ptr %250, i64 1
  store float %247, ptr %251, align 4, !tbaa !62
  %252 = getelementptr inbounds float, ptr %250, i64 2
  store float %246, ptr %252, align 4, !tbaa !62
  %253 = add i32 %110, 1
  %254 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 6
  %255 = load ptr, ptr %254, align 8, !tbaa !50
  %256 = icmp eq ptr %255, %18
  br i1 %256, label %257, label %108, !llvm.loop !64

257:                                              ; preds = %245, %257
  %258 = phi i32 [ %272, %257 ], [ 0, %245 ]
  %259 = phi ptr [ %274, %257 ], [ %18, %245 ]
  %260 = getelementptr inbounds %struct.BMLoop, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !46
  %262 = getelementptr inbounds %struct.BMVert, ptr %261, i64 0, i32 2
  %263 = zext i32 %258 to i64
  %264 = getelementptr inbounds [3 x float], ptr %16, i64 %263
  %265 = load float, ptr %264, align 4, !tbaa !62
  store float %265, ptr %262, align 4, !tbaa !62
  %266 = getelementptr inbounds float, ptr %264, i64 1
  %267 = load float, ptr %266, align 4, !tbaa !62
  %268 = getelementptr inbounds %struct.BMVert, ptr %261, i64 0, i32 2, i64 1
  store float %267, ptr %268, align 4, !tbaa !62
  %269 = getelementptr inbounds float, ptr %264, i64 2
  %270 = load float, ptr %269, align 4, !tbaa !62
  %271 = getelementptr inbounds %struct.BMVert, ptr %261, i64 0, i32 2, i64 2
  store float %270, ptr %271, align 4, !tbaa !62
  %272 = add i32 %258, 1
  %273 = getelementptr inbounds %struct.BMLoop, ptr %259, i64 0, i32 6
  %274 = load ptr, ptr %273, align 8, !tbaa !50
  %275 = icmp eq ptr %274, %18
  br i1 %275, label %276, label %257, !llvm.loop !65

276:                                              ; preds = %257
  br i1 %43, label %316, label %277

277:                                              ; preds = %276
  %278 = load ptr, ptr %93, align 8, !tbaa !66
  %279 = getelementptr inbounds %struct.InterpFace, ptr %93, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !68
  %281 = getelementptr inbounds %struct.InterpFace, ptr %93, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !69
  %283 = getelementptr inbounds %struct.InterpFace, ptr %93, i64 0, i32 3
  %284 = load ptr, ptr %283, align 8, !tbaa !70
  %285 = getelementptr inbounds %struct.InterpFace, ptr %93, i64 0, i32 4
  call void @BM_face_interp_from_face_ex(ptr noundef %0, ptr noundef %278, ptr noundef %278, i8 noundef zeroext 1, ptr noundef %280, ptr noundef %282, ptr noundef %284, ptr noundef nonnull %285) #6
  br label %286

286:                                              ; preds = %286, %277
  %287 = phi ptr [ %18, %277 ], [ %294, %286 ]
  %288 = getelementptr inbounds %struct.BMLoop, ptr %287, i64 0, i32 4
  %289 = load ptr, ptr %288, align 8, !tbaa !59
  %290 = getelementptr inbounds %struct.BMLoop, ptr %287, i64 0, i32 6
  %291 = load ptr, ptr %290, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %291, ptr noundef %289) #6
  %292 = getelementptr inbounds %struct.BMLoop, ptr %289, i64 0, i32 6
  %293 = load ptr, ptr %292, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %287, ptr noundef %293) #6
  %294 = load ptr, ptr %290, align 8, !tbaa !50
  %295 = icmp eq ptr %294, %18
  br i1 %295, label %296, label %286, !llvm.loop !71

296:                                              ; preds = %286
  %297 = load ptr, ptr %279, align 8, !tbaa !68
  %298 = load ptr, ptr %281, align 8, !tbaa !69
  %299 = load ptr, ptr %93, align 8, !tbaa !66
  %300 = getelementptr inbounds %struct.BMFace, ptr %299, i64 0, i32 3
  %301 = load i32, ptr %300, align 8, !tbaa !37
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %316

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %305 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  br label %306

306:                                              ; preds = %306, %303
  %307 = phi i64 [ 0, %303 ], [ %310, %306 ]
  %308 = getelementptr inbounds ptr, ptr %297, i64 %307
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %304, ptr noundef %308) #6
  %309 = getelementptr inbounds ptr, ptr %298, i64 %307
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %305, ptr noundef %309) #6
  %310 = add nuw nsw i64 %307, 1
  %311 = load ptr, ptr %93, align 8, !tbaa !66
  %312 = getelementptr inbounds %struct.BMFace, ptr %311, i64 0, i32 3
  %313 = load i32, ptr %312, align 8, !tbaa !37
  %314 = sext i32 %313 to i64
  %315 = icmp slt i64 %310, %314
  br i1 %315, label %306, label %316, !llvm.loop !72

316:                                              ; preds = %306, %296, %276
  ret void
}

declare void @BLI_memarena_clear(ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_inset_region_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [4 x ptr], align 16
  %11 = alloca %struct.BMOIter, align 8
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.7) #6
  %13 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.8) #6
  %14 = icmp ne i8 %13, 0
  %15 = icmp eq i8 %12, 0
  %16 = select i1 %14, i1 %15, i1 false
  %17 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  %18 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %19 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.9) #6
  %20 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %21 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #6
  %22 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %23 = icmp ne i8 %20, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %26 = tail call zeroext i8 @CustomData_has_math(ptr noundef nonnull %25) #6
  %27 = icmp ne i8 %26, 0
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i1 [ false, %2 ], [ %27, %24 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  br i1 %23, label %30, label %39

30:                                               ; preds = %28
  %31 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.bmo_inset_region_exec) #6
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !73
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 3
  %37 = tail call ptr %32(i64 noundef %36, ptr noundef nonnull @__func__.bmo_inset_region_exec) #6
  %38 = load i32, ptr %33, align 4, !tbaa !73
  br label %39

39:                                               ; preds = %30, %28
  %40 = phi ptr [ %31, %30 ], [ null, %28 ]
  %41 = phi i32 [ %38, %30 ], [ undef, %28 ]
  %42 = phi ptr [ %37, %30 ], [ null, %28 ]
  br i1 %15, label %43, label %44

43:                                               ; preds = %39
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  br label %45

44:                                               ; preds = %39
  tail call void @BM_mesh_elem_hflag_enable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  tail call void @BMO_slot_buffer_hflag_disable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  tail call void @BMO_slot_buffer_hflag_disable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.10, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  br label %45

45:                                               ; preds = %44, %43
  %46 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %46, align 4, !tbaa !74
  %47 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !76
  %48 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !78
  store ptr %50, ptr %4, align 8, !tbaa !79
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #6
  %51 = load ptr, ptr %48, align 8, !tbaa !77
  %52 = call ptr %51(ptr noundef nonnull %4) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %146, label %54

54:                                               ; preds = %45, %141
  %55 = phi i32 [ %142, %141 ], [ 0, %45 ]
  %56 = phi ptr [ %144, %141 ], [ %52, %45 ]
  br i1 %16, label %57, label %76

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !80
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !59
  %64 = icmp eq ptr %63, %59
  %65 = zext i1 %64 to i8
  br label %66

66:                                               ; preds = %57, %61
  %67 = phi i8 [ 0, %57 ], [ %65, %61 ]
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !83
  %72 = getelementptr inbounds %struct.BMHeader, ptr %71, i64 0, i32 3
  %73 = load i8, ptr %72, align 1, !tbaa !84
  %74 = and i8 %73, 16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %110

76:                                               ; preds = %69, %66, %54
  %77 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !80
  %79 = icmp eq ptr %78, null
  br i1 %79, label %107, label %80

80:                                               ; preds = %76, %95
  %81 = phi i32 [ %96, %95 ], [ 0, %76 ]
  %82 = phi i32 [ %97, %95 ], [ 0, %76 ]
  %83 = phi ptr [ %100, %95 ], [ %78, %76 ]
  %84 = phi ptr [ %98, %95 ], [ null, %76 ]
  %85 = getelementptr inbounds %struct.BMLoop, ptr %83, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !83
  %87 = getelementptr inbounds %struct.BMHeader, ptr %86, i64 0, i32 3
  %88 = load i8, ptr %87, align 1, !tbaa !84
  %89 = and i8 %88, 16
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %80
  %92 = icmp eq i32 %81, 1
  br i1 %92, label %107, label %95

93:                                               ; preds = %80
  %94 = add nsw i32 %82, 1
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %81, %93 ], [ 1, %91 ]
  %97 = phi i32 [ %94, %93 ], [ %82, %91 ]
  %98 = phi ptr [ %84, %93 ], [ %83, %91 ]
  %99 = getelementptr inbounds %struct.BMLoop, ptr %83, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !59
  %101 = icmp eq ptr %100, %78
  br i1 %101, label %102, label %80, !llvm.loop !85

102:                                              ; preds = %95
  %103 = icmp eq i32 %96, 1
  %104 = icmp sgt i32 %97, 0
  %105 = select i1 %103, i1 %104, i1 false
  %106 = select i1 %105, ptr %98, ptr null
  br label %107

107:                                              ; preds = %91, %76, %102
  %108 = phi ptr [ %106, %102 ], [ null, %76 ], [ null, %91 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %126, label %110

110:                                              ; preds = %107, %69
  %111 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !86
  %113 = getelementptr inbounds %struct.BMHeader, ptr %112, i64 0, i32 3
  %114 = load i8, ptr %113, align 1, !tbaa !84
  %115 = or i8 %114, 16
  store i8 %115, ptr %113, align 1, !tbaa !84
  %116 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !87
  %118 = getelementptr inbounds %struct.BMHeader, ptr %117, i64 0, i32 3
  %119 = load i8, ptr %118, align 1, !tbaa !84
  %120 = or i8 %119, 16
  store i8 %120, ptr %118, align 1, !tbaa !84
  %121 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %122 = load i8, ptr %121, align 1, !tbaa !84
  %123 = or i8 %122, 16
  store i8 %123, ptr %121, align 1, !tbaa !84
  %124 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 1
  store i32 %55, ptr %124, align 8, !tbaa !88
  %125 = add nsw i32 %55, 1
  br label %141

126:                                              ; preds = %107
  %127 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !86
  %129 = getelementptr inbounds %struct.BMHeader, ptr %128, i64 0, i32 3
  %130 = load i8, ptr %129, align 1, !tbaa !84
  %131 = and i8 %130, -17
  store i8 %131, ptr %129, align 1, !tbaa !84
  %132 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !87
  %134 = getelementptr inbounds %struct.BMHeader, ptr %133, i64 0, i32 3
  %135 = load i8, ptr %134, align 1, !tbaa !84
  %136 = and i8 %135, -17
  store i8 %136, ptr %134, align 1, !tbaa !84
  %137 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %138 = load i8, ptr %137, align 1, !tbaa !84
  %139 = and i8 %138, -17
  store i8 %139, ptr %137, align 1, !tbaa !84
  %140 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 1
  store i32 -1, ptr %140, align 8, !tbaa !88
  br label %141

141:                                              ; preds = %110, %126
  %142 = phi i32 [ %125, %110 ], [ %55, %126 ]
  %143 = load ptr, ptr %48, align 8, !tbaa !77
  %144 = call ptr %143(ptr noundef nonnull %4) #6
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %54, !llvm.loop !89

146:                                              ; preds = %141, %45
  %147 = phi i32 [ 0, %45 ], [ %142, %141 ]
  %148 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %149 = load i8, ptr %148, align 4, !tbaa !90
  %150 = or i8 %149, 2
  store i8 %150, ptr %148, align 4, !tbaa !90
  %151 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %152 = sext i32 %147 to i64
  %153 = mul nsw i64 %152, 40
  %154 = call ptr %151(i64 noundef %153, ptr noundef nonnull @__func__.bmo_inset_region_exec) #6
  store i8 2, ptr %46, align 4, !tbaa !74
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !76
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !77
  %155 = load ptr, ptr %49, align 8, !tbaa !78
  store ptr %155, ptr %4, align 8, !tbaa !79
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #6
  %156 = load ptr, ptr %48, align 8, !tbaa !77
  %157 = call ptr %156(ptr noundef nonnull %4) #6
  %158 = icmp eq ptr %157, null
  br i1 %158, label %175, label %159

159:                                              ; preds = %146, %170
  %160 = phi ptr [ %171, %170 ], [ %154, %146 ]
  %161 = phi ptr [ %173, %170 ], [ %157, %146 ]
  %162 = getelementptr inbounds %struct.BMHeader, ptr %161, i64 0, i32 1
  %163 = load i32, ptr %162, align 8, !tbaa !88
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %170, label %165

165:                                              ; preds = %159
  %166 = call float @BM_edge_calc_length(ptr noundef nonnull %161) #6
  %167 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %160, i64 0, i32 1
  store float %166, ptr %167, align 4, !tbaa !91
  %168 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %160, i64 0, i32 2
  store ptr %161, ptr %168, align 8, !tbaa !93
  %169 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %160, i64 1
  br label %170

170:                                              ; preds = %159, %165
  %171 = phi ptr [ %169, %165 ], [ %160, %159 ]
  %172 = load ptr, ptr %48, align 8, !tbaa !77
  %173 = call ptr %172(ptr noundef nonnull %4) #6
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %159, !llvm.loop !94

175:                                              ; preds = %170, %146
  %176 = icmp eq i8 %19, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %175
  %178 = call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.bmo_inset_region_exec) #6
  %179 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bmo_inset_region_exec) #6
  br label %180

180:                                              ; preds = %177, %175
  %181 = phi ptr [ %179, %177 ], [ null, %175 ]
  %182 = phi ptr [ %178, %177 ], [ null, %175 ]
  %183 = icmp sgt i32 %147, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %186 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %187 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %188 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %189 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %190 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %199

191:                                              ; preds = %299, %180
  %192 = icmp sgt i32 %147, 0
  br i1 %192, label %193, label %733

193:                                              ; preds = %191
  %194 = icmp eq i8 %17, 0
  %195 = icmp eq i8 %18, 0
  %196 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 1
  %197 = icmp eq i8 %17, 0
  %198 = icmp eq i8 %18, 0
  br label %303

199:                                              ; preds = %184, %299
  %200 = phi ptr [ %154, %184 ], [ %301, %299 ]
  %201 = phi i32 [ 0, %184 ], [ %300, %299 ]
  %202 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %200, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !93
  %204 = getelementptr inbounds %struct.BMEdge, ptr %203, i64 0, i32 4
  %205 = load ptr, ptr %204, align 8, !tbaa !80
  %206 = icmp eq ptr %205, null
  br i1 %206, label %234, label %207

207:                                              ; preds = %199, %222
  %208 = phi i32 [ %223, %222 ], [ 0, %199 ]
  %209 = phi i32 [ %224, %222 ], [ 0, %199 ]
  %210 = phi ptr [ %227, %222 ], [ %205, %199 ]
  %211 = phi ptr [ %225, %222 ], [ null, %199 ]
  %212 = getelementptr inbounds %struct.BMLoop, ptr %210, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !83
  %214 = getelementptr inbounds %struct.BMHeader, ptr %213, i64 0, i32 3
  %215 = load i8, ptr %214, align 1, !tbaa !84
  %216 = and i8 %215, 16
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %207
  %219 = icmp eq i32 %208, 1
  br i1 %219, label %234, label %222

220:                                              ; preds = %207
  %221 = add nsw i32 %209, 1
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %208, %220 ], [ 1, %218 ]
  %224 = phi i32 [ %221, %220 ], [ %209, %218 ]
  %225 = phi ptr [ %211, %220 ], [ %210, %218 ]
  %226 = getelementptr inbounds %struct.BMLoop, ptr %210, i64 0, i32 4
  %227 = load ptr, ptr %226, align 8, !tbaa !59
  %228 = icmp eq ptr %227, %205
  br i1 %228, label %229, label %207, !llvm.loop !85

229:                                              ; preds = %222
  %230 = icmp eq i32 %223, 1
  %231 = icmp sgt i32 %224, 0
  %232 = select i1 %230, i1 %231, i1 false
  %233 = select i1 %232, ptr %225, ptr null
  br label %234

234:                                              ; preds = %218, %199, %229
  %235 = phi ptr [ %233, %229 ], [ null, %199 ], [ null, %218 ]
  %236 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %200, i64 0, i32 4
  %237 = icmp eq ptr %235, null
  %238 = select i1 %237, ptr %205, ptr %235
  store ptr %238, ptr %236, align 8
  call void @bmesh_edge_separate(ptr noundef %0, ptr noundef %203, ptr noundef %238, i8 noundef zeroext 0) #6
  %239 = load ptr, ptr %236, align 8, !tbaa !95
  %240 = getelementptr inbounds %struct.BMLoop, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !49
  %242 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %200, i64 0, i32 3
  store ptr %241, ptr %242, align 8, !tbaa !96
  call void @BM_edge_calc_face_tangent(ptr noundef %241, ptr noundef %239, ptr noundef %200) #6
  %243 = load ptr, ptr %242, align 8, !tbaa !96
  %244 = load ptr, ptr %202, align 8, !tbaa !93
  %245 = icmp eq ptr %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %234
  %247 = getelementptr inbounds %struct.BMEdge, ptr %243, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !86
  %249 = getelementptr inbounds %struct.BMEdge, ptr %243, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !87
  %251 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %248, ptr noundef %250, ptr noundef %243, i32 noundef 0) #6
  store ptr %251, ptr %202, align 8, !tbaa !93
  br label %252

252:                                              ; preds = %246, %234
  %253 = load ptr, ptr %242, align 8, !tbaa !96
  %254 = getelementptr inbounds %struct.BMHeader, ptr %253, i64 0, i32 1
  store i32 %201, ptr %254, align 8, !tbaa !88
  %255 = getelementptr inbounds %struct.BMHeader, ptr %253, i64 0, i32 3
  %256 = load i8, ptr %255, align 1, !tbaa !84
  %257 = or i8 %256, 16
  store i8 %257, ptr %255, align 1, !tbaa !84
  %258 = getelementptr inbounds %struct.BMEdge, ptr %253, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !86
  %260 = getelementptr inbounds %struct.BMHeader, ptr %259, i64 0, i32 3
  %261 = load i8, ptr %260, align 1, !tbaa !84
  %262 = or i8 %261, 16
  store i8 %262, ptr %260, align 1, !tbaa !84
  %263 = getelementptr inbounds %struct.BMEdge, ptr %253, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !87
  %265 = getelementptr inbounds %struct.BMHeader, ptr %264, i64 0, i32 3
  %266 = load i8, ptr %265, align 1, !tbaa !84
  %267 = or i8 %266, 16
  store i8 %267, ptr %265, align 1, !tbaa !84
  br i1 %23, label %268, label %299

268:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %269 = load ptr, ptr %236, align 8, !tbaa !95
  %270 = getelementptr inbounds %struct.BMLoop, ptr %269, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !49
  store i8 7, ptr %185, align 4, !tbaa !74
  store ptr @bmiter__vert_of_edge_begin, ptr %186, align 8, !tbaa !76
  store ptr @bmiter__vert_of_edge_step, ptr %187, align 8, !tbaa !77
  store ptr %271, ptr %5, align 8, !tbaa !79
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %5) #6
  %272 = load ptr, ptr %187, align 8, !tbaa !77
  %273 = call ptr %272(ptr noundef nonnull %5) #6
  %274 = icmp eq ptr %273, null
  br i1 %274, label %298, label %275

275:                                              ; preds = %268, %294
  %276 = phi ptr [ %296, %294 ], [ %273, %268 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  store i8 5, ptr %188, align 4, !tbaa !74
  store ptr @bmiter__face_of_vert_begin, ptr %189, align 8, !tbaa !76
  store ptr @bmiter__face_of_vert_step, ptr %190, align 8, !tbaa !77
  store ptr %276, ptr %6, align 8, !tbaa !79
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %6) #6
  %277 = load ptr, ptr %190, align 8, !tbaa !77
  %278 = call ptr %277(ptr noundef nonnull %6) #6
  %279 = icmp eq ptr %278, null
  br i1 %279, label %294, label %280

280:                                              ; preds = %275, %290
  %281 = phi ptr [ %292, %290 ], [ %278, %275 ]
  %282 = getelementptr inbounds %struct.BMHeader, ptr %281, i64 0, i32 1
  %283 = load i32, ptr %282, align 8, !tbaa !88
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds ptr, ptr %42, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !48
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %280
  %289 = call ptr @BLI_memarena_alloc(ptr noundef %40, i64 noundef 72) #6
  call fastcc void @bm_interp_face_store(ptr noundef %289, ptr noundef %0, ptr noundef nonnull %281, ptr noundef %40)
  store ptr %289, ptr %285, align 8, !tbaa !48
  br label %290

290:                                              ; preds = %288, %280
  %291 = load ptr, ptr %190, align 8, !tbaa !77
  %292 = call ptr %291(ptr noundef nonnull %6) #6
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %280, !llvm.loop !97

294:                                              ; preds = %290, %275
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  %295 = load ptr, ptr %187, align 8, !tbaa !77
  %296 = call ptr %295(ptr noundef nonnull %5) #6
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %275, !llvm.loop !98

298:                                              ; preds = %294, %268
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  br label %299

299:                                              ; preds = %252, %298
  %300 = add nuw nsw i32 %201, 1
  %301 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %200, i64 1
  %302 = icmp eq i32 %300, %147
  br i1 %302, label %191, label %199, !llvm.loop !99

303:                                              ; preds = %193, %729
  %304 = phi ptr [ %154, %193 ], [ %731, %729 ]
  %305 = phi i32 [ 0, %193 ], [ %730, %729 ]
  %306 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %304, i64 0, i32 3
  %307 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %304, i64 0, i32 3
  br label %308

308:                                              ; preds = %303, %726
  %309 = phi i32 [ 0, %303 ], [ %727, %726 ]
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load ptr, ptr %307, align 8, !tbaa !96
  %313 = getelementptr inbounds %struct.BMEdge, ptr %312, i64 0, i32 2
  br label %317

314:                                              ; preds = %308
  %315 = load ptr, ptr %306, align 8, !tbaa !96
  %316 = getelementptr inbounds %struct.BMEdge, ptr %315, i64 0, i32 3
  br label %317

317:                                              ; preds = %314, %311
  %318 = phi ptr [ %313, %311 ], [ %316, %314 ]
  %319 = load ptr, ptr %318, align 8, !tbaa !48
  %320 = getelementptr inbounds %struct.BMHeader, ptr %319, i64 0, i32 3
  %321 = load i8, ptr %320, align 1, !tbaa !84
  %322 = and i8 %321, 16
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %726, label %324

324:                                              ; preds = %317
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %325 = and i8 %321, -17
  store i8 %325, ptr %320, align 1, !tbaa !84
  call void @bmesh_vert_separate(ptr noundef %0, ptr noundef %319, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 0) #6
  %326 = load i32, ptr %8, align 4, !tbaa !100
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %331, label %328

328:                                              ; preds = %324
  %329 = load i32, ptr %8, align 4, !tbaa !100
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %347, label %722

331:                                              ; preds = %324
  br i1 %176, label %344, label %332

332:                                              ; preds = %331
  %333 = call ptr @BLI_memarena_alloc(ptr noundef %182, i64 noundef 12) #6
  %334 = load ptr, ptr %7, align 8, !tbaa !48
  %335 = load ptr, ptr %334, align 8, !tbaa !48
  %336 = getelementptr inbounds %struct.BMVert, ptr %335, i64 0, i32 2
  %337 = load float, ptr %336, align 4, !tbaa !62
  store float %337, ptr %333, align 4, !tbaa !62
  %338 = getelementptr inbounds %struct.BMVert, ptr %335, i64 0, i32 2, i64 1
  %339 = load float, ptr %338, align 4, !tbaa !62
  %340 = getelementptr inbounds float, ptr %333, i64 1
  store float %339, ptr %340, align 4, !tbaa !62
  %341 = getelementptr inbounds %struct.BMVert, ptr %335, i64 0, i32 2, i64 2
  %342 = load float, ptr %341, align 4, !tbaa !62
  %343 = getelementptr inbounds float, ptr %333, i64 2
  store float %342, ptr %343, align 4, !tbaa !62
  call void @BLI_ghash_insert(ptr noundef %181, ptr noundef %335, ptr noundef nonnull %333) #6
  br label %344

344:                                              ; preds = %332, %331
  %345 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %346 = load ptr, ptr %7, align 8, !tbaa !48
  call void %345(ptr noundef %346) #6
  br label %725

347:                                              ; preds = %328, %716
  %348 = phi i64 [ %718, %716 ], [ 0, %328 ]
  %349 = phi ptr [ %717, %716 ], [ null, %328 ]
  %350 = load ptr, ptr %7, align 8, !tbaa !48
  %351 = getelementptr inbounds ptr, ptr %350, i64 %348
  %352 = load ptr, ptr %351, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  br i1 %176, label %363, label %353

353:                                              ; preds = %347
  %354 = call ptr @BLI_memarena_alloc(ptr noundef %182, i64 noundef 12) #6
  %355 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2
  %356 = load float, ptr %355, align 4, !tbaa !62
  store float %356, ptr %354, align 4, !tbaa !62
  %357 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2, i64 1
  %358 = load float, ptr %357, align 4, !tbaa !62
  %359 = getelementptr inbounds float, ptr %354, i64 1
  store float %358, ptr %359, align 4, !tbaa !62
  %360 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2, i64 2
  %361 = load float, ptr %360, align 4, !tbaa !62
  %362 = getelementptr inbounds float, ptr %354, i64 2
  store float %361, ptr %362, align 4, !tbaa !62
  call void @BLI_ghash_insert(ptr noundef %181, ptr noundef %352, ptr noundef nonnull %354) #6
  br label %363

363:                                              ; preds = %353, %347
  store i8 4, ptr %46, align 4, !tbaa !74
  store ptr @bmiter__edge_of_vert_begin, ptr %47, align 8, !tbaa !76
  store ptr @bmiter__edge_of_vert_step, ptr %48, align 8, !tbaa !77
  store ptr %352, ptr %4, align 8, !tbaa !79
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #6
  %364 = load ptr, ptr %48, align 8, !tbaa !77
  %365 = call ptr %364(ptr noundef nonnull %4) #6
  %366 = icmp eq ptr %365, null
  br i1 %366, label %399, label %367

367:                                              ; preds = %363, %394
  %368 = phi ptr [ %397, %394 ], [ %365, %363 ]
  %369 = phi i32 [ %395, %394 ], [ 0, %363 ]
  %370 = getelementptr inbounds %struct.BMHeader, ptr %368, i64 0, i32 3
  %371 = load i8, ptr %370, align 1, !tbaa !84
  %372 = and i8 %371, 16
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %394, label %374

374:                                              ; preds = %367
  %375 = getelementptr inbounds %struct.BMEdge, ptr %368, i64 0, i32 4
  %376 = load ptr, ptr %375, align 8, !tbaa !80
  %377 = icmp eq ptr %376, null
  br i1 %377, label %394, label %378

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8, !tbaa !83
  %381 = getelementptr inbounds %struct.BMHeader, ptr %380, i64 0, i32 3
  %382 = load i8, ptr %381, align 1, !tbaa !84
  %383 = and i8 %382, 16
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %394, label %385

385:                                              ; preds = %378
  %386 = icmp slt i32 %369, 2
  br i1 %386, label %387, label %392

387:                                              ; preds = %385
  %388 = getelementptr inbounds %struct.BMHeader, ptr %368, i64 0, i32 1
  %389 = load i32, ptr %388, align 8, !tbaa !88
  %390 = sext i32 %369 to i64
  %391 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 %390
  store i32 %389, ptr %391, align 4, !tbaa !100
  br label %392

392:                                              ; preds = %387, %385
  %393 = add nsw i32 %369, 1
  br label %394

394:                                              ; preds = %367, %374, %378, %392
  %395 = phi i32 [ %393, %392 ], [ %369, %378 ], [ %369, %374 ], [ %369, %367 ]
  %396 = load ptr, ptr %48, align 8, !tbaa !77
  %397 = call ptr %396(ptr noundef nonnull %4) #6
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %367, !llvm.loop !101

399:                                              ; preds = %394, %363
  %400 = phi i32 [ 0, %363 ], [ %395, %394 ]
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %695, label %402

402:                                              ; preds = %399
  %403 = icmp sgt i32 %400, 1
  br i1 %403, label %404, label %571

404:                                              ; preds = %402
  %405 = load i32, ptr %9, align 4, !tbaa !100
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %406
  %408 = load i32, ptr %196, align 4, !tbaa !100
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %409
  %411 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %406, i32 4
  %412 = load ptr, ptr %411, align 8, !tbaa !95
  %413 = getelementptr inbounds %struct.BMLoop, ptr %412, i64 0, i32 3
  %414 = load ptr, ptr %413, align 8, !tbaa !83
  %415 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %409, i32 4
  %416 = load ptr, ptr %415, align 8, !tbaa !95
  %417 = getelementptr inbounds %struct.BMLoop, ptr %416, i64 0, i32 3
  %418 = load ptr, ptr %417, align 8, !tbaa !83
  %419 = load float, ptr %407, align 4, !tbaa !62
  %420 = load float, ptr %410, align 4, !tbaa !62
  %421 = fadd float %419, %420
  %422 = getelementptr inbounds float, ptr %407, i64 1
  %423 = load float, ptr %422, align 4, !tbaa !62
  %424 = getelementptr inbounds float, ptr %410, i64 1
  %425 = load float, ptr %424, align 4, !tbaa !62
  %426 = fadd float %423, %425
  %427 = getelementptr inbounds float, ptr %407, i64 2
  %428 = load float, ptr %427, align 4, !tbaa !62
  %429 = getelementptr inbounds float, ptr %410, i64 2
  %430 = load float, ptr %429, align 4, !tbaa !62
  %431 = fadd float %428, %430
  %432 = icmp eq ptr %414, %418
  %433 = select i1 %176, i1 true, i1 %432
  br i1 %433, label %460, label %434

434:                                              ; preds = %404
  %435 = call ptr @BM_loop_other_vert_loop(ptr noundef %412, ptr noundef %352) #6
  %436 = load ptr, ptr %415, align 8, !tbaa !95
  %437 = call ptr @BM_loop_other_vert_loop(ptr noundef %436, ptr noundef %352) #6
  %438 = getelementptr inbounds %struct.BMLoop, ptr %435, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !46
  %440 = getelementptr inbounds %struct.BMLoop, ptr %437, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !46
  %442 = icmp eq ptr %439, %441
  br i1 %442, label %443, label %460

443:                                              ; preds = %434
  %444 = getelementptr inbounds %struct.BMVert, ptr %439, i64 0, i32 2
  %445 = call ptr @BLI_ghash_lookup_default(ptr noundef %181, ptr noundef %439, ptr noundef nonnull %444) #6
  %446 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2
  %447 = load float, ptr %445, align 4, !tbaa !62
  %448 = load float, ptr %446, align 4, !tbaa !62
  %449 = fsub float %447, %448
  %450 = getelementptr inbounds float, ptr %445, i64 1
  %451 = load float, ptr %450, align 4, !tbaa !62
  %452 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2, i64 1
  %453 = load float, ptr %452, align 4, !tbaa !62
  %454 = fsub float %451, %453
  %455 = getelementptr inbounds float, ptr %445, i64 2
  %456 = load float, ptr %455, align 4, !tbaa !62
  %457 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2, i64 2
  %458 = load float, ptr %457, align 4, !tbaa !62
  %459 = fsub float %456, %458
  br label %460

460:                                              ; preds = %434, %443, %404
  %461 = phi float [ %431, %404 ], [ %459, %443 ], [ %431, %434 ]
  %462 = phi float [ %426, %404 ], [ %454, %443 ], [ %426, %434 ]
  %463 = phi float [ %421, %404 ], [ %449, %443 ], [ %421, %434 ]
  %464 = phi i1 [ false, %404 ], [ true, %443 ], [ false, %434 ]
  %465 = fmul float %462, %462
  %466 = call float @llvm.fmuladd.f32(float %463, float %463, float %465)
  %467 = call float @llvm.fmuladd.f32(float %461, float %461, float %466)
  %468 = fcmp ogt float %467, 0x38AA95A5C0000000
  br i1 %468, label %469, label %475

469:                                              ; preds = %460
  %470 = call float @sqrtf(float noundef %467) #6
  %471 = fdiv float 1.000000e+00, %470
  %472 = fmul float %463, %471
  %473 = fmul float %462, %471
  %474 = fmul float %461, %471
  br label %475

475:                                              ; preds = %460, %469
  %476 = phi float [ %473, %469 ], [ 0.000000e+00, %460 ]
  %477 = phi float [ %472, %469 ], [ 0.000000e+00, %460 ]
  %478 = phi float [ %474, %469 ], [ 0.000000e+00, %460 ]
  br i1 %197, label %557, label %479

479:                                              ; preds = %475
  %480 = load float, ptr %407, align 4, !tbaa !62
  br i1 %464, label %522, label %481

481:                                              ; preds = %479
  %482 = load float, ptr %410, align 4, !tbaa !62
  %483 = fadd float %480, %482
  %484 = load float, ptr %422, align 4, !tbaa !62
  %485 = load float, ptr %424, align 4, !tbaa !62
  %486 = fadd float %484, %485
  %487 = load float, ptr %427, align 4, !tbaa !62
  %488 = load float, ptr %429, align 4, !tbaa !62
  %489 = fadd float %487, %488
  %490 = fmul float %486, %486
  %491 = call float @llvm.fmuladd.f32(float %483, float %483, float %490)
  %492 = call float @llvm.fmuladd.f32(float %489, float %489, float %491)
  %493 = fcmp ogt float %492, 0x38AA95A5C0000000
  br i1 %493, label %494, label %501

494:                                              ; preds = %481
  %495 = call float @sqrtf(float noundef %492) #6
  %496 = fdiv float 1.000000e+00, %495
  %497 = fmul float %483, %496
  %498 = fmul float %486, %496
  %499 = fmul float %489, %496
  %500 = fcmp une float %495, 0.000000e+00
  br label %501

501:                                              ; preds = %494, %481
  %502 = phi float [ %498, %494 ], [ 0.000000e+00, %481 ]
  %503 = phi float [ %497, %494 ], [ 0.000000e+00, %481 ]
  %504 = phi float [ %499, %494 ], [ 0.000000e+00, %481 ]
  %505 = phi i1 [ %500, %494 ], [ false, %481 ]
  br i1 %505, label %506, label %514

506:                                              ; preds = %501
  %507 = load float, ptr %407, align 4, !tbaa !62
  %508 = load float, ptr %422, align 4, !tbaa !62
  %509 = fmul float %502, %508
  %510 = call float @llvm.fmuladd.f32(float %507, float %503, float %509)
  %511 = load float, ptr %427, align 4, !tbaa !62
  %512 = call float @llvm.fmuladd.f32(float %511, float %504, float %510)
  %513 = call float @llvm.fabs.f32(float %512)
  br label %514

514:                                              ; preds = %501, %506
  %515 = phi float [ %513, %506 ], [ 0.000000e+00, %501 ]
  %516 = fcmp olt float %515, 0x3E45798EE0000000
  %517 = fdiv float 1.000000e+00, %515
  %518 = select i1 %516, float 1.000000e+00, float %517
  %519 = fmul float %477, %518
  %520 = fmul float %476, %518
  %521 = fmul float %478, %518
  br label %557

522:                                              ; preds = %479
  %523 = fsub float %480, %477
  %524 = load float, ptr %422, align 4, !tbaa !62
  %525 = fsub float %524, %476
  %526 = load float, ptr %427, align 4, !tbaa !62
  %527 = fsub float %526, %478
  %528 = fmul float %525, %525
  %529 = call float @llvm.fmuladd.f32(float %523, float %523, float %528)
  %530 = call float @llvm.fmuladd.f32(float %527, float %527, float %529)
  %531 = load float, ptr %410, align 4, !tbaa !62
  %532 = fsub float %531, %477
  %533 = load float, ptr %424, align 4, !tbaa !62
  %534 = fsub float %533, %476
  %535 = load float, ptr %429, align 4, !tbaa !62
  %536 = fsub float %535, %478
  %537 = fmul float %534, %534
  %538 = call float @llvm.fmuladd.f32(float %532, float %532, float %537)
  %539 = call float @llvm.fmuladd.f32(float %536, float %536, float %538)
  %540 = fcmp ogt float %530, %539
  %541 = select i1 %540, ptr %407, ptr %410
  %542 = load float, ptr %541, align 4, !tbaa !62
  %543 = getelementptr inbounds float, ptr %541, i64 1
  %544 = load float, ptr %543, align 4, !tbaa !62
  %545 = fmul float %476, %544
  %546 = call float @llvm.fmuladd.f32(float %477, float %542, float %545)
  %547 = getelementptr inbounds float, ptr %541, i64 2
  %548 = load float, ptr %547, align 4, !tbaa !62
  %549 = call float @llvm.fmuladd.f32(float %478, float %548, float %546)
  %550 = call float @llvm.fabs.f32(float %549)
  %551 = fcmp olt float %550, 0x3E45798EE0000000
  %552 = fdiv float 1.000000e+00, %550
  %553 = select i1 %551, float 1.000000e+00, float %552
  %554 = fmul float %477, %553
  %555 = fmul float %476, %553
  %556 = fmul float %478, %553
  br label %557

557:                                              ; preds = %514, %522, %475
  %558 = phi float [ %478, %475 ], [ %556, %522 ], [ %521, %514 ]
  %559 = phi float [ %476, %475 ], [ %555, %522 ], [ %520, %514 ]
  %560 = phi float [ %477, %475 ], [ %554, %522 ], [ %519, %514 ]
  br i1 %198, label %682, label %561

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %406, i32 1
  %563 = load float, ptr %562, align 4, !tbaa !91
  %564 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %409, i32 1
  %565 = load float, ptr %564, align 4, !tbaa !91
  %566 = fadd float %563, %565
  %567 = fmul float %566, 5.000000e-01
  %568 = fmul float %560, %567
  %569 = fmul float %559, %567
  %570 = fmul float %558, %567
  br label %682

571:                                              ; preds = %402
  %572 = icmp eq i32 %400, 1
  br i1 %572, label %573, label %682

573:                                              ; preds = %571
  %574 = load i32, ptr %9, align 4, !tbaa !100
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %575
  br i1 %194, label %666, label %577

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 4
  %579 = load ptr, ptr %578, align 8, !tbaa !102
  %580 = getelementptr inbounds %struct.BMEdge, ptr %579, i64 0, i32 4
  %581 = load ptr, ptr %580, align 8, !tbaa !80
  %582 = getelementptr inbounds %struct.BMLoop, ptr %581, i64 0, i32 7
  %583 = load ptr, ptr %582, align 8, !tbaa !60
  %584 = getelementptr inbounds %struct.BMLoop, ptr %583, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !46
  %586 = icmp eq ptr %585, %352
  br i1 %586, label %594, label %587

587:                                              ; preds = %577
  %588 = getelementptr inbounds %struct.BMLoop, ptr %581, i64 0, i32 6
  %589 = load ptr, ptr %588, align 8, !tbaa !50
  %590 = getelementptr inbounds %struct.BMLoop, ptr %589, i64 0, i32 1
  %591 = load ptr, ptr %590, align 8, !tbaa !46
  %592 = icmp eq ptr %591, %352
  %593 = select i1 %592, ptr %589, ptr %581
  br label %594

594:                                              ; preds = %587, %577
  %595 = phi ptr [ %583, %577 ], [ %593, %587 ]
  %596 = getelementptr inbounds %struct.BMLoop, ptr %595, i64 0, i32 2
  %597 = load ptr, ptr %596, align 8, !tbaa !49
  %598 = getelementptr inbounds %struct.BMHeader, ptr %597, i64 0, i32 3
  %599 = load i8, ptr %598, align 1, !tbaa !84
  %600 = and i8 %599, 16
  %601 = icmp eq i8 %600, 0
  br i1 %601, label %612, label %602

602:                                              ; preds = %594
  %603 = getelementptr inbounds %struct.BMLoop, ptr %595, i64 0, i32 7
  %604 = load ptr, ptr %603, align 8, !tbaa !60
  %605 = getelementptr inbounds %struct.BMLoop, ptr %604, i64 0, i32 2
  %606 = load ptr, ptr %605, align 8, !tbaa !49
  %607 = getelementptr inbounds %struct.BMHeader, ptr %606, i64 0, i32 3
  %608 = load i8, ptr %607, align 1, !tbaa !84
  %609 = and i8 %608, 16
  %610 = icmp eq i8 %609, 0
  %611 = select i1 %610, ptr %606, ptr null
  br label %612

612:                                              ; preds = %602, %594
  %613 = phi ptr [ %597, %594 ], [ %611, %602 ]
  %614 = getelementptr inbounds %struct.BMEdge, ptr %613, i64 0, i32 2
  %615 = load ptr, ptr %614, align 8, !tbaa !86
  %616 = icmp eq ptr %615, %352
  %617 = getelementptr inbounds %struct.BMEdge, ptr %613, i64 0, i32 3
  %618 = load ptr, ptr %617, align 8, !tbaa !87
  %619 = icmp eq ptr %618, %352
  %620 = select i1 %619, ptr %615, ptr null
  %621 = select i1 %616, ptr %618, ptr %620
  %622 = getelementptr inbounds %struct.BMVert, ptr %621, i64 0, i32 2
  %623 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2
  %624 = load float, ptr %622, align 4, !tbaa !62
  %625 = load float, ptr %623, align 4, !tbaa !62
  %626 = fsub float %624, %625
  %627 = getelementptr inbounds %struct.BMVert, ptr %621, i64 0, i32 2, i64 1
  %628 = load float, ptr %627, align 4, !tbaa !62
  %629 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2, i64 1
  %630 = load float, ptr %629, align 4, !tbaa !62
  %631 = fsub float %628, %630
  %632 = getelementptr inbounds %struct.BMVert, ptr %621, i64 0, i32 2, i64 2
  %633 = load float, ptr %632, align 4, !tbaa !62
  %634 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2, i64 2
  %635 = load float, ptr %634, align 4, !tbaa !62
  %636 = fsub float %633, %635
  %637 = fmul float %631, %631
  %638 = call float @llvm.fmuladd.f32(float %626, float %626, float %637)
  %639 = call float @llvm.fmuladd.f32(float %636, float %636, float %638)
  %640 = fcmp ogt float %639, 0x38AA95A5C0000000
  br i1 %640, label %641, label %647

641:                                              ; preds = %612
  %642 = call float @sqrtf(float noundef %639) #6
  %643 = fdiv float 1.000000e+00, %642
  %644 = fmul float %626, %643
  %645 = fmul float %631, %643
  %646 = fmul float %636, %643
  br label %647

647:                                              ; preds = %612, %641
  %648 = phi float [ %645, %641 ], [ 0.000000e+00, %612 ]
  %649 = phi float [ %644, %641 ], [ 0.000000e+00, %612 ]
  %650 = phi float [ %646, %641 ], [ 0.000000e+00, %612 ]
  %651 = load float, ptr %576, align 4, !tbaa !62
  %652 = getelementptr inbounds float, ptr %576, i64 1
  %653 = load float, ptr %652, align 4, !tbaa !62
  %654 = fmul float %648, %653
  %655 = call float @llvm.fmuladd.f32(float %651, float %649, float %654)
  %656 = getelementptr inbounds float, ptr %576, i64 2
  %657 = load float, ptr %656, align 4, !tbaa !62
  %658 = call float @llvm.fmuladd.f32(float %657, float %650, float %655)
  %659 = call float @llvm.fabs.f32(float %658)
  %660 = fcmp olt float %659, 0x3E45798EE0000000
  %661 = fdiv float 1.000000e+00, %659
  %662 = select i1 %660, float 1.000000e+00, float %661
  %663 = fmul float %649, %662
  %664 = fmul float %648, %662
  %665 = fmul float %650, %662
  br label %672

666:                                              ; preds = %573
  %667 = load float, ptr %576, align 4, !tbaa !62
  %668 = getelementptr inbounds float, ptr %576, i64 1
  %669 = load float, ptr %668, align 4, !tbaa !62
  %670 = getelementptr inbounds float, ptr %576, i64 2
  %671 = load float, ptr %670, align 4, !tbaa !62
  br label %672

672:                                              ; preds = %666, %647
  %673 = phi float [ %671, %666 ], [ %665, %647 ]
  %674 = phi float [ %669, %666 ], [ %664, %647 ]
  %675 = phi float [ %667, %666 ], [ %663, %647 ]
  br i1 %195, label %682, label %676

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %575, i32 1
  %678 = load float, ptr %677, align 4, !tbaa !91
  %679 = fmul float %675, %678
  %680 = fmul float %674, %678
  %681 = fmul float %673, %678
  br label %682

682:                                              ; preds = %571, %672, %676, %557, %561
  %683 = phi float [ %558, %557 ], [ %570, %561 ], [ %673, %672 ], [ %681, %676 ], [ 0.000000e+00, %571 ]
  %684 = phi float [ %559, %557 ], [ %569, %561 ], [ %674, %672 ], [ %680, %676 ], [ 0.000000e+00, %571 ]
  %685 = phi float [ %560, %557 ], [ %568, %561 ], [ %675, %672 ], [ %679, %676 ], [ 0.000000e+00, %571 ]
  %686 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2
  %687 = load float, ptr %686, align 4, !tbaa !62
  %688 = call float @llvm.fmuladd.f32(float %685, float %21, float %687)
  store float %688, ptr %686, align 4, !tbaa !62
  %689 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2, i64 1
  %690 = load float, ptr %689, align 4, !tbaa !62
  %691 = call float @llvm.fmuladd.f32(float %684, float %21, float %690)
  store float %691, ptr %689, align 4, !tbaa !62
  %692 = getelementptr inbounds %struct.BMVert, ptr %352, i64 0, i32 2, i64 2
  %693 = load float, ptr %692, align 4, !tbaa !62
  %694 = call float @llvm.fmuladd.f32(float %683, float %21, float %693)
  store float %694, ptr %692, align 4, !tbaa !62
  br label %695

695:                                              ; preds = %682, %399
  %696 = load i32, ptr %8, align 4, !tbaa !100
  %697 = icmp sgt i32 %696, 2
  br i1 %697, label %698, label %716

698:                                              ; preds = %695
  store i8 5, ptr %46, align 4, !tbaa !74
  store ptr @bmiter__face_of_vert_begin, ptr %47, align 8, !tbaa !76
  store ptr @bmiter__face_of_vert_step, ptr %48, align 8, !tbaa !77
  store ptr %352, ptr %4, align 8, !tbaa !79
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %4) #6
  %699 = load ptr, ptr %48, align 8, !tbaa !77
  %700 = call ptr %699(ptr noundef nonnull %4) #6
  %701 = icmp eq ptr %700, null
  br i1 %701, label %712, label %702

702:                                              ; preds = %698, %708
  %703 = phi ptr [ %710, %708 ], [ %700, %698 ]
  %704 = getelementptr inbounds %struct.BMHeader, ptr %703, i64 0, i32 3
  %705 = load i8, ptr %704, align 1, !tbaa !84
  %706 = and i8 %705, 16
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %708, label %716

708:                                              ; preds = %702
  %709 = load ptr, ptr %48, align 8, !tbaa !77
  %710 = call ptr %709(ptr noundef nonnull %4) #6
  %711 = icmp eq ptr %710, null
  br i1 %711, label %712, label %702, !llvm.loop !104

712:                                              ; preds = %708, %698
  %713 = icmp eq ptr %349, null
  br i1 %713, label %716, label %714

714:                                              ; preds = %712
  %715 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %352, ptr noundef nonnull %349) #6
  br label %716

716:                                              ; preds = %702, %714, %712, %695
  %717 = phi ptr [ %349, %695 ], [ %349, %714 ], [ %352, %712 ], [ %349, %702 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  %718 = add nuw nsw i64 %348, 1
  %719 = load i32, ptr %8, align 4, !tbaa !100
  %720 = sext i32 %719 to i64
  %721 = icmp slt i64 %718, %720
  br i1 %721, label %347, label %722, !llvm.loop !105

722:                                              ; preds = %716, %328
  %723 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %724 = load ptr, ptr %7, align 8, !tbaa !48
  call void %723(ptr noundef %724) #6
  br label %725

725:                                              ; preds = %722, %344
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %726

726:                                              ; preds = %725, %317
  %727 = add nuw nsw i32 %309, 1
  %728 = icmp eq i32 %309, 0
  br i1 %728, label %308, label %729, !llvm.loop !106

729:                                              ; preds = %726
  %730 = add nuw nsw i32 %305, 1
  %731 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %304, i64 1
  %732 = icmp eq i32 %730, %147
  br i1 %732, label %733, label %303, !llvm.loop !107

733:                                              ; preds = %729, %191
  br i1 %176, label %735, label %734

734:                                              ; preds = %733
  call void @BLI_memarena_free(ptr noundef %182) #6
  call void @BLI_ghash_free(ptr noundef %181, ptr noundef null, ptr noundef null) #6
  br label %735

735:                                              ; preds = %734, %733
  %736 = icmp sgt i32 %41, 0
  %737 = select i1 %23, i1 %736, i1 false
  br i1 %737, label %738, label %757

738:                                              ; preds = %735
  %739 = zext i32 %41 to i64
  br label %740

740:                                              ; preds = %738, %754
  %741 = phi i64 [ 0, %738 ], [ %755, %754 ]
  %742 = getelementptr inbounds ptr, ptr %42, i64 %741
  %743 = load ptr, ptr %742, align 8, !tbaa !48
  %744 = icmp eq ptr %743, null
  br i1 %744, label %754, label %745

745:                                              ; preds = %740
  %746 = load ptr, ptr %743, align 8, !tbaa !66
  %747 = getelementptr inbounds %struct.InterpFace, ptr %743, i64 0, i32 1
  %748 = load ptr, ptr %747, align 8, !tbaa !68
  %749 = getelementptr inbounds %struct.InterpFace, ptr %743, i64 0, i32 2
  %750 = load ptr, ptr %749, align 8, !tbaa !69
  %751 = getelementptr inbounds %struct.InterpFace, ptr %743, i64 0, i32 3
  %752 = load ptr, ptr %751, align 8, !tbaa !70
  %753 = getelementptr inbounds %struct.InterpFace, ptr %743, i64 0, i32 4
  call void @BM_face_interp_from_face_ex(ptr noundef %0, ptr noundef %746, ptr noundef %746, i8 noundef zeroext 1, ptr noundef %748, ptr noundef %750, ptr noundef %752, ptr noundef nonnull %753) #6
  br label %754

754:                                              ; preds = %740, %745
  %755 = add nuw nsw i64 %741, 1
  %756 = icmp eq i64 %755, %739
  br i1 %756, label %757, label %740, !llvm.loop !108

757:                                              ; preds = %754, %735
  %758 = icmp sgt i32 %147, 0
  br i1 %758, label %759, label %919

759:                                              ; preds = %757
  %760 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 1
  %761 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 2
  %762 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 2
  %763 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %764 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %765

765:                                              ; preds = %759, %915
  %766 = phi ptr [ %154, %759 ], [ %917, %915 ]
  %767 = phi i32 [ 0, %759 ], [ %916, %915 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %768 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %766, i64 0, i32 3
  %769 = load ptr, ptr %768, align 8, !tbaa !96
  %770 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %766, i64 0, i32 4
  %771 = load ptr, ptr %770, align 8, !tbaa !95
  call void @BM_edge_ordered_verts_ex(ptr noundef %769, ptr noundef nonnull %760, ptr noundef nonnull %10, ptr noundef %771) #6
  %772 = load ptr, ptr %10, align 16, !tbaa !48
  %773 = load ptr, ptr %768, align 8, !tbaa !96
  %774 = getelementptr inbounds %struct.BMEdge, ptr %773, i64 0, i32 2
  %775 = load ptr, ptr %774, align 8, !tbaa !86
  %776 = icmp eq ptr %772, %775
  %777 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %766, i64 0, i32 2
  %778 = load ptr, ptr %777, align 8, !tbaa !93
  br i1 %776, label %779, label %795

779:                                              ; preds = %765
  %780 = getelementptr inbounds %struct.BMEdge, ptr %778, i64 0, i32 3
  %781 = load ptr, ptr %780, align 8, !tbaa !87
  %782 = getelementptr inbounds %struct.BMEdge, ptr %773, i64 0, i32 3
  %783 = load ptr, ptr %782, align 8, !tbaa !87
  %784 = icmp eq ptr %781, %783
  br i1 %784, label %786, label %785

785:                                              ; preds = %779
  store ptr %781, ptr %762, align 16, !tbaa !48
  br label %786

786:                                              ; preds = %785, %779
  %787 = phi i32 [ 3, %785 ], [ 2, %779 ]
  %788 = load ptr, ptr %777, align 8, !tbaa !93
  %789 = getelementptr inbounds %struct.BMEdge, ptr %788, i64 0, i32 2
  %790 = load ptr, ptr %789, align 8, !tbaa !86
  %791 = load ptr, ptr %768, align 8, !tbaa !96
  %792 = getelementptr inbounds %struct.BMEdge, ptr %791, i64 0, i32 2
  %793 = load ptr, ptr %792, align 8, !tbaa !86
  %794 = icmp eq ptr %790, %793
  br i1 %794, label %815, label %809

795:                                              ; preds = %765
  %796 = getelementptr inbounds %struct.BMEdge, ptr %778, i64 0, i32 2
  %797 = load ptr, ptr %796, align 8, !tbaa !86
  %798 = icmp eq ptr %797, %775
  br i1 %798, label %800, label %799

799:                                              ; preds = %795
  store ptr %797, ptr %761, align 16, !tbaa !48
  br label %800

800:                                              ; preds = %799, %795
  %801 = phi i32 [ 3, %799 ], [ 2, %795 ]
  %802 = load ptr, ptr %777, align 8, !tbaa !93
  %803 = getelementptr inbounds %struct.BMEdge, ptr %802, i64 0, i32 3
  %804 = load ptr, ptr %803, align 8, !tbaa !87
  %805 = load ptr, ptr %768, align 8, !tbaa !96
  %806 = getelementptr inbounds %struct.BMEdge, ptr %805, i64 0, i32 3
  %807 = load ptr, ptr %806, align 8, !tbaa !87
  %808 = icmp eq ptr %804, %807
  br i1 %808, label %815, label %809

809:                                              ; preds = %800, %786
  %810 = phi i32 [ %787, %786 ], [ %801, %800 ]
  %811 = phi ptr [ %790, %786 ], [ %804, %800 ]
  %812 = add nuw nsw i32 %810, 1
  %813 = zext nneg i32 %810 to i64
  %814 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %813
  store ptr %811, ptr %814, align 8, !tbaa !48
  br label %815

815:                                              ; preds = %809, %800, %786
  %816 = phi i32 [ %787, %786 ], [ %801, %800 ], [ %812, %809 ]
  %817 = icmp eq i32 %816, 2
  br i1 %817, label %915, label %818

818:                                              ; preds = %815
  %819 = load ptr, ptr %770, align 8, !tbaa !95
  %820 = getelementptr inbounds %struct.BMLoop, ptr %819, i64 0, i32 3
  %821 = load ptr, ptr %820, align 8, !tbaa !83
  %822 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %816, ptr noundef %821, i32 noundef 0, i8 noundef zeroext 1) #6
  %823 = getelementptr inbounds %struct.BMFace, ptr %822, i64 0, i32 1
  %824 = load ptr, ptr %823, align 8, !tbaa !52
  %825 = load i32, ptr %763, align 8, !tbaa !53
  %826 = sext i32 %825 to i64
  %827 = getelementptr %struct.BMFlagLayer, ptr %824, i64 %826
  %828 = getelementptr %struct.BMFlagLayer, ptr %827, i64 -1
  %829 = load i16, ptr %828, align 2, !tbaa !57
  %830 = or i16 %829, 1
  store i16 %830, ptr %828, align 2, !tbaa !57
  %831 = getelementptr inbounds %struct.BMFace, ptr %822, i64 0, i32 2
  %832 = load ptr, ptr %831, align 8, !tbaa !45
  %833 = getelementptr inbounds %struct.BMLoop, ptr %832, i64 0, i32 6
  %834 = load ptr, ptr %833, align 8, !tbaa !50
  %835 = getelementptr inbounds %struct.BMLoop, ptr %832, i64 0, i32 2
  %836 = load ptr, ptr %835, align 8, !tbaa !49
  %837 = call ptr @BM_edge_other_loop(ptr noundef %836, ptr noundef %832) #6
  %838 = load ptr, ptr %835, align 8, !tbaa !49
  %839 = call ptr @BM_edge_other_loop(ptr noundef %838, ptr noundef %834) #6
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %837, ptr noundef %832) #6
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %839, ptr noundef %834) #6
  %840 = load ptr, ptr %833, align 8, !tbaa !50
  %841 = getelementptr inbounds %struct.BMLoop, ptr %840, i64 0, i32 6
  %842 = load ptr, ptr %841, align 8, !tbaa !50
  %843 = getelementptr inbounds %struct.BMLoop, ptr %842, i64 0, i32 6
  %844 = load ptr, ptr %843, align 8, !tbaa !50
  br i1 %23, label %845, label %914

845:                                              ; preds = %818
  %846 = load ptr, ptr %770, align 8, !tbaa !95
  %847 = getelementptr inbounds %struct.BMLoop, ptr %846, i64 0, i32 3
  %848 = load ptr, ptr %847, align 8, !tbaa !83
  %849 = getelementptr inbounds %struct.BMHeader, ptr %848, i64 0, i32 1
  %850 = load i32, ptr %849, align 8, !tbaa !88
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds ptr, ptr %42, i64 %851
  %853 = load ptr, ptr %852, align 8, !tbaa !48
  %854 = getelementptr inbounds %struct.BMHeader, ptr %837, i64 0, i32 1
  %855 = load i32, ptr %854, align 8, !tbaa !88
  %856 = getelementptr inbounds %struct.BMHeader, ptr %839, i64 0, i32 1
  %857 = load i32, ptr %856, align 8, !tbaa !88
  %858 = getelementptr inbounds %struct.InterpFace, ptr %853, i64 0, i32 1
  %859 = load ptr, ptr %858, align 8, !tbaa !68
  %860 = sext i32 %855 to i64
  %861 = getelementptr inbounds ptr, ptr %859, i64 %860
  %862 = load ptr, ptr %861, align 8, !tbaa !48
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %764, ptr noundef nonnull %764, ptr noundef %862, ptr noundef %844) #6
  %863 = load ptr, ptr %858, align 8, !tbaa !68
  %864 = sext i32 %857 to i64
  %865 = getelementptr inbounds ptr, ptr %863, i64 %864
  %866 = load ptr, ptr %865, align 8, !tbaa !48
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %764, ptr noundef nonnull %764, ptr noundef %866, ptr noundef %842) #6
  br i1 %29, label %867, label %915

867:                                              ; preds = %845
  %868 = getelementptr inbounds %struct.BMLoop, ptr %842, i64 0, i32 7
  %869 = load ptr, ptr %868, align 8, !tbaa !60
  %870 = getelementptr inbounds %struct.BMLoop, ptr %869, i64 0, i32 2
  %871 = load ptr, ptr %870, align 8, !tbaa !49
  %872 = getelementptr inbounds %struct.BMEdge, ptr %871, i64 0, i32 4
  %873 = load ptr, ptr %872, align 8, !tbaa !80
  %874 = icmp eq ptr %873, null
  br i1 %874, label %884, label %875

875:                                              ; preds = %867
  %876 = getelementptr inbounds %struct.BMLoop, ptr %873, i64 0, i32 4
  %877 = load ptr, ptr %876, align 8, !tbaa !59
  %878 = icmp eq ptr %877, %873
  br i1 %878, label %884, label %879

879:                                              ; preds = %875
  %880 = getelementptr inbounds %struct.BMLoop, ptr %877, i64 0, i32 4
  %881 = load ptr, ptr %880, align 8, !tbaa !59
  %882 = icmp eq ptr %881, %873
  %883 = zext i1 %882 to i8
  br label %884

884:                                              ; preds = %867, %875, %879
  %885 = phi i8 [ 0, %875 ], [ 0, %867 ], [ %883, %879 ]
  %886 = icmp eq i8 %885, 0
  br i1 %886, label %891, label %887

887:                                              ; preds = %884
  %888 = call ptr @BM_edge_other_loop(ptr noundef %871, ptr noundef %842) #6
  %889 = load ptr, ptr %868, align 8, !tbaa !60
  %890 = call ptr @BM_edge_other_loop(ptr noundef %871, ptr noundef %889) #6
  call fastcc void @bm_loop_customdata_merge(ptr noundef %0, ptr noundef %842, ptr noundef %888, ptr noundef %889, ptr noundef %890)
  br label %891

891:                                              ; preds = %887, %884
  %892 = getelementptr inbounds %struct.BMLoop, ptr %844, i64 0, i32 2
  %893 = load ptr, ptr %892, align 8, !tbaa !49
  %894 = getelementptr inbounds %struct.BMEdge, ptr %893, i64 0, i32 4
  %895 = load ptr, ptr %894, align 8, !tbaa !80
  %896 = icmp eq ptr %895, null
  br i1 %896, label %906, label %897

897:                                              ; preds = %891
  %898 = getelementptr inbounds %struct.BMLoop, ptr %895, i64 0, i32 4
  %899 = load ptr, ptr %898, align 8, !tbaa !59
  %900 = icmp eq ptr %899, %895
  br i1 %900, label %906, label %901

901:                                              ; preds = %897
  %902 = getelementptr inbounds %struct.BMLoop, ptr %899, i64 0, i32 4
  %903 = load ptr, ptr %902, align 8, !tbaa !59
  %904 = icmp eq ptr %903, %895
  %905 = zext i1 %904 to i8
  br label %906

906:                                              ; preds = %891, %897, %901
  %907 = phi i8 [ 0, %897 ], [ 0, %891 ], [ %905, %901 ]
  %908 = icmp eq i8 %907, 0
  br i1 %908, label %915, label %909

909:                                              ; preds = %906
  %910 = call ptr @BM_edge_other_loop(ptr noundef %893, ptr noundef %844) #6
  %911 = getelementptr inbounds %struct.BMLoop, ptr %844, i64 0, i32 6
  %912 = load ptr, ptr %911, align 8, !tbaa !50
  %913 = call ptr @BM_edge_other_loop(ptr noundef %893, ptr noundef %912) #6
  call fastcc void @bm_loop_customdata_merge(ptr noundef %0, ptr noundef %844, ptr noundef %910, ptr noundef %912, ptr noundef %913)
  br label %915

914:                                              ; preds = %818
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %837, ptr noundef %844) #6
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %839, ptr noundef %842) #6
  br label %915

915:                                              ; preds = %914, %906, %909, %845, %815
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #6
  %916 = add nuw nsw i32 %767, 1
  %917 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %766, i64 1
  %918 = icmp eq i32 %916, %147
  br i1 %918, label %919, label %765, !llvm.loop !109

919:                                              ; preds = %915, %757
  br i1 %23, label %920, label %955

920:                                              ; preds = %919
  %921 = icmp sgt i32 %41, 0
  br i1 %921, label %922, label %953

922:                                              ; preds = %920
  %923 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %924 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %925 = zext nneg i32 %41 to i64
  br label %926

926:                                              ; preds = %922, %950
  %927 = phi i64 [ 0, %922 ], [ %951, %950 ]
  %928 = getelementptr inbounds ptr, ptr %42, i64 %927
  %929 = load ptr, ptr %928, align 8, !tbaa !48
  %930 = icmp eq ptr %929, null
  br i1 %930, label %950, label %931

931:                                              ; preds = %926
  %932 = getelementptr inbounds %struct.InterpFace, ptr %929, i64 0, i32 1
  %933 = load ptr, ptr %932, align 8, !tbaa !68
  %934 = getelementptr inbounds %struct.InterpFace, ptr %929, i64 0, i32 2
  %935 = load ptr, ptr %934, align 8, !tbaa !69
  %936 = load ptr, ptr %929, align 8, !tbaa !66
  %937 = getelementptr inbounds %struct.BMFace, ptr %936, i64 0, i32 3
  %938 = load i32, ptr %937, align 8, !tbaa !37
  %939 = icmp sgt i32 %938, 0
  br i1 %939, label %940, label %950

940:                                              ; preds = %931, %940
  %941 = phi i64 [ %944, %940 ], [ 0, %931 ]
  %942 = getelementptr inbounds ptr, ptr %933, i64 %941
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %923, ptr noundef %942) #6
  %943 = getelementptr inbounds ptr, ptr %935, i64 %941
  call void @CustomData_bmesh_free_block(ptr noundef nonnull %924, ptr noundef %943) #6
  %944 = add nuw nsw i64 %941, 1
  %945 = load ptr, ptr %929, align 8, !tbaa !66
  %946 = getelementptr inbounds %struct.BMFace, ptr %945, i64 0, i32 3
  %947 = load i32, ptr %946, align 8, !tbaa !37
  %948 = sext i32 %947 to i64
  %949 = icmp slt i64 %944, %948
  br i1 %949, label %940, label %950, !llvm.loop !72

950:                                              ; preds = %940, %931, %926
  %951 = add nuw nsw i64 %927, 1
  %952 = icmp eq i64 %951, %925
  br i1 %952, label %953, label %926, !llvm.loop !110

953:                                              ; preds = %950, %920
  call void @BLI_memarena_free(ptr noundef %40) #6
  %954 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %954(ptr noundef %42) #6
  br label %955

955:                                              ; preds = %953, %919
  %956 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %956, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #6
  %957 = fcmp une float %22, 0.000000e+00
  br i1 %957, label %958, label %1220

958:                                              ; preds = %955
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #6
  %959 = icmp sgt i32 %147, 0
  br i1 %959, label %962, label %960

960:                                              ; preds = %962, %958
  %961 = icmp sgt i32 %147, 0
  br i1 %961, label %982, label %980

962:                                              ; preds = %958, %962
  %963 = phi ptr [ %978, %962 ], [ %154, %958 ]
  %964 = phi i32 [ %977, %962 ], [ 0, %958 ]
  %965 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %963, i64 0, i32 3
  %966 = load ptr, ptr %965, align 8, !tbaa !96
  %967 = getelementptr inbounds %struct.BMEdge, ptr %966, i64 0, i32 2
  %968 = load ptr, ptr %967, align 8, !tbaa !86
  %969 = getelementptr inbounds %struct.BMVert, ptr %968, i64 0, i32 3
  store float 0.000000e+00, ptr %969, align 4, !tbaa !62
  %970 = getelementptr inbounds %struct.BMVert, ptr %968, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %970, align 4, !tbaa !62
  %971 = getelementptr inbounds %struct.BMVert, ptr %968, i64 0, i32 3, i64 2
  store float 0.000000e+00, ptr %971, align 4, !tbaa !62
  %972 = getelementptr inbounds %struct.BMEdge, ptr %966, i64 0, i32 3
  %973 = load ptr, ptr %972, align 8, !tbaa !87
  %974 = getelementptr inbounds %struct.BMVert, ptr %973, i64 0, i32 3
  store float 0.000000e+00, ptr %974, align 4, !tbaa !62
  %975 = getelementptr inbounds %struct.BMVert, ptr %973, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %975, align 4, !tbaa !62
  %976 = getelementptr inbounds %struct.BMVert, ptr %973, i64 0, i32 3, i64 2
  store float 0.000000e+00, ptr %976, align 4, !tbaa !62
  %977 = add nuw nsw i32 %964, 1
  %978 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %963, i64 1
  %979 = icmp eq i32 %977, %147
  br i1 %979, label %960, label %962, !llvm.loop !111

980:                                              ; preds = %982, %960
  %981 = icmp sgt i32 %147, 0
  br i1 %981, label %1025, label %1088

982:                                              ; preds = %960, %982
  %983 = phi ptr [ %1023, %982 ], [ %154, %960 ]
  %984 = phi i32 [ %1022, %982 ], [ 0, %960 ]
  %985 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %983, i64 0, i32 4
  %986 = load ptr, ptr %985, align 8, !tbaa !95
  %987 = getelementptr inbounds %struct.BMLoop, ptr %986, i64 0, i32 3
  %988 = load ptr, ptr %987, align 8, !tbaa !83
  %989 = getelementptr inbounds %struct.BMFace, ptr %988, i64 0, i32 4
  %990 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %983, i64 0, i32 3
  %991 = load ptr, ptr %990, align 8, !tbaa !96
  %992 = getelementptr inbounds %struct.BMEdge, ptr %991, i64 0, i32 2
  %993 = load ptr, ptr %992, align 8, !tbaa !86
  %994 = getelementptr inbounds %struct.BMVert, ptr %993, i64 0, i32 3
  %995 = load float, ptr %989, align 4, !tbaa !62
  %996 = load float, ptr %994, align 4, !tbaa !62
  %997 = fadd float %995, %996
  store float %997, ptr %994, align 4, !tbaa !62
  %998 = getelementptr inbounds %struct.BMFace, ptr %988, i64 0, i32 4, i64 1
  %999 = load float, ptr %998, align 4, !tbaa !62
  %1000 = getelementptr inbounds %struct.BMVert, ptr %993, i64 0, i32 3, i64 1
  %1001 = load float, ptr %1000, align 4, !tbaa !62
  %1002 = fadd float %999, %1001
  store float %1002, ptr %1000, align 4, !tbaa !62
  %1003 = getelementptr inbounds %struct.BMFace, ptr %988, i64 0, i32 4, i64 2
  %1004 = load float, ptr %1003, align 4, !tbaa !62
  %1005 = getelementptr inbounds %struct.BMVert, ptr %993, i64 0, i32 3, i64 2
  %1006 = load float, ptr %1005, align 4, !tbaa !62
  %1007 = fadd float %1004, %1006
  store float %1007, ptr %1005, align 4, !tbaa !62
  %1008 = getelementptr inbounds %struct.BMEdge, ptr %991, i64 0, i32 3
  %1009 = load ptr, ptr %1008, align 8, !tbaa !87
  %1010 = getelementptr inbounds %struct.BMVert, ptr %1009, i64 0, i32 3
  %1011 = load float, ptr %989, align 4, !tbaa !62
  %1012 = load float, ptr %1010, align 4, !tbaa !62
  %1013 = fadd float %1011, %1012
  store float %1013, ptr %1010, align 4, !tbaa !62
  %1014 = load float, ptr %998, align 4, !tbaa !62
  %1015 = getelementptr inbounds %struct.BMVert, ptr %1009, i64 0, i32 3, i64 1
  %1016 = load float, ptr %1015, align 4, !tbaa !62
  %1017 = fadd float %1014, %1016
  store float %1017, ptr %1015, align 4, !tbaa !62
  %1018 = load float, ptr %1003, align 4, !tbaa !62
  %1019 = getelementptr inbounds %struct.BMVert, ptr %1009, i64 0, i32 3, i64 2
  %1020 = load float, ptr %1019, align 4, !tbaa !62
  %1021 = fadd float %1018, %1020
  store float %1021, ptr %1019, align 4, !tbaa !62
  %1022 = add nuw nsw i32 %984, 1
  %1023 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %983, i64 1
  %1024 = icmp eq i32 %1022, %147
  br i1 %1024, label %980, label %982, !llvm.loop !112

1025:                                             ; preds = %980, %1084
  %1026 = phi ptr [ %1086, %1084 ], [ %154, %980 ]
  %1027 = phi i32 [ %1085, %1084 ], [ 0, %980 ]
  %1028 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %1026, i64 0, i32 3
  %1029 = load ptr, ptr %1028, align 8, !tbaa !96
  %1030 = getelementptr inbounds %struct.BMEdge, ptr %1029, i64 0, i32 2
  %1031 = load ptr, ptr %1030, align 8, !tbaa !86
  %1032 = getelementptr inbounds %struct.BMVert, ptr %1031, i64 0, i32 3
  %1033 = load float, ptr %1032, align 4, !tbaa !62
  %1034 = getelementptr inbounds %struct.BMVert, ptr %1031, i64 0, i32 3, i64 1
  %1035 = load float, ptr %1034, align 4, !tbaa !62
  %1036 = fmul float %1035, %1035
  %1037 = call float @llvm.fmuladd.f32(float %1033, float %1033, float %1036)
  %1038 = getelementptr inbounds %struct.BMVert, ptr %1031, i64 0, i32 3, i64 2
  %1039 = load float, ptr %1038, align 4, !tbaa !62
  %1040 = call float @llvm.fmuladd.f32(float %1039, float %1039, float %1037)
  %1041 = fcmp une float %1040, 1.000000e+00
  br i1 %1041, label %1042, label %1056

1042:                                             ; preds = %1025
  %1043 = fcmp ogt float %1040, 0x38AA95A5C0000000
  br i1 %1043, label %1044, label %1053

1044:                                             ; preds = %1042
  %1045 = call float @sqrtf(float noundef %1040) #6
  %1046 = fdiv float 1.000000e+00, %1045
  %1047 = load float, ptr %1032, align 4, !tbaa !62
  %1048 = fmul float %1047, %1046
  store float %1048, ptr %1032, align 4, !tbaa !62
  %1049 = load float, ptr %1034, align 4, !tbaa !62
  %1050 = fmul float %1046, %1049
  store float %1050, ptr %1034, align 4, !tbaa !62
  %1051 = load float, ptr %1038, align 4, !tbaa !62
  %1052 = fmul float %1046, %1051
  br label %1054

1053:                                             ; preds = %1042
  store float 0.000000e+00, ptr %1032, align 4, !tbaa !62
  store float 0.000000e+00, ptr %1034, align 4, !tbaa !62
  br label %1054

1054:                                             ; preds = %1044, %1053
  %1055 = phi float [ 0.000000e+00, %1053 ], [ %1052, %1044 ]
  store float %1055, ptr %1038, align 4, !tbaa !62
  br label %1056

1056:                                             ; preds = %1054, %1025
  %1057 = load ptr, ptr %1028, align 8, !tbaa !96
  %1058 = getelementptr inbounds %struct.BMEdge, ptr %1057, i64 0, i32 3
  %1059 = load ptr, ptr %1058, align 8, !tbaa !87
  %1060 = getelementptr inbounds %struct.BMVert, ptr %1059, i64 0, i32 3
  %1061 = load float, ptr %1060, align 4, !tbaa !62
  %1062 = getelementptr inbounds %struct.BMVert, ptr %1059, i64 0, i32 3, i64 1
  %1063 = load float, ptr %1062, align 4, !tbaa !62
  %1064 = fmul float %1063, %1063
  %1065 = call float @llvm.fmuladd.f32(float %1061, float %1061, float %1064)
  %1066 = getelementptr inbounds %struct.BMVert, ptr %1059, i64 0, i32 3, i64 2
  %1067 = load float, ptr %1066, align 4, !tbaa !62
  %1068 = call float @llvm.fmuladd.f32(float %1067, float %1067, float %1065)
  %1069 = fcmp une float %1068, 1.000000e+00
  br i1 %1069, label %1070, label %1084

1070:                                             ; preds = %1056
  %1071 = fcmp ogt float %1068, 0x38AA95A5C0000000
  br i1 %1071, label %1072, label %1081

1072:                                             ; preds = %1070
  %1073 = call float @sqrtf(float noundef %1068) #6
  %1074 = fdiv float 1.000000e+00, %1073
  %1075 = load float, ptr %1060, align 4, !tbaa !62
  %1076 = fmul float %1075, %1074
  store float %1076, ptr %1060, align 4, !tbaa !62
  %1077 = load float, ptr %1062, align 4, !tbaa !62
  %1078 = fmul float %1074, %1077
  store float %1078, ptr %1062, align 4, !tbaa !62
  %1079 = load float, ptr %1066, align 4, !tbaa !62
  %1080 = fmul float %1074, %1079
  br label %1082

1081:                                             ; preds = %1070
  store float 0.000000e+00, ptr %1060, align 4, !tbaa !62
  store float 0.000000e+00, ptr %1062, align 4, !tbaa !62
  br label %1082

1082:                                             ; preds = %1072, %1081
  %1083 = phi float [ 0.000000e+00, %1081 ], [ %1080, %1072 ]
  store float %1083, ptr %1066, align 4, !tbaa !62
  br label %1084

1084:                                             ; preds = %1056, %1082
  %1085 = add nuw nsw i32 %1027, 1
  %1086 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %1026, i64 1
  %1087 = icmp eq i32 %1085, %147
  br i1 %1087, label %1088, label %1025, !llvm.loop !113

1088:                                             ; preds = %1084, %980
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  %1089 = call ptr @BMO_iter_new(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8) #6
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1107, label %1091

1091:                                             ; preds = %1088, %1104
  %1092 = phi ptr [ %1105, %1104 ], [ %1089, %1088 ]
  store i8 9, ptr %46, align 4, !tbaa !74
  store ptr @bmiter__vert_of_face_begin, ptr %47, align 8, !tbaa !76
  store ptr @bmiter__vert_of_face_step, ptr %48, align 8, !tbaa !77
  store ptr %1092, ptr %4, align 8, !tbaa !79
  call void @bmiter__vert_of_face_begin(ptr noundef nonnull %4) #6
  %1093 = load ptr, ptr %48, align 8, !tbaa !77
  %1094 = call ptr %1093(ptr noundef nonnull %4) #6
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1104, label %1096

1096:                                             ; preds = %1091, %1096
  %1097 = phi ptr [ %1102, %1096 ], [ %1094, %1091 ]
  %1098 = getelementptr inbounds %struct.BMHeader, ptr %1097, i64 0, i32 3
  %1099 = load i8, ptr %1098, align 1, !tbaa !84
  %1100 = or i8 %1099, 16
  store i8 %1100, ptr %1098, align 1, !tbaa !84
  %1101 = load ptr, ptr %48, align 8, !tbaa !77
  %1102 = call ptr %1101(ptr noundef nonnull %4) #6
  %1103 = icmp eq ptr %1102, null
  br i1 %1103, label %1104, label %1096, !llvm.loop !114

1104:                                             ; preds = %1096, %1091
  %1105 = call ptr @BMO_iter_step(ptr noundef nonnull %11) #6
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1107, label %1091, !llvm.loop !115

1107:                                             ; preds = %1104, %1088
  %1108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %1109 = load i32, ptr %0, align 8, !tbaa !116
  %1110 = sext i32 %1109 to i64
  %1111 = mul nsw i64 %1110, 12
  %1112 = call ptr %1108(i64 noundef %1111, ptr noundef nonnull @__func__.bmo_inset_region_exec) #6
  store i8 1, ptr %46, align 4, !tbaa !74
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !76
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !77
  %1113 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %1114 = load ptr, ptr %1113, align 8, !tbaa !117
  store ptr %1114, ptr %4, align 8, !tbaa !79
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #6
  %1115 = load ptr, ptr %48, align 8, !tbaa !77
  %1116 = call ptr %1115(ptr noundef nonnull %4) #6
  %1117 = icmp eq ptr %1116, null
  br i1 %1117, label %1191, label %1118

1118:                                             ; preds = %1107
  %1119 = icmp eq i8 %18, 0
  %1120 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %1121 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %1122 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %1123 = icmp eq i8 %17, 0
  br label %1124

1124:                                             ; preds = %1118, %1186
  %1125 = phi i64 [ 0, %1118 ], [ %1189, %1186 ]
  %1126 = phi ptr [ %1116, %1118 ], [ %1188, %1186 ]
  %1127 = getelementptr inbounds %struct.BMHeader, ptr %1126, i64 0, i32 3
  %1128 = load i8, ptr %1127, align 1, !tbaa !84
  %1129 = and i8 %1128, 16
  %1130 = icmp eq i8 %1129, 0
  br i1 %1130, label %1186, label %1131

1131:                                             ; preds = %1124
  br i1 %1119, label %1160, label %1132

1132:                                             ; preds = %1131
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  store i8 4, ptr %1120, align 4, !tbaa !74
  store ptr @bmiter__edge_of_vert_begin, ptr %1121, align 8, !tbaa !76
  store ptr @bmiter__edge_of_vert_step, ptr %1122, align 8, !tbaa !77
  store ptr %1126, ptr %3, align 8, !tbaa !79
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #6
  %1133 = load ptr, ptr %1122, align 8, !tbaa !77
  %1134 = call ptr %1133(ptr noundef nonnull %3) #6
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1155, label %1136

1136:                                             ; preds = %1132, %1149
  %1137 = phi ptr [ %1153, %1149 ], [ %1134, %1132 ]
  %1138 = phi i32 [ %1151, %1149 ], [ 0, %1132 ]
  %1139 = phi float [ %1150, %1149 ], [ 0.000000e+00, %1132 ]
  %1140 = getelementptr inbounds %struct.BMHeader, ptr %1137, i64 0, i32 1
  %1141 = load i32, ptr %1140, align 8, !tbaa !88
  %1142 = icmp eq i32 %1141, -1
  br i1 %1142, label %1149, label %1143

1143:                                             ; preds = %1136
  %1144 = sext i32 %1141 to i64
  %1145 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %154, i64 %1144, i32 1
  %1146 = load float, ptr %1145, align 4, !tbaa !91
  %1147 = fadd float %1139, %1146
  %1148 = add nsw i32 %1138, 1
  br label %1149

1149:                                             ; preds = %1143, %1136
  %1150 = phi float [ %1147, %1143 ], [ %1139, %1136 ]
  %1151 = phi i32 [ %1148, %1143 ], [ %1138, %1136 ]
  %1152 = load ptr, ptr %1122, align 8, !tbaa !77
  %1153 = call ptr %1152(ptr noundef nonnull %3) #6
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1155, label %1136, !llvm.loop !118

1155:                                             ; preds = %1149, %1132
  %1156 = phi float [ 0.000000e+00, %1132 ], [ %1150, %1149 ]
  %1157 = phi i32 [ 0, %1132 ], [ %1151, %1149 ]
  %1158 = sitofp i32 %1157 to float
  %1159 = fdiv float %1156, %1158
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  br label %1160

1160:                                             ; preds = %1131, %1155
  %1161 = phi float [ %1159, %1155 ], [ 1.000000e+00, %1131 ]
  %1162 = fmul float %22, %1161
  br i1 %1123, label %1165, label %1163

1163:                                             ; preds = %1160
  %1164 = call float @BM_vert_calc_shell_factor(ptr noundef nonnull %1126) #6
  br label %1165

1165:                                             ; preds = %1160, %1163
  %1166 = phi float [ %1164, %1163 ], [ 1.000000e+00, %1160 ]
  %1167 = fmul float %1162, %1166
  %1168 = getelementptr inbounds [3 x float], ptr %1112, i64 %1125
  %1169 = getelementptr inbounds %struct.BMVert, ptr %1126, i64 0, i32 2
  %1170 = getelementptr inbounds %struct.BMVert, ptr %1126, i64 0, i32 3
  %1171 = load float, ptr %1169, align 4, !tbaa !62
  %1172 = load float, ptr %1170, align 4, !tbaa !62
  %1173 = call float @llvm.fmuladd.f32(float %1172, float %1167, float %1171)
  store float %1173, ptr %1168, align 4, !tbaa !62
  %1174 = getelementptr inbounds %struct.BMVert, ptr %1126, i64 0, i32 2, i64 1
  %1175 = load float, ptr %1174, align 4, !tbaa !62
  %1176 = getelementptr inbounds %struct.BMVert, ptr %1126, i64 0, i32 3, i64 1
  %1177 = load float, ptr %1176, align 4, !tbaa !62
  %1178 = call float @llvm.fmuladd.f32(float %1177, float %1167, float %1175)
  %1179 = getelementptr inbounds float, ptr %1168, i64 1
  store float %1178, ptr %1179, align 4, !tbaa !62
  %1180 = getelementptr inbounds %struct.BMVert, ptr %1126, i64 0, i32 2, i64 2
  %1181 = load float, ptr %1180, align 4, !tbaa !62
  %1182 = getelementptr inbounds %struct.BMVert, ptr %1126, i64 0, i32 3, i64 2
  %1183 = load float, ptr %1182, align 4, !tbaa !62
  %1184 = call float @llvm.fmuladd.f32(float %1183, float %1167, float %1181)
  %1185 = getelementptr inbounds float, ptr %1168, i64 2
  store float %1184, ptr %1185, align 4, !tbaa !62
  br label %1186

1186:                                             ; preds = %1124, %1165
  %1187 = load ptr, ptr %48, align 8, !tbaa !77
  %1188 = call ptr %1187(ptr noundef nonnull %4) #6
  %1189 = add nuw i64 %1125, 1
  %1190 = icmp eq ptr %1188, null
  br i1 %1190, label %1191, label %1124, !llvm.loop !119

1191:                                             ; preds = %1186, %1107
  store i8 1, ptr %46, align 4, !tbaa !74
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !76
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !77
  %1192 = load ptr, ptr %1113, align 8, !tbaa !117
  store ptr %1192, ptr %4, align 8, !tbaa !79
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #6
  %1193 = load ptr, ptr %48, align 8, !tbaa !77
  %1194 = call ptr %1193(ptr noundef nonnull %4) #6
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1218, label %1196

1196:                                             ; preds = %1191, %1213
  %1197 = phi i64 [ %1216, %1213 ], [ 0, %1191 ]
  %1198 = phi ptr [ %1215, %1213 ], [ %1194, %1191 ]
  %1199 = getelementptr inbounds %struct.BMHeader, ptr %1198, i64 0, i32 3
  %1200 = load i8, ptr %1199, align 1, !tbaa !84
  %1201 = and i8 %1200, 16
  %1202 = icmp eq i8 %1201, 0
  br i1 %1202, label %1213, label %1203

1203:                                             ; preds = %1196
  %1204 = getelementptr inbounds %struct.BMVert, ptr %1198, i64 0, i32 2
  %1205 = getelementptr inbounds [3 x float], ptr %1112, i64 %1197
  %1206 = load float, ptr %1205, align 4, !tbaa !62
  store float %1206, ptr %1204, align 4, !tbaa !62
  %1207 = getelementptr inbounds float, ptr %1205, i64 1
  %1208 = load float, ptr %1207, align 4, !tbaa !62
  %1209 = getelementptr inbounds %struct.BMVert, ptr %1198, i64 0, i32 2, i64 1
  store float %1208, ptr %1209, align 4, !tbaa !62
  %1210 = getelementptr inbounds float, ptr %1205, i64 2
  %1211 = load float, ptr %1210, align 4, !tbaa !62
  %1212 = getelementptr inbounds %struct.BMVert, ptr %1198, i64 0, i32 2, i64 2
  store float %1211, ptr %1212, align 4, !tbaa !62
  br label %1213

1213:                                             ; preds = %1196, %1203
  %1214 = load ptr, ptr %48, align 8, !tbaa !77
  %1215 = call ptr %1214(ptr noundef nonnull %4) #6
  %1216 = add nuw i64 %1197, 1
  %1217 = icmp eq ptr %1215, null
  br i1 %1217, label %1218, label %1196, !llvm.loop !120

1218:                                             ; preds = %1213, %1191
  %1219 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %1219(ptr noundef %1112) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #6
  br label %1220

1220:                                             ; preds = %1218, %955
  %1221 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %1221(ptr noundef %154) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret void
}

declare zeroext i8 @CustomData_has_math(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_enable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_disable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare void @bmesh_edge_separate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_edge_calc_face_tangent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_interp_face_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !37
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr @BLI_memarena_alloc(ptr noundef %3, i64 noundef %8) #6
  %10 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !68
  %11 = load i32, ptr %5, align 8, !tbaa !37
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @BLI_memarena_alloc(ptr noundef %3, i64 noundef %13) #6
  %15 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !69
  %16 = load i32, ptr %5, align 8, !tbaa !37
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr @BLI_memarena_alloc(ptr noundef %3, i64 noundef %18) #6
  %20 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !70
  %21 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  tail call void @axis_dominant_v3_to_m3(ptr noundef nonnull %21, ptr noundef nonnull %22) #6
  store ptr %2, ptr %0, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %26 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  br label %27

27:                                               ; preds = %27, %4
  %28 = phi i64 [ %41, %27 ], [ 0, %4 ]
  %29 = phi ptr [ %43, %27 ], [ %24, %4 ]
  %30 = getelementptr inbounds [2 x float], ptr %19, i64 %28
  %31 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  tail call void @mul_v2_m3v3(ptr noundef %30, ptr noundef nonnull %21, ptr noundef nonnull %33) #6
  %34 = getelementptr inbounds ptr, ptr %9, i64 %28
  store ptr null, ptr %34, align 8, !tbaa !48
  %35 = load ptr, ptr %29, align 8, !tbaa !121
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %25, ptr noundef nonnull %25, ptr noundef %35, ptr noundef nonnull %34) #6
  %36 = getelementptr inbounds ptr, ptr %14, i64 %28
  store ptr null, ptr %36, align 8, !tbaa !48
  %37 = load ptr, ptr %31, align 8, !tbaa !46
  %38 = load ptr, ptr %37, align 8, !tbaa !122
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %26, ptr noundef nonnull %26, ptr noundef %38, ptr noundef nonnull %36) #6
  %39 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 1
  %40 = trunc i64 %28 to i32
  store i32 %40, ptr %39, align 8, !tbaa !88
  %41 = add nuw i64 %28, 1
  %42 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = icmp eq ptr %43, %24
  br i1 %44, label %45, label %27, !llvm.loop !123

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %47 = load i8, ptr %46, align 4, !tbaa !90
  %48 = or i8 %47, 4
  store i8 %48, ptr %46, align 4, !tbaa !90
  ret void
}

declare void @bmesh_vert_separate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_loop_other_vert_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup_default(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_interp_from_face_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @BM_edge_ordered_verts_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_edge_other_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_loop_customdata_merge(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %4, %10 ], [ %15, %13 ]
  %18 = phi ptr [ %12, %10 ], [ %3, %13 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = tail call ptr @BM_edge_other_loop(ptr noundef %20, ptr noundef %3) #6
  %24 = tail call ptr @BM_edge_other_loop(ptr noundef %22, ptr noundef %4) #6
  %25 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %136, label %30

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !124
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %136

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %36 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 7
  %38 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 2
  %39 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 7
  %40 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %41 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %42 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %43 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %44

44:                                               ; preds = %34, %131
  %45 = phi i64 [ 0, %34 ], [ %132, %131 ]
  %46 = load ptr, ptr %35, align 8, !tbaa !125
  %47 = getelementptr inbounds %struct.CustomDataLayer, ptr %46, i64 %45
  %48 = load i32, ptr %47, align 8, !tbaa !126
  %49 = getelementptr inbounds %struct.CustomDataLayer, ptr %46, i64 %45, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !128
  %51 = trunc i64 %45 to i32
  %52 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %35, i32 noundef %51) #6
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %131, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr %1, align 8, !tbaa !121
  %56 = sext i32 %50 to i64
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  %58 = load ptr, ptr %2, align 8, !tbaa !121
  %59 = getelementptr inbounds i8, ptr %58, i64 %56
  %60 = call zeroext i8 @CustomData_data_equals(i32 noundef %48, ptr noundef %57, ptr noundef %59) #6
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %62, label %131

62:                                               ; preds = %54
  %63 = load ptr, ptr %23, align 8, !tbaa !121
  %64 = getelementptr inbounds i8, ptr %63, i64 %56
  %65 = load ptr, ptr %24, align 8, !tbaa !121
  %66 = getelementptr inbounds i8, ptr %65, i64 %56
  call void @CustomData_data_add(i32 noundef %48, ptr noundef %64, ptr noundef %66) #6
  %67 = load ptr, ptr %23, align 8, !tbaa !121
  %68 = getelementptr inbounds i8, ptr %67, i64 %56
  call void @CustomData_data_multiply(i32 noundef %48, ptr noundef %68, float noundef 5.000000e-01) #6
  %69 = load ptr, ptr %23, align 8, !tbaa !121
  %70 = getelementptr inbounds i8, ptr %69, i64 %56
  %71 = load ptr, ptr %24, align 8, !tbaa !121
  %72 = getelementptr inbounds i8, ptr %71, i64 %56
  call void @CustomData_data_copy_value(i32 noundef %48, ptr noundef %70, ptr noundef %72) #6
  %73 = load ptr, ptr %23, align 8, !tbaa !121
  %74 = getelementptr inbounds i8, ptr %73, i64 %56
  br i1 %9, label %75, label %81

75:                                               ; preds = %62
  %76 = load ptr, ptr %38, align 8, !tbaa !49
  %77 = load ptr, ptr %39, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct.BMLoop, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !49
  %80 = icmp eq ptr %76, %79
  br i1 %80, label %126, label %87

81:                                               ; preds = %62
  %82 = load ptr, ptr %36, align 8, !tbaa !49
  %83 = load ptr, ptr %37, align 8, !tbaa !60
  %84 = getelementptr inbounds %struct.BMLoop, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  %86 = icmp eq ptr %82, %85
  br i1 %86, label %126, label %87

87:                                               ; preds = %81, %75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %88 = load ptr, ptr %4, align 8, !tbaa !121
  %89 = getelementptr inbounds i8, ptr %88, i64 %56
  %90 = load ptr, ptr %3, align 8, !tbaa !121
  %91 = getelementptr inbounds i8, ptr %90, i64 %56
  %92 = load ptr, ptr %40, align 8, !tbaa !46
  store i8 6, ptr %41, align 4, !tbaa !74
  store ptr @bmiter__loop_of_vert_begin, ptr %42, align 8, !tbaa !76
  store ptr @bmiter__loop_of_vert_step, ptr %43, align 8, !tbaa !77
  store ptr %92, ptr %6, align 8, !tbaa !79
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %6) #6
  %93 = load ptr, ptr %43, align 8, !tbaa !77
  %94 = call ptr %93(ptr noundef nonnull %6) #6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %125, label %96

96:                                               ; preds = %87, %121
  %97 = phi ptr [ %123, %121 ], [ %94, %87 ]
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !83
  %100 = getelementptr inbounds %struct.BMHeader, ptr %99, i64 0, i32 3
  %101 = load i8, ptr %100, align 1, !tbaa !84
  %102 = and i8 %101, 16
  %103 = icmp eq i8 %102, 0
  %104 = icmp eq ptr %97, %3
  %105 = or i1 %104, %103
  %106 = icmp eq ptr %97, %4
  %107 = or i1 %106, %105
  %108 = icmp eq ptr %97, %23
  %109 = select i1 %107, i1 true, i1 %108
  %110 = icmp eq ptr %97, %24
  %111 = or i1 %110, %109
  br i1 %111, label %121, label %112

112:                                              ; preds = %96
  %113 = load ptr, ptr %97, align 8, !tbaa !121
  %114 = getelementptr inbounds i8, ptr %113, i64 %56
  %115 = call zeroext i8 @CustomData_data_equals(i32 noundef %48, ptr noundef %114, ptr noundef %89) #6
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = call zeroext i8 @CustomData_data_equals(i32 noundef %48, ptr noundef %114, ptr noundef %91) #6
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117, %112
  call void @CustomData_data_copy_value(i32 noundef %48, ptr noundef %74, ptr noundef %114) #6
  br label %121

121:                                              ; preds = %117, %120, %96
  %122 = load ptr, ptr %43, align 8, !tbaa !77
  %123 = call ptr %122(ptr noundef nonnull %6) #6
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %96, !llvm.loop !129

125:                                              ; preds = %121, %87
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  br label %126

126:                                              ; preds = %75, %81, %125
  %127 = load ptr, ptr %4, align 8, !tbaa !121
  %128 = getelementptr inbounds i8, ptr %127, i64 %56
  call void @CustomData_data_copy_value(i32 noundef %48, ptr noundef %74, ptr noundef %128) #6
  %129 = load ptr, ptr %3, align 8, !tbaa !121
  %130 = getelementptr inbounds i8, ptr %129, i64 %56
  call void @CustomData_data_copy_value(i32 noundef %48, ptr noundef %74, ptr noundef %130) #6
  br label %131

131:                                              ; preds = %54, %126, %44
  %132 = add nuw nsw i64 %45, 1
  %133 = load i32, ptr %31, align 4, !tbaa !124
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %44, label %136, !llvm.loop !130

136:                                              ; preds = %131, %30, %16
  ret void
}

declare float @BM_vert_calc_shell_factor(ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_loop_separate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

declare void @bmiter__vert_of_face_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare zeroext i8 @CustomData_layer_has_math(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_data_equals(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_data_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_data_multiply(i32 noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @CustomData_data_copy_value(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_free_block(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!38, !43, i64 32}
!38 = !{!"BMFace", !39, i64 0, !40, i64 16, !40, i64 24, !43, i64 32, !41, i64 36, !44, i64 48}
!39 = !{!"BMHeader", !40, i64 0, !43, i64 8, !41, i64 12, !41, i64 13, !41, i64 14}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"int", !41, i64 0}
!44 = !{!"short", !41, i64 0}
!45 = !{!38, !40, i64 24}
!46 = !{!47, !40, i64 16}
!47 = !{!"BMLoop", !39, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64}
!48 = !{!40, !40, i64 0}
!49 = !{!47, !40, i64 24}
!50 = !{!47, !40, i64 56}
!51 = distinct !{!51, !35, !36}
!52 = !{!38, !40, i64 16}
!53 = !{!54, !43, i64 128}
!54 = !{!"BMesh", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !41, i64 28, !41, i64 29, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !43, i64 88, !43, i64 92, !43, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !43, i64 128, !40, i64 136, !55, i64 144, !55, i64 344, !55, i64 544, !55, i64 744, !44, i64 944, !43, i64 948, !43, i64 952, !43, i64 956, !56, i64 960, !40, i64 976, !56, i64 984, !40, i64 1000}
!55 = !{!"CustomData", !40, i64 0, !41, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !40, i64 184, !40, i64 192}
!56 = !{!"ListBase", !40, i64 0, !40, i64 8}
!57 = !{!58, !44, i64 0}
!58 = !{!"BMFlagLayer", !44, i64 0}
!59 = !{!47, !40, i64 40}
!60 = !{!47, !40, i64 64}
!61 = distinct !{!61, !35, !36}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !41, i64 0}
!64 = distinct !{!64, !35, !36}
!65 = distinct !{!65, !35, !36}
!66 = !{!67, !40, i64 0}
!67 = !{!"InterpFace", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32}
!68 = !{!67, !40, i64 8}
!69 = !{!67, !40, i64 16}
!70 = !{!67, !40, i64 24}
!71 = distinct !{!71, !35, !36}
!72 = distinct !{!72, !35, !36}
!73 = !{!54, !43, i64 12}
!74 = !{!75, !41, i64 60}
!75 = !{!"BMIter", !41, i64 0, !40, i64 40, !40, i64 48, !43, i64 56, !41, i64 60}
!76 = !{!75, !40, i64 40}
!77 = !{!75, !40, i64 48}
!78 = !{!54, !40, i64 40}
!79 = !{!41, !41, i64 0}
!80 = !{!81, !40, i64 40}
!81 = !{!"BMEdge", !39, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !82, i64 48, !82, i64 64}
!82 = !{!"BMDiskLink", !40, i64 0, !40, i64 8}
!83 = !{!47, !40, i64 32}
!84 = !{!39, !41, i64 13}
!85 = distinct !{!85, !35, !36}
!86 = !{!81, !40, i64 24}
!87 = !{!81, !40, i64 32}
!88 = !{!39, !43, i64 8}
!89 = distinct !{!89, !35, !36}
!90 = !{!54, !41, i64 28}
!91 = !{!92, !63, i64 12}
!92 = !{!"SplitEdgeInfo", !41, i64 0, !63, i64 12, !40, i64 16, !40, i64 24, !40, i64 32}
!93 = !{!92, !40, i64 16}
!94 = distinct !{!94, !35, !36}
!95 = !{!92, !40, i64 32}
!96 = !{!92, !40, i64 24}
!97 = distinct !{!97, !35, !36}
!98 = distinct !{!98, !35, !36}
!99 = distinct !{!99, !35, !36}
!100 = !{!43, !43, i64 0}
!101 = distinct !{!101, !35, !36}
!102 = !{!103, !40, i64 48}
!103 = !{!"BMVert", !39, i64 0, !40, i64 16, !41, i64 24, !41, i64 36, !40, i64 48}
!104 = distinct !{!104, !35, !36}
!105 = distinct !{!105, !35, !36}
!106 = distinct !{!106, !35, !36}
!107 = distinct !{!107, !35, !36}
!108 = distinct !{!108, !35, !36}
!109 = distinct !{!109, !35, !36}
!110 = distinct !{!110, !35, !36}
!111 = distinct !{!111, !35, !36}
!112 = distinct !{!112, !35, !36}
!113 = distinct !{!113, !35, !36}
!114 = distinct !{!114, !35, !36}
!115 = distinct !{!115, !35, !36}
!116 = !{!54, !43, i64 0}
!117 = !{!54, !40, i64 32}
!118 = distinct !{!118, !35, !36}
!119 = distinct !{!119, !35, !36}
!120 = distinct !{!120, !35, !36}
!121 = !{!47, !40, i64 0}
!122 = !{!103, !40, i64 0}
!123 = distinct !{!123, !35, !36}
!124 = !{!54, !43, i64 716}
!125 = !{!54, !40, i64 544}
!126 = !{!127, !43, i64 0}
!127 = !{!"CustomDataLayer", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !41, i64 32, !40, i64 96}
!128 = !{!127, !43, i64 4}
!129 = distinct !{!129, !35, !36}
!130 = distinct !{!130, !35, !36}
