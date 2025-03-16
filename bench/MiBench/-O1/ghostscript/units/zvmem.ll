; ModuleID = 'zvmem.c'
source_filename = "zvmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_status_s = type { i64, i64 }

@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@st_vm_save = internal constant %struct.gs_memory_struct_type_s { i32 8, ptr @.str.6, ptr null, ptr null, ptr @vm_save_enum_ptrs, ptr @vm_save_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"zsave\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external global %struct.ref_stack_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@d_stack = external global %struct.ref_stack_s, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"zrestore\00", align 1
@zvmem_op_defs.op_defs_ = internal constant [5 x %struct.op_def] [%struct.op_def { ptr @.str.2, ptr @zforgetsave }, %struct.op_def { ptr @.str.3, ptr @zrestore }, %struct.op_def { ptr @.str.4, ptr @zsave }, %struct.op_def { ptr @.str.5, ptr @zvmstatus }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"1.forgetsave\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1restore\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"0save\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0vmstatus\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"savetype\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@gs_memory_default = external global %struct.gs_memory_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @zsave(ptr noundef %0) #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #5
  %3 = load ptr, ptr @gs_imemory, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = tail call ptr %5(ptr noundef %3, ptr noundef nonnull @st_vm_save, ptr noundef nonnull @.str) #5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = tail call i64 @alloc_save_state(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %6) #5
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr @gs_imemory, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  tail call void %14(ptr noundef %12, ptr noundef nonnull %6, ptr noundef nonnull @.str) #5
  br label %30

15:                                               ; preds = %8
  %16 = tail call i32 @zgsave(ptr noundef %0) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @igs, align 8, !tbaa !16
  %20 = tail call ptr @gs_state_swap_saved(ptr noundef %19, ptr noundef null) #5
  %21 = tail call i32 @zgsave(ptr noundef %0) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  store ptr %20, ptr %6, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %25 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !19
  %26 = icmp ugt ptr %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !24
  br label %30

28:                                               ; preds = %23
  store ptr %24, ptr @o_stack, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %9, ptr %29, align 8, !tbaa !26
  store i16 4352, ptr %24, align 8, !tbaa !27
  br label %30

30:                                               ; preds = %18, %15, %1, %28, %27, %11
  %31 = phi i32 [ -25, %11 ], [ -16, %27 ], [ 0, %28 ], [ -25, %1 ], [ %16, %15 ], [ %21, %18 ]
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @alloc_save_state(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zgsave(ptr noundef) local_unnamed_addr #2

declare ptr @gs_state_swap_saved(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zrestore(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !26
  %4 = icmp eq i8 %3, 17
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load i64, ptr %8, align 8, !tbaa !26
  %13 = tail call ptr @alloc_find_save(ptr noundef nonnull @gs_imemory, i64 noundef %12) #5
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 -11, i32 0
  br label %16

16:                                               ; preds = %11, %5, %7
  %17 = phi ptr [ undef, %7 ], [ undef, %5 ], [ %13, %11 ]
  %18 = phi i32 [ -11, %7 ], [ %6, %5 ], [ %15, %11 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %124, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  store ptr %22, ptr @o_stack, align 8, !tbaa !25
  %23 = tail call fastcc i32 @restore_check_stack(ptr noundef nonnull @o_stack, ptr noundef %17, i32 noundef 0)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @restore_check_stack(ptr noundef nonnull @e_stack, ptr noundef %17, i32 noundef 1)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc i32 @restore_check_stack(ptr noundef nonnull @d_stack, ptr noundef %17, i32 noundef 0)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %25, %20
  %32 = phi i32 [ %23, %20 ], [ %26, %25 ], [ %29, %28 ]
  %33 = load ptr, ptr @o_stack, align 8, !tbaa !25
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 1
  store ptr %34, ptr @o_stack, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %28, %31
  %36 = phi i1 [ false, %31 ], [ true, %28 ]
  %37 = phi i32 [ %32, %31 ], [ undef, %28 ]
  br i1 %36, label %38, label %124

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 3, i32 1), align 8, !tbaa !26
  %40 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !28
  %41 = load ptr, ptr @o_stack, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 1
  %43 = ptrtoint ptr %42 to i64
  %44 = ptrtoint ptr %40 to i64
  %45 = sub i64 %43, %44
  %46 = lshr exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  br label %48

48:                                               ; preds = %65, %38
  %49 = phi ptr [ %40, %38 ], [ %67, %65 ]
  %50 = phi i32 [ %47, %38 ], [ %70, %65 ]
  %51 = phi ptr [ %39, %38 ], [ %63, %65 ]
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48, %53
  %54 = phi ptr [ %58, %53 ], [ %49, %48 ]
  %55 = phi i32 [ %59, %53 ], [ %50, %48 ]
  %56 = load i16, ptr %54, align 8, !tbaa !27
  %57 = and i16 %56, -3
  store i16 %57, ptr %54, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct.ref_s, ptr %54, i64 1
  %59 = add i32 %55, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %53, !llvm.loop !29

61:                                               ; preds = %53, %48
  %62 = getelementptr inbounds %struct.ref_s, ptr %51, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !26
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ref_stack_block_s, ptr %63, i64 0, i32 1, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !26
  %68 = getelementptr inbounds %struct.ref_stack_block_s, ptr %63, i64 0, i32 1, i32 0, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !31
  %70 = zext i16 %69 to i32
  br label %48, !llvm.loop !33

71:                                               ; preds = %61
  tail call fastcc void @restore_fix_stack(ptr noundef nonnull @e_stack, ptr noundef %17, i32 noundef 1)
  %72 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 3, i32 1), align 8, !tbaa !26
  %73 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !28
  %74 = load ptr, ptr @d_stack, align 8, !tbaa !25
  %75 = getelementptr inbounds %struct.ref_s, ptr %74, i64 1
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %73 to i64
  %78 = sub i64 %76, %77
  %79 = lshr exact i64 %78, 4
  %80 = trunc i64 %79 to i32
  br label %81

81:                                               ; preds = %98, %71
  %82 = phi ptr [ %73, %71 ], [ %100, %98 ]
  %83 = phi i32 [ %80, %71 ], [ %103, %98 ]
  %84 = phi ptr [ %72, %71 ], [ %96, %98 ]
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %91, %86 ], [ %82, %81 ]
  %88 = phi i32 [ %92, %86 ], [ %83, %81 ]
  %89 = load i16, ptr %87, align 8, !tbaa !27
  %90 = and i16 %89, -3
  store i16 %90, ptr %87, align 8, !tbaa !27
  %91 = getelementptr inbounds %struct.ref_s, ptr %87, i64 1
  %92 = add i32 %88, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %86, !llvm.loop !29

94:                                               ; preds = %86, %81
  %95 = getelementptr inbounds %struct.ref_s, ptr %84, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !26
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ref_stack_block_s, ptr %96, i64 0, i32 1, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !26
  %101 = getelementptr inbounds %struct.ref_stack_block_s, ptr %96, i64 0, i32 1, i32 0, i32 1
  %102 = load i16, ptr %101, align 2, !tbaa !31
  %103 = zext i16 %102 to i32
  br label %81, !llvm.loop !33

104:                                              ; preds = %94, %104
  %105 = tail call ptr @alloc_save_current(ptr noundef nonnull @gs_imemory) #5
  %106 = tail call ptr @alloc_save_client_data(ptr noundef %105) #5
  %107 = load ptr, ptr @igs, align 8, !tbaa !16
  %108 = tail call i32 @gs_grestoreall(ptr noundef %107) #5
  %109 = load ptr, ptr @igs, align 8, !tbaa !16
  %110 = tail call ptr @gs_state_saved(ptr noundef %109) #5
  %111 = load ptr, ptr %106, align 8, !tbaa !17
  %112 = tail call ptr @gs_state_swap_saved(ptr noundef %110, ptr noundef %111) #5
  %113 = load ptr, ptr @igs, align 8, !tbaa !16
  %114 = tail call i32 @gs_grestore(ptr noundef %113) #5
  %115 = load ptr, ptr @igs, align 8, !tbaa !16
  %116 = tail call i32 @gs_grestore(ptr noundef %115) #5
  store ptr null, ptr %106, align 8, !tbaa !17
  %117 = tail call i32 @alloc_restore_state_step(ptr noundef %17) #5
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %104, label %119, !llvm.loop !34

119:                                              ; preds = %104
  %120 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #5
  %121 = load ptr, ptr @gs_imemory, align 8, !tbaa !11
  %122 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %121, i64 0, i32 11
  %123 = load ptr, ptr %122, align 8, !tbaa !15
  tail call void %123(ptr noundef %121, ptr noundef nonnull %106, ptr noundef nonnull @.str.1) #5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %120) #5
  tail call void @dict_set_top() #5
  br label %124

124:                                              ; preds = %16, %35, %119
  %125 = phi i32 [ 0, %119 ], [ %37, %35 ], [ %18, %16 ]
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @restore_check_stack(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = load ptr, ptr %0, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 1
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %7 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %2, 0
  %16 = icmp eq i32 %2, 0
  br label %17

17:                                               ; preds = %79, %3
  %18 = phi ptr [ %5, %3 ], [ %77, %79 ]
  %19 = phi ptr [ %7, %3 ], [ %81, %79 ]
  %20 = phi i32 [ %14, %3 ], [ %84, %79 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %72, label %22

22:                                               ; preds = %17, %68
  %23 = phi ptr [ %69, %68 ], [ %19, %17 ]
  %24 = phi i32 [ %70, %68 ], [ %20, %17 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !26
  switch i8 %26, label %66 [
    i8 4, label %60
    i8 2, label %60
    i8 3, label %27
    i8 13, label %47
    i8 18, label %51
    i8 5, label %60
    i8 6, label %60
    i8 19, label %60
    i8 10, label %60
    i8 8, label %60
    i8 9, label %60
  ]

27:                                               ; preds = %22
  br i1 %16, label %43, label %28

28:                                               ; preds = %27
  %29 = load i16, ptr %23, align 8, !tbaa !27
  %30 = and i16 %29, 128
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ref_s, ptr %23, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !26
  %35 = getelementptr inbounds %struct.stream_s, ptr %34, i64 0, i32 17
  %36 = load i16, ptr %35, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.stream_s, ptr %34, i64 0, i32 18
  %38 = load i16, ptr %37, align 2, !tbaa !40
  %39 = or i16 %38, %36
  %40 = getelementptr inbounds %struct.tas_s, ptr %23, i64 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !41
  %42 = icmp eq i16 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32, %27
  br label %44

44:                                               ; preds = %28, %32, %43
  %45 = phi i1 [ true, %43 ], [ false, %32 ], [ false, %28 ]
  %46 = phi i32 [ 0, %43 ], [ 6, %32 ], [ 6, %28 ]
  br i1 %45, label %60, label %66

47:                                               ; preds = %22
  %48 = tail call i32 @alloc_name_is_since_save(ptr noundef %23, ptr noundef %1) #5
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 6, i32 1
  br label %66

51:                                               ; preds = %22
  %52 = getelementptr inbounds %struct.tas_s, ptr %23, i64 0, i32 1
  %53 = load i16, ptr %52, align 2, !tbaa !41
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i16, ptr %23, align 8, !tbaa !27
  %57 = and i16 %56, 128
  %58 = icmp ne i16 %57, 0
  %59 = and i1 %15, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %22, %22, %22, %22, %22, %22, %51, %55, %44, %22, %22
  %61 = getelementptr inbounds %struct.ref_s, ptr %23, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !26
  %63 = tail call i32 @alloc_is_since_save(ptr noundef %62, ptr noundef %1) #5
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %60, %22, %55, %47, %44
  %67 = phi i32 [ %46, %44 ], [ %50, %47 ], [ 6, %55 ], [ 6, %22 ], [ %65, %60 ]
  switch i32 %67, label %72 [
    i32 0, label %68
    i32 6, label %68
  ]

68:                                               ; preds = %66, %66
  %69 = getelementptr inbounds %struct.ref_s, ptr %23, i64 1
  %70 = add i32 %24, -1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %22, !llvm.loop !42

72:                                               ; preds = %66, %68, %17
  %73 = phi i32 [ 0, %17 ], [ %67, %66 ], [ 0, %68 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ref_s, ptr %18, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !26
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ref_stack_block_s, ptr %77, i64 0, i32 1, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !26
  %82 = getelementptr inbounds %struct.ref_stack_block_s, ptr %77, i64 0, i32 1, i32 0, i32 1
  %83 = load i16, ptr %82, align 2, !tbaa !31
  %84 = zext i16 %83 to i32
  br label %17, !llvm.loop !43

85:                                               ; preds = %75, %72
  %86 = phi i32 [ -11, %72 ], [ 0, %75 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal fastcc void @restore_fix_stack(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = load ptr, ptr %0, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 1
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %7 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %2, 0
  br label %16

16:                                               ; preds = %58, %3
  %17 = phi ptr [ %7, %3 ], [ %60, %58 ]
  %18 = phi i32 [ %14, %3 ], [ %63, %58 ]
  %19 = phi ptr [ %5, %3 ], [ %56, %58 ]
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %16, %50
  %22 = phi ptr [ %51, %50 ], [ %17, %16 ]
  %23 = phi i32 [ %52, %50 ], [ %18, %16 ]
  %24 = load i16, ptr %22, align 8, !tbaa !27
  %25 = and i16 %24, -3
  store i16 %25, ptr %22, align 8, !tbaa !27
  br i1 %15, label %50, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %22, i64 2
  %28 = getelementptr inbounds i8, ptr %22, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !26
  switch i8 %29, label %50 [
    i8 18, label %30
    i8 3, label %39
  ]

30:                                               ; preds = %26
  %31 = load i16, ptr %27, align 2, !tbaa !41
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ref_s, ptr %22, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  %36 = tail call i32 @alloc_is_since_save(ptr noundef %35, ptr noundef %1) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  store ptr null, ptr %34, align 8, !tbaa !26
  store i16 4608, ptr %22, align 8, !tbaa !27
  store i16 0, ptr %27, align 2, !tbaa !41
  br label %45

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.ref_s, ptr %22, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = tail call i32 @alloc_is_since_save(ptr noundef %41, ptr noundef %1) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  tail call void @make_invalid_file(ptr noundef nonnull %22) #5
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i16, ptr %22, align 8, !tbaa !27
  %47 = and i16 %46, -241
  %48 = and i16 %24, 240
  %49 = or disjoint i16 %47, %48
  store i16 %49, ptr %22, align 8, !tbaa !27
  br label %50

50:                                               ; preds = %45, %33, %30, %39, %26, %21
  %51 = getelementptr inbounds %struct.ref_s, ptr %22, i64 1
  %52 = add i32 %23, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %21, !llvm.loop !29

54:                                               ; preds = %50, %16
  %55 = getelementptr inbounds %struct.ref_s, ptr %19, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !26
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ref_stack_block_s, ptr %56, i64 0, i32 1, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !26
  %61 = getelementptr inbounds %struct.ref_stack_block_s, ptr %56, i64 0, i32 1, i32 0, i32 1
  %62 = load i16, ptr %61, align 2, !tbaa !31
  %63 = zext i16 %62 to i32
  br label %16, !llvm.loop !33

64:                                               ; preds = %54
  ret void
}

declare ptr @alloc_save_client_data(ptr noundef) local_unnamed_addr #2

declare ptr @alloc_save_current(ptr noundef) local_unnamed_addr #2

declare i32 @gs_grestoreall(ptr noundef) local_unnamed_addr #2

declare ptr @gs_state_saved(ptr noundef) local_unnamed_addr #2

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #2

declare i32 @alloc_restore_state_step(ptr noundef) local_unnamed_addr #2

declare void @dict_set_top() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zvmem_op_defs() local_unnamed_addr #3 {
  ret ptr @zvmem_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zforgetsave(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !26
  %4 = icmp eq i8 %3, 17
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #5
  %7 = icmp slt i32 %6, 0
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !tbaa !26
  %14 = tail call ptr @alloc_find_save(ptr noundef nonnull @gs_imemory, i64 noundef %13) #5
  %15 = icmp eq ptr %14, null
  br label %16

16:                                               ; preds = %12, %5, %8
  %17 = phi ptr [ undef, %8 ], [ undef, %5 ], [ %14, %12 ]
  %18 = phi i1 [ true, %8 ], [ %7, %5 ], [ %15, %12 ]
  br i1 %18, label %137, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @alloc_save_client_data(ptr noundef %17) #5
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 3, i32 1), align 8, !tbaa !26
  %22 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !28
  %23 = load ptr, ptr @o_stack, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.ref_s, ptr %23, i64 1
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %22 to i64
  %27 = sub i64 %25, %26
  %28 = lshr exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %47, %19
  %31 = phi ptr [ %22, %19 ], [ %49, %47 ]
  %32 = phi i32 [ %29, %19 ], [ %52, %47 ]
  %33 = phi ptr [ %21, %19 ], [ %45, %47 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %40, %35 ], [ %31, %30 ]
  %37 = phi i32 [ %41, %35 ], [ %32, %30 ]
  %38 = load i16, ptr %36, align 8, !tbaa !27
  %39 = and i16 %38, -3
  store i16 %39, ptr %36, align 8, !tbaa !27
  %40 = getelementptr inbounds %struct.ref_s, ptr %36, i64 1
  %41 = add i32 %37, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %35, !llvm.loop !29

43:                                               ; preds = %35, %30
  %44 = getelementptr inbounds %struct.ref_s, ptr %33, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !26
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ref_stack_block_s, ptr %45, i64 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  %50 = getelementptr inbounds %struct.ref_stack_block_s, ptr %45, i64 0, i32 1, i32 0, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !31
  %52 = zext i16 %51 to i32
  br label %30, !llvm.loop !33

53:                                               ; preds = %43
  %54 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !26
  %55 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !28
  %56 = load ptr, ptr @e_stack, align 8, !tbaa !25
  %57 = getelementptr inbounds %struct.ref_s, ptr %56, i64 1
  %58 = ptrtoint ptr %57 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = lshr exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %80, %53
  %64 = phi ptr [ %55, %53 ], [ %82, %80 ]
  %65 = phi i32 [ %62, %53 ], [ %85, %80 ]
  %66 = phi ptr [ %54, %53 ], [ %78, %80 ]
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63, %68
  %69 = phi ptr [ %73, %68 ], [ %64, %63 ]
  %70 = phi i32 [ %74, %68 ], [ %65, %63 ]
  %71 = load i16, ptr %69, align 8, !tbaa !27
  %72 = and i16 %71, -3
  store i16 %72, ptr %69, align 8, !tbaa !27
  %73 = getelementptr inbounds %struct.ref_s, ptr %69, i64 1
  %74 = add i32 %70, -1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %68, !llvm.loop !29

76:                                               ; preds = %68, %63
  %77 = getelementptr inbounds %struct.ref_s, ptr %66, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !26
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ref_stack_block_s, ptr %78, i64 0, i32 1, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !26
  %83 = getelementptr inbounds %struct.ref_stack_block_s, ptr %78, i64 0, i32 1, i32 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !31
  %85 = zext i16 %84 to i32
  br label %63, !llvm.loop !33

86:                                               ; preds = %76
  %87 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 3, i32 1), align 8, !tbaa !26
  %88 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !28
  %89 = load ptr, ptr @d_stack, align 8, !tbaa !25
  %90 = getelementptr inbounds %struct.ref_s, ptr %89, i64 1
  %91 = ptrtoint ptr %90 to i64
  %92 = ptrtoint ptr %88 to i64
  %93 = sub i64 %91, %92
  %94 = lshr exact i64 %93, 4
  %95 = trunc i64 %94 to i32
  br label %96

96:                                               ; preds = %113, %86
  %97 = phi ptr [ %88, %86 ], [ %115, %113 ]
  %98 = phi i32 [ %95, %86 ], [ %118, %113 ]
  %99 = phi ptr [ %87, %86 ], [ %111, %113 ]
  %100 = icmp eq i32 %98, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96, %101
  %102 = phi ptr [ %106, %101 ], [ %97, %96 ]
  %103 = phi i32 [ %107, %101 ], [ %98, %96 ]
  %104 = load i16, ptr %102, align 8, !tbaa !27
  %105 = and i16 %104, -3
  store i16 %105, ptr %102, align 8, !tbaa !27
  %106 = getelementptr inbounds %struct.ref_s, ptr %102, i64 1
  %107 = add i32 %103, -1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %101, !llvm.loop !29

109:                                              ; preds = %101, %96
  %110 = getelementptr inbounds %struct.ref_s, ptr %99, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !26
  %112 = icmp eq ptr %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ref_stack_block_s, ptr %111, i64 0, i32 1, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !26
  %116 = getelementptr inbounds %struct.ref_stack_block_s, ptr %111, i64 0, i32 1, i32 0, i32 1
  %117 = load i16, ptr %116, align 2, !tbaa !31
  %118 = zext i16 %117 to i32
  br label %96, !llvm.loop !33

119:                                              ; preds = %109
  %120 = load ptr, ptr @igs, align 8, !tbaa !16
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi ptr [ %120, %119 ], [ %123, %121 ]
  %123 = tail call ptr @gs_state_saved(ptr noundef %122) #5
  %124 = tail call ptr @gs_state_saved(ptr noundef %123) #5
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %121, !llvm.loop !44

126:                                              ; preds = %121
  %127 = load ptr, ptr %20, align 8, !tbaa !17
  %128 = tail call ptr @gs_state_swap_saved(ptr noundef %123, ptr noundef %127) #5
  %129 = tail call i32 @gs_grestore(ptr noundef %123) #5
  %130 = tail call i32 @gs_grestore(ptr noundef %123) #5
  tail call void @alloc_forget_save(ptr noundef %17) #5
  %131 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #5
  store ptr null, ptr %20, align 8, !tbaa !17
  %132 = load ptr, ptr @gs_imemory, align 8, !tbaa !11
  %133 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %132, i64 0, i32 11
  %134 = load ptr, ptr %133, align 8, !tbaa !15
  tail call void %134(ptr noundef %132, ptr noundef nonnull %20, ptr noundef nonnull @.str.1) #5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %131) #5
  %135 = load ptr, ptr @o_stack, align 8, !tbaa !25
  %136 = getelementptr inbounds %struct.ref_s, ptr %135, i64 -1
  store ptr %136, ptr @o_stack, align 8, !tbaa !25
  br label %137

137:                                              ; preds = %16, %126
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zvmstatus(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_memory_status_s, align 8
  %3 = alloca %struct.gs_memory_status_s, align 8
  %4 = alloca %struct.gs_memory_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %5 = load ptr, ptr @gs_imemory, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  call void %7(ptr noundef %5, ptr noundef nonnull %2) #5
  %8 = load ptr, ptr @gs_imemory, align 8, !tbaa !11
  %9 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !26
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  call void %14(ptr noundef %12, ptr noundef nonnull %4) #5
  %15 = load i64, ptr %4, align 8, !tbaa !46
  %16 = load i64, ptr %2, align 8, !tbaa !46
  %17 = add i64 %16, %15
  store i64 %17, ptr %2, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.gs_memory_status_s, ptr %4, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.gs_memory_status_s, ptr %2, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !48
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %23

23:                                               ; preds = %11, %1
  %24 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 18), align 8, !tbaa !45
  call void %24(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %3) #5
  %25 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %26 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !19
  %27 = icmp ugt ptr %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !24
  br label %45

29:                                               ; preds = %23
  store ptr %25, ptr @o_stack, align 8, !tbaa !25
  %30 = call i32 @alloc_save_level(ptr noundef nonnull @gs_imemory) #5
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %33 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %31, ptr %33, align 8, !tbaa !26
  store i16 2816, ptr %32, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct.gs_memory_status_s, ptr %2, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 %35, ptr %37, align 8, !tbaa !26
  store i16 2816, ptr %36, align 8, !tbaa !27
  %38 = load i64, ptr %2, align 8, !tbaa !46
  %39 = load i64, ptr %3, align 8, !tbaa !46
  %40 = add i64 %39, %38
  %41 = getelementptr inbounds %struct.gs_memory_status_s, ptr %3, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !48
  %43 = sub i64 %40, %42
  %44 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3, i32 1
  store i64 %43, ptr %44, align 8, !tbaa !26
  store i16 2816, ptr %25, align 8, !tbaa !27
  br label %45

45:                                               ; preds = %29, %28
  %46 = phi i32 [ -16, %28 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @vm_save_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !17
  store ptr %7, ptr %3, align 8, !tbaa !16
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @vm_save_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #5
  store ptr %5, ptr %0, align 8, !tbaa !17
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare ptr @alloc_find_save(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @alloc_name_is_since_save(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @alloc_is_since_save(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @make_invalid_file(ptr noundef) local_unnamed_addr #2

declare void @alloc_forget_save(ptr noundef) local_unnamed_addr #2

declare i32 @alloc_save_level(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 40}
!6 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!13, !7, i64 16}
!13 = !{!"gs_memory_s", !14, i64 0}
!14 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!15 = !{!13, !7, i64 88}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !7, i64 0}
!18 = !{!"vm_save_s", !7, i64 0}
!19 = !{!20, !7, i64 16}
!20 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !21, i64 24, !10, i64 40, !10, i64 44, !21, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !21, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !7, i64 120}
!21 = !{!"ref_s", !22, i64 0, !8, i64 8}
!22 = !{!"tas_s", !23, i64 0, !23, i64 2}
!23 = !{!"short", !8, i64 0}
!24 = !{!20, !10, i64 64}
!25 = !{!20, !7, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!21, !23, i64 0}
!28 = !{!20, !7, i64 8}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!32, !23, i64 18}
!32 = !{!"ref_stack_block_s", !21, i64 0, !21, i64 16}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !30}
!35 = !{!36, !23, i64 176}
!36 = !{!"stream_s", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !7, i64 48, !10, i64 56, !10, i64 60, !23, i64 64, !8, i64 66, !8, i64 67, !37, i64 72, !38, i64 88, !39, i64 96, !7, i64 152, !10, i64 160, !10, i64 164, !7, i64 168, !23, i64 176, !23, i64 178, !7, i64 184, !7, i64 192, !10, i64 200, !7, i64 208, !10, i64 216, !7, i64 224}
!37 = !{!"gs_string_s", !7, i64 0, !10, i64 8}
!38 = !{!"long", !8, i64 0}
!39 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!40 = !{!36, !23, i64 178}
!41 = !{!21, !23, i64 2}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30}
!45 = !{!13, !7, i64 144}
!46 = !{!47, !38, i64 0}
!47 = !{!"gs_memory_status_s", !38, i64 0, !38, i64 8}
!48 = !{!47, !38, i64 8}
