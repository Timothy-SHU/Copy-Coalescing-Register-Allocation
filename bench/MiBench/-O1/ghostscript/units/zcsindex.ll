; ModuleID = 'zcsindex.c'
source_filename = "zcsindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_color_space_s = type { ptr, %union.anon.6 }
%union.anon.6 = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.8 }
%union.anon.8 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.7, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon }
%union.anon = type { ptr }
%union.anon.7 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.4 }
%struct.ref_cie_procs_s = type { %union.anon.2, %union.anon.3, %struct.ref_s }
%union.anon.2 = type { %struct.ref_s }
%union.anon.3 = type { %struct.ref_s }
%union.anon.4 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon.1, %union.anon.1, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.5, %struct.ref_s, %struct.ref_s }
%union.anon.1 = type { [4 x %struct.ref_s] }
%struct.anon.5 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.0, i32, ptr }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zcsindex_l2_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zsetindexedspace }, %struct.op_def { ptr @.str.2, ptr @indexed_map1 }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"1.setindexedspace\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"1%indexed_map1\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@st_indexed_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"setcolorspace(mapped)\00", align 1
@e_stack = external global %struct.ref_stack_s, align 8
@gs_color_space_type_Indexed = external constant %struct.gs_color_space_type_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcsindex_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zcsindex_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetindexedspace(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_color_space_s, align 8
  %3 = alloca %struct.ref_colorspace_s, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @igs, align 8, !tbaa !5
  %6 = tail call ptr @gs_state_client_data(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.int_gstate_s, ptr %6, i64 0, i32 5, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3)
  %8 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #7
  %9 = load i16, ptr %0, align 8, !tbaa !9
  %10 = and i16 %9, 16160
  %11 = icmp eq i16 %10, 1056
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %105, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %105

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !14
  %21 = icmp eq i16 %20, 4
  br i1 %21, label %22, label %105

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds i8, ptr %24, i64 33
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = icmp eq i8 %26, 11
  br i1 %27, label %28, label %105

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ref_s, ptr %24, i64 2, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !13
  %31 = icmp ugt i64 %30, 4095
  br i1 %31, label %105, label %32

32:                                               ; preds = %28
  %33 = trunc i64 %30 to i32
  %34 = add nuw nsw i32 %33, 1
  %35 = load ptr, ptr @igs, align 8, !tbaa !5
  %36 = tail call ptr @gs_currentcolorspace(ptr noundef %35) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %36, i64 72, i1 false), !tbaa.struct !15
  %37 = load ptr, ptr %2, align 8, !tbaa !20
  %38 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %105, label %41

41:                                               ; preds = %32
  %42 = load ptr, ptr @igs, align 8, !tbaa !5
  %43 = tail call ptr @gs_state_client_data(ptr noundef %42) #7
  %44 = getelementptr inbounds %struct.int_gstate_s, ptr %43, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %44, i64 96, i1 false), !tbaa.struct !24
  %45 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %46 = getelementptr inbounds %struct.ref_s, ptr %24, i64 3
  %47 = getelementptr inbounds i8, ptr %24, i64 49
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = icmp eq i8 %48, 18
  br i1 %49, label %50, label %71

50:                                               ; preds = %41
  %51 = load i16, ptr %46, align 8, !tbaa !9
  %52 = and i16 %51, 32
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 8, !tbaa !20
  %56 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !28
  %58 = mul nsw i32 %57, %34
  %59 = getelementptr inbounds %struct.ref_s, ptr %24, i64 3, i32 0, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !14
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.ref_s, ptr %24, i64 3, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !13
  %66 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !13
  %67 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  store i32 0, ptr %67, align 8, !tbaa !13
  store i16 3584, ptr %7, align 8, !tbaa !9
  br label %68

68:                                               ; preds = %54, %50, %63
  %69 = phi i1 [ true, %63 ], [ false, %50 ], [ false, %54 ]
  %70 = phi i32 [ undef, %63 ], [ -7, %50 ], [ -15, %54 ]
  br i1 %69, label %88, label %105

71:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %72 = load i16, ptr %46, align 8, !tbaa !9
  %73 = and i16 %72, 15552
  %74 = icmp eq i16 %73, 1216
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call i32 @check_proc_failed(ptr noundef nonnull %46) #7
  br label %85

77:                                               ; preds = %71
  %78 = call i32 @zcs_begin_map(ptr noundef nonnull %4, ptr noundef nonnull %46, i32 noundef %34, ptr noundef nonnull %2, ptr noundef nonnull @indexed_map1)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  store i32 1, ptr %81, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %46, i64 16, i1 false), !tbaa.struct !29
  %82 = load ptr, ptr %4, align 8, !tbaa !5
  %83 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %82, i64 0, i32 1
  store ptr @lookup_indexed, ptr %83, align 8, !tbaa !13
  %84 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  store ptr %82, ptr %84, align 8, !tbaa !13
  br label %85

85:                                               ; preds = %77, %80, %75
  %86 = phi i1 [ true, %80 ], [ false, %75 ], [ false, %77 ]
  %87 = phi i32 [ undef, %80 ], [ %76, %75 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br i1 %86, label %88, label %105

88:                                               ; preds = %85, %68
  %89 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1, i32 1
  store i32 %33, ptr %89, align 8, !tbaa !13
  store ptr @gs_color_space_type_Indexed, ptr %2, align 8, !tbaa !20
  %90 = load ptr, ptr @igs, align 8, !tbaa !5
  %91 = call i32 @gs_setcolorspace(ptr noundef %90, ptr noundef nonnull %2) #7
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load ptr, ptr @igs, align 8, !tbaa !5
  %95 = call ptr @gs_state_client_data(ptr noundef %94) #7
  %96 = getelementptr inbounds %struct.int_gstate_s, ptr %95, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %96, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false), !tbaa.struct !24
  %97 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #7
  %98 = sub i32 %97, %8
  call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %98) #7
  br label %105

99:                                               ; preds = %88
  %100 = load ptr, ptr @o_stack, align 8, !tbaa !30
  %101 = getelementptr inbounds %struct.ref_s, ptr %100, i64 -1
  store ptr %101, ptr @o_stack, align 8, !tbaa !30
  %102 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #7
  %103 = icmp eq i32 %102, %8
  %104 = select i1 %103, i32 0, i32 5
  br label %105

105:                                              ; preds = %32, %28, %22, %18, %16, %12, %68, %85, %99, %93
  %106 = phi i32 [ %91, %93 ], [ %104, %99 ], [ %70, %68 ], [ %87, %85 ], [ %17, %16 ], [ -7, %12 ], [ -15, %18 ], [ -20, %22 ], [ -15, %28 ], [ -15, %32 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal i32 @indexed_map1(ptr noundef %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !13
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = getelementptr %struct.ref_s, ptr %2, i64 -4, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = trunc i64 %9 to i32
  %11 = getelementptr %struct.ref_s, ptr %2, i64 -3, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  %15 = shl i64 %4, 32
  %16 = mul i64 %15, %9
  %17 = ashr exact i64 %16, 32
  %18 = getelementptr inbounds float, ptr %14, i64 %17
  %19 = tail call i32 @num_params(ptr noundef %0, i32 noundef %10, ptr noundef %18) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %7
  %22 = load ptr, ptr @o_stack, align 8, !tbaa !30
  %23 = shl i64 %9, 32
  %24 = ashr exact i64 %23, 32
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds %struct.ref_s, ptr %22, i64 %25
  store ptr %26, ptr @o_stack, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %25
  %28 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !13
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %5, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -5
  store ptr %34, ptr @e_stack, align 8, !tbaa !30
  br label %35

35:                                               ; preds = %21, %7, %32
  %36 = phi ptr [ %27, %32 ], [ %0, %7 ], [ %27, %21 ]
  %37 = phi i32 [ 14, %32 ], [ %19, %7 ], [ undef, %21 ]
  %38 = phi i1 [ false, %32 ], [ false, %7 ], [ true, %21 ]
  br i1 %38, label %39, label %55

39:                                               ; preds = %1, %35
  %40 = phi ptr [ %36, %35 ], [ %0, %1 ]
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1
  %42 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !35
  %43 = icmp ugt ptr %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %55

45:                                               ; preds = %39
  store ptr %41, ptr @o_stack, align 8, !tbaa !30
  %46 = shl i64 %4, 32
  %47 = add i64 %46, 4294967296
  %48 = ashr exact i64 %47, 32
  store i64 %48, ptr %3, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1, i32 1
  store i64 %48, ptr %49, align 8, !tbaa !13
  store i16 2816, ptr %41, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  %51 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1, i32 1
  store ptr @indexed_map1, ptr %51, align 8, !tbaa !13
  store i16 3968, ptr %50, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1, i32 0, i32 1
  store i16 0, ptr %52, align 2, !tbaa !14
  %53 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  %54 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %54, i64 16, i1 false), !tbaa.struct !29
  store ptr %53, ptr @e_stack, align 8, !tbaa !30
  br label %55

55:                                               ; preds = %35, %45, %44
  %56 = phi i32 [ -16, %44 ], [ 5, %45 ], [ %37, %35 ]
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zcs_begin_map(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = tail call ptr @gs_state_memory(ptr noundef %6) #7
  %8 = load ptr, ptr %3, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !28
  %11 = mul nsw i32 %10, %2
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = tail call ptr %13(ptr noundef %7, ptr noundef nonnull @st_indexed_map, ptr noundef nonnull @.str.3) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %57, label %16

16:                                               ; preds = %5
  store i64 0, ptr %14, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.rc_header_s, ptr %14, i64 0, i32 1
  store ptr %7, ptr %17, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.rc_header_s, ptr %14, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = tail call ptr %20(ptr noundef %7, i32 noundef %11, i32 noundef 4, ptr noundef nonnull @.str.3) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  tail call void %25(ptr noundef %7, ptr noundef nonnull %14, ptr noundef nonnull @.str.3) #7
  br label %57

26:                                               ; preds = %16
  store ptr @rc_free_indexed_map, ptr %18, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %14, i64 0, i32 2
  store i32 %11, ptr %27, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %14, i64 0, i32 3
  store ptr %21, ptr %28, align 8, !tbaa !32
  store ptr %14, ptr %0, align 8, !tbaa !5
  %29 = load ptr, ptr @e_stack, align 8, !tbaa !30
  %30 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.ref_s, ptr %30, i64 -6
  %32 = icmp ugt ptr %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 6) #7
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %57

36:                                               ; preds = %33, %26
  %37 = load ptr, ptr @e_stack, align 8, !tbaa !30
  %38 = getelementptr inbounds %struct.ref_s, ptr %37, i64 5
  store ptr %38, ptr @e_stack, align 8, !tbaa !30
  %39 = sext i32 %10 to i64
  %40 = getelementptr inbounds %struct.ref_s, ptr %37, i64 1
  %41 = getelementptr inbounds %struct.ref_s, ptr %37, i64 1, i32 1
  store i64 %39, ptr %41, align 8, !tbaa !13
  store i16 2816, ptr %40, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2
  %43 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2, i32 1
  store ptr %14, ptr %43, align 8, !tbaa !13
  %44 = tail call i32 @imemory_space(ptr noundef %7) #7
  %45 = trunc i32 %44 to i16
  %46 = add i16 %45, 2048
  store i16 %46, ptr %42, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.ref_s, ptr %37, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %48 = add nsw i32 %2, -1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ref_s, ptr %37, i64 4
  %51 = getelementptr inbounds %struct.ref_s, ptr %37, i64 4, i32 1
  store i64 %49, ptr %51, align 8, !tbaa !13
  store i16 2816, ptr %50, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.ref_s, ptr %37, i64 5, i32 1
  store i64 -1, ptr %52, align 8, !tbaa !13
  store i16 2816, ptr %38, align 8, !tbaa !9
  %53 = load ptr, ptr @e_stack, align 8, !tbaa !30
  %54 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1
  store ptr %54, ptr @e_stack, align 8, !tbaa !30
  %55 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1, i32 1
  store ptr %4, ptr %55, align 8, !tbaa !13
  store i16 3968, ptr %54, align 8, !tbaa !9
  %56 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1, i32 0, i32 1
  store i16 0, ptr %56, align 2, !tbaa !14
  br label %57

57:                                               ; preds = %5, %33, %36, %23
  %58 = phi i32 [ -25, %23 ], [ 5, %36 ], [ %34, %33 ], [ -25, %5 ]
  ret i32 %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @gs_state_memory(ptr noundef) local_unnamed_addr #3

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @rc_free_indexed_map(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  tail call void %5(ptr noundef %0, ptr noundef %7, ptr noundef %2) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void %8(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  ret void
}

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @imemory_space(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #3

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #3

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare ptr @gs_currentcolorspace(ptr noundef) local_unnamed_addr #3

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @lookup_indexed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = load ptr, ptr %0, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !28
  %7 = getelementptr inbounds %struct.gs_indexed_params_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = mul nsw i32 %6, %1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float, ptr %10, i64 %12
  switch i32 %6, label %27 [
    i32 4, label %14
    i32 3, label %18
    i32 1, label %25
  ]

14:                                               ; preds = %3
  %15 = getelementptr inbounds float, ptr %13, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !26
  %17 = getelementptr inbounds float, ptr %2, i64 3
  store float %16, ptr %17, align 4, !tbaa !26
  br label %18

18:                                               ; preds = %3, %14
  %19 = getelementptr inbounds float, ptr %13, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !26
  %21 = getelementptr inbounds float, ptr %2, i64 2
  store float %20, ptr %21, align 4, !tbaa !26
  %22 = getelementptr inbounds float, ptr %13, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !26
  %24 = getelementptr inbounds float, ptr %2, i64 1
  store float %23, ptr %24, align 4, !tbaa !26
  br label %25

25:                                               ; preds = %3, %18
  %26 = load float, ptr %13, align 4, !tbaa !26
  store float %26, ptr %2, align 4, !tbaa !26
  br label %27

27:                                               ; preds = %3, %25
  %28 = phi i32 [ 0, %25 ], [ -15, %3 ]
  ret i32 %28
}

declare i32 @gs_setcolorspace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"ref_s", !11, i64 0, !7, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!10, !12, i64 2}
!15 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !16, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 16, i64 8, !5, i64 16, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 4, !18, i64 32, i64 8, !5, i64 40, i64 4, !18, i64 32, i64 8, !5, i64 48, i64 4, !18, i64 8, i64 4, !18, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !16, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 32, i64 8, !5, i64 32, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 4, !18, i64 48, i64 8, !5, i64 56, i64 4, !18, i64 48, i64 8, !5, i64 64, i64 4, !18}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !7, i64 0}
!20 = !{!21, !6, i64 0}
!21 = !{!"gs_color_space_s", !6, i64 0, !7, i64 8}
!22 = !{!23, !19, i64 8}
!23 = !{!"gs_color_space_type_s", !19, i64 0, !19, i64 4, !19, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!24 = !{i64 0, i64 2, !25, i64 2, i64 2, !25, i64 8, i64 8, !16, i64 8, i64 2, !25, i64 8, i64 4, !26, i64 8, i64 8, !16, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 2, !25, i64 18, i64 2, !25, i64 24, i64 8, !16, i64 24, i64 2, !25, i64 24, i64 4, !26, i64 24, i64 8, !16, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 16, i64 2, !25, i64 18, i64 2, !25, i64 24, i64 8, !16, i64 24, i64 2, !25, i64 24, i64 4, !26, i64 24, i64 8, !16, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 2, !25, i64 34, i64 2, !25, i64 40, i64 8, !16, i64 40, i64 2, !25, i64 40, i64 4, !26, i64 40, i64 8, !16, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 32, i64 2, !25, i64 34, i64 2, !25, i64 40, i64 8, !16, i64 40, i64 2, !25, i64 40, i64 4, !26, i64 40, i64 8, !16, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 2, !25, i64 50, i64 2, !25, i64 56, i64 8, !16, i64 56, i64 2, !25, i64 56, i64 4, !26, i64 56, i64 8, !16, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 2, !25, i64 66, i64 2, !25, i64 72, i64 8, !16, i64 72, i64 2, !25, i64 72, i64 4, !26, i64 72, i64 8, !16, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 2, !25, i64 82, i64 2, !25, i64 88, i64 8, !16, i64 88, i64 2, !25, i64 88, i64 4, !26, i64 88, i64 8, !16, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 64, i64 2, !25, i64 66, i64 2, !25, i64 72, i64 8, !16, i64 72, i64 2, !25, i64 72, i64 4, !26, i64 72, i64 8, !16, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5}
!25 = !{!12, !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !7, i64 0}
!28 = !{!23, !19, i64 4}
!29 = !{i64 0, i64 2, !25, i64 2, i64 2, !25, i64 8, i64 8, !16, i64 8, i64 2, !25, i64 8, i64 4, !26, i64 8, i64 8, !16, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!30 = !{!31, !6, i64 0}
!31 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !19, i64 40, !19, i64 44, !10, i64 48, !19, i64 64, !19, i64 68, !19, i64 72, !19, i64 76, !19, i64 80, !10, i64 88, !19, i64 104, !19, i64 108, !19, i64 112, !6, i64 120}
!32 = !{!33, !6, i64 40}
!33 = !{!"gs_indexed_map_s", !34, i64 0, !7, i64 24, !19, i64 32, !6, i64 40}
!34 = !{!"rc_header_s", !17, i64 0, !6, i64 8, !6, i64 16}
!35 = !{!31, !6, i64 16}
!36 = !{!31, !19, i64 64}
!37 = !{!38, !6, i64 0}
!38 = !{!"gs_base_color_space_s", !6, i64 0, !7, i64 8}
!39 = !{!40, !6, i64 16}
!40 = !{!"gs_memory_s", !41, i64 0}
!41 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!42 = !{!33, !17, i64 0}
!43 = !{!33, !6, i64 8}
!44 = !{!33, !6, i64 16}
!45 = !{!40, !6, i64 32}
!46 = !{!40, !6, i64 88}
!47 = !{!33, !19, i64 32}
!48 = !{!49, !6, i64 0}
!49 = !{!"gs_indexed_params_s", !38, i64 0, !19, i64 16, !7, i64 24, !19, i64 40}
