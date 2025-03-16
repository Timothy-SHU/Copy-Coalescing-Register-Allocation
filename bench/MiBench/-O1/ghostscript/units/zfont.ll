; ModuleID = 'zfont.c'
source_filename = "zfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_dir_s = type { ptr, ptr, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32 }
%struct.fm_pair_cache_s = type { i32, i32, ptr, i32 }
%struct.char_cache_s = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cached_fm_pair_s = type { ptr, %struct.gs_uid_s, i32, float, float, float, float, i32, i32, ptr, ptr, i32 }
%struct.gs_uid_s = type { i64, ptr }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, ptr, i64, i8, ptr, i32, i32, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f1 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }

@ifont_dir = dso_local global ptr null, align 8
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@zfont_op_defs.op_defs_ = internal constant [9 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcurrentfont }, %struct.op_def { ptr @.str.1, ptr @zmakefont }, %struct.op_def { ptr @.str.2, ptr @zscalefont }, %struct.op_def { ptr @.str.3, ptr @zsetfont }, %struct.op_def { ptr @.str.4, ptr @zcachestatus }, %struct.op_def { ptr @.str.5, ptr @zsetcachelimit }, %struct.op_def { ptr @.str.6, ptr @zsetcacheparams }, %struct.op_def { ptr @.str.7, ptr @zcurrentcacheparams }, %struct.op_def { ptr null, ptr @zfont_init }], align 16
@.str = private unnamed_addr constant [13 x i8] c"0currentfont\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"2makefont\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"2scalefont\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1setfont\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"0cachestatus\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"1setcachelimit\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"1setcacheparams\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"0currentcacheparams\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@st_font_data = external constant %struct.gs_memory_struct_type_s, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"make_font(font_data)\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"make_font(matrices)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ScaleMatrix\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"OrigFont\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@font_dir_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"ifont_dir\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zfont_mark_glyph_name(i64 noundef %0, ptr nocapture readnone %1) #0 {
  %3 = icmp ugt i64 %0, 2147483646
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = trunc i64 %0 to i32
  %6 = tail call i32 @name_mark_index(i32 noundef %5) #6
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %2 ]
  ret i32 %8
}

declare i32 @name_mark_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetfont(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %26

8:                                                ; preds = %1
  %9 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #6
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8, !tbaa !8
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 10
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.gs_font_s, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = call i32 @obj_eq(ptr noundef %20, ptr noundef %0) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = icmp eq ptr %18, null
  %25 = select i1 %24, i32 -10, i32 0
  br label %26

26:                                               ; preds = %6, %8, %11, %16, %23
  %27 = phi ptr [ undef, %8 ], [ undef, %16 ], [ %18, %23 ], [ undef, %11 ], [ undef, %6 ]
  %28 = phi i32 [ -10, %8 ], [ -10, %16 ], [ %25, %23 ], [ -10, %11 ], [ %7, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @igs, align 8, !tbaa !8
  %32 = call i32 @gs_setfont(ptr noundef %31, ptr noundef %27) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %36 = getelementptr inbounds %struct.ref_s, ptr %35, i64 -1
  store ptr %36, ptr @o_stack, align 8, !tbaa !18
  br label %37

37:                                               ; preds = %26, %30, %34
  %38 = phi i32 [ %32, %34 ], [ %28, %26 ], [ %32, %30 ]
  ret i32 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @font_param(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %27

9:                                                ; preds = %2
  %10 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #6
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 8, !tbaa !8
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 10
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ref_s, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.gs_font_s, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = call i32 @obj_eq(ptr noundef %21, ptr noundef %0) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  store ptr %19, ptr %1, align 8, !tbaa !8
  %25 = icmp eq ptr %19, null
  %26 = select i1 %25, i32 -10, i32 0
  br label %27

27:                                               ; preds = %24, %17, %9, %12, %7
  %28 = phi i32 [ %8, %7 ], [ -10, %12 ], [ -10, %9 ], [ -10, %17 ], [ %26, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %28
}

declare i32 @gs_setfont(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfont_op_defs() local_unnamed_addr #3 {
  ret ptr @zfont_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentfont(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !23
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !24
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !18
  %7 = load ptr, ptr @igs, align 8, !tbaa !8
  %8 = tail call ptr @gs_currentfont(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.gs_font_s, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !25
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zmakefont(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %3 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call fastcc i32 @make_font(ptr noundef %0, ptr noundef nonnull %2), !range !30
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zscalefont(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %4 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load float, ptr %2, align 4, !tbaa !29
  %8 = fpext float %7 to double
  %9 = call i32 @gs_make_scaling(double noundef %8, double noundef %8, ptr noundef nonnull %3) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = call fastcc i32 @make_font(ptr noundef %0, ptr noundef nonnull %3), !range !30
  br label %13

13:                                               ; preds = %6, %1, %11
  %14 = phi i32 [ %12, %11 ], [ %4, %1 ], [ %9, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcachestatus(ptr noundef %0) #0 {
  %2 = alloca [7 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #6
  %3 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  call void @gs_cachestatus(ptr noundef %3, ptr noundef nonnull %2) #6
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 7
  %5 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !23
  %6 = icmp ugt ptr %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 7, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !24
  br label %20

8:                                                ; preds = %1
  store ptr %4, ptr @o_stack, align 8, !tbaa !18
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i32 [ %17, %9 ], [ 0, %8 ]
  %11 = phi ptr [ %13, %9 ], [ %0, %8 ]
  %12 = phi ptr [ %18, %9 ], [ %2, %8 ]
  %13 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %14 = load i32, ptr %12, align 4, !tbaa !31
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1, i32 1
  store i64 %15, ptr %16, align 8, !tbaa !5
  store i16 2816, ptr %13, align 8, !tbaa !32
  %17 = add nuw nsw i32 %10, 1
  %18 = getelementptr inbounds i32, ptr %12, i64 1
  %19 = icmp eq i32 %17, 7
  br i1 %19, label %20, label %9, !llvm.loop !33

20:                                               ; preds = %9, %7
  %21 = phi i32 [ -16, %7 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #6
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcachelimit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp ugt i64 %9, 4294967295
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %13 = trunc i64 %9 to i32
  %14 = tail call i32 @gs_setcacheupper(ptr noundef %12, i32 noundef %13) #6
  %15 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -1
  store ptr %16, ptr @o_stack, align 8, !tbaa !18
  br label %17

17:                                               ; preds = %7, %11, %5
  %18 = phi i32 [ 0, %11 ], [ %6, %5 ], [ -15, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcacheparams(ptr noundef %0) #0 {
  %2 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  br label %3

3:                                                ; preds = %1, %14
  %4 = phi i64 [ 0, %1 ], [ %17, %14 ]
  %5 = phi ptr [ %0, %1 ], [ %18, %14 ]
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  switch i8 %7, label %8 [
    i8 12, label %20
    i8 11, label %10
  ]

8:                                                ; preds = %3
  %9 = tail call i32 @check_type_failed(ptr noundef %5) #6
  br label %43

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = icmp ugt i64 %12, 4294967295
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = trunc i64 %12 to i32
  %16 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 %4
  store i32 %15, ptr %16, align 4, !tbaa !31
  %17 = add nuw nsw i64 %4, 1
  %18 = getelementptr inbounds %struct.ref_s, ptr %5, i64 -1
  %19 = icmp eq i64 %17, 3
  br i1 %19, label %22, label %3, !llvm.loop !35

20:                                               ; preds = %3
  %21 = trunc i64 %4 to i32
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi i32 [ %21, %20 ], [ 3, %14 ]
  switch i32 %23, label %41 [
    i32 3, label %24
    i32 2, label %30
    i32 1, label %36
  ]

24:                                               ; preds = %22
  %25 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %26 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 2
  %27 = load i32, ptr %26, align 4, !tbaa !31
  %28 = tail call i32 @gs_setcachesize(ptr noundef %25, i32 noundef %27) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %24, %22
  %31 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %32 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !31
  %34 = tail call i32 @gs_setcachelower(ptr noundef %31, i32 noundef %33) #6
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30, %22
  %37 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %38 = load i32, ptr %2, align 4, !tbaa !31
  %39 = tail call i32 @gs_setcacheupper(ptr noundef %37, i32 noundef %38) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36, %22
  %42 = tail call i32 @zcleartomark(ptr noundef %0) #6
  br label %43

43:                                               ; preds = %10, %36, %30, %24, %41, %8
  %44 = phi i32 [ %9, %8 ], [ %42, %41 ], [ %28, %24 ], [ %34, %30 ], [ %39, %36 ], [ -15, %10 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentcacheparams(ptr noundef %0) #0 {
  %2 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  %3 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %4 = tail call i32 @gs_currentcachesize(ptr noundef %3) #6
  store i32 %4, ptr %2, align 4, !tbaa !31
  %5 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %6 = tail call i32 @gs_currentcachelower(ptr noundef %5) #6
  %7 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 1
  store i32 %6, ptr %7, align 4, !tbaa !31
  %8 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %9 = tail call i32 @gs_currentcacheupper(ptr noundef %8) #6
  %10 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 2
  store i32 %9, ptr %10, align 4, !tbaa !31
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !23
  %13 = icmp ugt ptr %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 4, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !24
  br label %29

15:                                               ; preds = %1
  store ptr %11, ptr @o_stack, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  store i16 3072, ptr %16, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i32 [ %25, %18 ], [ 0, %15 ]
  %20 = phi ptr [ %26, %18 ], [ %17, %15 ]
  %21 = phi ptr [ %27, %18 ], [ %2, %15 ]
  %22 = load i32, ptr %21, align 4, !tbaa !31
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ref_s, ptr %20, i64 0, i32 1
  store i64 %23, ptr %24, align 8, !tbaa !5
  store i16 2816, ptr %20, align 8, !tbaa !32
  %25 = add nuw nsw i32 %19, 1
  %26 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1
  %27 = getelementptr inbounds i32, ptr %21, i64 1
  %28 = icmp eq i32 %25, 3
  br i1 %28, label %29, label %18, !llvm.loop !33

29:                                               ; preds = %18, %14
  %30 = phi i32 [ -16, %14 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal void @zfont_init() #0 {
  %1 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %2 = tail call ptr @gs_font_dir_alloc(ptr noundef %1) #6
  store ptr %2, ptr @ifont_dir, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.gs_font_dir_s, ptr %2, i64 0, i32 5, i32 12
  store ptr @zfont_mark_glyph_name, ptr %3, align 8, !tbaa !38
  %4 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void %6(ptr noundef %4, ptr noundef nonnull @font_dir_root, ptr noundef nonnull @ptr_struct_procs, ptr noundef nonnull @ifont_dir, ptr noundef nonnull @.str.15) #6
  ret void
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @obj_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @add_FID(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !5
  %5 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !45
  %6 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !46
  %7 = or i32 %6, %5
  %8 = trunc i32 %7 to i16
  %9 = or i16 %8, 96
  %10 = add i16 %9, 2560
  store i16 %10, ptr %3, align 8, !tbaa !32
  %11 = call i32 @dict_put_string(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %11
}

declare i32 @dict_put_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zbase_make_font(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gs_base_make_font(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @zdefault_make_font(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3), !range !30
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ]
  ret i32 %10
}

declare i32 @gs_base_make_font(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zdefault_make_font(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca %struct.gs_matrix_s, align 4
  %10 = alloca %struct.gs_matrix_s, align 4
  %11 = alloca ptr, align 8
  %12 = load ptr, ptr %3, align 8, !tbaa !8
  %13 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %15 = tail call i32 @dict_maxlength(ptr noundef %14) #6
  %16 = tail call i32 @dict_length(ptr noundef %14) #6
  %17 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = tail call ptr %19(ptr noundef %17, ptr noundef nonnull @st_font_data, ptr noundef nonnull @.str.9) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %89, label %22

22:                                               ; preds = %4
  %23 = add i32 %16, 3
  %24 = tail call i32 @llvm.umax.i32(i32 %15, i32 %23)
  %25 = call i32 @dict_create(i32 noundef %24, ptr noundef nonnull %6) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %89, label %27

27:                                               ; preds = %22
  %28 = call i32 @dict_copy_entries(ptr noundef %14, ptr noundef nonnull %6, i32 noundef 0) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %89, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %32 = call i32 @gs_alloc_ref_array(ptr noundef %31, ptr noundef nonnull %7, i32 noundef 112, i32 noundef 12, ptr noundef nonnull @.str.10) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  call void @refset_null(ptr noundef %36, i32 noundef 12) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !25
  %37 = getelementptr inbounds %struct.tas_s, ptr %8, i64 0, i32 1
  store i16 6, ptr %37, align 2, !tbaa !48
  %38 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.ref_s, ptr %39, i64 6
  store ptr %40, ptr %38, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  %41 = call i32 @dict_find_string(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef nonnull %11) #6
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load ptr, ptr %11, align 8, !tbaa !8
  %45 = call i32 @read_matrix(ptr noundef %44, ptr noundef nonnull %10) #6
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i32 @gs_matrix_multiply(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %9) #6
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %43, %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !49
  br label %51

51:                                               ; preds = %50, %47
  %52 = call i32 @write_matrix(ptr noundef nonnull %8, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #6
  %53 = load i16, ptr %8, align 8, !tbaa !32
  %54 = and i16 %53, -17
  store i16 %54, ptr %8, align 8, !tbaa !32
  %55 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  store i16 6, ptr %55, align 2, !tbaa !48
  %56 = getelementptr inbounds %struct.gs_font_s, ptr %12, i64 0, i32 6
  %57 = call i32 @write_matrix(ptr noundef nonnull %7, ptr noundef nonnull %56) #6
  %58 = load i16, ptr %7, align 8, !tbaa !32
  %59 = and i16 %58, -17
  store i16 %59, ptr %7, align 8, !tbaa !32
  %60 = call i32 @dict_put_string(ptr noundef nonnull %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %7) #6
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %89, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.gs_font_s, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = call i32 @dict_put_string(ptr noundef nonnull %6, ptr noundef nonnull @.str.13, ptr noundef %66) #6
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %62
  %70 = call i32 @dict_put_string(ptr noundef nonnull %6, ptr noundef nonnull @.str.11, ptr noundef nonnull %8) #6
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %73 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store ptr %12, ptr %73, align 8, !tbaa !5
  %74 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !45
  %75 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !46
  %76 = or i32 %75, %74
  %77 = trunc i32 %76 to i16
  %78 = or i16 %77, 96
  %79 = add i16 %78, 2560
  store i16 %79, ptr %5, align 8, !tbaa !32
  %80 = call i32 @dict_put_string(ptr noundef nonnull %6, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.gs_font_s, ptr %12, i64 0, i32 5
  store ptr %20, ptr %83, align 8, !tbaa !10
  %84 = load ptr, ptr %13, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %20, ptr noundef nonnull align 8 dereferenceable(128) %84, i64 128, i1 false), !tbaa.struct !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !25
  %85 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = load i16, ptr %86, align 8, !tbaa !52
  %88 = and i16 %87, -17
  store i16 %88, ptr %86, align 8, !tbaa !52
  br label %89

89:                                               ; preds = %51, %62, %69, %72, %22, %27, %30, %4, %82
  %90 = phi i32 [ 0, %82 ], [ -25, %4 ], [ %25, %22 ], [ %28, %27 ], [ %32, %30 ], [ %60, %51 ], [ %67, %62 ], [ %70, %69 ], [ %80, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  ret i32 %90
}

declare i32 @dict_maxlength(ptr noundef) local_unnamed_addr #1

declare i32 @dict_length(ptr noundef) local_unnamed_addr #1

declare i32 @dict_create(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dict_copy_entries(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @refset_null(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @write_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @font_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %72, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %14, %13 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_font_dir_s, ptr %2, i64 0, i32 1
  br label %16

10:                                               ; preds = %4
  %11 = tail call i32 @alloc_is_since_save(ptr noundef nonnull %6, ptr noundef %0) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %15
  %14 = phi ptr [ %6, %10 ], [ %2, %15 ]
  br label %4, !llvm.loop !54

15:                                               ; preds = %10
  tail call void @gs_purge_font(ptr noundef nonnull %6) #6
  br label %13

16:                                               ; preds = %23, %8
  %17 = phi ptr [ %9, %8 ], [ %24, %23 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @alloc_is_since_save(ptr noundef nonnull %18, ptr noundef %0) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %25
  %24 = phi ptr [ %18, %20 ], [ %9, %25 ]
  br label %16, !llvm.loop !55

25:                                               ; preds = %20
  tail call void @gs_purge_font(ptr noundef nonnull %18) #6
  br label %23

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.gs_font_dir_s, ptr %2, i64 0, i32 4, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %68, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gs_font_dir_s, ptr %2, i64 0, i32 4, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %30, %64
  %34 = phi i32 [ %66, %64 ], [ %28, %30 ]
  %35 = phi ptr [ %65, %64 ], [ %32, %30 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %35, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !61
  %41 = icmp eq i64 %40, 16777216
  br i1 %41, label %64, label %42

42:                                               ; preds = %38
  br i1 %37, label %46, label %43

43:                                               ; preds = %33, %42
  %44 = tail call i32 @alloc_is_since_save(ptr noundef nonnull %36, ptr noundef %0) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43, %42
  %47 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %35, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !61
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %35, i64 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = tail call i32 @alloc_is_since_save(ptr noundef %52, ptr noundef %0) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %35, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @alloc_is_since_save(ptr noundef nonnull %57, ptr noundef %0) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59, %43, %50
  %63 = phi i32 [ 0, %50 ], [ 0, %43 ], [ 1, %59 ]
  tail call void @gs_purge_fm_pair(ptr noundef nonnull %2, ptr noundef nonnull %35, i32 noundef %63) #6
  br label %64

64:                                               ; preds = %62, %38, %55, %59
  %65 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %35, i64 1
  %66 = add i32 %34, -1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %33, !llvm.loop !64

68:                                               ; preds = %64, %26
  %69 = tail call i32 @alloc_any_names_since_save(ptr noundef %0) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @gx_purge_selected_cached_chars(ptr noundef nonnull %2, ptr noundef nonnull @purge_if_name_removed, ptr noundef %0) #6
  br label %72

72:                                               ; preds = %68, %71, %1
  ret void
}

declare i32 @alloc_is_since_save(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gs_purge_font(ptr noundef) local_unnamed_addr #1

declare void @gs_purge_fm_pair(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @alloc_any_names_since_save(ptr noundef) local_unnamed_addr #1

declare void @gx_purge_selected_cached_chars(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @purge_if_name_removed(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cached_char_s, ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !65
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @alloc_name_index_is_since_save(i32 noundef %5, ptr noundef %1) #6
  ret i32 %6
}

declare ptr @gs_currentfont(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @make_font(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store ptr null, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %8 = getelementptr inbounds i8, ptr %0, i64 -15
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #6
  br label %31

13:                                               ; preds = %2
  %14 = call i32 @dict_find_string(ptr noundef nonnull %7, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #6
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 8, !tbaa !8
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.gs_font_s, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = call i32 @obj_eq(ptr noundef %25, ptr noundef nonnull %7) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = icmp eq ptr %23, null
  %30 = select i1 %29, i32 -10, i32 0
  br label %31

31:                                               ; preds = %11, %13, %16, %21, %28
  %32 = phi ptr [ undef, %13 ], [ undef, %21 ], [ %23, %28 ], [ undef, %16 ], [ undef, %11 ]
  %33 = phi i32 [ -10, %13 ], [ -10, %21 ], [ %30, %28 ], [ -10, %16 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %82, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !45
  %37 = load i16, ptr %7, align 8, !tbaa !32
  %38 = and i16 %37, 12
  %39 = zext nneg i16 %38 to i32
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %39) #6
  %40 = call i32 @dict_find_string(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, ptr noundef nonnull %5) #6
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load ptr, ptr %5, align 8, !tbaa !8
  %44 = load i16, ptr %43, align 8, !tbaa !32
  %45 = and i16 %44, 15360
  %46 = icmp eq i16 %45, 1024
  br i1 %46, label %47, label %53

47:                                               ; preds = %42, %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %48 = getelementptr inbounds %struct.gs_font_s, ptr %32, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %49, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !25
  %50 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %51 = call i32 @gs_makefont(ptr noundef %50, ptr noundef %32, ptr noundef %1, ptr noundef nonnull %4) #6
  %52 = load ptr, ptr %48, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  br label %53

53:                                               ; preds = %42, %47
  %54 = phi i32 [ %51, %47 ], [ -10, %42 ]
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %36) #6
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %5, align 8, !tbaa !8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %4, align 8, !tbaa !8
  %61 = getelementptr inbounds %struct.gs_font_s, ptr %60, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !10
  %63 = getelementptr inbounds %struct.font_data_s, ptr %62, i64 0, i32 3
  %64 = call i32 @obj_eq(ptr noundef nonnull %57, ptr noundef nonnull %63) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load ptr, ptr %4, align 8, !tbaa !8
  %68 = getelementptr inbounds %struct.gs_font_s, ptr %67, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !69
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.gs_font_s, ptr %67, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  %74 = getelementptr inbounds %struct.font_data_s, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %5, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(16) %75, i64 16, i1 false), !tbaa.struct !25
  call void @lookup_gs_simple_font_encoding(ptr noundef %67) #6
  br label %76

76:                                               ; preds = %71, %59, %56
  %77 = load ptr, ptr %4, align 8, !tbaa !8
  %78 = getelementptr inbounds %struct.gs_font_s, ptr %77, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %79, i64 16, i1 false), !tbaa.struct !25
  %80 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %81 = getelementptr inbounds %struct.ref_s, ptr %80, i64 -1
  store ptr %81, ptr @o_stack, align 8, !tbaa !18
  br label %82

82:                                               ; preds = %66, %53, %31, %76
  %83 = phi i32 [ 0, %76 ], [ %33, %31 ], [ %54, %53 ], [ -15, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %83
}

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_makefont(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lookup_gs_simple_font_encoding(ptr noundef) local_unnamed_addr #1

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_make_scaling(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare void @gs_cachestatus(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_setcacheupper(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_setcachesize(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_setcachelower(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @zcleartomark(ptr noundef) local_unnamed_addr #1

declare i32 @gs_currentcachesize(ptr noundef) local_unnamed_addr #1

declare i32 @gs_currentcachelower(ptr noundef) local_unnamed_addr #1

declare i32 @gs_currentcacheupper(ptr noundef) local_unnamed_addr #1

declare ptr @gs_font_dir_alloc(ptr noundef) local_unnamed_addr #1

declare i32 @alloc_name_index_is_since_save(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !9, i64 40}
!11 = !{!"gs_font_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !12, i64 48, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !13, i64 100, !15, i64 104, !17, i64 176, !17, i64 228}
!12 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!13 = !{!"float", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!"gs_font_procs_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !16, i64 32, !9, i64 48, !9, i64 56, !9, i64 64}
!16 = !{!"gx_xfont_callbacks_s", !9, i64 0, !9, i64 8}
!17 = !{!"gs_font_name_s", !6, i64 0, !14, i64 48}
!18 = !{!19, !9, i64 0}
!19 = !{!"ref_stack_s", !9, i64 0, !9, i64 8, !9, i64 16, !20, i64 24, !14, i64 40, !14, i64 44, !20, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !20, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !9, i64 120}
!20 = !{!"ref_s", !21, i64 0, !6, i64 8}
!21 = !{!"tas_s", !22, i64 0, !22, i64 2}
!22 = !{!"short", !6, i64 0}
!23 = !{!19, !9, i64 16}
!24 = !{!19, !14, i64 64}
!25 = !{i64 0, i64 2, !26, i64 2, i64 2, !26, i64 8, i64 8, !27, i64 8, i64 2, !26, i64 8, i64 4, !29, i64 8, i64 8, !27, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8}
!26 = !{!22, !22, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!13, !13, i64 0}
!30 = !{i32 -2147483648, i32 1}
!31 = !{!14, !14, i64 0}
!32 = !{!20, !22, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !34}
!36 = !{!37, !9, i64 0}
!37 = !{!"gs_dual_memory_s", !9, i64 0, !6, i64 8, !14, i64 40, !14, i64 44, !9, i64 48, !14, i64 56, !14, i64 60}
!38 = !{!39, !9, i64 112}
!39 = !{!"gs_font_dir_s", !9, i64 0, !9, i64 8, !14, i64 16, !14, i64 20, !40, i64 24, !41, i64 48, !14, i64 128, !14, i64 132}
!40 = !{!"fm_pair_cache_s", !14, i64 0, !14, i64 4, !9, i64 8, !14, i64 16}
!41 = !{!"char_cache_s", !9, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !9, i64 24, !9, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !9, i64 64, !9, i64 72}
!42 = !{!43, !9, i64 128}
!43 = !{!"gs_memory_s", !44, i64 0}
!44 = !{!"gs_memory_procs_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152}
!45 = !{!37, !14, i64 40}
!46 = !{!37, !14, i64 60}
!47 = !{!43, !9, i64 16}
!48 = !{!20, !22, i64 2}
!49 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29, i64 16, i64 4, !29, i64 20, i64 4, !29}
!50 = !{!11, !9, i64 32}
!51 = !{i64 0, i64 2, !26, i64 2, i64 2, !26, i64 8, i64 8, !27, i64 8, i64 2, !26, i64 8, i64 4, !29, i64 8, i64 8, !27, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 2, !26, i64 18, i64 2, !26, i64 24, i64 8, !27, i64 24, i64 2, !26, i64 24, i64 4, !29, i64 24, i64 8, !27, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 24, i64 8, !8, i64 32, i64 2, !26, i64 34, i64 2, !26, i64 40, i64 8, !27, i64 40, i64 2, !26, i64 40, i64 4, !29, i64 40, i64 8, !27, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 40, i64 8, !8, i64 48, i64 2, !26, i64 50, i64 2, !26, i64 56, i64 8, !27, i64 56, i64 2, !26, i64 56, i64 4, !29, i64 56, i64 8, !27, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 56, i64 8, !8, i64 64, i64 2, !26, i64 66, i64 2, !26, i64 72, i64 8, !27, i64 72, i64 2, !26, i64 72, i64 4, !29, i64 72, i64 8, !27, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 72, i64 8, !8, i64 80, i64 2, !26, i64 82, i64 2, !26, i64 88, i64 8, !27, i64 88, i64 2, !26, i64 88, i64 4, !29, i64 88, i64 8, !27, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 96, i64 2, !26, i64 98, i64 2, !26, i64 104, i64 8, !27, i64 104, i64 2, !26, i64 104, i64 4, !29, i64 104, i64 8, !27, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 104, i64 8, !8, i64 112, i64 2, !26, i64 114, i64 2, !26, i64 120, i64 8, !27, i64 120, i64 2, !26, i64 120, i64 4, !29, i64 120, i64 8, !27, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 120, i64 8, !8, i64 80, i64 2, !26, i64 82, i64 2, !26, i64 88, i64 8, !27, i64 88, i64 2, !26, i64 88, i64 4, !29, i64 88, i64 8, !27, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8, i64 88, i64 8, !8}
!52 = !{!53, !22, i64 0}
!53 = !{!"dict_s", !20, i64 0, !20, i64 16, !20, i64 32, !20, i64 48}
!54 = distinct !{!54, !34}
!55 = distinct !{!55, !34}
!56 = !{!39, !14, i64 28}
!57 = !{!39, !9, i64 32}
!58 = !{!59, !9, i64 0}
!59 = !{!"cached_fm_pair_s", !9, i64 0, !60, i64 8, !14, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !14, i64 44, !14, i64 48, !9, i64 56, !9, i64 64, !14, i64 72}
!60 = !{!"gs_uid_s", !28, i64 0, !9, i64 8}
!61 = !{!59, !28, i64 8}
!62 = !{!59, !9, i64 16}
!63 = !{!59, !9, i64 56}
!64 = distinct !{!64, !34}
!65 = !{!66, !28, i64 32}
!66 = !{!"cached_char_s", !67, i64 0, !22, i64 8, !22, i64 10, !22, i64 12, !22, i64 14, !28, i64 16, !9, i64 24, !28, i64 32, !6, i64 40, !9, i64 48, !14, i64 56, !14, i64 60, !28, i64 64, !68, i64 72, !68, i64 88}
!67 = !{!"gx_cached_bits_head_s", !14, i64 0, !14, i64 4}
!68 = !{!"gs_fixed_point_s", !28, i64 0, !28, i64 8}
!69 = !{!11, !14, i64 72}
