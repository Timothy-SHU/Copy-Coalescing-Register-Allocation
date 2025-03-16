; ModuleID = 'zimage.c'
source_filename = "zimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_def = type { ptr, ptr }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ref_language_level = external local_unnamed_addr global %struct.ref_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [12 x i8] c"image_setup\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@zimage_op_defs.op_defs_ = internal constant [5 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zimage }, %struct.op_def { ptr @.str.2, ptr @zimagemask }, %struct.op_def { ptr @.str.3, ptr @image_proc_continue }, %struct.op_def { ptr @.str.4, ptr @image_file_continue }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"5image\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"5imagemask\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"1%image_proc_continue\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"0%image_file_continue\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"image_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zimage(ptr noundef %0) #0 {
  %2 = tail call i32 @zimage_opaque_setup(ptr noundef %0, i32 noundef 0, ptr noundef null, i32 noundef 5)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zimage_opaque_setup(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.gs_image_s, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #6
  %6 = getelementptr inbounds i8, ptr %0, i64 -31
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 11
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %10) #6
  br label %58

12:                                               ; preds = %4
  %13 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !5
  %15 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %16 = and i64 %15, 4294967295
  %17 = icmp eq i64 %16, 2
  %18 = select i1 %17, i64 12, i64 8
  %19 = icmp ugt i64 %14, %18
  br i1 %19, label %58, label %20

20:                                               ; preds = %12
  call void @gs_image_t_init_color(ptr noundef nonnull %5) #6
  %21 = load i64, ptr %13, align 8, !tbaa !5
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 3
  store i32 %22, ptr %23, align 8, !tbaa !8
  %24 = getelementptr inbounds i8, ptr %0, i64 -63
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 11
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -4
  %29 = call i32 @check_type_failed(ptr noundef nonnull %28) #6
  br label %58

30:                                               ; preds = %20
  %31 = getelementptr inbounds i8, ptr %0, i64 -47
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = icmp eq i8 %32, 11
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %36 = call i32 @check_type_failed(ptr noundef nonnull %35) #6
  br label %58

37:                                               ; preds = %30
  %38 = getelementptr %struct.ref_s, ptr %0, i64 -4, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !5
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !5
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %47 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 2
  %48 = call i32 @read_matrix(ptr noundef nonnull %46, ptr noundef nonnull %47) #6
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 4
  store ptr %2, ptr %51, align 8, !tbaa !14
  %52 = load i64, ptr %38, align 8, !tbaa !5
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr %5, align 8, !tbaa !15
  %54 = load i64, ptr %42, align 8, !tbaa !5
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 1
  store i32 %55, ptr %56, align 4, !tbaa !16
  %57 = call i32 @zimage_setup(ptr noundef nonnull %5, i32 noundef %1, ptr noundef %0, i32 noundef %3)
  br label %58

58:                                               ; preds = %50, %45, %41, %37, %34, %27, %12, %9
  %59 = phi i32 [ %11, %9 ], [ -15, %12 ], [ %57, %50 ], [ %36, %34 ], [ %29, %27 ], [ -15, %41 ], [ -15, %37 ], [ %48, %45 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #6
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zimagemask(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_image_s, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %0, i64 -31
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #6
  br label %47

9:                                                ; preds = %1
  %10 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !5
  %12 = zext i16 %11 to i32
  call void @gs_image_t_init_mask(ptr noundef nonnull %2, i32 noundef %12) #6
  %13 = getelementptr inbounds i8, ptr %0, i64 -63
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 11
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -4
  %18 = call i32 @check_type_failed(ptr noundef nonnull %17) #6
  br label %47

19:                                               ; preds = %9
  %20 = getelementptr inbounds i8, ptr %0, i64 -47
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 11
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %25 = call i32 @check_type_failed(ptr noundef nonnull %24) #6
  br label %47

26:                                               ; preds = %19
  %27 = getelementptr %struct.ref_s, ptr %0, i64 -4, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !5
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !5
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %36 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2
  %37 = call i32 @read_matrix(ptr noundef nonnull %35, ptr noundef nonnull %36) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  store ptr null, ptr %40, align 8, !tbaa !14
  %41 = load i64, ptr %27, align 8, !tbaa !5
  %42 = trunc i64 %41 to i32
  store i32 %42, ptr %2, align 8, !tbaa !15
  %43 = load i64, ptr %31, align 8, !tbaa !5
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  store i32 %44, ptr %45, align 4, !tbaa !16
  %46 = call i32 @zimage_setup(ptr noundef nonnull %2, i32 noundef 0, ptr noundef %0, i32 noundef 5)
  br label %47

47:                                               ; preds = %39, %34, %30, %26, %23, %16, %6
  %48 = phi i32 [ %8, %6 ], [ %46, %39 ], [ %25, %23 ], [ %18, %16 ], [ -15, %30 ], [ -15, %26 ], [ %37, %34 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #6
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare void @gs_image_t_init_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @gs_image_t_init_color(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zimage_setup(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_image_s, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call i32 @gs_color_space_num_components(ptr noundef %8) #6
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi i32 [ %9, %6 ], [ 1, %4 ]
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %13 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 -14
  %15 = icmp ugt ptr %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 14) #6
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %218

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %17, %16 ], [ undef, %10 ]
  %21 = icmp sgt i32 %11, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %19
  %23 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8
  %24 = and i64 %23, 4294967295
  %25 = icmp eq i64 %24, 2
  %26 = getelementptr inbounds i8, ptr %2, i64 1
  %27 = zext nneg i32 %11 to i64
  br label %28

28:                                               ; preds = %22, %67
  %29 = phi i64 [ 0, %22 ], [ %69, %67 ]
  %30 = phi ptr [ %2, %22 ], [ %70, %67 ]
  %31 = phi i32 [ 0, %22 ], [ %68, %67 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !5
  switch i8 %33, label %57 [
    i8 3, label %34
    i8 18, label %49
  ]

34:                                               ; preds = %28
  br i1 %25, label %35, label %218

35:                                               ; preds = %34
  %36 = icmp eq i64 %29, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ref_s, ptr %30, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i64 [ 0, %37 ], [ %47, %40 ]
  %42 = phi i32 [ %31, %37 ], [ %46, %40 ]
  %43 = getelementptr inbounds %struct.ref_s, ptr %2, i64 %41, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, %39
  %46 = select i1 %45, i32 1, i32 %42
  %47 = add nuw nsw i64 %41, 1
  %48 = icmp eq i64 %47, %29
  br i1 %48, label %49, label %40, !llvm.loop !23

49:                                               ; preds = %40, %35, %28
  %50 = phi i32 [ %31, %28 ], [ %31, %35 ], [ %46, %40 ]
  %51 = load i8, ptr %26, align 1, !tbaa !5
  %52 = icmp eq i8 %33, %51
  br i1 %52, label %53, label %218

53:                                               ; preds = %49
  %54 = load i16, ptr %30, align 8, !tbaa !25
  %55 = and i16 %54, 32
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %218, label %67

57:                                               ; preds = %28
  %58 = load i16, ptr %2, align 8, !tbaa !25
  %59 = and i16 %58, 15552
  %60 = icmp eq i16 %59, 1216
  br i1 %60, label %61, label %218

61:                                               ; preds = %57
  %62 = load i16, ptr %30, align 8, !tbaa !25
  %63 = and i16 %62, 15552
  %64 = icmp eq i16 %63, 1216
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @check_proc_failed(ptr noundef nonnull %30) #6
  br label %218

67:                                               ; preds = %53, %61
  %68 = phi i32 [ %31, %61 ], [ %50, %53 ]
  %69 = add nuw nsw i64 %29, 1
  %70 = getelementptr inbounds %struct.ref_s, ptr %30, i64 1
  %71 = icmp eq i64 %69, %27
  br i1 %71, label %72, label %28, !llvm.loop !26

72:                                               ; preds = %67
  %73 = icmp eq i32 %68, 0
  br label %74

74:                                               ; preds = %72, %19
  %75 = phi i1 [ true, %19 ], [ %73, %72 ]
  %76 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %77 = tail call ptr @gs_image_enum_alloc(ptr noundef %76, ptr noundef nonnull @.str) #6
  %78 = icmp eq ptr %77, null
  br i1 %78, label %218, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr @igs, align 8, !tbaa !29
  %81 = tail call i32 @gs_image_init(ptr noundef nonnull %77, ptr noundef %0, i32 noundef %1, ptr noundef %80) #6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %85 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %84, i64 0, i32 11
  %86 = load ptr, ptr %85, align 8, !tbaa !30
  tail call void %86(ptr noundef %84, ptr noundef nonnull %77, ptr noundef nonnull @.str) #6
  %87 = icmp sgt i32 %81, -1
  br i1 %87, label %88, label %218

88:                                               ; preds = %83
  %89 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %90 = sext i32 %3 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds %struct.ref_s, ptr %89, i64 %91
  store ptr %92, ptr @o_stack, align 8, !tbaa !17
  br label %218

93:                                               ; preds = %79
  %94 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %95 = getelementptr inbounds %struct.ref_s, ptr %94, i64 1
  store ptr %95, ptr @e_stack, align 8, !tbaa !17
  %96 = getelementptr inbounds %struct.ref_s, ptr %94, i64 1, i32 1
  store ptr @image_cleanup, ptr %96, align 8, !tbaa !5
  store i16 3712, ptr %95, align 8, !tbaa !25
  %97 = getelementptr inbounds %struct.ref_s, ptr %94, i64 1, i32 0, i32 1
  store i16 0, ptr %97, align 2, !tbaa !33
  %98 = getelementptr inbounds %struct.ref_s, ptr %94, i64 2
  store ptr %98, ptr @e_stack, align 8, !tbaa !17
  br label %99

99:                                               ; preds = %93, %106
  %100 = phi i32 [ 0, %93 ], [ %110, %106 ]
  %101 = phi ptr [ %2, %93 ], [ %111, %106 ]
  %102 = icmp slt i32 %100, %11
  %103 = load ptr, ptr @e_stack, align 8, !tbaa !17
  br i1 %102, label %104, label %105

104:                                              ; preds = %99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %103, ptr noundef nonnull align 8 dereferenceable(16) %101, i64 16, i1 false), !tbaa.struct !34
  br label %106

105:                                              ; preds = %99
  store i16 3584, ptr %103, align 8, !tbaa !25
  br label %106

106:                                              ; preds = %105, %104
  %107 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %108 = getelementptr inbounds %struct.ref_s, ptr %107, i64 4
  store i16 3584, ptr %108, align 8, !tbaa !25
  %109 = getelementptr inbounds %struct.ref_s, ptr %107, i64 1
  store ptr %109, ptr @e_stack, align 8, !tbaa !17
  %110 = add nuw nsw i32 %100, 1
  %111 = getelementptr inbounds %struct.ref_s, ptr %101, i64 1
  %112 = icmp eq i32 %110, 4
  br i1 %112, label %113, label %99, !llvm.loop !39

113:                                              ; preds = %106
  %114 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %115 = getelementptr inbounds %struct.ref_s, ptr %114, i64 6
  store ptr %115, ptr @e_stack, align 8, !tbaa !17
  %116 = getelementptr inbounds %struct.ref_s, ptr %114, i64 4, i32 1
  store i64 0, ptr %116, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.ref_s, ptr %114, i64 4
  store i16 2816, ptr %117, align 8, !tbaa !25
  %118 = getelementptr inbounds %struct.ref_s, ptr %114, i64 5, i32 1
  store i64 0, ptr %118, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.ref_s, ptr %114, i64 5
  store i16 2816, ptr %119, align 8, !tbaa !25
  %120 = getelementptr inbounds %struct.ref_s, ptr %114, i64 6, i32 1
  store ptr %77, ptr %120, align 8, !tbaa !5
  %121 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !40
  %122 = trunc i32 %121 to i16
  %123 = add i16 %122, 2048
  store i16 %123, ptr %115, align 8, !tbaa !25
  %124 = getelementptr inbounds i8, ptr %2, i64 1
  %125 = load i8, ptr %124, align 1, !tbaa !5
  switch i8 %125, label %208 [
    i8 3, label %126
    i8 18, label %202
  ]

126:                                              ; preds = %113
  br i1 %75, label %198, label %127

127:                                              ; preds = %126
  %128 = tail call i32 @gs_image_bytes_per_row(ptr noundef nonnull %77) #6
  %129 = icmp sgt i32 %11, 0
  br i1 %129, label %130, label %188

130:                                              ; preds = %127
  %131 = trunc i32 %128 to i16
  %132 = zext nneg i32 %11 to i64
  %133 = zext nneg i32 %11 to i64
  br label %138

134:                                              ; preds = %186
  %135 = add nuw nsw i64 %139, 1
  %136 = icmp ult i64 %135, %132
  %137 = icmp eq i64 %135, %133
  br i1 %137, label %188, label %138, !llvm.loop !41

138:                                              ; preds = %130, %134
  %139 = phi i64 [ 0, %130 ], [ %135, %134 ]
  %140 = phi i1 [ %129, %130 ], [ %136, %134 ]
  %141 = phi i32 [ %20, %130 ], [ %187, %134 ]
  %142 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %143 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %142, i64 0, i32 12
  %144 = load ptr, ptr %143, align 8, !tbaa !42
  %145 = tail call ptr %144(ptr noundef %142, i32 noundef %128, ptr noundef nonnull @.str) #6
  %146 = icmp eq ptr %145, null
  %147 = load ptr, ptr @e_stack, align 8, !tbaa !17
  br i1 %146, label %148, label %176

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.ref_s, ptr %147, i64 -12
  store ptr %149, ptr @e_stack, align 8, !tbaa !17
  %150 = getelementptr inbounds %struct.ref_s, ptr %147, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds %struct.ref_s, ptr %147, i64 -3
  br label %153

153:                                              ; preds = %167, %148
  %154 = phi ptr [ %168, %167 ], [ %152, %148 ]
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = icmp eq i8 %156, 18
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %160 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %159, i64 0, i32 15
  %161 = load ptr, ptr %160, align 8, !tbaa !43
  %162 = getelementptr inbounds %struct.ref_s, ptr %154, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.tas_s, ptr %154, i64 0, i32 1
  %165 = load i16, ptr %164, align 2, !tbaa !33
  %166 = zext i16 %165 to i32
  tail call void %161(ptr noundef %159, ptr noundef %163, i32 noundef %166, ptr noundef nonnull @.str.5) #6
  br label %167

167:                                              ; preds = %158, %153
  %168 = getelementptr inbounds %struct.ref_s, ptr %154, i64 -1
  %169 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %170 = getelementptr inbounds %struct.ref_s, ptr %169, i64 6
  %171 = icmp ult ptr %168, %170
  br i1 %171, label %172, label %153, !llvm.loop !44

172:                                              ; preds = %167
  tail call void @gs_image_cleanup(ptr noundef %151) #6
  %173 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %174 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %173, i64 0, i32 11
  %175 = load ptr, ptr %174, align 8, !tbaa !30
  tail call void %175(ptr noundef %173, ptr noundef %151, ptr noundef nonnull @.str.5) #6
  br label %186

176:                                              ; preds = %138
  %177 = getelementptr inbounds %struct.ref_s, ptr %147, i64 -6
  %178 = getelementptr inbounds %struct.ref_s, ptr %177, i64 %139, i32 1
  store ptr %145, ptr %178, align 8, !tbaa !5
  %179 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !40
  %180 = trunc i32 %179 to i16
  %181 = add i16 %180, 4608
  %182 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %183 = getelementptr inbounds %struct.ref_s, ptr %182, i64 -6
  %184 = getelementptr inbounds %struct.ref_s, ptr %183, i64 %139
  store i16 %181, ptr %184, align 8, !tbaa !25
  %185 = getelementptr inbounds %struct.ref_s, ptr %183, i64 %139, i32 0, i32 1
  store i16 %131, ptr %185, align 2, !tbaa !33
  br label %186

186:                                              ; preds = %176, %172
  %187 = phi i32 [ -25, %172 ], [ %141, %176 ]
  br i1 %146, label %195, label %134

188:                                              ; preds = %134, %127
  %189 = phi i32 [ %20, %127 ], [ %187, %134 ]
  %190 = phi i1 [ %129, %127 ], [ %136, %134 ]
  %191 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %192 = getelementptr inbounds %struct.ref_s, ptr %191, i64 1
  store ptr %192, ptr @e_stack, align 8, !tbaa !17
  %193 = getelementptr inbounds %struct.ref_s, ptr %191, i64 1, i32 1
  store ptr @image_file_buffered_continue, ptr %193, align 8, !tbaa !5
  store i16 3968, ptr %192, align 8, !tbaa !25
  %194 = getelementptr inbounds %struct.ref_s, ptr %191, i64 1, i32 0, i32 1
  store i16 0, ptr %194, align 2, !tbaa !33
  br label %195

195:                                              ; preds = %186, %188
  %196 = phi i1 [ %190, %188 ], [ %140, %186 ]
  %197 = phi i32 [ %189, %188 ], [ %187, %186 ]
  br i1 %196, label %218, label %213

198:                                              ; preds = %126
  %199 = getelementptr inbounds %struct.ref_s, ptr %114, i64 7
  store ptr %199, ptr @e_stack, align 8, !tbaa !17
  %200 = getelementptr inbounds %struct.ref_s, ptr %114, i64 7, i32 1
  store ptr @image_file_continue, ptr %200, align 8, !tbaa !5
  store i16 3968, ptr %199, align 8, !tbaa !25
  %201 = getelementptr inbounds %struct.ref_s, ptr %114, i64 7, i32 0, i32 1
  store i16 0, ptr %201, align 2, !tbaa !33
  br label %213

202:                                              ; preds = %113
  %203 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %204 = sext i32 %3 to i64
  %205 = sub nsw i64 0, %204
  %206 = getelementptr inbounds %struct.ref_s, ptr %203, i64 %205
  store ptr %206, ptr @o_stack, align 8, !tbaa !17
  %207 = tail call fastcc i32 @image_string_process(ptr noundef nonnull %77, i32 noundef %11)
  br label %218

208:                                              ; preds = %113
  %209 = getelementptr inbounds %struct.ref_s, ptr %114, i64 7
  store ptr %209, ptr @e_stack, align 8, !tbaa !17
  %210 = getelementptr inbounds %struct.ref_s, ptr %114, i64 7, i32 1
  store ptr @image_proc_continue, ptr %210, align 8, !tbaa !5
  store i16 3968, ptr %209, align 8, !tbaa !25
  %211 = getelementptr inbounds %struct.ref_s, ptr %114, i64 7, i32 0, i32 1
  store i16 0, ptr %211, align 2, !tbaa !33
  %212 = getelementptr inbounds %struct.ref_s, ptr %114, i64 8
  store ptr %212, ptr @e_stack, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %212, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !34
  br label %213

213:                                              ; preds = %198, %195, %208
  %214 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %215 = sext i32 %3 to i64
  %216 = sub nsw i64 0, %215
  %217 = getelementptr inbounds %struct.ref_s, ptr %214, i64 %216
  store ptr %217, ptr @o_stack, align 8, !tbaa !17
  br label %218

218:                                              ; preds = %57, %53, %49, %34, %83, %88, %74, %16, %195, %213, %202, %65
  %219 = phi i32 [ %66, %65 ], [ 5, %213 ], [ %207, %202 ], [ %197, %195 ], [ %17, %16 ], [ -25, %74 ], [ %81, %88 ], [ %81, %83 ], [ -20, %34 ], [ -20, %49 ], [ -7, %53 ], [ -20, %57 ]
  ret i32 %219
}

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

declare ptr @gs_image_enum_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_image_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_cleanup(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 12, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.ref_s, ptr %2, i64 9
  br label %6

6:                                                ; preds = %1, %20
  %7 = phi ptr [ %21, %20 ], [ %5, %1 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 18
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !33
  %19 = zext i16 %18 to i32
  tail call void %14(ptr noundef %12, ptr noundef %16, i32 noundef %19, ptr noundef nonnull @.str.5) #6
  br label %20

20:                                               ; preds = %6, %11
  %21 = getelementptr inbounds %struct.ref_s, ptr %7, i64 -1
  %22 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 6
  %24 = icmp ult ptr %21, %23
  br i1 %24, label %25, label %6, !llvm.loop !44

25:                                               ; preds = %20
  tail call void @gs_image_cleanup(ptr noundef %4) #6
  %26 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %27 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %26, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  tail call void %28(ptr noundef %26, ptr noundef %4, ptr noundef nonnull @.str.5) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @gs_image_bytes_per_row(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @image_file_buffered_continue(ptr nocapture readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -10
  %8 = getelementptr %struct.ref_s, ptr %4, i64 -2, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = trunc i64 %9 to i32
  %11 = getelementptr %struct.ref_s, ptr %4, i64 -1, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 @gs_image_bytes_per_row(ptr noundef %6) #6
  %15 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -6
  br label %16

16:                                               ; preds = %79, %1
  %17 = phi i32 [ %13, %1 ], [ %80, %79 ]
  %18 = phi i32 [ 0, %1 ], [ %81, %79 ]
  %19 = phi i32 [ %10, %1 ], [ %82, %79 ]
  %20 = phi i32 [ undef, %1 ], [ %83, %79 ]
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  br label %23

23:                                               ; preds = %58, %22
  %24 = phi i32 [ %17, %22 ], [ %59, %58 ]
  %25 = phi i32 [ %14, %22 ], [ %60, %58 ]
  %26 = phi i32 [ %19, %22 ], [ %61, %58 ]
  %27 = phi i32 [ %20, %22 ], [ %62, %58 ]
  %28 = icmp slt i32 %26, 4
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds %struct.ref_s, ptr %7, i64 %30
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !5
  %34 = icmp eq i8 %33, 14
  br i1 %34, label %64, label %35

35:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %36 = getelementptr inbounds %struct.ref_s, ptr %7, i64 %30, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.ref_s, ptr %31, i64 4, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = sub i32 %14, %24
  %41 = call i32 @sgets(ptr noundef %37, ptr noundef %39, i32 noundef %40, ptr noundef nonnull %3) #6
  %42 = load i32, ptr %3, align 4, !tbaa !45
  %43 = add i32 %42, %24
  %44 = icmp eq i32 %43, %14
  br i1 %44, label %55, label %45

45:                                               ; preds = %35
  switch i32 %41, label %58 [
    i32 -1, label %46
    i32 -3, label %48
    i32 -4, label %48
  ]

46:                                               ; preds = %45
  %47 = call i32 @llvm.umin.i32(i32 %43, i32 %25)
  br label %55

48:                                               ; preds = %45, %45
  %49 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %50 = getelementptr %struct.ref_s, ptr %49, i64 -2, i32 1
  store i64 %30, ptr %50, align 8, !tbaa !5
  %51 = sext i32 %43 to i64
  %52 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %53 = getelementptr %struct.ref_s, ptr %52, i64 -1, i32 1
  store i64 %51, ptr %53, align 8, !tbaa !5
  %54 = call i32 @s_handle_read_exception(i32 noundef %41, ptr noundef nonnull %31, ptr noundef null, i32 noundef 0, ptr noundef nonnull @image_file_buffered_continue) #6
  br label %58

55:                                               ; preds = %35, %46
  %56 = phi i32 [ %47, %46 ], [ %25, %35 ]
  %57 = add nsw i32 %26, 1
  br label %58

58:                                               ; preds = %45, %55, %48
  %59 = phi i32 [ 0, %55 ], [ %43, %48 ], [ %43, %45 ]
  %60 = phi i32 [ %56, %55 ], [ %25, %48 ], [ %25, %45 ]
  %61 = phi i32 [ %57, %55 ], [ %26, %48 ], [ %26, %45 ]
  %62 = phi i32 [ %27, %55 ], [ %54, %48 ], [ -12, %45 ]
  %63 = phi i1 [ true, %55 ], [ false, %48 ], [ false, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br i1 %63, label %23, label %79, !llvm.loop !46

64:                                               ; preds = %23, %29
  %65 = icmp eq i32 %25, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %64
  %67 = icmp sgt i32 %26, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %66, %68
  %69 = phi i32 [ %74, %68 ], [ 0, %66 ]
  %70 = phi ptr [ %75, %68 ], [ %15, %66 ]
  %71 = getelementptr inbounds %struct.ref_s, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = call i32 @gs_image_next(ptr noundef %6, ptr noundef %72, i32 noundef %25, ptr noundef nonnull %2) #6
  %74 = add nuw nsw i32 %69, 1
  %75 = getelementptr inbounds %struct.ref_s, ptr %70, i64 1
  %76 = icmp slt i32 %74, %26
  %77 = icmp eq i32 %73, 0
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %68, label %79, !llvm.loop !47

79:                                               ; preds = %58, %68, %66, %64
  %80 = phi i32 [ %24, %64 ], [ 0, %66 ], [ 0, %68 ], [ %59, %58 ]
  %81 = phi i32 [ 1, %64 ], [ %18, %66 ], [ %73, %68 ], [ %18, %58 ]
  %82 = phi i32 [ %26, %64 ], [ 0, %66 ], [ 0, %68 ], [ %61, %58 ]
  %83 = phi i32 [ %27, %64 ], [ %27, %66 ], [ %27, %68 ], [ %62, %58 ]
  %84 = phi i32 [ 3, %64 ], [ 0, %66 ], [ 0, %68 ], [ 1, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  switch i32 %84, label %117 [
    i32 0, label %16
    i32 3, label %85
  ], !llvm.loop !48

85:                                               ; preds = %79, %16
  %86 = phi i32 [ %81, %79 ], [ %18, %16 ]
  %87 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %88 = getelementptr inbounds %struct.ref_s, ptr %87, i64 -12
  store ptr %88, ptr @e_stack, align 8, !tbaa !17
  %89 = getelementptr inbounds %struct.ref_s, ptr %87, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.ref_s, ptr %87, i64 -3
  br label %92

92:                                               ; preds = %106, %85
  %93 = phi ptr [ %107, %106 ], [ %91, %85 ]
  %94 = getelementptr inbounds i8, ptr %93, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !5
  %96 = icmp eq i8 %95, 18
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %99 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %98, i64 0, i32 15
  %100 = load ptr, ptr %99, align 8, !tbaa !43
  %101 = getelementptr inbounds %struct.ref_s, ptr %93, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.tas_s, ptr %93, i64 0, i32 1
  %104 = load i16, ptr %103, align 2, !tbaa !33
  %105 = zext i16 %104 to i32
  call void %100(ptr noundef %98, ptr noundef %102, i32 noundef %105, ptr noundef nonnull @.str.5) #6
  br label %106

106:                                              ; preds = %97, %92
  %107 = getelementptr inbounds %struct.ref_s, ptr %93, i64 -1
  %108 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %109 = getelementptr inbounds %struct.ref_s, ptr %108, i64 6
  %110 = icmp ult ptr %107, %109
  br i1 %110, label %111, label %92, !llvm.loop !44

111:                                              ; preds = %106
  call void @gs_image_cleanup(ptr noundef %90) #6
  %112 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %113 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %112, i64 0, i32 11
  %114 = load ptr, ptr %113, align 8, !tbaa !30
  call void %114(ptr noundef %112, ptr noundef %90, ptr noundef nonnull @.str.5) #6
  %115 = icmp slt i32 %86, 0
  %116 = select i1 %115, i32 %86, i32 14
  br label %117

117:                                              ; preds = %79, %111
  %118 = phi i32 [ %116, %111 ], [ %83, %79 ]
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define internal i32 @image_file_continue(ptr nocapture readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.ref_s, ptr %3, i64 -10
  br label %7

7:                                                ; preds = %82, %1
  %8 = phi i32 [ undef, %1 ], [ %83, %82 ]
  %9 = phi i32 [ -1, %1 ], [ %84, %82 ]
  %10 = phi ptr [ %6, %1 ], [ %85, %82 ]
  %11 = phi i32 [ 0, %1 ], [ %86, %82 ]
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 14
  br i1 %14, label %87, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ref_s, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 7
  %23 = load i16, ptr %22, align 8, !tbaa !53
  %24 = icmp ne i16 %23, -4
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 3
  %30 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.stream_s, ptr %17, i64 0, i32 7
  br label %32

32:                                               ; preds = %63, %25
  %33 = phi i32 [ %28, %25 ], [ %64, %63 ]
  %34 = phi i32 [ %8, %25 ], [ %65, %63 ]
  %35 = load ptr, ptr %30, align 8, !tbaa !5
  %36 = load ptr, ptr %29, align 8, !tbaa !5
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = icmp ult i32 %33, %40
  br i1 %41, label %67, label %42

42:                                               ; preds = %32
  %43 = icmp sgt i64 %39, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %45, ptr %29, align 8, !tbaa !5
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i32
  br label %50

48:                                               ; preds = %42
  %49 = call i32 @spgetcc(ptr noundef %17, i32 noundef 1) #6
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ]
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load ptr, ptr %29, align 8, !tbaa !5
  %55 = getelementptr inbounds i8, ptr %54, i64 -1
  store ptr %55, ptr %29, align 8, !tbaa !5
  %56 = load i16, ptr %31, align 8, !tbaa !53
  %57 = icmp ugt i16 %56, -3
  %58 = select i1 %57, i32 0, i32 %33
  br label %63

59:                                               ; preds = %50
  switch i32 %51, label %63 [
    i32 -1, label %62
    i32 -3, label %60
    i32 -4, label %60
  ]

60:                                               ; preds = %59, %59
  %61 = call i32 @s_handle_read_exception(i32 noundef %51, ptr noundef nonnull %10, ptr noundef null, i32 noundef 0, ptr noundef nonnull @image_file_continue) #6
  br label %63

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %53, %59, %62, %60
  %64 = phi i32 [ %33, %60 ], [ %33, %62 ], [ %33, %59 ], [ %58, %53 ]
  %65 = phi i32 [ %61, %60 ], [ %34, %62 ], [ -12, %59 ], [ %34, %53 ]
  %66 = phi i32 [ 1, %60 ], [ 8, %62 ], [ 1, %59 ], [ 7, %53 ]
  switch i32 %66, label %74 [
    i32 7, label %32
    i32 8, label %67
  ]

67:                                               ; preds = %63, %32
  %68 = phi i32 [ %64, %63 ], [ %33, %32 ]
  %69 = phi i32 [ %65, %63 ], [ %34, %32 ]
  %70 = icmp ugt i32 %68, %40
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = sub i32 %40, %68
  %73 = call i32 @llvm.umin.i32(i32 %72, i32 %9)
  br label %74

74:                                               ; preds = %63, %71, %67
  %75 = phi i32 [ %73, %71 ], [ 0, %67 ], [ %9, %63 ]
  %76 = phi i32 [ %69, %71 ], [ %69, %67 ], [ %65, %63 ]
  %77 = phi i1 [ true, %71 ], [ true, %67 ], [ false, %63 ]
  br i1 %77, label %78, label %161

78:                                               ; preds = %74
  %79 = add nuw nsw i32 %11, 1
  %80 = getelementptr inbounds %struct.ref_s, ptr %10, i64 1
  %81 = icmp eq i32 %79, 4
  br i1 %81, label %87, label %82

82:                                               ; preds = %78, %161
  %83 = phi i32 [ %76, %78 ], [ %162, %161 ]
  %84 = phi i32 [ %75, %78 ], [ -1, %161 ]
  %85 = phi ptr [ %80, %78 ], [ %6, %161 ]
  %86 = phi i32 [ %79, %78 ], [ 0, %161 ]
  br label %7, !llvm.loop !54

87:                                               ; preds = %78, %7
  %88 = phi i32 [ 4, %78 ], [ %11, %7 ]
  %89 = phi i32 [ %75, %78 ], [ %9, %7 ]
  %90 = phi i32 [ %76, %78 ], [ %8, %7 ]
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %127, label %92

92:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %93 = icmp eq i32 %88, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %101, %92
  %95 = phi i32 [ 0, %92 ], [ %109, %101 ]
  %96 = phi i32 [ 0, %92 ], [ %110, %101 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %126, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %2, align 4, !tbaa !45
  %100 = zext i32 %99 to i64
  br label %115

101:                                              ; preds = %92, %101
  %102 = phi ptr [ %111, %101 ], [ %6, %92 ]
  %103 = phi i32 [ %110, %101 ], [ 0, %92 ]
  %104 = getelementptr inbounds %struct.ref_s, ptr %102, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.stream_s, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  %109 = call i32 @gs_image_next(ptr noundef %5, ptr noundef nonnull %108, i32 noundef %89, ptr noundef nonnull %2) #6
  %110 = add nuw nsw i32 %103, 1
  %111 = getelementptr inbounds %struct.ref_s, ptr %102, i64 1
  %112 = icmp ult i32 %110, %88
  %113 = icmp eq i32 %109, 0
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %101, label %94, !llvm.loop !55

115:                                              ; preds = %98, %115
  %116 = phi i32 [ 0, %98 ], [ %123, %115 ]
  %117 = phi ptr [ %6, %98 ], [ %124, %115 ]
  %118 = getelementptr inbounds %struct.ref_s, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.stream_s, ptr %119, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds i8, ptr %121, i64 %100
  store ptr %122, ptr %120, align 8, !tbaa !5
  %123 = add nuw nsw i32 %116, 1
  %124 = getelementptr inbounds %struct.ref_s, ptr %117, i64 1
  %125 = icmp eq i32 %123, %96
  br i1 %125, label %126, label %115, !llvm.loop !56

126:                                              ; preds = %115, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %127

127:                                              ; preds = %87, %126
  %128 = phi i32 [ %95, %126 ], [ 1, %87 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %161, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %132 = getelementptr inbounds %struct.ref_s, ptr %131, i64 -12
  store ptr %132, ptr @e_stack, align 8, !tbaa !17
  %133 = getelementptr inbounds %struct.ref_s, ptr %131, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.ref_s, ptr %131, i64 -3
  br label %136

136:                                              ; preds = %150, %130
  %137 = phi ptr [ %151, %150 ], [ %135, %130 ]
  %138 = getelementptr inbounds i8, ptr %137, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !5
  %140 = icmp eq i8 %139, 18
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %143 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %142, i64 0, i32 15
  %144 = load ptr, ptr %143, align 8, !tbaa !43
  %145 = getelementptr inbounds %struct.ref_s, ptr %137, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !5
  %147 = getelementptr inbounds %struct.tas_s, ptr %137, i64 0, i32 1
  %148 = load i16, ptr %147, align 2, !tbaa !33
  %149 = zext i16 %148 to i32
  call void %144(ptr noundef %142, ptr noundef %146, i32 noundef %149, ptr noundef nonnull @.str.5) #6
  br label %150

150:                                              ; preds = %141, %136
  %151 = getelementptr inbounds %struct.ref_s, ptr %137, i64 -1
  %152 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %153 = getelementptr inbounds %struct.ref_s, ptr %152, i64 6
  %154 = icmp ult ptr %151, %153
  br i1 %154, label %155, label %136, !llvm.loop !44

155:                                              ; preds = %150
  call void @gs_image_cleanup(ptr noundef %134) #6
  %156 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %157 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %156, i64 0, i32 11
  %158 = load ptr, ptr %157, align 8, !tbaa !30
  call void %158(ptr noundef %156, ptr noundef %134, ptr noundef nonnull @.str.5) #6
  %159 = icmp slt i32 %128, 0
  %160 = select i1 %159, i32 %128, i32 14
  br label %161

161:                                              ; preds = %74, %127, %155
  %162 = phi i32 [ %160, %155 ], [ %90, %127 ], [ %76, %74 ]
  %163 = phi i1 [ false, %155 ], [ true, %127 ], [ false, %74 ]
  br i1 %163, label %82, label %164

164:                                              ; preds = %161
  ret i32 %162
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @image_string_process(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %56, %2
  %5 = phi i32 [ 0, %2 ], [ %57, %56 ]
  %6 = phi i32 [ undef, %2 ], [ %58, %56 ]
  %7 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.ref_s, ptr %7, i64 -10
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.ref_s, ptr %8, i64 %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = zext i16 %11 to i32
  %15 = getelementptr inbounds %struct.ref_s, ptr %8, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = call i32 @gs_image_next(ptr noundef %0, ptr noundef %16, i32 noundef %14, ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %4, %13
  %19 = phi i32 [ %17, %13 ], [ 1, %4 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -12
  store ptr %23, ptr @e_stack, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.ref_s, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -3
  br label %27

27:                                               ; preds = %41, %21
  %28 = phi ptr [ %42, %41 ], [ %26, %21 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 18
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %33, i64 0, i32 15
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.ref_s, ptr %28, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.tas_s, ptr %28, i64 0, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !33
  %40 = zext i16 %39 to i32
  call void %35(ptr noundef %33, ptr noundef %37, i32 noundef %40, ptr noundef nonnull @.str.5) #6
  br label %41

41:                                               ; preds = %32, %27
  %42 = getelementptr inbounds %struct.ref_s, ptr %28, i64 -1
  %43 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.ref_s, ptr %43, i64 6
  %45 = icmp ult ptr %42, %44
  br i1 %45, label %46, label %27, !llvm.loop !44

46:                                               ; preds = %41
  call void @gs_image_cleanup(ptr noundef %25) #6
  %47 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %48 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %47, i64 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !30
  call void %49(ptr noundef %47, ptr noundef %25, ptr noundef nonnull @.str.5) #6
  %50 = icmp slt i32 %19, 0
  %51 = select i1 %50, i32 %19, i32 14
  br label %56

52:                                               ; preds = %18
  %53 = add nsw i32 %5, 1
  %54 = icmp eq i32 %53, %1
  %55 = select i1 %54, i32 0, i32 %53
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i32 [ %5, %46 ], [ %55, %52 ]
  %58 = phi i32 [ %51, %46 ], [ %6, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br i1 %20, label %4, label %59, !llvm.loop !57

59:                                               ; preds = %56
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @image_proc_continue(ptr noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %6 = load i16, ptr %0, align 8, !tbaa !25
  %7 = and i16 %6, 16160
  %8 = icmp eq i16 %7, 4640
  br i1 %8, label %44, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !58
  %11 = icmp ugt ptr %10, %0
  br i1 %11, label %119, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ref_s, ptr %3, i64 -12
  store ptr %13, ptr @e_stack, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.ref_s, ptr %3, i64 -3
  br label %17

17:                                               ; preds = %31, %12
  %18 = phi ptr [ %32, %31 ], [ %16, %12 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 18
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %23, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.ref_s, ptr %18, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.tas_s, ptr %18, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !33
  %30 = zext i16 %29 to i32
  tail call void %25(ptr noundef %23, ptr noundef %27, i32 noundef %30, ptr noundef nonnull @.str.5) #6
  br label %31

31:                                               ; preds = %22, %17
  %32 = getelementptr inbounds %struct.ref_s, ptr %18, i64 -1
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 6
  %35 = icmp ult ptr %32, %34
  br i1 %35, label %36, label %17, !llvm.loop !44

36:                                               ; preds = %31
  tail call void @gs_image_cleanup(ptr noundef %15) #6
  %37 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %37, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !30
  tail call void %39(ptr noundef %37, ptr noundef %15, ptr noundef nonnull @.str.5) #6
  %40 = getelementptr inbounds i8, ptr %0, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = icmp eq i8 %41, 18
  %43 = select i1 %42, i32 -7, i32 -20
  br label %119

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !33
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = zext i16 %46 to i32
  %50 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = call i32 @gs_image_next(ptr noundef %5, ptr noundef %51, i32 noundef %49, ptr noundef nonnull %2) #6
  br label %53

53:                                               ; preds = %44, %48
  %54 = phi i32 [ %52, %48 ], [ 1, %44 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %58 = getelementptr inbounds %struct.ref_s, ptr %57, i64 -12
  store ptr %58, ptr @e_stack, align 8, !tbaa !17
  %59 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.ref_s, ptr %59, i64 -1
  store ptr %60, ptr @o_stack, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.ref_s, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.ref_s, ptr %57, i64 -3
  br label %64

64:                                               ; preds = %78, %56
  %65 = phi ptr [ %79, %78 ], [ %63, %56 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = icmp eq i8 %67, 18
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %71 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %70, i64 0, i32 15
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  %73 = getelementptr inbounds %struct.ref_s, ptr %65, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.tas_s, ptr %65, i64 0, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !33
  %77 = zext i16 %76 to i32
  call void %72(ptr noundef %70, ptr noundef %74, i32 noundef %77, ptr noundef nonnull @.str.5) #6
  br label %78

78:                                               ; preds = %69, %64
  %79 = getelementptr inbounds %struct.ref_s, ptr %65, i64 -1
  %80 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %81 = getelementptr inbounds %struct.ref_s, ptr %80, i64 6
  %82 = icmp ult ptr %79, %81
  br i1 %82, label %83, label %64, !llvm.loop !44

83:                                               ; preds = %78
  call void @gs_image_cleanup(ptr noundef %62) #6
  %84 = load ptr, ptr @gs_imemory, align 8, !tbaa !27
  %85 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %84, i64 0, i32 11
  %86 = load ptr, ptr %85, align 8, !tbaa !30
  call void %86(ptr noundef %84, ptr noundef %62, ptr noundef nonnull @.str.5) #6
  %87 = icmp slt i32 %54, 0
  %88 = select i1 %87, i32 %54, i32 14
  br label %119

89:                                               ; preds = %53
  %90 = load ptr, ptr @o_stack, align 8, !tbaa !17
  %91 = getelementptr inbounds %struct.ref_s, ptr %90, i64 -1
  store ptr %91, ptr @o_stack, align 8, !tbaa !17
  %92 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %93 = getelementptr %struct.ref_s, ptr %92, i64 -2, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !5
  %95 = add nsw i64 %94, 1
  store i64 %95, ptr %93, align 8, !tbaa !5
  %96 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %97 = getelementptr inbounds %struct.ref_s, ptr %96, i64 -10
  %98 = and i64 %95, 4294967295
  %99 = icmp eq i64 %98, 4
  br i1 %99, label %107, label %100

100:                                              ; preds = %89
  %101 = shl i64 %95, 32
  %102 = ashr exact i64 %101, 32
  %103 = getelementptr inbounds %struct.ref_s, ptr %97, i64 %102
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = icmp eq i8 %105, 14
  br i1 %106, label %107, label %109

107:                                              ; preds = %100, %89
  %108 = getelementptr %struct.ref_s, ptr %96, i64 -2, i32 1
  store i64 0, ptr %108, align 8, !tbaa !5
  br label %109

109:                                              ; preds = %107, %100
  %110 = phi i64 [ 0, %107 ], [ %95, %100 ]
  %111 = load ptr, ptr @e_stack, align 8, !tbaa !17
  %112 = getelementptr inbounds %struct.ref_s, ptr %111, i64 1
  store ptr %112, ptr @e_stack, align 8, !tbaa !17
  %113 = getelementptr inbounds %struct.ref_s, ptr %111, i64 1, i32 1
  store ptr @image_proc_continue, ptr %113, align 8, !tbaa !5
  store i16 3968, ptr %112, align 8, !tbaa !25
  %114 = getelementptr inbounds %struct.ref_s, ptr %111, i64 1, i32 0, i32 1
  store i16 0, ptr %114, align 2, !tbaa !33
  %115 = getelementptr inbounds %struct.ref_s, ptr %111, i64 2
  store ptr %115, ptr @e_stack, align 8, !tbaa !17
  %116 = shl i64 %110, 32
  %117 = ashr exact i64 %116, 32
  %118 = getelementptr inbounds %struct.ref_s, ptr %97, i64 %117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %115, ptr noundef nonnull align 8 dereferenceable(16) %118, i64 16, i1 false), !tbaa.struct !34
  br label %119

119:                                              ; preds = %9, %109, %83, %36
  %120 = phi i32 [ %88, %83 ], [ 5, %109 ], [ %43, %36 ], [ -17, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zimage_op_defs() local_unnamed_addr #4 {
  ret ptr @zimage_op_defs.op_defs_
}

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_image_next(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @spgetcc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @s_handle_read_exception(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sgets(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_image_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 32}
!9 = !{!"gs_image_s", !10, i64 0, !10, i64 4, !11, i64 8, !10, i64 32, !13, i64 40, !6, i64 48, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92}
!10 = !{!"int", !6, i64 0}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !6, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!9, !13, i64 40}
!15 = !{!9, !10, i64 0}
!16 = !{!9, !10, i64 4}
!17 = !{!18, !13, i64 0}
!18 = !{!"ref_stack_s", !13, i64 0, !13, i64 8, !13, i64 16, !19, i64 24, !10, i64 40, !10, i64 44, !19, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !19, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !13, i64 120}
!19 = !{!"ref_s", !20, i64 0, !6, i64 8}
!20 = !{!"tas_s", !21, i64 0, !21, i64 2}
!21 = !{!"short", !6, i64 0}
!22 = !{!18, !13, i64 16}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!19, !21, i64 0}
!26 = distinct !{!26, !24}
!27 = !{!28, !13, i64 0}
!28 = !{!"gs_dual_memory_s", !13, i64 0, !6, i64 8, !10, i64 40, !10, i64 44, !13, i64 48, !10, i64 56, !10, i64 60}
!29 = !{!13, !13, i64 0}
!30 = !{!31, !13, i64 88}
!31 = !{!"gs_memory_s", !32, i64 0}
!32 = !{!"gs_memory_procs_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!33 = !{!19, !21, i64 2}
!34 = !{i64 0, i64 2, !35, i64 2, i64 2, !35, i64 8, i64 8, !36, i64 8, i64 2, !35, i64 8, i64 4, !38, i64 8, i64 8, !36, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29}
!35 = !{!21, !21, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !6, i64 0}
!38 = !{!12, !12, i64 0}
!39 = distinct !{!39, !24}
!40 = !{!28, !10, i64 40}
!41 = distinct !{!41, !24}
!42 = !{!31, !13, i64 96}
!43 = !{!31, !13, i64 120}
!44 = distinct !{!44, !24}
!45 = !{!10, !10, i64 0}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = !{!50, !13, i64 152}
!50 = !{!"stream_s", !13, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !13, i64 48, !10, i64 56, !10, i64 60, !21, i64 64, !6, i64 66, !6, i64 67, !51, i64 72, !37, i64 88, !52, i64 96, !13, i64 152, !10, i64 160, !10, i64 164, !13, i64 168, !21, i64 176, !21, i64 178, !13, i64 184, !13, i64 192, !10, i64 200, !13, i64 208, !10, i64 216, !13, i64 224}
!51 = !{!"gs_string_s", !13, i64 0, !10, i64 8}
!52 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!53 = !{!50, !21, i64 64}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = !{!18, !13, i64 8}
