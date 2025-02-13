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
%struct.InterpFace = type { ptr, ptr, ptr, ptr, [3 x [3 x float]] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.SplitEdgeInfo = type { [3 x float], float, ptr, ptr, ptr }
%struct.BMFlagLayer = type { i16 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_inset_individual_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  %4 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #13
  %5 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #13
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #13
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #13
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.4) #13
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.bmo_inset_individual_exec) #13
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  %14 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %19
  %17 = phi ptr [ %20, %19 ], [ %14, %12 ]
  call fastcc void @bmo_face_inset_individual(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %13, float noundef %4, float noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8) #14
  br i1 %9, label %19, label %18

18:                                               ; preds = %16
  call void @BLI_memarena_clear(ptr noundef %13) #13
  br label %19

19:                                               ; preds = %16, %18
  %20 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !34

22:                                               ; preds = %19, %12
  %23 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #13
  br i1 %9, label %25, label %24

24:                                               ; preds = %22
  call void @BLI_memarena_free(ptr noundef %13) #13
  br label %25

25:                                               ; preds = %24, %22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_face_inset_individual(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !36 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !37
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = alloca i8, i64 %14, align 16
  %16 = mul nsw i64 %13, 12
  %17 = alloca i8, i64 %16, align 16
  %18 = alloca i8, i64 %16, align 16
  %19 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %32, %8
  %22 = phi i32 [ 0, %8 ], [ %39, %32 ]
  %23 = phi ptr [ %20, %8 ], [ %41, %32 ]
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = call ptr @BM_face_loop_separate(ptr noundef %0, ptr noundef %23) #13
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load ptr, ptr %24, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %31 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %30, ptr noundef %29, i32 noundef 0) #13
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi ptr [ %31, %28 ], [ %25, %21 ]
  %34 = zext i32 %22 to i64
  %35 = getelementptr inbounds ptr, ptr %15, i64 %34
  store ptr %33, ptr %35, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = getelementptr inbounds [3 x float], ptr %17, i64 %34
  call void @BM_edge_calc_face_tangent(ptr noundef %37, ptr noundef nonnull %23, ptr noundef nonnull %38) #13
  %39 = add i32 %22, 1
  %40 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = icmp eq ptr %41, %20
  br i1 %42, label %43, label %21, !llvm.loop !51

43:                                               ; preds = %32
  %44 = icmp eq i8 %7, 0
  br label %45

45:                                               ; preds = %83, %43
  %46 = phi i32 [ 0, %43 ], [ %51, %83 ]
  %47 = phi ptr [ %20, %43 ], [ %84, %83 ]
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds ptr, ptr %15, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = add i32 %46, 1
  %52 = load i32, ptr %11, align 8, !tbaa !37
  %53 = urem i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %15, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  %59 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %50, ptr noundef %56, ptr noundef %58, i32 noundef 2) #13
  %60 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %50, ptr noundef %56, ptr noundef %63, ptr noundef %65, ptr noundef %1, i32 noundef 0) #13
  %67 = getelementptr inbounds %struct.BMFace, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %68) #14
  %69 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  %71 = load ptr, ptr %60, align 8, !tbaa !50
  %72 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !54
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %71, ptr noundef %73) #13
  %74 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = getelementptr inbounds %struct.BMLoop, ptr %75, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %47, ptr noundef %77) #13
  %78 = load ptr, ptr %60, align 8, !tbaa !50
  br i1 %44, label %79, label %85

79:                                               ; preds = %45
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %78, ptr noundef nonnull %70) #13
  %80 = load ptr, ptr %74, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %47, ptr noundef %80) #13
  %81 = load ptr, ptr %60, align 8, !tbaa !50
  %82 = icmp eq ptr %81, %20
  br i1 %82, label %89, label %83

83:                                               ; preds = %79, %85
  %84 = phi ptr [ %81, %79 ], [ %78, %85 ]
  br label %45, !llvm.loop !55

85:                                               ; preds = %45
  %86 = icmp eq ptr %78, %20
  br i1 %86, label %87, label %83

87:                                               ; preds = %85
  %88 = call ptr @BLI_memarena_alloc(ptr noundef %2, i64 noundef 72) #13
  call fastcc void @bm_interp_face_store(ptr noundef %88, ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #14
  br label %89

89:                                               ; preds = %79, %87
  %90 = phi ptr [ %88, %87 ], [ null, %79 ]
  %91 = fcmp une float %4, 0.000000e+00
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !54
  %95 = getelementptr inbounds %struct.BMLoop, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !49
  %97 = call float @BM_edge_calc_length(ptr noundef %96) #13
  br label %98

98:                                               ; preds = %92, %89
  %99 = phi float [ %97, %92 ], [ undef, %89 ]
  %100 = icmp eq i8 %5, 0
  %101 = icmp eq i8 %6, 0
  %102 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 4
  br label %103

103:                                              ; preds = %146, %98
  %104 = phi float [ %99, %98 ], [ %147, %146 ]
  %105 = phi i32 [ 0, %98 ], [ %149, %146 ]
  %106 = phi ptr [ %20, %98 ], [ %151, %146 ]
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, ptr %11, align 8, !tbaa !37
  br label %110

110:                                              ; preds = %103, %108
  %111 = phi i32 [ %109, %108 ], [ %105, %103 ]
  %112 = add i32 %111, -1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [3 x float], ptr %17, i64 %113
  %115 = zext i32 %105 to i64
  %116 = getelementptr inbounds [3 x float], ptr %17, i64 %115
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %114, ptr noundef nonnull %116) #14
  %117 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #14
  %118 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !46
  %120 = getelementptr inbounds %struct.BMVert, ptr %119, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %120) #14
  br i1 %100, label %123, label %121

121:                                              ; preds = %110
  %122 = call fastcc float @shell_v3v3_mid_normalized_to_dist(ptr noundef nonnull %114, ptr noundef nonnull %116) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %122) #14
  br label %123

123:                                              ; preds = %121, %110
  br i1 %101, label %135, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !49
  %127 = call float @BM_edge_calc_length(ptr noundef %126) #13
  %128 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !54
  %130 = getelementptr inbounds %struct.BMLoop, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !49
  %132 = call float @BM_edge_calc_length(ptr noundef %131) #13
  %133 = fadd float %127, %132
  %134 = fmul float %133, 5.000000e-01
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %134) #14
  br label %135

135:                                              ; preds = %124, %123
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %10, ptr noundef nonnull %9, float noundef %3) #14
  %136 = load ptr, ptr %118, align 8, !tbaa !46
  %137 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %137, ptr noundef nonnull %102) #14
  br i1 %91, label %138, label %146

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !49
  %141 = call float @BM_edge_calc_length(ptr noundef %140) #13
  %142 = fadd float %104, %141
  %143 = fmul float %142, 5.000000e-01
  %144 = select i1 %101, float 1.000000e+00, float %143
  %145 = fmul float %144, %4
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %10, ptr noundef nonnull %102, float noundef %145) #14
  br label %146

146:                                              ; preds = %138, %135
  %147 = phi float [ %141, %138 ], [ %104, %135 ]
  %148 = getelementptr inbounds [3 x float], ptr %18, i64 %115
  call fastcc void @copy_v3_v3(ptr noundef nonnull %148, ptr noundef nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  %149 = add i32 %105, 1
  %150 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !50
  %152 = icmp eq ptr %151, %20
  br i1 %152, label %153, label %103, !llvm.loop !56

153:                                              ; preds = %146, %153
  %154 = phi i32 [ %161, %153 ], [ 0, %146 ]
  %155 = phi ptr [ %163, %153 ], [ %20, %146 ]
  %156 = getelementptr inbounds %struct.BMLoop, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !46
  %158 = getelementptr inbounds %struct.BMVert, ptr %157, i64 0, i32 2
  %159 = zext i32 %154 to i64
  %160 = getelementptr inbounds [3 x float], ptr %18, i64 %159
  call fastcc void @copy_v3_v3(ptr noundef nonnull %158, ptr noundef nonnull %160) #14
  %161 = add i32 %154, 1
  %162 = getelementptr inbounds %struct.BMLoop, ptr %155, i64 0, i32 6
  %163 = load ptr, ptr %162, align 8, !tbaa !50
  %164 = icmp eq ptr %163, %20
  br i1 %164, label %165, label %153, !llvm.loop !57

165:                                              ; preds = %153
  br i1 %44, label %186, label %166

166:                                              ; preds = %165
  %167 = load ptr, ptr %90, align 8, !tbaa !58
  %168 = getelementptr inbounds %struct.InterpFace, ptr %90, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !60
  %170 = getelementptr inbounds %struct.InterpFace, ptr %90, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !61
  %172 = getelementptr inbounds %struct.InterpFace, ptr %90, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !62
  %174 = getelementptr inbounds %struct.InterpFace, ptr %90, i64 0, i32 4
  call void @BM_face_interp_from_face_ex(ptr noundef %0, ptr noundef %167, ptr noundef %167, i8 noundef zeroext 1, ptr noundef %169, ptr noundef %171, ptr noundef %173, ptr noundef nonnull %174) #13
  br label %175

175:                                              ; preds = %175, %166
  %176 = phi ptr [ %20, %166 ], [ %183, %175 ]
  %177 = getelementptr inbounds %struct.BMLoop, ptr %176, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !53
  %179 = getelementptr inbounds %struct.BMLoop, ptr %176, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %180, ptr noundef %178) #13
  %181 = getelementptr inbounds %struct.BMLoop, ptr %178, i64 0, i32 6
  %182 = load ptr, ptr %181, align 8, !tbaa !50
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %176, ptr noundef %182) #13
  %183 = load ptr, ptr %179, align 8, !tbaa !50
  %184 = icmp eq ptr %183, %20
  br i1 %184, label %185, label %175, !llvm.loop !63

185:                                              ; preds = %175
  call fastcc void @bm_interp_face_free(ptr noundef nonnull %90, ptr noundef %0) #14
  br label %186

186:                                              ; preds = %185, %165
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_inset_region_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x ptr], align 16
  %11 = alloca %struct.BMOIter, align 8
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.7) #13
  %13 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.8) #13
  %14 = icmp ne i8 %13, 0
  %15 = icmp eq i8 %12, 0
  %16 = select i1 %14, i1 %15, i1 false
  %17 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #13
  %18 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #13
  %19 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.9) #13
  %20 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.4) #13
  %21 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str) #13
  %22 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #13
  %23 = icmp ne i8 %20, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  br label %37

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %27 = tail call zeroext i8 @CustomData_has_math(ptr noundef nonnull %26) #13
  %28 = icmp ne i8 %27, 0
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %29 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.bmo_inset_region_exec) #13
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !64
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 3
  %35 = tail call ptr %30(i64 noundef %34, ptr noundef nonnull @__func__.bmo_inset_region_exec) #13
  %36 = load i32, ptr %31, align 4, !tbaa !64
  br label %37

37:                                               ; preds = %24, %25
  %38 = phi i1 [ %28, %25 ], [ false, %24 ]
  %39 = phi ptr [ %29, %25 ], [ null, %24 ]
  %40 = phi i32 [ %36, %25 ], [ undef, %24 ]
  %41 = phi ptr [ %35, %25 ], [ null, %24 ]
  br i1 %15, label %42, label %43

42:                                               ; preds = %37
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  br label %44

43:                                               ; preds = %37
  tail call void @BM_mesh_elem_hflag_enable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  tail call void @BMO_slot_buffer_hflag_disable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  tail call void @BMO_slot_buffer_hflag_disable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.10, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  br label %44

44:                                               ; preds = %43, %42
  %45 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %44, %76
  %48 = phi i32 [ %77, %76 ], [ 0, %44 ]
  %49 = phi ptr [ %78, %76 ], [ %45, %44 ]
  br i1 %16, label %50, label %60

50:                                               ; preds = %47
  %51 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %49) #14, !range !68
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !69
  %56 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !72
  %58 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %57) #14
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53, %50, %47
  %61 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !69
  %63 = call fastcc ptr @bm_edge_is_mixed_face_tag(ptr noundef %62) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %60, %53
  %66 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !73
  call fastcc void @_bm_elem_flag_enable(ptr noundef %67) #14
  %68 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !74
  call fastcc void @_bm_elem_flag_enable(ptr noundef %69) #14
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %49) #14
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %49, i32 noundef %48) #14
  %70 = add nsw i32 %48, 1
  br label %76

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !73
  call fastcc void @_bm_elem_flag_disable(ptr noundef %73) #14
  %74 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !74
  call fastcc void @_bm_elem_flag_disable(ptr noundef %75) #14
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %49) #14
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %49, i32 noundef -1) #14
  br label %76

76:                                               ; preds = %65, %71
  %77 = phi i32 [ %70, %65 ], [ %48, %71 ]
  %78 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %47, !llvm.loop !75

80:                                               ; preds = %76, %44
  %81 = phi i32 [ 0, %44 ], [ %77, %76 ]
  %82 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %83 = load i8, ptr %82, align 4, !tbaa !76
  %84 = or i8 %83, 2
  store i8 %84, ptr %82, align 4, !tbaa !76
  %85 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %86 = sext i32 %81 to i64
  %87 = mul nsw i64 %86, 40
  %88 = call ptr %85(i64 noundef %87, ptr noundef nonnull @__func__.bmo_inset_region_exec) #13
  %89 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #14
  %90 = icmp eq ptr %89, null
  br i1 %90, label %105, label %91

91:                                               ; preds = %80, %101
  %92 = phi ptr [ %102, %101 ], [ %88, %80 ]
  %93 = phi ptr [ %103, %101 ], [ %89, %80 ]
  %94 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %93) #14
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = call float @BM_edge_calc_length(ptr noundef nonnull %93) #13
  %98 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %92, i64 0, i32 1
  store float %97, ptr %98, align 4, !tbaa !77
  %99 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %92, i64 0, i32 2
  store ptr %93, ptr %99, align 8, !tbaa !80
  %100 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %92, i64 1
  br label %101

101:                                              ; preds = %91, %96
  %102 = phi ptr [ %100, %96 ], [ %92, %91 ]
  %103 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %91, !llvm.loop !81

105:                                              ; preds = %101, %80
  %106 = icmp eq i8 %19, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %105
  %108 = call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.bmo_inset_region_exec) #13
  %109 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bmo_inset_region_exec) #13
  br label %110

110:                                              ; preds = %107, %105
  %111 = phi ptr [ %109, %107 ], [ null, %105 ]
  %112 = phi ptr [ %108, %107 ], [ null, %105 ]
  %113 = icmp sgt i32 %81, 0
  br i1 %113, label %119, label %389

114:                                              ; preds = %179
  br i1 %113, label %115, label %389

115:                                              ; preds = %114
  %116 = icmp eq i8 %17, 0
  %117 = icmp eq i8 %18, 0
  %118 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  br label %183

119:                                              ; preds = %110, %179
  %120 = phi ptr [ %181, %179 ], [ %88, %110 ]
  %121 = phi i32 [ %180, %179 ], [ 0, %110 ]
  %122 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %120, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !80
  %124 = getelementptr inbounds %struct.BMEdge, ptr %123, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !69
  %126 = call fastcc ptr @bm_edge_is_mixed_face_tag(ptr noundef %125) #14
  %127 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %120, i64 0, i32 4
  %128 = icmp eq ptr %126, null
  %129 = select i1 %128, ptr %125, ptr %126
  store ptr %129, ptr %127, align 8
  call void @bmesh_edge_separate(ptr noundef %0, ptr noundef nonnull %123, ptr noundef %129, i8 noundef zeroext 0) #13
  %130 = load ptr, ptr %127, align 8, !tbaa !82
  %131 = getelementptr inbounds %struct.BMLoop, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !49
  %133 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %120, i64 0, i32 3
  store ptr %132, ptr %133, align 8, !tbaa !83
  call void @BM_edge_calc_face_tangent(ptr noundef %132, ptr noundef %130, ptr noundef nonnull %120) #13
  %134 = load ptr, ptr %133, align 8, !tbaa !83
  %135 = load ptr, ptr %122, align 8, !tbaa !80
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %119
  %138 = getelementptr inbounds %struct.BMEdge, ptr %134, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !73
  %140 = getelementptr inbounds %struct.BMEdge, ptr %134, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !74
  %142 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %139, ptr noundef %141, ptr noundef %134, i32 noundef 0) #13
  store ptr %142, ptr %122, align 8, !tbaa !80
  %143 = load ptr, ptr %133, align 8, !tbaa !83
  br label %144

144:                                              ; preds = %137, %119
  %145 = phi ptr [ %143, %137 ], [ %134, %119 ]
  call fastcc void @_bm_elem_index_set(ptr noundef %145, i32 noundef %121) #14
  %146 = load ptr, ptr %133, align 8, !tbaa !83
  call fastcc void @_bm_elem_flag_enable(ptr noundef %146) #14
  %147 = load ptr, ptr %133, align 8, !tbaa !83
  %148 = getelementptr inbounds %struct.BMEdge, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !73
  call fastcc void @_bm_elem_flag_enable(ptr noundef %149) #14
  %150 = load ptr, ptr %133, align 8, !tbaa !83
  %151 = getelementptr inbounds %struct.BMEdge, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !74
  call fastcc void @_bm_elem_flag_enable(ptr noundef %152) #14
  br i1 %23, label %153, label %179

153:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %154 = load ptr, ptr %127, align 8, !tbaa !82
  %155 = getelementptr inbounds %struct.BMLoop, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !49
  %157 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 7, ptr noundef %156) #14
  %158 = icmp eq ptr %157, null
  br i1 %158, label %178, label %159

159:                                              ; preds = %153, %175
  %160 = phi ptr [ %176, %175 ], [ %157, %153 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %161 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 5, ptr noundef nonnull %160) #14
  %162 = icmp eq ptr %161, null
  br i1 %162, label %175, label %163

163:                                              ; preds = %159, %172
  %164 = phi ptr [ %173, %172 ], [ %161, %159 ]
  %165 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %164) #14
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %41, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !48
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = call ptr @BLI_memarena_alloc(ptr noundef %39, i64 noundef 72) #13
  call fastcc void @bm_interp_face_store(ptr noundef %171, ptr noundef %0, ptr noundef nonnull %164, ptr noundef %39) #14
  store ptr %171, ptr %167, align 8, !tbaa !48
  br label %172

172:                                              ; preds = %170, %163
  %173 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %163, !llvm.loop !84

175:                                              ; preds = %172, %159
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  %176 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %159, !llvm.loop !85

178:                                              ; preds = %175, %153
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %179

179:                                              ; preds = %144, %178
  %180 = add nuw nsw i32 %121, 1
  %181 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %120, i64 1
  %182 = icmp eq i32 %180, %81
  br i1 %182, label %114, label %119, !llvm.loop !86

183:                                              ; preds = %115, %385
  %184 = phi ptr [ %88, %115 ], [ %387, %385 ]
  %185 = phi i32 [ 0, %115 ], [ %386, %385 ]
  %186 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %184, i64 0, i32 3
  br label %187

187:                                              ; preds = %183, %384
  %188 = phi i1 [ true, %183 ], [ false, %384 ]
  %189 = load ptr, ptr %186, align 8, !tbaa !83
  %190 = getelementptr inbounds %struct.BMEdge, ptr %189, i64 0, i32 2
  %191 = getelementptr inbounds %struct.BMEdge, ptr %189, i64 0, i32 3
  %192 = select i1 %188, ptr %190, ptr %191
  %193 = load ptr, ptr %192, align 8, !tbaa !48
  %194 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %193) #14
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %384, label %196

196:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call fastcc void @_bm_elem_flag_disable(ptr noundef %193) #14
  call void @bmesh_vert_separate(ptr noundef %0, ptr noundef %193, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #13
  %197 = load i32, ptr %7, align 4, !tbaa !87
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = icmp sgt i32 %197, 0
  br i1 %200, label %212, label %380

201:                                              ; preds = %196
  br i1 %106, label %209, label %202

202:                                              ; preds = %201
  %203 = call ptr @BLI_memarena_alloc(ptr noundef %112, i64 noundef 12) #13
  %204 = load ptr, ptr %6, align 8, !tbaa !48
  %205 = load ptr, ptr %204, align 8, !tbaa !48
  %206 = getelementptr inbounds %struct.BMVert, ptr %205, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %203, ptr noundef nonnull %206) #14
  %207 = load ptr, ptr %6, align 8, !tbaa !48
  %208 = load ptr, ptr %207, align 8, !tbaa !48
  call void @BLI_ghash_insert(ptr noundef %111, ptr noundef %208, ptr noundef %203) #13
  br label %209

209:                                              ; preds = %202, %201
  %210 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %211 = load ptr, ptr %6, align 8, !tbaa !48
  call void %210(ptr noundef %211) #13
  br label %383

212:                                              ; preds = %199, %374
  %213 = phi i64 [ %376, %374 ], [ 0, %199 ]
  %214 = phi ptr [ %375, %374 ], [ null, %199 ]
  %215 = load ptr, ptr %6, align 8, !tbaa !48
  %216 = getelementptr inbounds ptr, ptr %215, i64 %213
  %217 = load ptr, ptr %216, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  br i1 %106, label %221, label %218

218:                                              ; preds = %212
  %219 = call ptr @BLI_memarena_alloc(ptr noundef %112, i64 noundef 12) #13
  %220 = getelementptr inbounds %struct.BMVert, ptr %217, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %219, ptr noundef nonnull %220) #14
  call void @BLI_ghash_insert(ptr noundef %111, ptr noundef %217, ptr noundef %219) #13
  br label %221

221:                                              ; preds = %218, %212
  %222 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %217) #14
  %223 = icmp eq ptr %222, null
  br i1 %223, label %357, label %224

224:                                              ; preds = %221, %246
  %225 = phi ptr [ %248, %246 ], [ %222, %221 ]
  %226 = phi i32 [ %247, %246 ], [ 0, %221 ]
  %227 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %225) #14
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %246, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !69
  %232 = icmp eq ptr %231, null
  br i1 %232, label %246, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.BMLoop, ptr %231, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !72
  %236 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %235) #14
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %233
  %239 = icmp slt i32 %226, 2
  br i1 %239, label %240, label %244

240:                                              ; preds = %238
  %241 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %225) #14
  %242 = sext i32 %226 to i64
  %243 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %242
  store i32 %241, ptr %243, align 4, !tbaa !87
  br label %244

244:                                              ; preds = %240, %238
  %245 = add nsw i32 %226, 1
  br label %246

246:                                              ; preds = %224, %229, %233, %244
  %247 = phi i32 [ %245, %244 ], [ %226, %233 ], [ %226, %229 ], [ %226, %224 ]
  %248 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %224, !llvm.loop !88

250:                                              ; preds = %246
  %251 = icmp eq i32 %247, 0
  br i1 %251, label %357, label %252

252:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %253 = icmp sgt i32 %247, 1
  br i1 %253, label %254, label %305

254:                                              ; preds = %252
  %255 = load i32, ptr %8, align 4, !tbaa !87
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %88, i64 %256
  %258 = load i32, ptr %118, align 4, !tbaa !87
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %88, i64 %259
  %261 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %88, i64 %256, i32 4
  %262 = load ptr, ptr %261, align 8, !tbaa !82
  %263 = getelementptr inbounds %struct.BMLoop, ptr %262, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !72
  %265 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %88, i64 %259, i32 4
  %266 = load ptr, ptr %265, align 8, !tbaa !82
  %267 = getelementptr inbounds %struct.BMLoop, ptr %266, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !72
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %9, ptr noundef %257, ptr noundef %260) #14
  %269 = icmp eq ptr %264, %268
  %270 = select i1 %106, i1 true, i1 %269
  br i1 %270, label %280, label %271

271:                                              ; preds = %254
  %272 = call ptr @BM_loop_other_vert_loop(ptr noundef nonnull %262, ptr noundef %217) #13
  %273 = load ptr, ptr %265, align 8, !tbaa !82
  %274 = call ptr @BM_loop_other_vert_loop(ptr noundef %273, ptr noundef %217) #13
  %275 = getelementptr inbounds %struct.BMLoop, ptr %272, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !46
  %277 = getelementptr inbounds %struct.BMLoop, ptr %274, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !46
  %279 = icmp eq ptr %276, %278
  br i1 %279, label %282, label %280

280:                                              ; preds = %271, %254
  %281 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #14
  br i1 %116, label %297, label %287

282:                                              ; preds = %271
  %283 = getelementptr inbounds %struct.BMVert, ptr %276, i64 0, i32 2
  %284 = call ptr @BLI_ghash_lookup_default(ptr noundef %111, ptr noundef %276, ptr noundef nonnull %283) #13
  %285 = getelementptr inbounds %struct.BMVert, ptr %217, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %284, ptr noundef nonnull %285) #14
  %286 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #14
  br i1 %116, label %297, label %289

287:                                              ; preds = %280
  %288 = call fastcc float @shell_v3v3_mid_normalized_to_dist(ptr noundef nonnull %257, ptr noundef nonnull %260) #14
  br label %295

289:                                              ; preds = %282
  %290 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %257) #14
  %291 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %260) #14
  %292 = fcmp ogt float %290, %291
  %293 = select i1 %292, ptr %257, ptr %260
  %294 = call fastcc float @shell_v3v3_normalized_to_dist(ptr noundef nonnull %9, ptr noundef %293) #14
  br label %295

295:                                              ; preds = %289, %287
  %296 = phi float [ %288, %287 ], [ %294, %289 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %296) #14
  br label %297

297:                                              ; preds = %295, %282, %280
  br i1 %117, label %355, label %298

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %88, i64 %256, i32 1
  %300 = load float, ptr %299, align 4, !tbaa !77
  %301 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %88, i64 %259, i32 1
  %302 = load float, ptr %301, align 4, !tbaa !77
  %303 = fadd float %300, %302
  %304 = fmul float %303, 5.000000e-01
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %304) #14
  br label %355

305:                                              ; preds = %252
  %306 = icmp eq i32 %247, 1
  br i1 %306, label %307, label %354

307:                                              ; preds = %305
  %308 = load i32, ptr %8, align 4, !tbaa !87
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %88, i64 %309
  br i1 %116, label %349, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.BMVert, ptr %217, i64 0, i32 4
  %313 = load ptr, ptr %312, align 8, !tbaa !89
  %314 = getelementptr inbounds %struct.BMEdge, ptr %313, i64 0, i32 4
  %315 = load ptr, ptr %314, align 8, !tbaa !69
  %316 = getelementptr inbounds %struct.BMLoop, ptr %315, i64 0, i32 7
  %317 = load ptr, ptr %316, align 8, !tbaa !54
  %318 = getelementptr inbounds %struct.BMLoop, ptr %317, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !46
  %320 = icmp eq ptr %319, %217
  br i1 %320, label %328, label %321

321:                                              ; preds = %311
  %322 = getelementptr inbounds %struct.BMLoop, ptr %315, i64 0, i32 6
  %323 = load ptr, ptr %322, align 8, !tbaa !50
  %324 = getelementptr inbounds %struct.BMLoop, ptr %323, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !46
  %326 = icmp eq ptr %325, %217
  %327 = select i1 %326, ptr %323, ptr %315
  br label %328

328:                                              ; preds = %321, %311
  %329 = phi ptr [ %317, %311 ], [ %327, %321 ]
  %330 = getelementptr inbounds %struct.BMLoop, ptr %329, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !49
  %332 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %331) #14
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %342, label %334

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.BMLoop, ptr %329, i64 0, i32 7
  %336 = load ptr, ptr %335, align 8, !tbaa !54
  %337 = getelementptr inbounds %struct.BMLoop, ptr %336, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !49
  %339 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %338) #14
  %340 = icmp eq i8 %339, 0
  %341 = select i1 %340, ptr %338, ptr null
  br label %342

342:                                              ; preds = %334, %328
  %343 = phi ptr [ %331, %328 ], [ %341, %334 ]
  %344 = call fastcc ptr @BM_edge_other_vert(ptr noundef %343, ptr noundef nonnull %217) #14
  %345 = getelementptr inbounds %struct.BMVert, ptr %344, i64 0, i32 2
  %346 = getelementptr inbounds %struct.BMVert, ptr %217, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %345, ptr noundef nonnull %346) #14
  %347 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #14
  %348 = call fastcc float @shell_v3v3_normalized_to_dist(ptr noundef %310, ptr noundef nonnull %9) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %348) #14
  br label %350

349:                                              ; preds = %307
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %310) #14
  br label %350

350:                                              ; preds = %349, %342
  br i1 %117, label %355, label %351

351:                                              ; preds = %350
  %352 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %88, i64 %309, i32 1
  %353 = load float, ptr %352, align 4, !tbaa !77
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %353) #14
  br label %355

354:                                              ; preds = %305
  call fastcc void @zero_v3(ptr noundef nonnull %9) #14
  br label %355

355:                                              ; preds = %350, %351, %297, %298, %354
  %356 = getelementptr inbounds %struct.BMVert, ptr %217, i64 0, i32 2
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %356, ptr noundef nonnull %9, float noundef %21) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %357

357:                                              ; preds = %221, %355, %250
  %358 = load i32, ptr %7, align 4, !tbaa !87
  %359 = icmp sgt i32 %358, 2
  br i1 %359, label %360, label %374

360:                                              ; preds = %357
  %361 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 5, ptr noundef %217) #14
  %362 = icmp eq ptr %361, null
  br i1 %362, label %370, label %363

363:                                              ; preds = %360, %367
  %364 = phi ptr [ %368, %367 ], [ %361, %360 ]
  %365 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %364) #14
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %363
  %368 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %363, !llvm.loop !91

370:                                              ; preds = %367, %360
  %371 = icmp eq ptr %214, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %370
  %373 = call zeroext i8 @BM_vert_splice(ptr noundef %0, ptr noundef %217, ptr noundef nonnull %214) #13
  br label %374

374:                                              ; preds = %363, %372, %370, %357
  %375 = phi ptr [ %214, %357 ], [ %214, %372 ], [ %217, %370 ], [ %214, %363 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  %376 = add nuw nsw i64 %213, 1
  %377 = load i32, ptr %7, align 4, !tbaa !87
  %378 = sext i32 %377 to i64
  %379 = icmp slt i64 %376, %378
  br i1 %379, label %212, label %380, !llvm.loop !92

380:                                              ; preds = %374, %199
  %381 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %382 = load ptr, ptr %6, align 8, !tbaa !48
  call void %381(ptr noundef %382) #13
  br label %383

383:                                              ; preds = %380, %209
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %384

384:                                              ; preds = %383, %187
  br i1 %188, label %187, label %385, !llvm.loop !93

385:                                              ; preds = %384
  %386 = add nuw nsw i32 %185, 1
  %387 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %184, i64 1
  %388 = icmp eq i32 %386, %81
  br i1 %388, label %389, label %183, !llvm.loop !94

389:                                              ; preds = %385, %110, %114
  br i1 %106, label %391, label %390

390:                                              ; preds = %389
  call void @BLI_memarena_free(ptr noundef %112) #13
  call void @BLI_ghash_free(ptr noundef %111, ptr noundef null, ptr noundef null) #13
  br label %391

391:                                              ; preds = %390, %389
  %392 = icmp sgt i32 %40, 0
  %393 = select i1 %23, i1 %392, i1 false
  br i1 %393, label %394, label %413

394:                                              ; preds = %391
  %395 = zext nneg i32 %40 to i64
  br label %396

396:                                              ; preds = %394, %410
  %397 = phi i64 [ 0, %394 ], [ %411, %410 ]
  %398 = getelementptr inbounds ptr, ptr %41, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !48
  %400 = icmp eq ptr %399, null
  br i1 %400, label %410, label %401

401:                                              ; preds = %396
  %402 = load ptr, ptr %399, align 8, !tbaa !58
  %403 = getelementptr inbounds %struct.InterpFace, ptr %399, i64 0, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !60
  %405 = getelementptr inbounds %struct.InterpFace, ptr %399, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !61
  %407 = getelementptr inbounds %struct.InterpFace, ptr %399, i64 0, i32 3
  %408 = load ptr, ptr %407, align 8, !tbaa !62
  %409 = getelementptr inbounds %struct.InterpFace, ptr %399, i64 0, i32 4
  call void @BM_face_interp_from_face_ex(ptr noundef %0, ptr noundef %402, ptr noundef %402, i8 noundef zeroext 1, ptr noundef %404, ptr noundef %406, ptr noundef %408, ptr noundef nonnull %409) #13
  br label %410

410:                                              ; preds = %396, %401
  %411 = add nuw nsw i64 %397, 1
  %412 = icmp eq i64 %411, %395
  br i1 %412, label %413, label %396, !llvm.loop !95

413:                                              ; preds = %410, %391
  br i1 %113, label %414, label %536

414:                                              ; preds = %413
  %415 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 1
  %416 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 2
  %417 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  br label %418

418:                                              ; preds = %414, %532
  %419 = phi ptr [ %88, %414 ], [ %534, %532 ]
  %420 = phi i32 [ 0, %414 ], [ %533, %532 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %421 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %419, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !83
  %423 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %419, i64 0, i32 4
  %424 = load ptr, ptr %423, align 8, !tbaa !82
  call void @BM_edge_ordered_verts_ex(ptr noundef %422, ptr noundef nonnull %415, ptr noundef nonnull %10, ptr noundef %424) #13
  %425 = load ptr, ptr %10, align 16, !tbaa !48
  %426 = load ptr, ptr %421, align 8, !tbaa !83
  %427 = getelementptr inbounds %struct.BMEdge, ptr %426, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !73
  %429 = icmp eq ptr %425, %428
  %430 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %419, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !80
  br i1 %429, label %432, label %446

432:                                              ; preds = %418
  %433 = getelementptr inbounds %struct.BMEdge, ptr %431, i64 0, i32 3
  %434 = load ptr, ptr %433, align 8, !tbaa !74
  %435 = getelementptr inbounds %struct.BMEdge, ptr %426, i64 0, i32 3
  %436 = load ptr, ptr %435, align 8, !tbaa !74
  %437 = icmp eq ptr %434, %436
  br i1 %437, label %440, label %438

438:                                              ; preds = %432
  store ptr %434, ptr %416, align 16, !tbaa !48
  %439 = load ptr, ptr %430, align 8, !tbaa !80
  br label %440

440:                                              ; preds = %438, %432
  %441 = phi ptr [ %439, %438 ], [ %431, %432 ]
  %442 = phi i32 [ 3, %438 ], [ 2, %432 ]
  %443 = getelementptr inbounds %struct.BMEdge, ptr %441, i64 0, i32 2
  %444 = load ptr, ptr %443, align 8, !tbaa !73
  %445 = icmp eq ptr %444, %425
  br i1 %445, label %460, label %463

446:                                              ; preds = %418
  %447 = getelementptr inbounds %struct.BMEdge, ptr %431, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !73
  %449 = icmp eq ptr %448, %428
  br i1 %449, label %452, label %450

450:                                              ; preds = %446
  store ptr %448, ptr %416, align 16, !tbaa !48
  %451 = load ptr, ptr %430, align 8, !tbaa !80
  br label %452

452:                                              ; preds = %450, %446
  %453 = phi ptr [ %451, %450 ], [ %431, %446 ]
  %454 = phi i32 [ 3, %450 ], [ 2, %446 ]
  %455 = getelementptr inbounds %struct.BMEdge, ptr %453, i64 0, i32 3
  %456 = load ptr, ptr %455, align 8, !tbaa !74
  %457 = getelementptr inbounds %struct.BMEdge, ptr %426, i64 0, i32 3
  %458 = load ptr, ptr %457, align 8, !tbaa !74
  %459 = icmp eq ptr %456, %458
  br i1 %459, label %460, label %463

460:                                              ; preds = %452, %440
  %461 = phi i32 [ %442, %440 ], [ %454, %452 ]
  %462 = icmp eq i32 %461, 2
  br i1 %462, label %532, label %469

463:                                              ; preds = %452, %440
  %464 = phi i32 [ %442, %440 ], [ %454, %452 ]
  %465 = phi ptr [ %444, %440 ], [ %456, %452 ]
  %466 = add nuw nsw i32 %464, 1
  %467 = zext nneg i32 %464 to i64
  %468 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %467
  store ptr %465, ptr %468, align 8, !tbaa !48
  br label %469

469:                                              ; preds = %463, %460
  %470 = phi i32 [ 3, %460 ], [ %466, %463 ]
  %471 = load ptr, ptr %423, align 8, !tbaa !82
  %472 = getelementptr inbounds %struct.BMLoop, ptr %471, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8, !tbaa !72
  %474 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %470, ptr noundef %473, i32 noundef 0, i8 noundef zeroext 1) #13
  %475 = getelementptr inbounds %struct.BMFace, ptr %474, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !52
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %476) #14
  %477 = getelementptr inbounds %struct.BMFace, ptr %474, i64 0, i32 2
  %478 = load ptr, ptr %477, align 8, !tbaa !45
  %479 = getelementptr inbounds %struct.BMLoop, ptr %478, i64 0, i32 6
  %480 = load ptr, ptr %479, align 8, !tbaa !50
  %481 = getelementptr inbounds %struct.BMLoop, ptr %478, i64 0, i32 2
  %482 = load ptr, ptr %481, align 8, !tbaa !49
  %483 = call ptr @BM_edge_other_loop(ptr noundef %482, ptr noundef %478) #13
  %484 = load ptr, ptr %481, align 8, !tbaa !49
  %485 = call ptr @BM_edge_other_loop(ptr noundef %484, ptr noundef %480) #13
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %483, ptr noundef %478) #13
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %485, ptr noundef %480) #13
  %486 = load ptr, ptr %479, align 8, !tbaa !50
  %487 = getelementptr inbounds %struct.BMLoop, ptr %486, i64 0, i32 6
  %488 = load ptr, ptr %487, align 8, !tbaa !50
  %489 = getelementptr inbounds %struct.BMLoop, ptr %488, i64 0, i32 6
  %490 = load ptr, ptr %489, align 8, !tbaa !50
  br i1 %23, label %491, label %531

491:                                              ; preds = %469
  %492 = load ptr, ptr %423, align 8, !tbaa !82
  %493 = getelementptr inbounds %struct.BMLoop, ptr %492, i64 0, i32 3
  %494 = load ptr, ptr %493, align 8, !tbaa !72
  %495 = call fastcc i32 @_bm_elem_index_get(ptr noundef %494) #14
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds ptr, ptr %41, i64 %496
  %498 = load ptr, ptr %497, align 8, !tbaa !48
  %499 = call fastcc i32 @_bm_elem_index_get(ptr noundef %483) #14
  %500 = call fastcc i32 @_bm_elem_index_get(ptr noundef %485) #14
  %501 = getelementptr inbounds %struct.InterpFace, ptr %498, i64 0, i32 1
  %502 = load ptr, ptr %501, align 8, !tbaa !60
  %503 = sext i32 %499 to i64
  %504 = getelementptr inbounds ptr, ptr %502, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !48
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %417, ptr noundef nonnull %417, ptr noundef %505, ptr noundef %490) #13
  %506 = load ptr, ptr %501, align 8, !tbaa !60
  %507 = sext i32 %500 to i64
  %508 = getelementptr inbounds ptr, ptr %506, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !48
  call void @CustomData_bmesh_copy_data(ptr noundef nonnull %417, ptr noundef nonnull %417, ptr noundef %509, ptr noundef nonnull %488) #13
  br i1 %38, label %510, label %532

510:                                              ; preds = %491
  %511 = getelementptr inbounds %struct.BMLoop, ptr %488, i64 0, i32 7
  %512 = load ptr, ptr %511, align 8, !tbaa !54
  %513 = getelementptr inbounds %struct.BMLoop, ptr %512, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !49
  %515 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %514) #14, !range !68
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %521, label %517

517:                                              ; preds = %510
  %518 = call ptr @BM_edge_other_loop(ptr noundef %514, ptr noundef nonnull %488) #13
  %519 = load ptr, ptr %511, align 8, !tbaa !54
  %520 = call ptr @BM_edge_other_loop(ptr noundef %514, ptr noundef %519) #13
  call fastcc void @bm_loop_customdata_merge(ptr noundef %0, ptr noundef nonnull %488, ptr noundef %518, ptr noundef %519, ptr noundef %520) #14
  br label %521

521:                                              ; preds = %517, %510
  %522 = getelementptr inbounds %struct.BMLoop, ptr %490, i64 0, i32 2
  %523 = load ptr, ptr %522, align 8, !tbaa !49
  %524 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef %523) #14, !range !68
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %532, label %526

526:                                              ; preds = %521
  %527 = call ptr @BM_edge_other_loop(ptr noundef %523, ptr noundef nonnull %490) #13
  %528 = getelementptr inbounds %struct.BMLoop, ptr %490, i64 0, i32 6
  %529 = load ptr, ptr %528, align 8, !tbaa !50
  %530 = call ptr @BM_edge_other_loop(ptr noundef %523, ptr noundef %529) #13
  call fastcc void @bm_loop_customdata_merge(ptr noundef %0, ptr noundef nonnull %490, ptr noundef %527, ptr noundef %529, ptr noundef %530) #14
  br label %532

531:                                              ; preds = %469
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %483, ptr noundef %490) #13
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %485, ptr noundef nonnull %488) #13
  br label %532

532:                                              ; preds = %531, %521, %526, %491, %460
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #12
  %533 = add nuw nsw i32 %420, 1
  %534 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %419, i64 1
  %535 = icmp eq i32 %533, %81
  br i1 %535, label %536, label %418, !llvm.loop !96

536:                                              ; preds = %532, %413
  br i1 %23, label %537, label %551

537:                                              ; preds = %536
  br i1 %392, label %538, label %549

538:                                              ; preds = %537
  %539 = zext nneg i32 %40 to i64
  br label %540

540:                                              ; preds = %538, %546
  %541 = phi i64 [ 0, %538 ], [ %547, %546 ]
  %542 = getelementptr inbounds ptr, ptr %41, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !48
  %544 = icmp eq ptr %543, null
  br i1 %544, label %546, label %545

545:                                              ; preds = %540
  call fastcc void @bm_interp_face_free(ptr noundef nonnull %543, ptr noundef %0) #14
  br label %546

546:                                              ; preds = %540, %545
  %547 = add nuw nsw i64 %541, 1
  %548 = icmp eq i64 %547, %539
  br i1 %548, label %549, label %540, !llvm.loop !97

549:                                              ; preds = %546, %537
  call void @BLI_memarena_free(ptr noundef %39) #13
  %550 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %550(ptr noundef %41) #13
  br label %551

551:                                              ; preds = %549, %536
  %552 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %552, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #13
  %553 = fcmp une float %22, 0.000000e+00
  br i1 %553, label %554, label %683

554:                                              ; preds = %551
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #12
  br i1 %113, label %556, label %618

555:                                              ; preds = %556
  br i1 %113, label %572, label %618

556:                                              ; preds = %554, %556
  %557 = phi ptr [ %569, %556 ], [ %88, %554 ]
  %558 = phi i32 [ %568, %556 ], [ 0, %554 ]
  %559 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %557, i64 0, i32 3
  %560 = load ptr, ptr %559, align 8, !tbaa !83
  %561 = getelementptr inbounds %struct.BMEdge, ptr %560, i64 0, i32 2
  %562 = load ptr, ptr %561, align 8, !tbaa !73
  %563 = getelementptr inbounds %struct.BMVert, ptr %562, i64 0, i32 3
  call fastcc void @zero_v3(ptr noundef nonnull %563) #14
  %564 = load ptr, ptr %559, align 8, !tbaa !83
  %565 = getelementptr inbounds %struct.BMEdge, ptr %564, i64 0, i32 3
  %566 = load ptr, ptr %565, align 8, !tbaa !74
  %567 = getelementptr inbounds %struct.BMVert, ptr %566, i64 0, i32 3
  call fastcc void @zero_v3(ptr noundef nonnull %567) #14
  %568 = add nuw nsw i32 %558, 1
  %569 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %557, i64 1
  %570 = icmp eq i32 %568, %81
  br i1 %570, label %555, label %556, !llvm.loop !98

571:                                              ; preds = %572
  br i1 %113, label %592, label %618

572:                                              ; preds = %555, %572
  %573 = phi ptr [ %590, %572 ], [ %88, %555 ]
  %574 = phi i32 [ %589, %572 ], [ 0, %555 ]
  %575 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %573, i64 0, i32 4
  %576 = load ptr, ptr %575, align 8, !tbaa !82
  %577 = getelementptr inbounds %struct.BMLoop, ptr %576, i64 0, i32 3
  %578 = load ptr, ptr %577, align 8, !tbaa !72
  %579 = getelementptr inbounds %struct.BMFace, ptr %578, i64 0, i32 4
  %580 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %573, i64 0, i32 3
  %581 = load ptr, ptr %580, align 8, !tbaa !83
  %582 = getelementptr inbounds %struct.BMEdge, ptr %581, i64 0, i32 2
  %583 = load ptr, ptr %582, align 8, !tbaa !73
  %584 = getelementptr inbounds %struct.BMVert, ptr %583, i64 0, i32 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %584, ptr noundef nonnull %579) #14
  %585 = load ptr, ptr %580, align 8, !tbaa !83
  %586 = getelementptr inbounds %struct.BMEdge, ptr %585, i64 0, i32 3
  %587 = load ptr, ptr %586, align 8, !tbaa !74
  %588 = getelementptr inbounds %struct.BMVert, ptr %587, i64 0, i32 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %588, ptr noundef nonnull %579) #14
  %589 = add nuw nsw i32 %574, 1
  %590 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %573, i64 1
  %591 = icmp eq i32 %589, %81
  br i1 %591, label %571, label %572, !llvm.loop !99

592:                                              ; preds = %571, %614
  %593 = phi ptr [ %616, %614 ], [ %88, %571 ]
  %594 = phi i32 [ %615, %614 ], [ 0, %571 ]
  %595 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %593, i64 0, i32 3
  %596 = load ptr, ptr %595, align 8, !tbaa !83
  %597 = getelementptr inbounds %struct.BMEdge, ptr %596, i64 0, i32 2
  %598 = load ptr, ptr %597, align 8, !tbaa !73
  %599 = getelementptr inbounds %struct.BMVert, ptr %598, i64 0, i32 3
  %600 = call fastcc float @len_squared_v3(ptr noundef nonnull %599) #14
  %601 = fcmp une float %600, 1.000000e+00
  br i1 %601, label %602, label %605

602:                                              ; preds = %592
  %603 = call fastcc float @normalize_v3(ptr noundef nonnull %599) #14
  %604 = load ptr, ptr %595, align 8, !tbaa !83
  br label %605

605:                                              ; preds = %602, %592
  %606 = phi ptr [ %604, %602 ], [ %596, %592 ]
  %607 = getelementptr inbounds %struct.BMEdge, ptr %606, i64 0, i32 3
  %608 = load ptr, ptr %607, align 8, !tbaa !74
  %609 = getelementptr inbounds %struct.BMVert, ptr %608, i64 0, i32 3
  %610 = call fastcc float @len_squared_v3(ptr noundef nonnull %609) #14
  %611 = fcmp une float %610, 1.000000e+00
  br i1 %611, label %612, label %614

612:                                              ; preds = %605
  %613 = call fastcc float @normalize_v3(ptr noundef nonnull %609) #14
  br label %614

614:                                              ; preds = %605, %612
  %615 = add nuw nsw i32 %594, 1
  %616 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %593, i64 1
  %617 = icmp eq i32 %615, %81
  br i1 %617, label %618, label %592, !llvm.loop !100

618:                                              ; preds = %614, %554, %555, %571
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  %619 = call ptr @BMO_iter_new(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8) #13
  %620 = icmp eq ptr %619, null
  br i1 %620, label %632, label %621

621:                                              ; preds = %618, %629
  %622 = phi ptr [ %630, %629 ], [ %619, %618 ]
  %623 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 9, ptr noundef nonnull %622) #14
  %624 = icmp eq ptr %623, null
  br i1 %624, label %629, label %625

625:                                              ; preds = %621, %625
  %626 = phi ptr [ %627, %625 ], [ %623, %621 ]
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %626) #14
  %627 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %628 = icmp eq ptr %627, null
  br i1 %628, label %629, label %625, !llvm.loop !101

629:                                              ; preds = %625, %621
  %630 = call ptr @BMO_iter_step(ptr noundef nonnull %11) #13
  %631 = icmp eq ptr %630, null
  br i1 %631, label %632, label %621, !llvm.loop !102

632:                                              ; preds = %629, %618
  %633 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %634 = load i32, ptr %0, align 8, !tbaa !103
  %635 = sext i32 %634 to i64
  %636 = mul nsw i64 %635, 12
  %637 = call ptr %633(i64 noundef %636, ptr noundef nonnull @__func__.bmo_inset_region_exec) #13
  %638 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #14
  %639 = icmp eq ptr %638, null
  br i1 %639, label %666, label %640

640:                                              ; preds = %632
  %641 = icmp eq i8 %18, 0
  %642 = icmp eq i8 %17, 0
  br label %643

643:                                              ; preds = %640, %662
  %644 = phi i64 [ 0, %640 ], [ %664, %662 ]
  %645 = phi ptr [ %638, %640 ], [ %663, %662 ]
  %646 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %645) #14
  %647 = icmp eq i8 %646, 0
  br i1 %647, label %662, label %648

648:                                              ; preds = %643
  br i1 %641, label %651, label %649

649:                                              ; preds = %648
  %650 = call fastcc float @bm_edge_info_average_length(ptr noundef nonnull %645, ptr noundef %88) #14
  br label %651

651:                                              ; preds = %648, %649
  %652 = phi float [ %650, %649 ], [ 1.000000e+00, %648 ]
  %653 = fmul float %22, %652
  br i1 %642, label %656, label %654

654:                                              ; preds = %651
  %655 = call float @BM_vert_calc_shell_factor(ptr noundef nonnull %645) #13
  br label %656

656:                                              ; preds = %651, %654
  %657 = phi float [ %655, %654 ], [ 1.000000e+00, %651 ]
  %658 = fmul float %653, %657
  %659 = getelementptr inbounds [3 x float], ptr %637, i64 %644
  %660 = getelementptr inbounds %struct.BMVert, ptr %645, i64 0, i32 2
  %661 = getelementptr inbounds %struct.BMVert, ptr %645, i64 0, i32 3
  call fastcc void @madd_v3_v3v3fl(ptr noundef %659, ptr noundef nonnull %660, ptr noundef nonnull %661, float noundef %658) #14
  br label %662

662:                                              ; preds = %643, %656
  %663 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %664 = add nuw i64 %644, 1
  %665 = icmp eq ptr %663, null
  br i1 %665, label %666, label %643, !llvm.loop !104

666:                                              ; preds = %662, %632
  %667 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #14
  %668 = icmp eq ptr %667, null
  br i1 %668, label %681, label %669

669:                                              ; preds = %666, %677
  %670 = phi i64 [ %679, %677 ], [ 0, %666 ]
  %671 = phi ptr [ %678, %677 ], [ %667, %666 ]
  %672 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %671) #14
  %673 = icmp eq i8 %672, 0
  br i1 %673, label %677, label %674

674:                                              ; preds = %669
  %675 = getelementptr inbounds %struct.BMVert, ptr %671, i64 0, i32 2
  %676 = getelementptr inbounds [3 x float], ptr %637, i64 %670
  call fastcc void @copy_v3_v3(ptr noundef nonnull %675, ptr noundef %676) #14
  br label %677

677:                                              ; preds = %669, %674
  %678 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %679 = add nuw i64 %670, 1
  %680 = icmp eq ptr %678, null
  br i1 %680, label %681, label %669, !llvm.loop !105

681:                                              ; preds = %677, %666
  %682 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %682(ptr noundef %637) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #12
  br label %683

683:                                              ; preds = %681, %551
  %684 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %684(ptr noundef %88) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_math(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_enable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_disable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !106 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !109
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bm_edge_is_mixed_face_tag(ptr noundef readonly %0) unnamed_addr #5 !PGOFuncName !110 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1, %16
  %4 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %5 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %6 = phi ptr [ %21, %16 ], [ %0, %1 ]
  %7 = phi ptr [ %19, %16 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %4, 1
  br i1 %13, label %28, label %16

14:                                               ; preds = %3
  %15 = add nsw i32 %5, 1
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi i32 [ %4, %14 ], [ 1, %12 ]
  %18 = phi i32 [ %15, %14 ], [ %5, %12 ]
  %19 = phi ptr [ %7, %14 ], [ %6, %12 ]
  %20 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %3, !llvm.loop !111

23:                                               ; preds = %16
  %24 = icmp eq i32 %17, 1
  %25 = icmp sgt i32 %18, 0
  %26 = select i1 %24, i1 %25, i1 false
  %27 = select i1 %26, ptr %19, ptr null
  br label %28

28:                                               ; preds = %12, %1, %23
  %29 = phi ptr [ %27, %23 ], [ null, %1 ], [ null, %12 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !109
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !109
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !114
  ret i32 %3
}

; Function Attrs: optsize
declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bmesh_edge_separate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_calc_face_tangent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_interp_face_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !120 {
  %5 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !37
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr @BLI_memarena_alloc(ptr noundef %3, i64 noundef %8) #13
  %10 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !60
  %11 = load i32, ptr %5, align 8, !tbaa !37
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @BLI_memarena_alloc(ptr noundef %3, i64 noundef %13) #13
  %15 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !61
  %16 = load i32, ptr %5, align 8, !tbaa !37
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr @BLI_memarena_alloc(ptr noundef %3, i64 noundef %18) #13
  %20 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !62
  %21 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 4
  tail call void @axis_dominant_v3_to_m3(ptr noundef nonnull %21, ptr noundef nonnull %22) #13
  store ptr %2, ptr %0, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %26 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  br label %27

27:                                               ; preds = %27, %4
  %28 = phi i64 [ %40, %27 ], [ 0, %4 ]
  %29 = phi ptr [ %42, %27 ], [ %24, %4 ]
  %30 = getelementptr inbounds [2 x float], ptr %19, i64 %28
  %31 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  tail call void @mul_v2_m3v3(ptr noundef %30, ptr noundef nonnull %21, ptr noundef nonnull %33) #13
  %34 = getelementptr inbounds ptr, ptr %9, i64 %28
  store ptr null, ptr %34, align 8, !tbaa !48
  %35 = load ptr, ptr %29, align 8, !tbaa !121
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %25, ptr noundef nonnull %25, ptr noundef %35, ptr noundef nonnull %34) #13
  %36 = getelementptr inbounds ptr, ptr %14, i64 %28
  store ptr null, ptr %36, align 8, !tbaa !48
  %37 = load ptr, ptr %31, align 8, !tbaa !46
  %38 = load ptr, ptr %37, align 8, !tbaa !122
  tail call void @CustomData_bmesh_copy_data(ptr noundef nonnull %26, ptr noundef nonnull %26, ptr noundef %38, ptr noundef nonnull %36) #13
  %39 = trunc i64 %28 to i32
  tail call fastcc void @_bm_elem_index_set(ptr noundef nonnull %29, i32 noundef %39) #14
  %40 = add nuw i64 %28, 1
  %41 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  %43 = icmp eq ptr %42, %24
  br i1 %43, label %44, label %27, !llvm.loop !123

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %46 = load i8, ptr %45, align 4, !tbaa !76
  %47 = or i8 %46, 4
  store i8 %47, ptr %45, align 4, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare void @bmesh_vert_separate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !124 {
  %3 = load float, ptr %1, align 4, !tbaa !125
  store float %3, ptr %0, align 4, !tbaa !125
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !125
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !126 {
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = load float, ptr %2, align 4, !tbaa !125
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !125
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !125
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !125
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !125
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare ptr @BM_loop_other_vert_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_default(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !127 {
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = load float, ptr %2, align 4, !tbaa !125
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !125
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !125
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !125
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !125
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !128 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !129 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !125
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @shell_v3v3_mid_normalized_to_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !130 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #14
  %4 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #14
  %5 = fcmp une float %4, 0.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull %3) #14
  %8 = tail call float @llvm.fabs.f32(float %7)
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi float [ %8, %6 ], [ 0.000000e+00, %2 ]
  %11 = fcmp olt float %10, 0x3E45798EE0000000
  %12 = fdiv float 1.000000e+00, %10
  %13 = select i1 %11, float 1.000000e+00, float %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @shell_v3v3_normalized_to_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !131 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #14
  %4 = tail call float @llvm.fabs.f32(float %3)
  %5 = fcmp olt float %4, 0x3E45798EE0000000
  %6 = fdiv float 1.000000e+00, %4
  %7 = select i1 %5, float 1.000000e+00, float %6
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !132 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !133 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !134 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !125
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !135 {
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = load float, ptr %0, align 4, !tbaa !125
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !125
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !125
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !125
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !125
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_splice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_interp_from_face_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @BM_edge_ordered_verts_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 !PGOFuncName !136 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !137
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !138
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 2, !tbaa !138
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_other_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_copy_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_loop_customdata_merge(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !141 {
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %4, %10 ], [ %15, %13 ]
  %18 = phi ptr [ %12, %10 ], [ %3, %13 ]
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = tail call ptr @BM_edge_other_loop(ptr noundef %20, ptr noundef nonnull %3) #13
  %24 = tail call ptr @BM_edge_other_loop(ptr noundef %22, ptr noundef %4) #13
  %25 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %129, label %30

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !142
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %129

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %36 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 7
  %38 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 2
  %39 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 7
  %40 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  br label %41

41:                                               ; preds = %34, %124
  %42 = phi i64 [ 0, %34 ], [ %125, %124 ]
  %43 = load ptr, ptr %35, align 8, !tbaa !143
  %44 = getelementptr inbounds %struct.CustomDataLayer, ptr %43, i64 %42
  %45 = load i32, ptr %44, align 8, !tbaa !144
  %46 = getelementptr inbounds %struct.CustomDataLayer, ptr %43, i64 %42, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !146
  %48 = trunc i64 %42 to i32
  %49 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %35, i32 noundef %48) #13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %124, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %1, align 8, !tbaa !121
  %53 = sext i32 %47 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load ptr, ptr %2, align 8, !tbaa !121
  %56 = getelementptr inbounds i8, ptr %55, i64 %53
  %57 = call zeroext i8 @CustomData_data_equals(i32 noundef %45, ptr noundef %54, ptr noundef %56) #13
  %58 = icmp eq i8 %57, 1
  br i1 %58, label %59, label %124

59:                                               ; preds = %51
  %60 = load ptr, ptr %23, align 8, !tbaa !121
  %61 = getelementptr inbounds i8, ptr %60, i64 %53
  %62 = load ptr, ptr %24, align 8, !tbaa !121
  %63 = getelementptr inbounds i8, ptr %62, i64 %53
  call void @CustomData_data_add(i32 noundef %45, ptr noundef %61, ptr noundef %63) #13
  %64 = load ptr, ptr %23, align 8, !tbaa !121
  %65 = getelementptr inbounds i8, ptr %64, i64 %53
  call void @CustomData_data_multiply(i32 noundef %45, ptr noundef %65, float noundef 5.000000e-01) #13
  %66 = load ptr, ptr %23, align 8, !tbaa !121
  %67 = getelementptr inbounds i8, ptr %66, i64 %53
  %68 = load ptr, ptr %24, align 8, !tbaa !121
  %69 = getelementptr inbounds i8, ptr %68, i64 %53
  call void @CustomData_data_copy_value(i32 noundef %45, ptr noundef %67, ptr noundef %69) #13
  %70 = load ptr, ptr %23, align 8, !tbaa !121
  %71 = getelementptr inbounds i8, ptr %70, i64 %53
  br i1 %9, label %72, label %78

72:                                               ; preds = %59
  %73 = load ptr, ptr %38, align 8, !tbaa !49
  %74 = load ptr, ptr %39, align 8, !tbaa !54
  %75 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !49
  %77 = icmp eq ptr %73, %76
  br i1 %77, label %119, label %84

78:                                               ; preds = %59
  %79 = load ptr, ptr %36, align 8, !tbaa !49
  %80 = load ptr, ptr %37, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct.BMLoop, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !49
  %83 = icmp eq ptr %79, %82
  br i1 %83, label %119, label %84

84:                                               ; preds = %78, %72
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  %85 = load ptr, ptr %4, align 8, !tbaa !121
  %86 = getelementptr inbounds i8, ptr %85, i64 %53
  %87 = load ptr, ptr %3, align 8, !tbaa !121
  %88 = getelementptr inbounds i8, ptr %87, i64 %53
  %89 = load ptr, ptr %40, align 8, !tbaa !46
  %90 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 6, ptr noundef %89) #14
  %91 = icmp eq ptr %90, null
  br i1 %91, label %118, label %92

92:                                               ; preds = %84, %115
  %93 = phi ptr [ %116, %115 ], [ %90, %84 ]
  %94 = getelementptr inbounds %struct.BMLoop, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !72
  %96 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %95) #14
  %97 = icmp eq i8 %96, 0
  %98 = icmp eq ptr %93, %3
  %99 = or i1 %98, %97
  %100 = icmp eq ptr %93, %4
  %101 = or i1 %100, %99
  %102 = icmp eq ptr %93, %23
  %103 = select i1 %101, i1 true, i1 %102
  %104 = icmp eq ptr %93, %24
  %105 = or i1 %104, %103
  br i1 %105, label %115, label %106

106:                                              ; preds = %92
  %107 = load ptr, ptr %93, align 8, !tbaa !121
  %108 = getelementptr inbounds i8, ptr %107, i64 %53
  %109 = call zeroext i8 @CustomData_data_equals(i32 noundef %45, ptr noundef %108, ptr noundef %86) #13
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = call zeroext i8 @CustomData_data_equals(i32 noundef %45, ptr noundef %108, ptr noundef %88) #13
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %106
  call void @CustomData_data_copy_value(i32 noundef %45, ptr noundef %71, ptr noundef %108) #13
  br label %115

115:                                              ; preds = %111, %114, %92
  %116 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %92, !llvm.loop !147

118:                                              ; preds = %115, %84
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  br label %119

119:                                              ; preds = %72, %78, %118
  %120 = load ptr, ptr %4, align 8, !tbaa !121
  %121 = getelementptr inbounds i8, ptr %120, i64 %53
  call void @CustomData_data_copy_value(i32 noundef %45, ptr noundef %71, ptr noundef %121) #13
  %122 = load ptr, ptr %3, align 8, !tbaa !121
  %123 = getelementptr inbounds i8, ptr %122, i64 %53
  call void @CustomData_data_copy_value(i32 noundef %45, ptr noundef %71, ptr noundef %123) #13
  br label %124

124:                                              ; preds = %51, %119, %41
  %125 = add nuw nsw i64 %42, 1
  %126 = load i32, ptr %31, align 4, !tbaa !142
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %41, label %129, !llvm.loop !148

129:                                              ; preds = %124, %30, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_interp_face_free(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !149 {
  %3 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.InterpFace, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = load ptr, ptr %0, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.BMFace, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !37
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %13 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  br label %14

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 0, %11 ], [ %18, %14 ]
  %16 = getelementptr inbounds ptr, ptr %4, i64 %15
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %12, ptr noundef %16) #13
  %17 = getelementptr inbounds ptr, ptr %6, i64 %15
  tail call void @CustomData_bmesh_free_block(ptr noundef nonnull %13, ptr noundef %17) #13
  %18 = add nuw nsw i64 %15, 1
  %19 = load ptr, ptr %0, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !37
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %14, label %24, !llvm.loop !150

24:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !151 {
  %3 = load float, ptr %1, align 4, !tbaa !125
  %4 = load float, ptr %0, align 4, !tbaa !125
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !125
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !125
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !125
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !125
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !125
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !125
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !152 {
  %2 = load float, ptr %0, align 4, !tbaa !125
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !125
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bm_edge_info_average_length(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !153 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %21, %18 ], [ %4, %2 ]
  %8 = phi i32 [ %20, %18 ], [ 0, %2 ]
  %9 = phi float [ %19, %18 ], [ 0.000000e+00, %2 ]
  %10 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %7) #14
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds %struct.SplitEdgeInfo, ptr %1, i64 %13, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !77
  %16 = fadd float %9, %15
  %17 = add nsw i32 %8, 1
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi float [ %16, %12 ], [ %9, %6 ]
  %20 = phi i32 [ %17, %12 ], [ %8, %6 ]
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !154

23:                                               ; preds = %18
  %24 = sitofp i32 %20 to float
  %25 = fdiv float %19, %24
  br label %26

26:                                               ; preds = %23, %2
  %27 = phi float [ 0x7FF8000000000000, %2 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret float %27
}

; Function Attrs: optsize
declare float @BM_vert_calc_shell_factor(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #6 !PGOFuncName !155 {
  %5 = load float, ptr %1, align 4, !tbaa !125
  %6 = load float, ptr %2, align 4, !tbaa !125
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !125
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !125
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !125
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !125
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !125
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !125
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_loop_separate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !156 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !157
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %23 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  br label %24

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !117
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  br label %24

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !117
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !161
  br label %24

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !117
  br label %24

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !117
  br label %24

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !117
  br label %24

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !117
  br label %24

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !117
  br label %24

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !117
  br label %24

23:                                               ; preds = %4
  unreachable

24:                                               ; preds = %22, %21, %20, %19, %18, %17, %14, %11, %8
  %25 = phi ptr [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %26 = phi ptr [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %25, ptr %0, align 8, !tbaa !162
  tail call void %26(ptr noundef nonnull %0) #13
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

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !163 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !164 {
  %3 = load float, ptr %0, align 4, !tbaa !125
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !125
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !125
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !165 {
  %4 = load float, ptr %1, align 4, !tbaa !125
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !125
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !125
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !125
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !125
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: optsize
declare zeroext i8 @CustomData_layer_has_math(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_data_equals(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_data_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_data_multiply(i32 noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_data_copy_value(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_free_block(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }

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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"bmo_inset.c:bmo_face_inset_individual"}
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
!51 = distinct !{!51, !35}
!52 = !{!38, !40, i64 16}
!53 = !{!47, !40, i64 40}
!54 = !{!47, !40, i64 64}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35}
!58 = !{!59, !40, i64 0}
!59 = !{!"InterpFace", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32}
!60 = !{!59, !40, i64 8}
!61 = !{!59, !40, i64 16}
!62 = !{!59, !40, i64 24}
!63 = distinct !{!63, !35}
!64 = !{!65, !43, i64 12}
!65 = !{!"BMesh", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !41, i64 28, !41, i64 29, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !43, i64 88, !43, i64 92, !43, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !43, i64 128, !40, i64 136, !66, i64 144, !66, i64 344, !66, i64 544, !66, i64 744, !44, i64 944, !43, i64 948, !43, i64 952, !43, i64 956, !67, i64 960, !40, i64 976, !67, i64 984, !40, i64 1000}
!66 = !{!"CustomData", !40, i64 0, !41, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !40, i64 184, !40, i64 192}
!67 = !{!"ListBase", !40, i64 0, !40, i64 8}
!68 = !{i8 0, i8 2}
!69 = !{!70, !40, i64 40}
!70 = !{!"BMEdge", !39, i64 0, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !71, i64 48, !71, i64 64}
!71 = !{!"BMDiskLink", !40, i64 0, !40, i64 8}
!72 = !{!47, !40, i64 32}
!73 = !{!70, !40, i64 24}
!74 = !{!70, !40, i64 32}
!75 = distinct !{!75, !35}
!76 = !{!65, !41, i64 28}
!77 = !{!78, !79, i64 12}
!78 = !{!"SplitEdgeInfo", !41, i64 0, !79, i64 12, !40, i64 16, !40, i64 24, !40, i64 32}
!79 = !{!"float", !41, i64 0}
!80 = !{!78, !40, i64 16}
!81 = distinct !{!81, !35}
!82 = !{!78, !40, i64 32}
!83 = !{!78, !40, i64 24}
!84 = distinct !{!84, !35}
!85 = distinct !{!85, !35}
!86 = distinct !{!86, !35}
!87 = !{!43, !43, i64 0}
!88 = distinct !{!88, !35}
!89 = !{!90, !40, i64 48}
!90 = !{!"BMVert", !39, i64 0, !40, i64 16, !41, i64 24, !41, i64 36, !40, i64 48}
!91 = distinct !{!91, !35}
!92 = distinct !{!92, !35}
!93 = distinct !{!93, !35}
!94 = distinct !{!94, !35}
!95 = distinct !{!95, !35}
!96 = distinct !{!96, !35}
!97 = distinct !{!97, !35}
!98 = distinct !{!98, !35}
!99 = distinct !{!99, !35}
!100 = distinct !{!100, !35}
!101 = distinct !{!101, !35}
!102 = distinct !{!102, !35}
!103 = !{!65, !43, i64 0}
!104 = distinct !{!104, !35}
!105 = distinct !{!105, !35}
!106 = !{!"bmo_inset.c:BM_iter_new"}
!107 = !{!"bmo_inset.c:BM_edge_is_boundary"}
!108 = !{!"bmo_inset.c:_bm_elem_flag_test"}
!109 = !{!39, !41, i64 13}
!110 = !{!"bmo_inset.c:bm_edge_is_mixed_face_tag"}
!111 = distinct !{!111, !35}
!112 = !{!"bmo_inset.c:_bm_elem_flag_enable"}
!113 = !{!"bmo_inset.c:_bm_elem_index_set"}
!114 = !{!39, !43, i64 8}
!115 = !{!"bmo_inset.c:_bm_elem_flag_disable"}
!116 = !{!"bmo_inset.c:BM_iter_step"}
!117 = !{!118, !40, i64 48}
!118 = !{!"BMIter", !41, i64 0, !40, i64 40, !40, i64 48, !43, i64 56, !41, i64 60}
!119 = !{!"bmo_inset.c:_bm_elem_index_get"}
!120 = !{!"bmo_inset.c:bm_interp_face_store"}
!121 = !{!47, !40, i64 0}
!122 = !{!90, !40, i64 0}
!123 = distinct !{!123, !35}
!124 = !{!"bmo_inset.c:copy_v3_v3"}
!125 = !{!79, !79, i64 0}
!126 = !{!"bmo_inset.c:add_v3_v3v3"}
!127 = !{!"bmo_inset.c:sub_v3_v3v3"}
!128 = !{!"bmo_inset.c:normalize_v3"}
!129 = !{!"bmo_inset.c:mul_v3_fl"}
!130 = !{!"bmo_inset.c:shell_v3v3_mid_normalized_to_dist"}
!131 = !{!"bmo_inset.c:shell_v3v3_normalized_to_dist"}
!132 = !{!"bmo_inset.c:len_squared_v3v3"}
!133 = !{!"bmo_inset.c:BM_edge_other_vert"}
!134 = !{!"bmo_inset.c:zero_v3"}
!135 = !{!"bmo_inset.c:madd_v3_v3fl"}
!136 = !{!"bmo_inset.c:_bmo_elem_flag_enable"}
!137 = !{!65, !43, i64 128}
!138 = !{!139, !44, i64 0}
!139 = !{!"BMFlagLayer", !44, i64 0}
!140 = !{!"bmo_inset.c:BM_edge_is_manifold"}
!141 = !{!"bmo_inset.c:bm_loop_customdata_merge"}
!142 = !{!65, !43, i64 716}
!143 = !{!65, !40, i64 544}
!144 = !{!145, !43, i64 0}
!145 = !{!"CustomDataLayer", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !41, i64 32, !40, i64 96}
!146 = !{!145, !43, i64 4}
!147 = distinct !{!147, !35}
!148 = distinct !{!148, !35}
!149 = !{!"bmo_inset.c:bm_interp_face_free"}
!150 = distinct !{!150, !35}
!151 = !{!"bmo_inset.c:add_v3_v3"}
!152 = !{!"bmo_inset.c:len_squared_v3"}
!153 = !{!"bmo_inset.c:bm_edge_info_average_length"}
!154 = distinct !{!154, !35}
!155 = !{!"bmo_inset.c:madd_v3_v3v3fl"}
!156 = !{!"bmo_inset.c:BM_iter_init"}
!157 = !{!118, !41, i64 60}
!158 = !{!118, !40, i64 40}
!159 = !{!65, !40, i64 32}
!160 = !{!65, !40, i64 40}
!161 = !{!65, !40, i64 56}
!162 = !{!41, !41, i64 0}
!163 = !{!"bmo_inset.c:normalize_v3_v3"}
!164 = !{!"bmo_inset.c:dot_v3v3"}
!165 = !{!"bmo_inset.c:mul_v3_v3fl"}
