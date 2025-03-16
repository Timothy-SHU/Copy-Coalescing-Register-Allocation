; ModuleID = 'zcrd.c'
source_filename = "zcrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.gs_cie_render_proc3_s = type { [3 x ptr] }
%struct.gs_cie_transform_proc3_s = type { [3 x ptr] }
%struct.gs_cie_render_table_procs_s = type { [4 x ptr] }
%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gx_cie_joint_caches_s = type { %struct.rc_header_s, i32, [3 x %union.gx_cie_vector_cache_s], %struct.gs_cie_wbsd_s, %struct.gs_matrix3_s, i32, [3 x %union.gx_cie_vector_cache_s] }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%union.gx_cie_vector_cache_s = type { %struct.cie_cache_vectors_s }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { i32, float, float, float }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.gs_cie_render_s = type { %struct.rc_header_s, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.anon.0, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.1 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.anon.0 = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, ptr }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.anon.1 = type { [3 x %union.gx_cie_vector_cache_s], [3 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%union.gx_cie_scalar_cache_s = type { %struct.gx_cie_cache_s }
%struct.gx_cie_cache_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, float, float }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon, %union.anon, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.6, %struct.ref_s, %struct.ref_s }
%union.anon = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.5 }
%struct.ref_cie_procs_s = type { %union.anon.3, %union.anon.4, %struct.ref_s }
%union.anon.3 = type { %struct.ref_s }
%union.anon.4 = type { %struct.ref_s }
%union.anon.5 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.6 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [17 x i8] c"cie_cache_common\00", align 1
@e_stack = external global %struct.ref_stack_s, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Transform.PQR\00", align 1
@zcrd_l2_op_defs.op_defs_ = internal constant [8 x %struct.op_def] [%struct.op_def { ptr @.str.2, ptr null }, %struct.op_def { ptr @.str.3, ptr @zcurrentcolorrendering }, %struct.op_def { ptr @.str.4, ptr @zsetcolorrendering }, %struct.op_def { ptr @.str.5, ptr @cie_cache_render_finish }, %struct.op_def { ptr @.str.6, ptr @cie_exec_tpqr }, %struct.op_def { ptr @.str.7, ptr @cie_post_exec_tpqr }, %struct.op_def { ptr @.str.8, ptr @cie_tpqr_finish }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"0currentcolorrendering\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"1setcolorrendering\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"1%cie_render_finish\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"3%cie_exec_tpqr\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"2%cie_post_exec_tpqr\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"1%cie_tpqr_finish\00", align 1
@o_stack = external global %struct.ref_stack_s, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"cie_tpqr_finish\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@st_cie_render = internal constant %struct.gs_memory_struct_type_s { i32 33448, ptr @.str.11, ptr null, ptr null, ptr @cie_render_enum_ptrs, ptr @cie_render_reloc_ptrs, ptr null }, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"setcolorrendering\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"gs_cie_render\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"ColorRenderingType\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MatrixLMN\00", align 1
@Matrix3_default = external constant %struct.gs_matrix3_s, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"EncodeLMN\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"RangeLMN\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"MatrixABC\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"EncodeABC\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"RangeABC\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"MatrixPQR\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"RangePQR\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"TransformPQR\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"RenderTable\00", align 1
@Encode_default = external local_unnamed_addr constant %struct.gs_cie_render_proc3_s, align 8
@TransformPQR_default = external local_unnamed_addr constant %struct.gs_cie_transform_proc3_s, align 8
@RenderTableT_default = external local_unnamed_addr constant %struct.gs_cie_render_table_procs_s, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"Encode.LMN\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Encode.ABC\00", align 1
@Range4_default = external constant %struct.gs_range4_s, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"RenderTable.T\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @cie_cache_joint(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = tail call ptr @gs_currentcolorrendering(ptr noundef %1) #6
  %5 = tail call ptr @gx_currentciecaches(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %6 = icmp eq ptr %4, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %11 = call i32 @gs_alloc_ref_array(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 96, i32 noundef 87, ptr noundef nonnull @.str) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @e_stack, align 8, !tbaa !11
  %15 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -3
  %17 = icmp ugt ptr %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 3) #6
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %76

21:                                               ; preds = %18, %13
  %22 = call i32 @cie_cache_push_finish(ptr noundef nonnull @cie_tpqr_finish, ptr noundef %1, ptr noundef %1) #6
  %23 = load ptr, ptr @e_stack, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.ref_s, ptr %23, i64 1
  store ptr %24, ptr @e_stack, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !17
  %25 = load i16, ptr %3, align 8, !tbaa !24
  %26 = and i16 %25, 12
  %27 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %28 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %5, i64 0, i32 3
  %29 = or disjoint i16 %26, 1248
  %30 = or disjoint i16 %26, 1120
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  br label %32

32:                                               ; preds = %21, %65
  %33 = phi i64 [ 0, %21 ], [ %66, %65 ]
  %34 = load ptr, ptr %27, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.ref_s, ptr %34, i64 3
  %36 = mul nuw nsw i64 %33, 28
  %37 = getelementptr inbounds %struct.ref_s, ptr %35, i64 %36
  %38 = getelementptr inbounds %struct.ref_s, ptr %34, i64 %33, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !25
  %39 = load ptr, ptr %27, align 8, !tbaa !25
  %40 = getelementptr inbounds %struct.ref_s, ptr %39, i64 %33
  store i16 %29, ptr %40, align 8, !tbaa !24
  %41 = load ptr, ptr %27, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 %33, i32 0, i32 1
  store i16 4, ptr %42, align 2, !tbaa !26
  %43 = getelementptr inbounds %struct.ref_s, ptr %37, i64 4
  %44 = getelementptr inbounds %struct.ref_s, ptr %35, i64 %36, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !25
  store i16 %30, ptr %37, align 8, !tbaa !24
  %45 = getelementptr inbounds %struct.tas_s, ptr %37, i64 0, i32 1
  store i16 24, ptr %45, align 2, !tbaa !26
  %46 = getelementptr inbounds %struct.ref_s, ptr %37, i64 1
  %47 = load ptr, ptr %31, align 8, !tbaa !25
  %48 = getelementptr inbounds %struct.ref_s, ptr %47, i64 %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false), !tbaa.struct !17
  %49 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2
  %50 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2, i32 1
  store ptr @cie_exec_tpqr, ptr %50, align 8, !tbaa !25
  store i16 3968, ptr %49, align 8, !tbaa !24
  %51 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2, i32 0, i32 1
  store i16 0, ptr %51, align 2, !tbaa !26
  %52 = getelementptr inbounds %struct.ref_s, ptr %37, i64 3
  %53 = getelementptr inbounds %struct.ref_s, ptr %37, i64 3, i32 1
  store ptr @cie_post_exec_tpqr, ptr %53, align 8, !tbaa !25
  store i16 3968, ptr %52, align 8, !tbaa !24
  %54 = getelementptr inbounds %struct.ref_s, ptr %37, i64 3, i32 0, i32 1
  store i16 0, ptr %54, align 2, !tbaa !26
  br label %55

55:                                               ; preds = %32, %55
  %56 = phi i32 [ 0, %32 ], [ %61, %55 ]
  %57 = phi ptr [ %28, %32 ], [ %63, %55 ]
  %58 = phi ptr [ %43, %32 ], [ %62, %55 ]
  %59 = load float, ptr %57, align 4, !tbaa !21
  %60 = getelementptr inbounds %struct.ref_s, ptr %58, i64 0, i32 1
  store float %59, ptr %60, align 8, !tbaa !25
  store i16 4096, ptr %58, align 8, !tbaa !24
  %61 = add nuw nsw i32 %56, 1
  %62 = getelementptr inbounds %struct.ref_s, ptr %58, i64 1
  %63 = getelementptr inbounds float, ptr %57, i64 1
  %64 = icmp eq i32 %61, 24
  br i1 %64, label %65, label %55, !llvm.loop !27

65:                                               ; preds = %55
  %66 = add nuw nsw i64 %33, 1
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %32, !llvm.loop !29

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.gs_cie_render_s, ptr %4, i64 0, i32 3
  %70 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !25
  %72 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %5, i64 0, i32 6
  %73 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %5, i64 0, i32 6, i64 1
  %74 = getelementptr inbounds %struct.gx_cie_joint_caches_s, ptr %5, i64 0, i32 6, i64 2
  %75 = call i32 @cie_prepare_caches_3(ptr noundef nonnull %69, ptr noundef %71, ptr noundef nonnull %72, ptr noundef nonnull %73, ptr noundef nonnull %74, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.1) #6
  br label %76

76:                                               ; preds = %9, %7, %2, %18, %68
  %77 = phi i32 [ %75, %68 ], [ %19, %18 ], [ 0, %2 ], [ -25, %7 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %77
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gs_currentcolorrendering(ptr noundef) local_unnamed_addr #2

declare ptr @gx_currentciecaches(ptr noundef) local_unnamed_addr #2

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @cie_cache_push_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @cie_tpqr_finish(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = load ptr, ptr @gs_imemory, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  tail call void @gs_free_ref_array(ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull @.str.9) #6
  tail call void @gs_cie_cs_complete(ptr noundef %3, i32 noundef 0) #6
  %6 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.ref_s, ptr %6, i64 -2
  store ptr %7, ptr @o_stack, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal i32 @cie_exec_tpqr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = load i16, ptr %2, align 8, !tbaa !24
  %6 = and i16 %5, 12
  %7 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.ref_s, ptr %7, i64 3
  %9 = icmp ugt ptr %8, %0
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %13 = icmp ugt ptr %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 4, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %30

15:                                               ; preds = %10
  store ptr %11, ptr @o_stack, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !17
  %18 = or disjoint i16 %6, 1120
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ 0, %15 ], [ %26, %19 ]
  %21 = mul nuw nsw i64 %20, 6
  %22 = getelementptr inbounds %struct.ref_s, ptr %4, i64 %21
  %23 = getelementptr inbounds %struct.ref_s, ptr %2, i64 %20
  %24 = getelementptr inbounds %struct.ref_s, ptr %2, i64 %20, i32 1
  store ptr %22, ptr %24, align 8, !tbaa !25
  store i16 %18, ptr %23, align 8, !tbaa !24
  %25 = getelementptr inbounds %struct.tas_s, ptr %23, i64 0, i32 1
  store i16 6, ptr %25, align 2, !tbaa !26
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %19, !llvm.loop !32

28:                                               ; preds = %19
  store i16 3072, ptr %17, align 8, !tbaa !24
  %29 = tail call i32 @zexec(ptr noundef nonnull %11) #6
  br label %30

30:                                               ; preds = %1, %28, %14
  %31 = phi i32 [ -16, %14 ], [ %29, %28 ], [ -17, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cie_post_exec_tpqr(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = tail call i32 @ref_stack_counttomark(ptr noundef nonnull @o_stack) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %6 = add i32 %3, -1
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %6) #6
  %7 = load ptr, ptr @o_stack, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ 0, %5 ], [ -24, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %9
}

declare i32 @cie_prepare_caches_3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcrd_l2_op_defs() local_unnamed_addr #4 {
  ret ptr @zcrd_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentcolorrendering(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %10

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !11
  %7 = load ptr, ptr @igs, align 8, !tbaa !23
  %8 = tail call ptr @gs_state_client_data(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.int_gstate_s, ptr %8, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !17
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcolorrendering(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ref_cie_render_procs_s, align 8
  %5 = load ptr, ptr @igs, align 8, !tbaa !23
  %6 = tail call ptr @gs_state_memory(ptr noundef %5) #6
  %7 = load ptr, ptr @e_stack, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4)
  %8 = load i16, ptr %0, align 8, !tbaa !24
  %9 = and i16 %8, 16160
  %10 = icmp eq i16 %9, 544
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !25
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %263, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %263

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = load i16, ptr %19, align 8, !tbaa !33
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %263, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = tail call ptr %25(ptr noundef %6, ptr noundef nonnull @st_cie_render, ptr noundef nonnull @.str.10) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %263, label %28

28:                                               ; preds = %23
  store i64 0, ptr %26, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.rc_header_s, ptr %26, i64 0, i32 1
  store ptr %6, ptr %29, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.rc_header_s, ptr %26, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %30, align 8, !tbaa !52
  %31 = load ptr, ptr @igs, align 8, !tbaa !23
  %32 = tail call ptr @gs_state_client_data(ptr noundef %31) #6
  %33 = getelementptr inbounds %struct.int_gstate_s, ptr %32, i64 0, i32 7, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %33, i64 64, i1 false), !tbaa.struct !53
  %34 = load ptr, ptr @igs, align 8, !tbaa !23
  %35 = tail call ptr @gs_state_client_data(ptr noundef %34) #6
  %36 = getelementptr inbounds %struct.int_gstate_s, ptr %35, i64 0, i32 7, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %37 = call i32 @dict_int_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %2) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %78, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 5
  %41 = call i32 @dict_float_array_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i32 noundef 9, ptr noundef nonnull %40, ptr noundef nonnull @Matrix3_default) #6
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.int_gstate_s, ptr %35, i64 0, i32 7, i32 1, i32 1
  %45 = call i32 @dict_proc_array_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef nonnull %44) #6
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 7
  %49 = call i32 @dict_ranges_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i32 noundef 3, ptr noundef nonnull %48) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 8
  %53 = call i32 @dict_float_array_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef 9, ptr noundef nonnull %52, ptr noundef nonnull @Matrix3_default) #6
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.int_gstate_s, ptr %35, i64 0, i32 7, i32 1, i32 2
  %57 = call i32 @dict_proc_array_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef 3, ptr noundef nonnull %56) #6
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 10
  %61 = call i32 @dict_ranges_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef 3, ptr noundef nonnull %60) #6
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 1
  %65 = call i32 @cie_points_param(ptr noundef nonnull %0, ptr noundef nonnull %64) #6
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 2
  %69 = call i32 @dict_float_array_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, i32 noundef 9, ptr noundef nonnull %68, ptr noundef nonnull @Matrix3_default) #6
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 3
  %73 = call i32 @dict_ranges_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef 3, ptr noundef nonnull %72) #6
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = call i32 @dict_proc_array_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef 3, ptr noundef nonnull %36) #6
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %28
  %79 = phi i32 [ %37, %28 ], [ %41, %39 ], [ %45, %43 ], [ %49, %47 ], [ %53, %51 ], [ %57, %55 ], [ %61, %59 ], [ %65, %63 ], [ %69, %67 ], [ %73, %71 ], [ %76, %75 ]
  %80 = icmp slt i32 %79, 0
  %81 = select i1 %80, i32 %79, i32 -15
  br label %159

82:                                               ; preds = %75
  %83 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %3) #6
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %151

85:                                               ; preds = %82
  %86 = load ptr, ptr %3, align 8, !tbaa !23
  %87 = load i16, ptr %86, align 8, !tbaa !24
  %88 = and i16 %87, 16160
  %89 = icmp eq i16 %88, 1056
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, ptr %86, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !25
  %93 = icmp eq i8 %92, 4
  br i1 %93, label %148, label %94

94:                                               ; preds = %90
  %95 = call i32 @check_type_failed(ptr noundef nonnull %86) #6
  br label %148

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.tas_s, ptr %86, i64 0, i32 1
  %98 = load i16, ptr %97, align 2, !tbaa !26
  %99 = icmp ult i16 %98, 5
  br i1 %99, label %148, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ref_s, ptr %86, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !25
  %103 = getelementptr inbounds i8, ptr %102, i64 65
  %104 = load i8, ptr %103, align 1, !tbaa !25
  %105 = icmp eq i8 %104, 11
  br i1 %105, label %106, label %148

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ref_s, ptr %102, i64 4, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !25
  %109 = add i64 %108, -3
  %110 = icmp ult i64 %109, 2
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 11
  store i32 3, ptr %112, align 8, !tbaa !54
  %113 = load i64, ptr %107, align 8, !tbaa !25
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 11, i32 0, i32 2
  store i32 %114, ptr %115, align 4, !tbaa !55
  %116 = zext i16 %98 to i32
  %117 = add nsw i32 %114, 5
  %118 = icmp eq i32 %117, %116
  br i1 %118, label %119, label %148

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.ref_s, ptr %102, i64 5
  %121 = icmp sgt i32 %114, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = and i64 %113, 4294967295
  br label %127

124:                                              ; preds = %127
  %125 = add nuw nsw i64 %128, 1
  %126 = icmp eq i64 %125, %123
  br i1 %126, label %135, label %127, !llvm.loop !56

127:                                              ; preds = %124, %122
  %128 = phi i64 [ 0, %122 ], [ %125, %124 ]
  %129 = getelementptr inbounds %struct.ref_s, ptr %120, i64 %128
  %130 = load i16, ptr %129, align 8, !tbaa !24
  %131 = and i16 %130, 15552
  %132 = icmp eq i16 %131, 1216
  br i1 %132, label %124, label %133

133:                                              ; preds = %127
  %134 = call i32 @check_proc_failed(ptr noundef nonnull %129) #6
  br label %148

135:                                              ; preds = %124, %119
  %136 = call i32 @cie_table_param(ptr noundef nonnull %86, ptr noundef nonnull %112, ptr noundef %6) #6
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.int_gstate_s, ptr %35, i64 0, i32 7, i32 1, i32 3
  %140 = getelementptr inbounds %struct.int_gstate_s, ptr %35, i64 0, i32 7, i32 1, i32 3, i32 1
  store ptr %120, ptr %140, align 8, !tbaa !25
  %141 = load ptr, ptr %3, align 8, !tbaa !23
  %142 = load i16, ptr %141, align 8, !tbaa !24
  %143 = and i16 %142, 12
  %144 = or disjoint i16 %143, 1120
  store i16 %144, ptr %139, align 8, !tbaa !57
  %145 = load i32, ptr %115, align 4, !tbaa !55
  %146 = trunc i32 %145 to i16
  %147 = getelementptr inbounds %struct.int_gstate_s, ptr %35, i64 0, i32 7, i32 1, i32 3, i32 0, i32 1
  store i16 %146, ptr %147, align 2, !tbaa !59
  br label %148

148:                                              ; preds = %138, %135, %133, %111, %106, %100, %96, %94, %90
  %149 = phi i32 [ %134, %133 ], [ undef, %138 ], [ %95, %94 ], [ -7, %90 ], [ -15, %96 ], [ -20, %100 ], [ -15, %106 ], [ -15, %111 ], [ %136, %135 ]
  %150 = phi i1 [ false, %133 ], [ true, %138 ], [ false, %94 ], [ false, %90 ], [ false, %96 ], [ false, %100 ], [ false, %106 ], [ false, %111 ], [ false, %135 ]
  br i1 %150, label %154, label %159

151:                                              ; preds = %82
  %152 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 11, i32 0, i32 3
  store ptr null, ptr %152, align 8, !tbaa !60
  %153 = getelementptr inbounds %struct.int_gstate_s, ptr %35, i64 0, i32 7, i32 1, i32 3
  store i16 3584, ptr %153, align 8, !tbaa !57
  br label %154

154:                                              ; preds = %151, %148
  %155 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %155, ptr noundef nonnull align 8 dereferenceable(24) @Encode_default, i64 24, i1 false), !tbaa.struct !61
  %156 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %156, ptr noundef nonnull align 8 dereferenceable(24) @Encode_default, i64 24, i1 false), !tbaa.struct !61
  %157 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, ptr noundef nonnull align 8 dereferenceable(24) @TransformPQR_default, i64 24, i1 false), !tbaa.struct !61
  %158 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 11, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %158, ptr noundef nonnull align 8 dereferenceable(32) @RenderTableT_default, i64 32, i1 false), !tbaa.struct !62
  br label %159

159:                                              ; preds = %78, %148, %154
  %160 = phi i32 [ %81, %78 ], [ 0, %154 ], [ %149, %148 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %247, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr @igs, align 8, !tbaa !23
  %164 = call i32 @gs_setcolorrendering(ptr noundef %163, ptr noundef nonnull %26) #6
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %247, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr @igs, align 8, !tbaa !23
  %168 = call ptr @gs_state_client_data(ptr noundef %167) #6
  %169 = getelementptr inbounds %struct.int_gstate_s, ptr %168, i64 0, i32 7, i32 1
  %170 = load ptr, ptr @igs, align 8, !tbaa !23
  %171 = load ptr, ptr @e_stack, align 8, !tbaa !11
  %172 = call i32 @gs_cie_render_init(ptr noundef %26) #6
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %201, label %174

174:                                              ; preds = %166
  %175 = call ptr @gs_cie_cs_common(ptr noundef %170) #6
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = call i32 @cie_cache_joint(ptr noundef nonnull %169, ptr noundef %170)
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %201, label %180

180:                                              ; preds = %177, %174
  %181 = call i32 @cie_cache_push_finish(ptr noundef nonnull @cie_cache_render_finish, ptr noundef %170, ptr noundef %26) #6
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %201, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 12
  %185 = getelementptr inbounds %struct.int_gstate_s, ptr %168, i64 0, i32 7, i32 1, i32 1, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !25
  %187 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19
  %188 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19, i32 0, i64 1
  %189 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19, i32 0, i64 2
  %190 = call i32 @cie_prepare_caches_3(ptr noundef nonnull %184, ptr noundef %186, ptr noundef nonnull %187, ptr noundef nonnull %188, ptr noundef nonnull %189, ptr noundef %26, ptr noundef %170, ptr noundef nonnull @.str.23) #6
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %183
  %193 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 13
  %194 = getelementptr inbounds %struct.int_gstate_s, ptr %168, i64 0, i32 7, i32 1, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !25
  %196 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19, i32 1
  %197 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19, i32 1, i64 1
  %198 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19, i32 1, i64 2
  %199 = call i32 @cie_prepare_caches_3(ptr noundef nonnull %193, ptr noundef %195, ptr noundef nonnull %196, ptr noundef nonnull %197, ptr noundef nonnull %198, ptr noundef %26, ptr noundef %170, ptr noundef nonnull @.str.24) #6
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192, %183, %180, %177, %166
  %202 = phi i32 [ %172, %166 ], [ %178, %177 ], [ %181, %180 ], [ %190, %183 ], [ %199, %192 ]
  store ptr %171, ptr @e_stack, align 8, !tbaa !11
  br label %244

203:                                              ; preds = %192
  %204 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 11, i32 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !60
  %206 = icmp eq ptr %205, null
  br i1 %206, label %243, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 11, i32 0, i32 2
  %209 = load i32, ptr %208, align 4, !tbaa !55
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %238

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.int_gstate_s, ptr %168, i64 0, i32 7, i32 1, i32 3, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !25
  %214 = zext nneg i32 %209 to i64
  br label %218

215:                                              ; preds = %218
  %216 = add nuw nsw i64 %219, 1
  %217 = icmp eq i64 %216, %214
  br i1 %217, label %238, label %218, !llvm.loop !63

218:                                              ; preds = %215, %211
  %219 = phi i64 [ 0, %211 ], [ %216, %215 ]
  %220 = getelementptr inbounds %struct.ref_s, ptr %213, i64 %219, i32 0, i32 1
  %221 = load i16, ptr %220, align 2, !tbaa !26
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %215, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19, i32 3
  store i32 0, ptr %224, align 4, !tbaa !64
  br label %230

225:                                              ; preds = %230
  %226 = add nuw nsw i64 %231, 1
  %227 = load i32, ptr %208, align 4, !tbaa !55
  %228 = sext i32 %227 to i64
  %229 = icmp slt i64 %226, %228
  br i1 %229, label %230, label %240, !llvm.loop !65

230:                                              ; preds = %223, %225
  %231 = phi i64 [ %226, %225 ], [ 0, %223 ]
  %232 = load ptr, ptr %212, align 8, !tbaa !25
  %233 = getelementptr inbounds %struct.ref_s, ptr %232, i64 %231
  %234 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19, i32 2, i64 %231
  %235 = call i32 @cie_prepare_cache(ptr noundef nonnull @Range4_default, ptr noundef %233, ptr noundef nonnull %234, ptr noundef %26, ptr noundef %170, ptr noundef nonnull @.str.25) #6
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %225

237:                                              ; preds = %230
  store ptr %171, ptr @e_stack, align 8, !tbaa !11
  br label %240

238:                                              ; preds = %215, %207
  %239 = getelementptr inbounds %struct.gs_cie_render_s, ptr %26, i64 0, i32 19, i32 3
  store i32 1, ptr %239, align 4, !tbaa !64
  br label %240

240:                                              ; preds = %225, %238, %237
  %241 = phi i32 [ %235, %237 ], [ undef, %238 ], [ undef, %225 ]
  %242 = phi i1 [ false, %237 ], [ true, %238 ], [ true, %225 ]
  br i1 %242, label %243, label %244

243:                                              ; preds = %240, %203
  br label %244

244:                                              ; preds = %201, %240, %243
  %245 = phi i32 [ %202, %201 ], [ 5, %243 ], [ %241, %240 ]
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %244, %162, %159
  %248 = phi i32 [ %160, %159 ], [ %164, %162 ], [ %245, %244 ]
  %249 = load ptr, ptr %30, align 8, !tbaa !52
  %250 = load ptr, ptr %29, align 8, !tbaa !51
  call void %249(ptr noundef %250, ptr noundef nonnull %26, ptr noundef nonnull @.str.10) #6
  %251 = load ptr, ptr @igs, align 8, !tbaa !23
  %252 = call ptr @gs_state_client_data(ptr noundef %251) #6
  %253 = getelementptr inbounds %struct.int_gstate_s, ptr %252, i64 0, i32 7, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %253, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !53
  store ptr %7, ptr @e_stack, align 8, !tbaa !11
  br label %263

254:                                              ; preds = %244
  %255 = load ptr, ptr @igs, align 8, !tbaa !23
  %256 = call ptr @gs_state_client_data(ptr noundef %255) #6
  %257 = getelementptr inbounds %struct.int_gstate_s, ptr %256, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %257, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %258 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %259 = getelementptr inbounds %struct.ref_s, ptr %258, i64 -1
  store ptr %259, ptr @o_stack, align 8, !tbaa !11
  %260 = load ptr, ptr @e_stack, align 8, !tbaa !11
  %261 = icmp eq ptr %260, %7
  %262 = select i1 %261, i32 0, i32 5
  br label %263

263:                                              ; preds = %23, %17, %15, %11, %254, %247
  %264 = phi i32 [ %248, %247 ], [ %262, %254 ], [ %16, %15 ], [ -7, %11 ], [ -7, %17 ], [ -25, %23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4)
  ret i32 %264
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_cache_render_finish(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.gs_cie_render_s, ptr %3, i64 0, i32 11, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gs_cie_render_s, ptr %3, i64 0, i32 19, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gs_cie_render_s, ptr %3, i64 0, i32 11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !55
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %18, %15 ], [ 0, %11 ]
  %17 = getelementptr inbounds %struct.gs_cie_render_s, ptr %3, i64 0, i32 19, i32 2, i64 %16
  tail call void @gs_cie_cache_to_fracs(ptr noundef nonnull %17) #6
  %18 = add nuw nsw i64 %16, 1
  %19 = load i32, ptr %12, align 4, !tbaa !55
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %15, label %22, !llvm.loop !66

22:                                               ; preds = %15, %11, %7, %1
  %23 = tail call i32 @gs_cie_render_complete(ptr noundef %3) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -1
  store ptr %27, ptr @o_stack, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %22, %25
  %29 = phi i32 [ 0, %25 ], [ %23, %22 ]
  ret i32 %29
}

declare i32 @zexec(ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_counttomark(ptr noundef) local_unnamed_addr #2

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gs_free_ref_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_cie_cs_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #2

declare ptr @gs_state_memory(ptr noundef) local_unnamed_addr #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @gs_setcolorrendering(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @cie_render_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 11, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  store ptr %8, ptr %3, align 8, !tbaa !23
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @cie_render_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gs_cie_render_s, ptr %0, i64 0, i32 11, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #6
  store ptr %6, ptr %4, align 8, !tbaa !60
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_float_array_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_proc_array_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_ranges_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cie_points_param(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

declare i32 @cie_table_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_cie_render_init(ptr noundef) local_unnamed_addr #2

declare ptr @gs_cie_cs_common(ptr noundef) local_unnamed_addr #2

declare i32 @cie_prepare_cache(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_cie_cache_to_fracs(ptr noundef) local_unnamed_addr #2

declare i32 @gs_cie_render_complete(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !10, i64 40, !10, i64 44, !13, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !13, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !7, i64 120}
!13 = !{!"ref_s", !14, i64 0, !8, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !8, i64 0}
!16 = !{!12, !7, i64 16}
!17 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23}
!18 = !{!15, !15, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !8, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!13, !15, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!13, !15, i64 2}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !28}
!30 = !{!12, !7, i64 8}
!31 = !{!12, !10, i64 64}
!32 = distinct !{!32, !28}
!33 = !{!34, !15, i64 0}
!34 = !{!"dict_s", !13, i64 0, !13, i64 16, !13, i64 32, !13, i64 48}
!35 = !{!36, !7, i64 16}
!36 = !{!"gs_memory_s", !37, i64 0}
!37 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!38 = !{!39, !20, i64 0}
!39 = !{!"gs_cie_render_s", !40, i64 0, !41, i64 24, !43, i64 48, !44, i64 88, !45, i64 112, !43, i64 136, !46, i64 176, !44, i64 200, !43, i64 224, !46, i64 264, !44, i64 288, !47, i64 312, !44, i64 376, !44, i64 400, !43, i64 424, !8, i64 464, !43, i64 476, !42, i64 516, !42, i64 528, !50, i64 540}
!40 = !{!"rc_header_s", !20, i64 0, !7, i64 8, !7, i64 16}
!41 = !{!"gs_cie_wb_s", !42, i64 0, !42, i64 12}
!42 = !{!"gs_vector3_s", !22, i64 0, !22, i64 4, !22, i64 8}
!43 = !{!"gs_matrix3_s", !42, i64 0, !42, i64 12, !42, i64 24, !10, i64 36}
!44 = !{!"gs_range3_s", !8, i64 0}
!45 = !{!"gs_cie_transform_proc3_s", !8, i64 0}
!46 = !{!"gs_cie_render_proc3_s", !8, i64 0}
!47 = !{!"", !48, i64 0, !49, i64 32}
!48 = !{!"gx_color_lookup_table_s", !10, i64 0, !8, i64 4, !10, i64 20, !7, i64 24}
!49 = !{!"gs_cie_render_table_procs_s", !8, i64 0}
!50 = !{!"", !8, i64 0, !8, i64 18480, !8, i64 24660, !10, i64 32900}
!51 = !{!39, !7, i64 8}
!52 = !{!39, !7, i64 16}
!53 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 2, !18, i64 18, i64 2, !18, i64 24, i64 8, !19, i64 24, i64 2, !18, i64 24, i64 4, !21, i64 24, i64 8, !19, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 24, i64 8, !23, i64 32, i64 2, !18, i64 34, i64 2, !18, i64 40, i64 8, !19, i64 40, i64 2, !18, i64 40, i64 4, !21, i64 40, i64 8, !19, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 40, i64 8, !23, i64 48, i64 2, !18, i64 50, i64 2, !18, i64 56, i64 8, !19, i64 56, i64 2, !18, i64 56, i64 4, !21, i64 56, i64 8, !19, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23, i64 56, i64 8, !23}
!54 = !{!39, !10, i64 312}
!55 = !{!39, !10, i64 332}
!56 = distinct !{!56, !28}
!57 = !{!58, !15, i64 48}
!58 = !{!"ref_cie_render_procs_s", !13, i64 0, !13, i64 16, !13, i64 32, !13, i64 48}
!59 = !{!58, !15, i64 50}
!60 = !{!39, !7, i64 336}
!61 = !{i64 0, i64 24, !25}
!62 = !{i64 0, i64 32, !25}
!63 = distinct !{!63, !28}
!64 = !{!39, !10, i64 33440}
!65 = distinct !{!65, !28}
!66 = distinct !{!66, !28}
