; ModuleID = 'zdps1.c'
source_filename = "zdps1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.local_rects_s = type { ptr, i32, [5 x %struct.gs_rect_s] }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_matrix_s = type { float, float, float, float, float, float }

@.str = private unnamed_addr constant [11 x i8] c"gstatetype\00", align 1
@st_igstate_obj = dso_local constant %struct.gs_memory_struct_type_s { i32 16, ptr @.str, ptr null, ptr @ref_struct_clear_marks, ptr @ref_struct_enum_ptrs, ptr @ref_struct_reloc_ptrs, ptr null }, align 8
@igs = external local_unnamed_addr global ptr, align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"gstate\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"copygstate\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"currentgstate\00", align 1
@zdps1_l2_op_defs.op_defs_ = internal constant [12 x %struct.op_def] [%struct.op_def { ptr @.str.4, ptr null }, %struct.op_def { ptr @.str.5, ptr @zcurrentstrokeadjust }, %struct.op_def { ptr @.str.6, ptr @zsetstrokeadjust }, %struct.op_def { ptr @.str.7, ptr @zcurrentgstate }, %struct.op_def { ptr @.str.8, ptr @zgstate }, %struct.op_def { ptr @.str.9, ptr @zsetgstate }, %struct.op_def { ptr @.str.10, ptr @zrectappend }, %struct.op_def { ptr @.str.11, ptr @zrectclip }, %struct.op_def { ptr @.str.12, ptr @zrectfill }, %struct.op_def { ptr @.str.13, ptr @zrectstroke }, %struct.op_def { ptr @.str.14, ptr @zsetbbox }, %struct.op_def { ptr null, ptr @zdps1_init }], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"0currentstrokeadjust\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"1setstrokeadjust\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"1currentgstate\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"0gstate\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"1setgstate\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"1.rectappend\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"1rectclip\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"1rectfill\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"1rectstroke\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"4setbbox\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"rect_get\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"rect_release\00", align 1
@zcopy_procs = external local_unnamed_addr global [21 x ptr], align 16
@.str.17 = private unnamed_addr constant [15 x i8] c"gstate_unshare\00", align 1

declare void @ref_struct_clear_marks(ptr noundef, i32 noundef) #0

declare ptr @ref_struct_enum_ptrs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

declare void @ref_struct_reloc_ptrs(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @zgstate(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_state_client_data(ptr noundef %2) #7
  %4 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !9
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %3, %1 ], [ %12, %5 ]
  %7 = phi i32 [ 25, %1 ], [ %13, %5 ]
  %8 = load i16, ptr %6, align 8, !tbaa !12
  %9 = and i16 %8, 12
  %10 = zext nneg i16 %9 to i32
  %11 = icmp ult i32 %4, %10
  %12 = getelementptr inbounds %struct.ref_s, ptr %6, i64 1
  %13 = add nsw i32 %7, -1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %16, label %5, !llvm.loop !16

16:                                               ; preds = %5
  %17 = select i1 %11, i32 -7, i32 0
  br i1 %11, label %68, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = tail call ptr %21(ptr noundef %19, ptr noundef nonnull @st_igstate_obj, ptr noundef nonnull @.str.1) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %68, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr @igs, align 8, !tbaa !5
  %26 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %27 = tail call ptr @gs_state_copy(ptr noundef %25, ptr noundef %26) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %30, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  tail call void %32(ptr noundef %30, ptr noundef nonnull %22, ptr noundef nonnull @.str.1) #7
  br label %68

33:                                               ; preds = %24
  %34 = tail call ptr @gs_state_client_data(ptr noundef nonnull %27) #7
  %35 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %36 = trunc i32 %35 to i16
  br label %37

37:                                               ; preds = %37, %33
  %38 = phi ptr [ %34, %33 ], [ %42, %37 ]
  %39 = phi i32 [ 25, %33 ], [ %43, %37 ]
  %40 = load i16, ptr %38, align 8, !tbaa !12
  %41 = or i16 %40, %36
  store i16 %41, ptr %38, align 8, !tbaa !12
  %42 = getelementptr inbounds %struct.ref_s, ptr %38, i64 1
  %43 = add nsw i32 %39, -1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %37, !llvm.loop !24

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %47 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !25
  %48 = icmp ugt ptr %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !27
  br label %68

50:                                               ; preds = %45
  store ptr %46, ptr @o_stack, align 8, !tbaa !28
  %51 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store ptr %22, ptr %51, align 8, !tbaa !29
  %52 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !9
  %53 = trunc i32 %52 to i16
  %54 = or i16 %53, 112
  %55 = add i16 %54, 2304
  store i16 %55, ptr %46, align 8, !tbaa !12
  store i16 3584, ptr %22, align 8, !tbaa !30
  %56 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !32
  %57 = and i32 %56, 3584
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %46, ptr noundef nonnull %22, ptr noundef nonnull @.str.1) #7
  br label %61

61:                                               ; preds = %50, %59
  %62 = getelementptr inbounds %struct.ref_s, ptr %22, i64 0, i32 1
  store ptr %27, ptr %62, align 8, !tbaa !29
  %63 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !9
  %64 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %65 = or i32 %64, %63
  %66 = trunc i32 %65 to i16
  %67 = add i16 %66, 2048
  store i16 %67, ptr %22, align 8, !tbaa !30
  br label %68

68:                                               ; preds = %18, %16, %61, %49, %29
  %69 = phi i32 [ -25, %29 ], [ -16, %49 ], [ 0, %61 ], [ %17, %16 ], [ -25, %18 ]
  ret i32 %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #0

declare ptr @gs_state_copy(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i32 @zcopy_gstate(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load i16, ptr %0, align 8, !tbaa !12
  %4 = and i16 %3, 15872
  %5 = icmp eq i16 %4, 2048
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = tail call ptr %9(ptr noundef %7, ptr noundef %11) #7
  %13 = icmp eq ptr %12, @st_igstate_obj
  br i1 %13, label %16, label %14

14:                                               ; preds = %6, %1
  %15 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %94

16:                                               ; preds = %6
  %17 = load i16, ptr %2, align 8, !tbaa !12
  %18 = and i16 %17, 15872
  %19 = icmp eq i16 %18, 2048
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = tail call ptr %23(ptr noundef %21, ptr noundef %25) #7
  %27 = icmp eq ptr %26, @st_igstate_obj
  br i1 %27, label %30, label %28

28:                                               ; preds = %20, %16
  %29 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #7
  br label %94

30:                                               ; preds = %20
  %31 = load i16, ptr %0, align 8, !tbaa !12
  %32 = and i16 %31, 16
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %94, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @gstate_unshare(ptr noundef nonnull %0), !range !34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %94, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %10, align 8, !tbaa !29
  %39 = getelementptr inbounds %struct.ref_s, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %41 = load ptr, ptr %24, align 8, !tbaa !29
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  %44 = tail call ptr @gs_state_client_data(ptr noundef %40) #7
  %45 = tail call ptr @gs_state_client_data(ptr noundef %43) #7
  %46 = load i16, ptr %0, align 8, !tbaa !12
  %47 = and i16 %46, 12
  br label %48

48:                                               ; preds = %48, %37
  %49 = phi ptr [ %45, %37 ], [ %54, %48 ]
  %50 = phi i32 [ 25, %37 ], [ %55, %48 ]
  %51 = load i16, ptr %49, align 8, !tbaa !12
  %52 = and i16 %51, 12
  %53 = icmp ugt i16 %52, %47
  %54 = getelementptr inbounds %struct.ref_s, ptr %49, i64 1
  %55 = add nsw i32 %50, -1
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %53, i1 true, i1 %56
  br i1 %57, label %58, label %48, !llvm.loop !16

58:                                               ; preds = %48
  %59 = select i1 %53, i32 -7, i32 0
  br i1 %53, label %94, label %60

60:                                               ; preds = %58, %70
  %61 = phi ptr [ %71, %70 ], [ %44, %58 ]
  %62 = phi i32 [ %72, %70 ], [ 25, %58 ]
  %63 = load i16, ptr %61, align 8, !tbaa !12
  %64 = zext i16 %63 to i32
  %65 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !32
  %66 = and i32 %65, %64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull @.str.2) #7
  br label %70

70:                                               ; preds = %60, %68
  %71 = getelementptr inbounds %struct.ref_s, ptr %61, i64 1
  %72 = add nsw i32 %62, -1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %60, !llvm.loop !35

74:                                               ; preds = %70
  %75 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %76 = tail call ptr @gs_state_swap_memory(ptr noundef %40, ptr noundef %75) #7
  %77 = tail call i32 @gs_copygstate(ptr noundef %40, ptr noundef %43) #7
  %78 = tail call ptr @gs_state_swap_memory(ptr noundef %40, ptr noundef %76) #7
  %79 = icmp slt i32 %77, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %74
  %81 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %82 = trunc i32 %81 to i16
  br label %83

83:                                               ; preds = %80, %83
  %84 = phi ptr [ %88, %83 ], [ %44, %80 ]
  %85 = phi i32 [ %89, %83 ], [ 25, %80 ]
  %86 = load i16, ptr %84, align 8, !tbaa !12
  %87 = or i16 %86, %82
  store i16 %87, ptr %84, align 8, !tbaa !12
  %88 = getelementptr inbounds %struct.ref_s, ptr %84, i64 1
  %89 = add nsw i32 %85, -1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %83, !llvm.loop !36

91:                                               ; preds = %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !37
  %92 = load ptr, ptr @o_stack, align 8, !tbaa !28
  %93 = getelementptr inbounds %struct.ref_s, ptr %92, i64 -1
  store ptr %93, ptr @o_stack, align 8, !tbaa !28
  br label %94

94:                                               ; preds = %74, %58, %34, %30, %91, %28, %14
  %95 = phi i32 [ 0, %91 ], [ %29, %28 ], [ %15, %14 ], [ -7, %30 ], [ %35, %34 ], [ %59, %58 ], [ %77, %74 ]
  ret i32 %95
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gstate_unshare(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %3, align 8, !tbaa !12
  %6 = zext i16 %5 to i32
  %7 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !32
  %8 = and i32 %7, %6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 8, !tbaa !29
  %12 = tail call ptr @gs_gstate(ptr noundef %11) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @gs_state_client_data(ptr noundef nonnull %12) #7
  %16 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %17 = trunc i32 %16 to i16
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %15, %14 ], [ %23, %18 ]
  %20 = phi i32 [ 25, %14 ], [ %24, %18 ]
  %21 = load i16, ptr %19, align 8, !tbaa !12
  %22 = or i16 %21, %17
  store i16 %22, ptr %19, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.ref_s, ptr %19, i64 1
  %24 = add nsw i32 %20, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %18, !llvm.loop !43

26:                                               ; preds = %18
  %27 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.17) #7
  store ptr %12, ptr %4, align 8, !tbaa !29
  %28 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !9
  %29 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %30 = or i32 %29, %28
  %31 = trunc i32 %30 to i16
  %32 = add i16 %31, 2048
  store i16 %32, ptr %3, align 8, !tbaa !12
  br label %33

33:                                               ; preds = %10, %1, %26
  %34 = phi i32 [ 0, %26 ], [ 0, %1 ], [ -25, %10 ]
  ret i32 %34
}

declare ptr @gs_state_swap_memory(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_copygstate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zcurrentgstate(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !12
  %3 = and i16 %2, 15872
  %4 = icmp eq i16 %3, 2048
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = tail call ptr %8(ptr noundef %6, ptr noundef %10) #7
  %12 = icmp eq ptr %11, @st_igstate_obj
  br i1 %12, label %15, label %13

13:                                               ; preds = %5, %1
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %106

15:                                               ; preds = %5
  %16 = load i16, ptr %0, align 8, !tbaa !12
  %17 = and i16 %16, 16
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %106, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %9, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 0, i32 1
  %22 = load i16, ptr %20, align 8, !tbaa !12
  %23 = zext i16 %22 to i32
  %24 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !32
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %19
  %28 = load ptr, ptr %21, align 8, !tbaa !29
  %29 = tail call ptr @gs_gstate(ptr noundef %28) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @gs_state_client_data(ptr noundef nonnull %29) #7
  %33 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %34 = trunc i32 %33 to i16
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %32, %31 ], [ %40, %35 ]
  %37 = phi i32 [ 25, %31 ], [ %41, %35 ]
  %38 = load i16, ptr %36, align 8, !tbaa !12
  %39 = or i16 %38, %34
  store i16 %39, ptr %36, align 8, !tbaa !12
  %40 = getelementptr inbounds %struct.ref_s, ptr %36, i64 1
  %41 = add nsw i32 %37, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %35, !llvm.loop !43

43:                                               ; preds = %35
  %44 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull @.str.17) #7
  store ptr %29, ptr %21, align 8, !tbaa !29
  %45 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !9
  %46 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %47 = or i32 %46, %45
  %48 = trunc i32 %47 to i16
  %49 = add i16 %48, 2048
  store i16 %49, ptr %20, align 8, !tbaa !12
  br label %50

50:                                               ; preds = %19, %27, %43
  %51 = phi i1 [ false, %43 ], [ false, %19 ], [ true, %27 ]
  %52 = phi i32 [ 0, %43 ], [ 0, %19 ], [ -25, %27 ]
  br i1 %51, label %106, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %9, align 8, !tbaa !29
  %55 = getelementptr inbounds %struct.ref_s, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !29
  %57 = tail call ptr @gs_state_client_data(ptr noundef %56) #7
  %58 = load ptr, ptr @igs, align 8, !tbaa !5
  %59 = tail call ptr @gs_state_client_data(ptr noundef %58) #7
  %60 = load i16, ptr %0, align 8, !tbaa !12
  %61 = and i16 %60, 12
  br label %62

62:                                               ; preds = %62, %53
  %63 = phi ptr [ %59, %53 ], [ %68, %62 ]
  %64 = phi i32 [ 25, %53 ], [ %69, %62 ]
  %65 = load i16, ptr %63, align 8, !tbaa !12
  %66 = and i16 %65, 12
  %67 = icmp ugt i16 %66, %61
  %68 = getelementptr inbounds %struct.ref_s, ptr %63, i64 1
  %69 = add nsw i32 %64, -1
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %67, i1 true, i1 %70
  br i1 %71, label %72, label %62, !llvm.loop !16

72:                                               ; preds = %62
  %73 = select i1 %67, i32 -7, i32 0
  br i1 %67, label %106, label %74

74:                                               ; preds = %72, %84
  %75 = phi ptr [ %85, %84 ], [ %57, %72 ]
  %76 = phi i32 [ %86, %84 ], [ 25, %72 ]
  %77 = load i16, ptr %75, align 8, !tbaa !12
  %78 = zext i16 %77 to i32
  %79 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !32
  %80 = and i32 %79, %78
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %75, ptr noundef nonnull @.str.3) #7
  br label %84

84:                                               ; preds = %74, %82
  %85 = getelementptr inbounds %struct.ref_s, ptr %75, i64 1
  %86 = add nsw i32 %76, -1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %74, !llvm.loop !44

88:                                               ; preds = %84
  %89 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %90 = tail call ptr @gs_state_swap_memory(ptr noundef %56, ptr noundef %89) #7
  %91 = load ptr, ptr @igs, align 8, !tbaa !5
  %92 = tail call i32 @gs_currentgstate(ptr noundef %56, ptr noundef %91) #7
  %93 = tail call ptr @gs_state_swap_memory(ptr noundef %56, ptr noundef %90) #7
  %94 = icmp slt i32 %92, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %88
  %96 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !23
  %97 = trunc i32 %96 to i16
  br label %98

98:                                               ; preds = %95, %98
  %99 = phi ptr [ %103, %98 ], [ %57, %95 ]
  %100 = phi i32 [ %104, %98 ], [ 25, %95 ]
  %101 = load i16, ptr %99, align 8, !tbaa !12
  %102 = or i16 %101, %97
  store i16 %102, ptr %99, align 8, !tbaa !12
  %103 = getelementptr inbounds %struct.ref_s, ptr %99, i64 1
  %104 = add nsw i32 %100, -1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %98, !llvm.loop !45

106:                                              ; preds = %98, %88, %72, %50, %15, %13
  %107 = phi i32 [ %14, %13 ], [ -7, %15 ], [ %52, %50 ], [ %73, %72 ], [ %92, %88 ], [ 0, %98 ]
  ret i32 %107
}

declare i32 @gs_currentgstate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetgstate(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !12
  %3 = and i16 %2, 15872
  %4 = icmp eq i16 %3, 2048
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = tail call ptr %8(ptr noundef %6, ptr noundef %10) #7
  %12 = icmp eq ptr %11, @st_igstate_obj
  br i1 %12, label %15, label %13

13:                                               ; preds = %5, %1
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %29

15:                                               ; preds = %5
  %16 = load i16, ptr %0, align 8, !tbaa !12
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @igs, align 8, !tbaa !5
  %21 = load ptr, ptr %9, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = tail call i32 @gs_setgstate(ptr noundef %20, ptr noundef %23) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr @o_stack, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 -1
  store ptr %28, ptr @o_stack, align 8, !tbaa !28
  br label %29

29:                                               ; preds = %19, %15, %26, %13
  %30 = phi i32 [ 0, %26 ], [ %14, %13 ], [ -7, %15 ], [ %24, %19 ]
  ret i32 %30
}

declare i32 @gs_setgstate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetbbox(ptr noundef %0) #1 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 16, !tbaa !41
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !41
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !41
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !41
  %17 = fpext float %16 to double
  %18 = call i32 @gs_setbbox(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14, double noundef %17) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -4
  store ptr %22, ptr @o_stack, align 8, !tbaa !28
  br label %23

23:                                               ; preds = %5, %1, %20
  %24 = phi i32 [ 0, %20 ], [ %3, %1 ], [ %18, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %24
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_setbbox(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zdps1_l2_op_defs() local_unnamed_addr #4 {
  ret ptr @zdps1_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentstrokeadjust(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !25
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !27
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !28
  %7 = load ptr, ptr @igs, align 8, !tbaa !5
  %8 = tail call i32 @gs_currentstrokeadjust(ptr noundef %7) #7
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !29
  store i16 256, ptr %2, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetstrokeadjust(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !29
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !29
  %11 = zext i16 %10 to i32
  %12 = tail call i32 @gs_setstrokeadjust(ptr noundef %8, i32 noundef %11) #7
  %13 = load ptr, ptr @o_stack, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 -1
  store ptr %14, ptr @o_stack, align 8, !tbaa !28
  br label %15

15:                                               ; preds = %7, %5
  %16 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zrectappend(ptr noundef %0) #1 {
  %2 = alloca %struct.local_rects_s, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %2) #7
  %3 = call fastcc i32 @rect_get(ptr noundef nonnull %2, ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load ptr, ptr %2, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.local_rects_s, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = call i32 @gs_rectappend(ptr noundef %6, ptr noundef %7, i32 noundef %9) #7
  %11 = load ptr, ptr %2, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.local_rects_s, ptr %2, i64 0, i32 2
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  call void %17(ptr noundef %15, ptr noundef %11, ptr noundef nonnull @.str.16) #7
  br label %18

18:                                               ; preds = %5, %14
  %19 = icmp slt i32 %10, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !28
  %22 = zext nneg i32 %3 to i64
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds %struct.ref_s, ptr %21, i64 %23
  store ptr %24, ptr @o_stack, align 8, !tbaa !28
  br label %25

25:                                               ; preds = %18, %1, %20
  %26 = phi i32 [ 0, %20 ], [ %3, %1 ], [ %10, %18 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %2) #7
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zrectclip(ptr noundef %0) #1 {
  %2 = alloca %struct.local_rects_s, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %2) #7
  %3 = call fastcc i32 @rect_get(ptr noundef nonnull %2, ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load ptr, ptr %2, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.local_rects_s, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = call i32 @gs_rectclip(ptr noundef %6, ptr noundef %7, i32 noundef %9) #7
  %11 = load ptr, ptr %2, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.local_rects_s, ptr %2, i64 0, i32 2
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  call void %17(ptr noundef %15, ptr noundef %11, ptr noundef nonnull @.str.16) #7
  br label %18

18:                                               ; preds = %5, %14
  %19 = icmp slt i32 %10, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !28
  %22 = zext nneg i32 %3 to i64
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds %struct.ref_s, ptr %21, i64 %23
  store ptr %24, ptr @o_stack, align 8, !tbaa !28
  br label %25

25:                                               ; preds = %18, %1, %20
  %26 = phi i32 [ 0, %20 ], [ %3, %1 ], [ %10, %18 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %2) #7
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zrectfill(ptr noundef %0) #1 {
  %2 = alloca %struct.local_rects_s, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %2) #7
  %3 = call fastcc i32 @rect_get(ptr noundef nonnull %2, ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load ptr, ptr %2, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.local_rects_s, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = call i32 @gs_rectfill(ptr noundef %6, ptr noundef %7, i32 noundef %9) #7
  %11 = load ptr, ptr %2, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.local_rects_s, ptr %2, i64 0, i32 2
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  call void %17(ptr noundef %15, ptr noundef %11, ptr noundef nonnull @.str.16) #7
  br label %18

18:                                               ; preds = %5, %14
  %19 = icmp slt i32 %10, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !28
  %22 = zext nneg i32 %3 to i64
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds %struct.ref_s, ptr %21, i64 %23
  store ptr %24, ptr @o_stack, align 8, !tbaa !28
  br label %25

25:                                               ; preds = %18, %1, %20
  %26 = phi i32 [ 0, %20 ], [ %3, %1 ], [ %10, %18 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %2) #7
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zrectstroke(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = alloca %struct.local_rects_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %3) #7
  %4 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #7
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %8 = call fastcc i32 @rect_get(ptr noundef nonnull %3, ptr noundef nonnull %7)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @igs, align 8, !tbaa !5
  %12 = load ptr, ptr %3, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.local_rects_s, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = call i32 @gs_rectstroke(ptr noundef %11, ptr noundef %12, i32 noundef %14, ptr noundef nonnull %2) #7
  %16 = add nuw nsw i32 %8, 1
  br label %26

17:                                               ; preds = %1
  %18 = call fastcc i32 @rect_get(ptr noundef nonnull %3, ptr noundef %0)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @igs, align 8, !tbaa !5
  %22 = load ptr, ptr %3, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.local_rects_s, ptr %3, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !48
  %25 = call i32 @gs_rectstroke(ptr noundef %21, ptr noundef %22, i32 noundef %24, ptr noundef null) #7
  br label %26

26:                                               ; preds = %20, %10
  %27 = phi i32 [ %16, %10 ], [ %18, %20 ]
  %28 = phi i32 [ %15, %10 ], [ %25, %20 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.local_rects_s, ptr %3, i64 0, i32 2
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %33, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  call void %35(ptr noundef %33, ptr noundef %29, ptr noundef nonnull @.str.16) #7
  br label %36

36:                                               ; preds = %26, %32
  %37 = icmp slt i32 %28, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr @o_stack, align 8, !tbaa !28
  %40 = sext i32 %27 to i64
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds %struct.ref_s, ptr %39, i64 %41
  store ptr %42, ptr @o_stack, align 8, !tbaa !28
  br label %43

43:                                               ; preds = %36, %17, %6, %38
  %44 = phi i32 [ 0, %38 ], [ %8, %6 ], [ %18, %17 ], [ %28, %36 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @zdps1_init() #5 {
  %1 = load ptr, ptr getelementptr inbounds ([21 x ptr], ptr @zcopy_procs, i64 0, i64 9), align 8, !tbaa !5
  %2 = load ptr, ptr getelementptr inbounds ([21 x ptr], ptr @zcopy_procs, i64 0, i64 8), align 16, !tbaa !5
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store ptr @zcopy_gstate, ptr getelementptr inbounds ([21 x ptr], ptr @zcopy_procs, i64 0, i64 9), align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

declare i32 @gs_currentstrokeadjust(ptr noundef) local_unnamed_addr #0

declare i32 @gs_setstrokeadjust(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rect_get(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca [4 x float], align 16
  %4 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %5 = getelementptr inbounds i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !29
  switch i8 %6, label %18 [
    i8 4, label %7
    i8 5, label %7
    i8 6, label %7
    i8 18, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2
  %8 = tail call i32 @num_array_format(ptr noundef %1) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %102, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @num_array_size(ptr noundef %1, i32 noundef %8) #7
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %102

14:                                               ; preds = %10
  %15 = lshr exact i32 %11, 2
  %16 = getelementptr inbounds %struct.local_rects_s, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !48
  %17 = icmp ult i32 %11, 24
  br i1 %17, label %40, label %42

18:                                               ; preds = %2
  %19 = call i32 @num_params(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %3) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %102, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.local_rects_s, ptr %0, i64 0, i32 2
  store ptr %22, ptr %0, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.local_rects_s, ptr %0, i64 0, i32 1
  store i32 1, ptr %23, align 8, !tbaa !48
  %24 = load float, ptr %3, align 16, !tbaa !41
  %25 = fpext float %24 to double
  store double %25, ptr %22, align 8, !tbaa !49
  %26 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %27 = load float, ptr %26, align 8, !tbaa !41
  %28 = fpext float %27 to double
  %29 = fadd double %25, %28
  %30 = getelementptr inbounds %struct.local_rects_s, ptr %0, i64 0, i32 2, i64 0, i32 1
  store double %29, ptr %30, align 8, !tbaa !53
  %31 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !41
  %33 = fpext float %32 to double
  %34 = getelementptr inbounds %struct.local_rects_s, ptr %0, i64 0, i32 2, i64 0, i32 0, i32 1
  store double %33, ptr %34, align 8, !tbaa !54
  %35 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !41
  %37 = fpext float %36 to double
  %38 = fadd double %33, %37
  %39 = getelementptr inbounds %struct.local_rects_s, ptr %0, i64 0, i32 2, i64 0, i32 1, i32 1
  store double %38, ptr %39, align 8, !tbaa !55
  br label %102

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.local_rects_s, ptr %0, i64 0, i32 2
  br label %48

42:                                               ; preds = %14
  %43 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = tail call ptr %45(ptr noundef %43, i32 noundef %15, i32 noundef 32, ptr noundef nonnull @.str.15) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %102, label %48

48:                                               ; preds = %42, %40
  %49 = phi ptr [ %41, %40 ], [ %46, %42 ]
  store ptr %49, ptr %0, align 8, !tbaa !46
  %50 = icmp eq i32 %11, 0
  br i1 %50, label %102, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %53 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %54 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %55 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %56 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %57 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  %58 = zext nneg i32 %57 to i64
  br label %59

59:                                               ; preds = %51, %98
  %60 = phi i64 [ 0, %51 ], [ %99, %98 ]
  %61 = phi ptr [ %49, %51 ], [ %100, %98 ]
  %62 = phi i32 [ undef, %51 ], [ %97, %98 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %63 = shl nuw i64 %60, 2
  br label %64

64:                                               ; preds = %59, %75
  %65 = phi i64 [ 0, %59 ], [ %78, %75 ]
  %66 = phi i1 [ false, %59 ], [ %79, %75 ]
  %67 = add nuw nsw i64 %65, %63
  %68 = trunc i64 %67 to i32
  %69 = call i32 @num_array_get(ptr noundef %1, i32 noundef %8, i32 noundef %68, ptr noundef nonnull %4) #7
  switch i32 %69, label %95 [
    i32 11, label %70
    i32 16, label %73
  ]

70:                                               ; preds = %64
  %71 = load i64, ptr %53, align 8, !tbaa !29
  %72 = sitofp i64 %71 to float
  br label %75

73:                                               ; preds = %64
  %74 = load float, ptr %52, align 8, !tbaa !29
  br label %75

75:                                               ; preds = %70, %73
  %76 = phi float [ %72, %70 ], [ %74, %73 ]
  %77 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 %65
  store float %76, ptr %77, align 4, !tbaa !41
  %78 = add nuw nsw i64 %65, 1
  %79 = icmp ugt i64 %65, 2
  %80 = icmp eq i64 %78, 4
  br i1 %80, label %81, label %64, !llvm.loop !57

81:                                               ; preds = %75
  %82 = load float, ptr %3, align 16, !tbaa !41
  %83 = fpext float %82 to double
  store double %83, ptr %61, align 8, !tbaa !49
  %84 = load float, ptr %54, align 8, !tbaa !41
  %85 = fpext float %84 to double
  %86 = fadd double %83, %85
  %87 = getelementptr inbounds %struct.gs_rect_s, ptr %61, i64 0, i32 1
  store double %86, ptr %87, align 8, !tbaa !53
  %88 = load float, ptr %55, align 4, !tbaa !41
  %89 = fpext float %88 to double
  %90 = getelementptr inbounds %struct.gs_point_s, ptr %61, i64 0, i32 1
  store double %89, ptr %90, align 8, !tbaa !54
  %91 = load float, ptr %56, align 4, !tbaa !41
  %92 = fpext float %91 to double
  %93 = fadd double %89, %92
  %94 = getelementptr inbounds %struct.gs_rect_s, ptr %61, i64 0, i32 1, i32 1
  store double %93, ptr %94, align 8, !tbaa !55
  br label %95

95:                                               ; preds = %64, %81
  %96 = phi i1 [ %79, %81 ], [ %66, %64 ]
  %97 = phi i32 [ %62, %81 ], [ %69, %64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br i1 %96, label %98, label %102

98:                                               ; preds = %95
  %99 = add nuw nsw i64 %60, 1
  %100 = getelementptr inbounds %struct.gs_rect_s, ptr %61, i64 1
  %101 = icmp eq i64 %99, %58
  br i1 %101, label %102, label %59, !llvm.loop !58

102:                                              ; preds = %95, %98, %48, %42, %18, %10, %7, %21
  %103 = phi i32 [ 4, %21 ], [ %8, %7 ], [ -15, %10 ], [ %19, %18 ], [ -25, %42 ], [ 1, %48 ], [ 1, %98 ], [ %97, %95 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %103
}

declare i32 @gs_rectappend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @num_array_format(ptr noundef) local_unnamed_addr #0

declare i32 @num_array_size(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @num_array_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_rectclip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @gs_rectfill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_rectstroke(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare ptr @gs_gstate(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!10, !11, i64 40}
!10 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !11, i64 40, !11, i64 44, !6, i64 48, !11, i64 56, !11, i64 60}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !15, i64 0}
!13 = !{!"ref_s", !14, i64 0, !7, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!10, !6, i64 0}
!19 = !{!20, !6, i64 16}
!20 = !{!"gs_memory_s", !21, i64 0}
!21 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!22 = !{!20, !6, i64 88}
!23 = !{!10, !11, i64 60}
!24 = distinct !{!24, !17}
!25 = !{!26, !6, i64 16}
!26 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !11, i64 40, !11, i64 44, !13, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !13, i64 88, !11, i64 104, !11, i64 108, !11, i64 112, !6, i64 120}
!27 = !{!26, !11, i64 64}
!28 = !{!26, !6, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !15, i64 0}
!31 = !{!"igstate_obj_s", !13, i64 0}
!32 = !{!10, !11, i64 56}
!33 = !{!20, !6, i64 80}
!34 = !{i32 -25, i32 1}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = !{i64 0, i64 2, !38, i64 2, i64 2, !38, i64 8, i64 8, !39, i64 8, i64 2, !38, i64 8, i64 4, !41, i64 8, i64 8, !39, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!38 = !{!15, !15, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !7, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !7, i64 0}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = !{!47, !6, i64 0}
!47 = !{!"local_rects_s", !6, i64 0, !11, i64 8, !7, i64 16}
!48 = !{!47, !11, i64 8}
!49 = !{!50, !52, i64 0}
!50 = !{!"gs_rect_s", !51, i64 0, !51, i64 16}
!51 = !{!"gs_point_s", !52, i64 0, !52, i64 8}
!52 = !{!"double", !7, i64 0}
!53 = !{!50, !52, i64 16}
!54 = !{!50, !52, i64 8}
!55 = !{!50, !52, i64 24}
!56 = !{!20, !6, i64 32}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
