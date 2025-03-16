; ModuleID = 'gxpath.c'
source_filename = "gxpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_point_s = type { double, double }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.subpath_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.line_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.curve_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@st_path = dso_local constant %struct.gs_memory_struct_type_s { i32 128, ptr @.str, ptr null, ptr null, ptr @path_enum_ptrs, ptr @path_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"gx_path_release\00", align 1
@st_line = internal constant %struct.gs_memory_struct_type_s { i32 40, ptr @.str.10, ptr null, ptr null, ptr @line_enum_ptrs, ptr @line_reloc_ptrs, ptr null }, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"gx_path_add_line\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"gx_path_add_lines\00", align 1
@st_curve = internal constant %struct.gs_memory_struct_type_s { i32 72, ptr @.str.11, ptr null, ptr null, ptr @segment_enum_ptrs, ptr @segment_reloc_ptrs, ptr null }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"gx_path_add_curve\00", align 1
@st_line_close = internal constant %struct.gs_memory_struct_type_s { i32 48, ptr @.str.12, ptr null, ptr null, ptr @close_enum_ptrs, ptr @close_reloc_ptrs, ptr null }, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"gx_path_close_subpath\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"gx_path_pop_close_subpath\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_subpath = internal constant %struct.gs_memory_struct_type_s { i32 112, ptr @.str.8, ptr null, ptr null, ptr @subpath_enum_ptrs, ptr @subpath_reloc_ptrs, ptr null }, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"gx_path_new_subpath\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"subpath\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"close\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @path_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %14 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 2
  br label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %7, %5
  %12 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  store ptr %13, ptr %3, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @path_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #8
  store ptr %6, ptr %4, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #8
  store ptr %9, ptr %7, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #8
  store ptr %12, ptr %10, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_path_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = tail call ptr %4(ptr noundef %0, ptr noundef nonnull @st_path, ptr noundef %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  store ptr %0, ptr %5, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 11
  store i8 0, ptr %9, align 1, !tbaa !23
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 13
  store i8 0, ptr %10, align 1, !tbaa !24
  %11 = getelementptr inbounds %struct.gx_path_s, ptr %5, i64 0, i32 12
  store i8 0, ptr %11, align 2, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi ptr [ %5, %7 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_path_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #3 {
  store ptr %1, ptr %0, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  store i8 0, ptr %4, align 1, !tbaa !23
  %5 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  store i8 0, ptr %5, align 1, !tbaa !24
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  store i8 0, ptr %6, align 2, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_path_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  store i8 0, ptr %3, align 1, !tbaa !23
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  store i8 0, ptr %4, align 1, !tbaa !24
  %5 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  store i8 0, ptr %5, align 2, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_path_release(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %7 = load i8, ptr %6, align 1, !tbaa !24
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.subpath_s, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %9 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = load ptr, ptr %0, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %18, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !32
  tail call void %20(ptr noundef %18, ptr noundef nonnull %16, ptr noundef nonnull @.str.1) #8
  %21 = icmp eq ptr %17, null
  br i1 %21, label %22, label %15, !llvm.loop !33

22:                                               ; preds = %15, %9
  %23 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  br label %24

24:                                               ; preds = %5, %1, %22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_path_share(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  store i8 1, ptr %6, align 1, !tbaa !24
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_path_add_point(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !35
  %10 = icmp sgt i64 %9, %1
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !36
  %14 = icmp slt i64 %13, %1
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !37
  %18 = icmp sgt i64 %17, %2
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !38
  %22 = icmp slt i64 %21, %2
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %3
  %24 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  store i64 %1, ptr %24, align 8, !tbaa !39
  %25 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %2, ptr %25, align 8, !tbaa !40
  %26 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 10
  store i8 3, ptr %26, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  store i8 3, ptr %27, align 1, !tbaa !23
  br label %28

28:                                               ; preds = %7, %11, %15, %19, %23
  %29 = phi i32 [ 0, %23 ], [ -15, %19 ], [ -15, %15 ], [ -15, %11 ], [ -15, %7 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @gx_path_add_relative_point(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %5 = load i8, ptr %4, align 1, !tbaa !23
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 9
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = and i32 %6, 1
  %11 = or disjoint i32 %10, -14
  br label %56

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !39
  %15 = add nsw i64 %14, %1
  %16 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !40
  %18 = add nsw i64 %17, %2
  %19 = xor i64 %15, %1
  %20 = icmp slt i64 %19, 0
  %21 = xor i64 %14, %1
  %22 = icmp sgt i64 %21, -1
  %23 = and i1 %22, %20
  br i1 %23, label %51, label %24

24:                                               ; preds = %12
  %25 = xor i64 %18, %2
  %26 = icmp slt i64 %25, 0
  %27 = xor i64 %17, %2
  %28 = icmp sgt i64 %27, -1
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %51, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %32 = load i8, ptr %31, align 2, !tbaa !25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !35
  %37 = icmp slt i64 %15, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !36
  %41 = icmp sgt i64 %15, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !37
  %45 = icmp slt i64 %18, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !38
  %49 = icmp sgt i64 %18, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %30
  store i64 %15, ptr %13, align 8, !tbaa !39
  store i64 %18, ptr %16, align 8, !tbaa !40
  br label %51

51:                                               ; preds = %24, %34, %38, %42, %46, %12, %50
  %52 = phi i32 [ undef, %50 ], [ -13, %12 ], [ -15, %46 ], [ -15, %42 ], [ -15, %38 ], [ -15, %34 ], [ -13, %24 ]
  %53 = phi i1 [ true, %50 ], [ false, %12 ], [ false, %46 ], [ false, %42 ], [ false, %38 ], [ false, %34 ], [ false, %24 ]
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 10
  store i8 3, ptr %55, align 8, !tbaa !41
  store i8 3, ptr %4, align 1, !tbaa !23
  br label %56

56:                                               ; preds = %51, %54, %9
  %57 = phi i32 [ %52, %51 ], [ 0, %54 ], [ %11, %9 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.gx_path_s, align 8
  %6 = alloca %struct.gx_path_s, align 8
  %7 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %10 = load i8, ptr %9, align 2, !tbaa !25
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !35
  %15 = icmp sgt i64 %14, %1
  br i1 %15, label %119, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !36
  %19 = icmp slt i64 %18, %1
  br i1 %19, label %119, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !37
  %23 = icmp sgt i64 %22, %2
  br i1 %23, label %119, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !38
  %27 = icmp slt i64 %26, %2
  br i1 %27, label %119, label %28

28:                                               ; preds = %24, %4
  %29 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %30 = load i8, ptr %29, align 1, !tbaa !23
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %28
  %35 = and i32 %31, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %83, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %39 = load i8, ptr %38, align 1, !tbaa !24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  %42 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %6, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %38, align 1, !tbaa !24
  %45 = load ptr, ptr %7, align 8, !tbaa !18
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi ptr [ %45, %44 ], [ null, %41 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %78, label %49

49:                                               ; preds = %46, %37
  %50 = phi ptr [ %47, %46 ], [ %8, %37 ]
  %51 = load ptr, ptr %0, align 8, !tbaa !22
  %52 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !19
  %54 = call ptr %53(ptr noundef %51, ptr noundef nonnull @st_subpath, ptr noundef nonnull @.str.7) #8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.subpath_s, ptr %54, i64 0, i32 2
  store i16 0, ptr %57, align 8, !tbaa !47
  %58 = getelementptr inbounds %struct.subpath_s, ptr %54, i64 0, i32 3
  store i16 0, ptr %58, align 2, !tbaa !48
  %59 = getelementptr inbounds %struct.subpath_s, ptr %54, i64 0, i32 1
  store ptr null, ptr %59, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct.subpath_s, ptr %54, i64 0, i32 5
  store ptr %54, ptr %60, align 8, !tbaa !26
  %61 = getelementptr inbounds %struct.subpath_s, ptr %54, i64 0, i32 6
  store i32 0, ptr %61, align 8, !tbaa !50
  %62 = getelementptr inbounds %struct.subpath_s, ptr %54, i64 0, i32 8
  store i8 0, ptr %62, align 8, !tbaa !51
  %63 = getelementptr inbounds %struct.subpath_s, ptr %54, i64 0, i32 4
  %64 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !tbaa.struct !52
  %65 = icmp eq ptr %50, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  br label %72

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.subpath_s, ptr %50, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !26
  %71 = getelementptr inbounds %struct.segment_s, ptr %70, i64 0, i32 1
  br label %72

72:                                               ; preds = %68, %66
  %73 = phi ptr [ %71, %68 ], [ %67, %66 ]
  %74 = phi ptr [ %70, %68 ], [ null, %66 ]
  store ptr %54, ptr %73, align 8, !tbaa !5
  store ptr %74, ptr %54, align 8, !tbaa !53
  store ptr %54, ptr %7, align 8, !tbaa !18
  %75 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !54
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %75, align 8, !tbaa !54
  br label %78

78:                                               ; preds = %46, %49, %72
  %79 = phi i1 [ false, %72 ], [ true, %46 ], [ true, %49 ]
  %80 = phi i32 [ 0, %72 ], [ -25, %46 ], [ -25, %49 ]
  br i1 %79, label %83, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %7, align 8, !tbaa !18
  br label %83

83:                                               ; preds = %78, %34, %81
  %84 = phi i1 [ true, %81 ], [ false, %34 ], [ false, %78 ]
  %85 = phi ptr [ %82, %81 ], [ %8, %34 ], [ %8, %78 ]
  %86 = phi i32 [ undef, %81 ], [ -14, %34 ], [ %80, %78 ]
  br i1 %84, label %87, label %119

87:                                               ; preds = %83, %28
  %88 = phi ptr [ %8, %28 ], [ %85, %83 ]
  %89 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %90 = load i8, ptr %89, align 1, !tbaa !24
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #8
  %93 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %89, align 1, !tbaa !24
  %96 = load ptr, ptr %7, align 8, !tbaa !18
  br label %97

97:                                               ; preds = %92, %95
  %98 = phi ptr [ %96, %95 ], [ null, %92 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %119, label %100

100:                                              ; preds = %97, %87
  %101 = phi ptr [ %98, %97 ], [ %88, %87 ]
  %102 = load ptr, ptr %0, align 8, !tbaa !22
  %103 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !19
  %105 = call ptr %104(ptr noundef %102, ptr noundef nonnull @st_line, ptr noundef nonnull @.str.2) #8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %119, label %107

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.line_segment, ptr %105, i64 0, i32 2
  store i16 1, ptr %108, align 8, !tbaa !55
  %109 = trunc i32 %3 to i16
  %110 = getelementptr inbounds %struct.line_segment, ptr %105, i64 0, i32 3
  store i16 %109, ptr %110, align 2, !tbaa !57
  %111 = getelementptr inbounds %struct.line_segment, ptr %105, i64 0, i32 1
  store ptr null, ptr %111, align 8, !tbaa !58
  %112 = getelementptr inbounds %struct.subpath_s, ptr %101, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !26
  %114 = getelementptr inbounds %struct.segment_s, ptr %113, i64 0, i32 1
  store ptr %105, ptr %114, align 8, !tbaa !59
  store ptr %113, ptr %105, align 8, !tbaa !60
  store ptr %105, ptr %112, align 8, !tbaa !26
  %115 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  store i64 %1, ptr %115, align 8, !tbaa !39
  %116 = getelementptr inbounds %struct.line_segment, ptr %105, i64 0, i32 4
  store i64 %1, ptr %116, align 8, !tbaa !61
  %117 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %2, ptr %117, align 8, !tbaa !40
  %118 = getelementptr inbounds %struct.line_segment, ptr %105, i64 0, i32 4, i32 1
  store i64 %2, ptr %118, align 8, !tbaa !62
  store i8 7, ptr %29, align 1, !tbaa !23
  br label %119

119:                                              ; preds = %100, %97, %12, %16, %20, %24, %83, %107
  %120 = phi i32 [ 0, %107 ], [ %86, %83 ], [ -15, %24 ], [ -15, %20 ], [ -15, %16 ], [ -15, %12 ], [ -25, %97 ], [ -25, %100 ]
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_add_lines_notes(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.gx_path_s, align 8
  %6 = alloca %struct.gx_path_s, align 8
  %7 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %8 = icmp slt i32 %2, 1
  br i1 %8, label %147, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %12 = load i8, ptr %11, align 1, !tbaa !24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #8
  %15 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %6, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %11, align 1, !tbaa !24
  %18 = load ptr, ptr %7, align 8, !tbaa !18
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %147, label %22

22:                                               ; preds = %19, %9
  %23 = phi ptr [ %20, %19 ], [ %10, %9 ]
  %24 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %25 = load i8, ptr %24, align 1, !tbaa !23
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %22
  %30 = and i32 %26, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %78, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %7, align 8, !tbaa !18
  %34 = load i8, ptr %11, align 1, !tbaa !24
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #8
  %37 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %11, align 1, !tbaa !24
  %40 = load ptr, ptr %7, align 8, !tbaa !18
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi ptr [ %40, %39 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %73, label %44

44:                                               ; preds = %41, %32
  %45 = phi ptr [ %42, %41 ], [ %33, %32 ]
  %46 = load ptr, ptr %0, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = call ptr %48(ptr noundef %46, ptr noundef nonnull @st_subpath, ptr noundef nonnull @.str.7) #8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %73, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.subpath_s, ptr %49, i64 0, i32 2
  store i16 0, ptr %52, align 8, !tbaa !47
  %53 = getelementptr inbounds %struct.subpath_s, ptr %49, i64 0, i32 3
  store i16 0, ptr %53, align 2, !tbaa !48
  %54 = getelementptr inbounds %struct.subpath_s, ptr %49, i64 0, i32 1
  store ptr null, ptr %54, align 8, !tbaa !49
  %55 = getelementptr inbounds %struct.subpath_s, ptr %49, i64 0, i32 5
  store ptr %49, ptr %55, align 8, !tbaa !26
  %56 = getelementptr inbounds %struct.subpath_s, ptr %49, i64 0, i32 6
  store i32 0, ptr %56, align 8, !tbaa !50
  %57 = getelementptr inbounds %struct.subpath_s, ptr %49, i64 0, i32 8
  store i8 0, ptr %57, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct.subpath_s, ptr %49, i64 0, i32 4
  %59 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false), !tbaa.struct !52
  %60 = icmp eq ptr %45, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  br label %67

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.subpath_s, ptr %45, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !26
  %66 = getelementptr inbounds %struct.segment_s, ptr %65, i64 0, i32 1
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi ptr [ %66, %63 ], [ %62, %61 ]
  %69 = phi ptr [ %65, %63 ], [ null, %61 ]
  store ptr %49, ptr %68, align 8, !tbaa !5
  store ptr %69, ptr %49, align 8, !tbaa !53
  store ptr %49, ptr %7, align 8, !tbaa !18
  %70 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !54
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %70, align 8, !tbaa !54
  br label %73

73:                                               ; preds = %41, %44, %67
  %74 = phi i1 [ false, %67 ], [ true, %41 ], [ true, %44 ]
  %75 = phi i32 [ 0, %67 ], [ -25, %41 ], [ -25, %44 ]
  br i1 %74, label %78, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %7, align 8, !tbaa !18
  br label %78

78:                                               ; preds = %73, %29, %76
  %79 = phi i1 [ true, %76 ], [ false, %29 ], [ false, %73 ]
  %80 = phi ptr [ %77, %76 ], [ %23, %29 ], [ %23, %73 ]
  %81 = phi i32 [ undef, %76 ], [ -14, %29 ], [ %75, %73 ]
  br i1 %79, label %82, label %147

82:                                               ; preds = %78, %22
  %83 = phi ptr [ %23, %22 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.subpath_s, ptr %83, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !26
  %86 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %87 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %88 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %89 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %90 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %91 = trunc i32 %3 to i16
  %92 = call i32 @llvm.smax.i32(i32 %2, i32 1)
  %93 = zext nneg i32 %92 to i64
  br label %94

94:                                               ; preds = %129, %82
  %95 = phi i64 [ 0, %82 ], [ %134, %129 ]
  %96 = phi ptr [ %85, %82 ], [ %133, %129 ]
  %97 = phi ptr [ null, %82 ], [ %132, %129 ]
  %98 = phi i32 [ 0, %82 ], [ %130, %129 ]
  %99 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 %95
  %100 = load i64, ptr %99, align 8, !tbaa !63
  %101 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 %95, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !64
  %103 = load i8, ptr %86, align 2, !tbaa !25
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %94
  %106 = load i64, ptr %87, align 8, !tbaa !35
  %107 = icmp slt i64 %100, %106
  br i1 %107, label %129, label %108

108:                                              ; preds = %105
  %109 = load i64, ptr %88, align 8, !tbaa !36
  %110 = icmp sgt i64 %100, %109
  br i1 %110, label %129, label %111

111:                                              ; preds = %108
  %112 = load i64, ptr %89, align 8, !tbaa !37
  %113 = icmp slt i64 %102, %112
  br i1 %113, label %129, label %114

114:                                              ; preds = %111
  %115 = load i64, ptr %90, align 8, !tbaa !38
  %116 = icmp sgt i64 %102, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %114, %94
  %118 = load ptr, ptr %0, align 8, !tbaa !22
  %119 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !19
  %121 = call ptr %120(ptr noundef %118, ptr noundef nonnull @st_line, ptr noundef nonnull @.str.3) #8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.line_segment, ptr %121, i64 0, i32 2
  store i16 1, ptr %124, align 8, !tbaa !55
  %125 = getelementptr inbounds %struct.line_segment, ptr %121, i64 0, i32 3
  store i16 %91, ptr %125, align 2, !tbaa !57
  %126 = getelementptr inbounds %struct.segment_s, ptr %96, i64 0, i32 1
  store ptr %121, ptr %126, align 8, !tbaa !59
  store ptr %96, ptr %121, align 8, !tbaa !60
  %127 = getelementptr inbounds %struct.line_segment, ptr %121, i64 0, i32 4
  store i64 %100, ptr %127, align 8, !tbaa !61
  %128 = getelementptr inbounds %struct.line_segment, ptr %121, i64 0, i32 4, i32 1
  store i64 %102, ptr %128, align 8, !tbaa !62
  br label %129

129:                                              ; preds = %117, %105, %108, %111, %114, %123
  %130 = phi i32 [ %98, %123 ], [ -15, %114 ], [ -15, %111 ], [ -15, %108 ], [ -15, %105 ], [ -25, %117 ]
  %131 = phi i1 [ false, %123 ], [ true, %114 ], [ true, %111 ], [ true, %108 ], [ true, %105 ], [ true, %117 ]
  %132 = phi ptr [ %121, %123 ], [ %97, %114 ], [ %97, %111 ], [ %97, %108 ], [ %97, %105 ], [ %97, %117 ]
  %133 = phi ptr [ %121, %123 ], [ %96, %114 ], [ %96, %111 ], [ %96, %108 ], [ %96, %105 ], [ %96, %117 ]
  %134 = add nuw nsw i64 %95, 1
  %135 = icmp eq i64 %134, %93
  %136 = select i1 %131, i1 true, i1 %135
  br i1 %136, label %137, label %94, !llvm.loop !65

137:                                              ; preds = %129
  %138 = icmp eq ptr %132, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.line_segment, ptr %132, i64 0, i32 4
  %141 = load i64, ptr %140, align 8, !tbaa !61
  %142 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  store i64 %141, ptr %142, align 8, !tbaa !39
  %143 = getelementptr inbounds %struct.line_segment, ptr %132, i64 0, i32 4, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !62
  %145 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %144, ptr %145, align 8, !tbaa !40
  store ptr %132, ptr %84, align 8, !tbaa !26
  %146 = getelementptr inbounds %struct.line_segment, ptr %132, i64 0, i32 1
  store ptr null, ptr %146, align 8, !tbaa !58
  store i8 7, ptr %24, align 1, !tbaa !23
  br label %147

147:                                              ; preds = %137, %139, %19, %4, %78
  %148 = phi i32 [ %81, %78 ], [ 0, %4 ], [ -25, %19 ], [ %130, %139 ], [ %130, %137 ]
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_add_rectangle(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [3 x %struct.gs_fixed_point_s], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #8
  store i64 %1, ptr %6, align 16, !tbaa !63
  %7 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %6, i64 0, i64 2
  store i64 %3, ptr %7, align 16, !tbaa !63
  %8 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %6, i64 0, i64 1
  store i64 %3, ptr %8, align 16, !tbaa !63
  %9 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %6, i64 0, i64 2, i32 1
  store i64 %2, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %6, i64 0, i64 1, i32 1
  store i64 %4, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  store i64 %4, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %13 = load i8, ptr %12, align 2, !tbaa !25
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !35
  %18 = icmp sgt i64 %17, %1
  br i1 %18, label %36, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !36
  %22 = icmp slt i64 %21, %1
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !37
  %26 = icmp sgt i64 %25, %2
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !38
  %30 = icmp slt i64 %29, %2
  br i1 %30, label %36, label %31

31:                                               ; preds = %27, %5
  %32 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  store i64 %1, ptr %32, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %2, ptr %33, align 8, !tbaa !40
  %34 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 10
  store i8 3, ptr %34, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  store i8 3, ptr %35, align 1, !tbaa !23
  br label %36

36:                                               ; preds = %15, %19, %23, %27, %31
  %37 = phi i1 [ false, %31 ], [ true, %27 ], [ true, %23 ], [ true, %19 ], [ true, %15 ]
  %38 = phi i32 [ 0, %31 ], [ -15, %27 ], [ -15, %23 ], [ -15, %19 ], [ -15, %15 ]
  br i1 %37, label %44, label %39

39:                                               ; preds = %36
  %40 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3, i32 noundef 0)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @gx_path_close_subpath_notes(ptr noundef %0, i32 noundef 0), !range !66
  br label %44

44:                                               ; preds = %42, %36, %39
  %45 = phi i32 [ %38, %36 ], [ %40, %39 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #8
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_path_close_subpath_notes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gx_path_s, align 8
  %4 = alloca %struct.gx_path_s, align 8
  %5 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %7 = load i8, ptr %6, align 1, !tbaa !23
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %97, label %11

11:                                               ; preds = %2
  %12 = and i32 %8, 247
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %17 = load i8, ptr %16, align 1, !tbaa !24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  %20 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %16, align 1, !tbaa !24
  %23 = load ptr, ptr %5, align 8, !tbaa !18
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %23, %22 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %24, %14
  %28 = phi ptr [ %25, %24 ], [ %15, %14 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = call ptr %31(ptr noundef %29, ptr noundef nonnull @st_subpath, ptr noundef nonnull @.str.7) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.subpath_s, ptr %32, i64 0, i32 2
  store i16 0, ptr %35, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.subpath_s, ptr %32, i64 0, i32 3
  store i16 0, ptr %36, align 2, !tbaa !48
  %37 = getelementptr inbounds %struct.subpath_s, ptr %32, i64 0, i32 1
  store ptr null, ptr %37, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.subpath_s, ptr %32, i64 0, i32 5
  store ptr %32, ptr %38, align 8, !tbaa !26
  %39 = getelementptr inbounds %struct.subpath_s, ptr %32, i64 0, i32 6
  store i32 0, ptr %39, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct.subpath_s, ptr %32, i64 0, i32 8
  store i8 0, ptr %40, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct.subpath_s, ptr %32, i64 0, i32 4
  %42 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false), !tbaa.struct !52
  %43 = icmp eq ptr %28, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  br label %50

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.subpath_s, ptr %28, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !26
  %49 = getelementptr inbounds %struct.segment_s, ptr %48, i64 0, i32 1
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi ptr [ %49, %46 ], [ %45, %44 ]
  %52 = phi ptr [ %48, %46 ], [ null, %44 ]
  store ptr %32, ptr %51, align 8, !tbaa !5
  store ptr %52, ptr %32, align 8, !tbaa !53
  store ptr %32, ptr %5, align 8, !tbaa !18
  %53 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !54
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !54
  br label %56

56:                                               ; preds = %24, %27, %50
  %57 = phi i1 [ false, %50 ], [ true, %24 ], [ true, %27 ]
  %58 = phi i32 [ 0, %50 ], [ -25, %24 ], [ -25, %27 ]
  br i1 %57, label %97, label %59

59:                                               ; preds = %56, %11
  %60 = load ptr, ptr %5, align 8, !tbaa !18
  %61 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %62 = load i8, ptr %61, align 1, !tbaa !24
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  %65 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %61, align 1, !tbaa !24
  %68 = load ptr, ptr %5, align 8, !tbaa !18
  br label %69

69:                                               ; preds = %64, %67
  %70 = phi ptr [ %68, %67 ], [ null, %64 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %97, label %72

72:                                               ; preds = %69, %59
  %73 = phi ptr [ %70, %69 ], [ %60, %59 ]
  %74 = load ptr, ptr %0, align 8, !tbaa !22
  %75 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !19
  %77 = call ptr %76(ptr noundef %74, ptr noundef nonnull @st_line_close, ptr noundef nonnull @.str.5) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %97, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.line_close_segment, ptr %77, i64 0, i32 2
  store i16 2, ptr %80, align 8, !tbaa !67
  %81 = trunc i32 %1 to i16
  %82 = getelementptr inbounds %struct.line_close_segment, ptr %77, i64 0, i32 3
  store i16 %81, ptr %82, align 2, !tbaa !68
  %83 = getelementptr inbounds %struct.line_close_segment, ptr %77, i64 0, i32 1
  store ptr null, ptr %83, align 8, !tbaa !69
  %84 = getelementptr inbounds %struct.subpath_s, ptr %73, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !26
  %86 = getelementptr inbounds %struct.segment_s, ptr %85, i64 0, i32 1
  store ptr %77, ptr %86, align 8, !tbaa !59
  store ptr %85, ptr %77, align 8, !tbaa !70
  store ptr %77, ptr %84, align 8, !tbaa !26
  %87 = getelementptr inbounds %struct.subpath_s, ptr %73, i64 0, i32 4
  %88 = load i64, ptr %87, align 8, !tbaa !71
  %89 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  store i64 %88, ptr %89, align 8, !tbaa !39
  %90 = getelementptr inbounds %struct.line_close_segment, ptr %77, i64 0, i32 4
  store i64 %88, ptr %90, align 8, !tbaa !72
  %91 = getelementptr inbounds %struct.subpath_s, ptr %73, i64 0, i32 4, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !73
  %93 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %92, ptr %93, align 8, !tbaa !40
  %94 = getelementptr inbounds %struct.line_close_segment, ptr %77, i64 0, i32 4, i32 1
  store i64 %92, ptr %94, align 8, !tbaa !74
  %95 = getelementptr inbounds %struct.line_close_segment, ptr %77, i64 0, i32 5
  store ptr %73, ptr %95, align 8, !tbaa !75
  %96 = getelementptr inbounds %struct.subpath_s, ptr %73, i64 0, i32 8
  store i8 1, ptr %96, align 8, !tbaa !51
  store i8 1, ptr %6, align 1, !tbaa !23
  br label %97

97:                                               ; preds = %72, %69, %56, %2, %79
  %98 = phi i32 [ 0, %79 ], [ 0, %2 ], [ %58, %56 ], [ -25, %69 ], [ -25, %72 ]
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_add_curve_notes(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
  %9 = alloca %struct.gx_path_s, align 8
  %10 = alloca %struct.gx_path_s, align 8
  %11 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %14 = load i8, ptr %13, align 2, !tbaa !25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !35
  %19 = icmp sgt i64 %18, %1
  br i1 %19, label %149, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !36
  %23 = icmp slt i64 %22, %1
  br i1 %23, label %149, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !37
  %27 = icmp sgt i64 %26, %2
  br i1 %27, label %149, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !38
  %31 = icmp slt i64 %30, %2
  br i1 %31, label %149, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i64 %18, %3
  %34 = icmp slt i64 %22, %3
  %35 = or i1 %33, %34
  %36 = icmp sgt i64 %26, %4
  %37 = or i1 %35, %36
  %38 = icmp slt i64 %30, %4
  %39 = or i1 %37, %38
  br i1 %39, label %149, label %40

40:                                               ; preds = %32
  %41 = icmp sgt i64 %18, %5
  %42 = icmp slt i64 %22, %5
  %43 = or i1 %41, %42
  %44 = icmp sgt i64 %26, %6
  %45 = or i1 %43, %44
  %46 = icmp slt i64 %30, %6
  %47 = or i1 %45, %46
  br i1 %47, label %149, label %48

48:                                               ; preds = %40, %8
  %49 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  %50 = load i8, ptr %49, align 1, !tbaa !23
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %48
  %55 = and i32 %51, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %103, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %59 = load i8, ptr %58, align 1, !tbaa !24
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #8
  %62 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %10, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %10, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %58, align 1, !tbaa !24
  %65 = load ptr, ptr %11, align 8, !tbaa !18
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi ptr [ %65, %64 ], [ null, %61 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %98, label %69

69:                                               ; preds = %66, %57
  %70 = phi ptr [ %67, %66 ], [ %12, %57 ]
  %71 = load ptr, ptr %0, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !19
  %74 = call ptr %73(ptr noundef %71, ptr noundef nonnull @st_subpath, ptr noundef nonnull @.str.7) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %98, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.subpath_s, ptr %74, i64 0, i32 2
  store i16 0, ptr %77, align 8, !tbaa !47
  %78 = getelementptr inbounds %struct.subpath_s, ptr %74, i64 0, i32 3
  store i16 0, ptr %78, align 2, !tbaa !48
  %79 = getelementptr inbounds %struct.subpath_s, ptr %74, i64 0, i32 1
  store ptr null, ptr %79, align 8, !tbaa !49
  %80 = getelementptr inbounds %struct.subpath_s, ptr %74, i64 0, i32 5
  store ptr %74, ptr %80, align 8, !tbaa !26
  %81 = getelementptr inbounds %struct.subpath_s, ptr %74, i64 0, i32 6
  store i32 0, ptr %81, align 8, !tbaa !50
  %82 = getelementptr inbounds %struct.subpath_s, ptr %74, i64 0, i32 8
  store i8 0, ptr %82, align 8, !tbaa !51
  %83 = getelementptr inbounds %struct.subpath_s, ptr %74, i64 0, i32 4
  %84 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(16) %84, i64 16, i1 false), !tbaa.struct !52
  %85 = icmp eq ptr %70, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  br label %92

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.subpath_s, ptr %70, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !26
  %91 = getelementptr inbounds %struct.segment_s, ptr %90, i64 0, i32 1
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi ptr [ %91, %88 ], [ %87, %86 ]
  %94 = phi ptr [ %90, %88 ], [ null, %86 ]
  store ptr %74, ptr %93, align 8, !tbaa !5
  store ptr %94, ptr %74, align 8, !tbaa !53
  store ptr %74, ptr %11, align 8, !tbaa !18
  %95 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !54
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !54
  br label %98

98:                                               ; preds = %66, %69, %92
  %99 = phi i1 [ false, %92 ], [ true, %66 ], [ true, %69 ]
  %100 = phi i32 [ 0, %92 ], [ -25, %66 ], [ -25, %69 ]
  br i1 %99, label %103, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %11, align 8, !tbaa !18
  br label %103

103:                                              ; preds = %98, %54, %101
  %104 = phi i1 [ true, %101 ], [ false, %54 ], [ false, %98 ]
  %105 = phi ptr [ %102, %101 ], [ %12, %54 ], [ %12, %98 ]
  %106 = phi i32 [ undef, %101 ], [ -14, %54 ], [ %100, %98 ]
  br i1 %104, label %107, label %149

107:                                              ; preds = %103, %48
  %108 = phi ptr [ %12, %48 ], [ %105, %103 ]
  %109 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %110 = load i8, ptr %109, align 1, !tbaa !24
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #8
  %113 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %9, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %9, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %109, align 1, !tbaa !24
  %116 = load ptr, ptr %11, align 8, !tbaa !18
  br label %117

117:                                              ; preds = %112, %115
  %118 = phi ptr [ %116, %115 ], [ null, %112 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %149, label %120

120:                                              ; preds = %117, %107
  %121 = phi ptr [ %118, %117 ], [ %108, %107 ]
  %122 = load ptr, ptr %0, align 8, !tbaa !22
  %123 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !19
  %125 = call ptr %124(ptr noundef %122, ptr noundef nonnull @st_curve, ptr noundef nonnull @.str.4) #8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %149, label %127

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 2
  store i16 3, ptr %128, align 8, !tbaa !76
  %129 = trunc i32 %7 to i16
  %130 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 3
  store i16 %129, ptr %130, align 2, !tbaa !78
  %131 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 1
  store ptr null, ptr %131, align 8, !tbaa !79
  %132 = getelementptr inbounds %struct.subpath_s, ptr %121, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !26
  %134 = getelementptr inbounds %struct.segment_s, ptr %133, i64 0, i32 1
  store ptr %125, ptr %134, align 8, !tbaa !59
  store ptr %133, ptr %125, align 8, !tbaa !80
  store ptr %125, ptr %132, align 8, !tbaa !26
  %135 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 5
  store i64 %1, ptr %135, align 8, !tbaa !81
  %136 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 5, i32 1
  store i64 %2, ptr %136, align 8, !tbaa !82
  %137 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 6
  store i64 %3, ptr %137, align 8, !tbaa !83
  %138 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 6, i32 1
  store i64 %4, ptr %138, align 8, !tbaa !84
  %139 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  store i64 %5, ptr %139, align 8, !tbaa !39
  %140 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 4
  store i64 %5, ptr %140, align 8, !tbaa !85
  %141 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %6, ptr %141, align 8, !tbaa !40
  %142 = getelementptr inbounds %struct.curve_segment, ptr %125, i64 0, i32 4, i32 1
  store i64 %6, ptr %142, align 8, !tbaa !86
  %143 = getelementptr inbounds %struct.subpath_s, ptr %121, i64 0, i32 6
  %144 = load i32, ptr %143, align 8, !tbaa !50
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %143, align 8, !tbaa !50
  %146 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 6
  %147 = load i32, ptr %146, align 4, !tbaa !87
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %146, align 4, !tbaa !87
  store i8 7, ptr %49, align 1, !tbaa !23
  br label %149

149:                                              ; preds = %120, %117, %40, %32, %16, %20, %24, %28, %103, %127
  %150 = phi i32 [ 0, %127 ], [ %106, %103 ], [ -15, %28 ], [ -15, %24 ], [ -15, %20 ], [ -15, %16 ], [ -15, %32 ], [ -15, %40 ], [ -25, %117 ], [ -25, %120 ]
  ret i32 %150
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_add_partial_arc_notes(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !40
  %12 = sub nsw i64 %3, %9
  %13 = sitofp i64 %12 to double
  %14 = fmul double %13, %5
  %15 = fptosi double %14 to i64
  %16 = add nsw i64 %9, %15
  %17 = sub nsw i64 %4, %11
  %18 = sitofp i64 %17 to double
  %19 = fmul double %18, %5
  %20 = fptosi double %19 to i64
  %21 = add nsw i64 %11, %20
  %22 = sub nsw i64 %3, %1
  %23 = sitofp i64 %22 to double
  %24 = fmul double %23, %5
  %25 = fptosi double %24 to i64
  %26 = add nsw i64 %25, %1
  %27 = sub nsw i64 %4, %2
  %28 = sitofp i64 %27 to double
  %29 = fmul double %28, %5
  %30 = fptosi double %29 to i64
  %31 = add nsw i64 %30, %2
  %32 = or i32 %6, 2
  %33 = tail call i32 @gx_path_add_curve_notes(ptr noundef %0, i64 noundef %16, i64 noundef %21, i64 noundef %26, i64 noundef %31, i64 noundef %1, i64 noundef %2, i32 noundef %32)
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_path_add_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gx_path_s, align 8
  %4 = alloca %struct.gx_path_s, align 8
  %5 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 13
  %6 = load i8, ptr %5, align 1, !tbaa !24
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  %9 = call i32 @gx_path_copy_reducing(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %65, label %11

11:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %5, align 1, !tbaa !24
  %12 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  br i1 %14, label %67, label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 13
  %17 = load i8, ptr %16, align 1, !tbaa !24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  %20 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 9223372036854775807, i32 noundef 1) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !tbaa.struct !42
  store i8 0, ptr %16, align 1, !tbaa !24
  %23 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = icmp eq ptr %24, null
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  br i1 %25, label %67, label %26

26:                                               ; preds = %22, %15
  %27 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %55, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !18
  %37 = getelementptr inbounds %struct.subpath_s, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !26
  %39 = getelementptr inbounds %struct.segment_s, ptr %38, i64 0, i32 1
  store ptr %28, ptr %39, align 8, !tbaa !59
  store ptr %38, ptr %28, align 8, !tbaa !53
  br label %41

40:                                               ; preds = %30
  store ptr %28, ptr %31, align 8, !tbaa !17
  br label %41

41:                                               ; preds = %40, %34
  %42 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  store ptr %43, ptr %44, align 8, !tbaa !18
  %45 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !54
  %49 = add nsw i32 %48, %46
  store i32 %49, ptr %47, align 8, !tbaa !54
  %50 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !87
  %52 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !87
  %54 = add nsw i32 %53, %51
  store i32 %54, ptr %52, align 4, !tbaa !87
  br label %55

55:                                               ; preds = %41, %26
  %56 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  %57 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false), !tbaa.struct !52
  %58 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 8
  %59 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false), !tbaa.struct !88
  %60 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 11
  %61 = load i8, ptr %60, align 1, !tbaa !23
  %62 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  store i8 %61, ptr %62, align 1, !tbaa !23
  %63 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 2
  store i8 0, ptr %60, align 1, !tbaa !23
  store i8 0, ptr %5, align 1, !tbaa !24
  %64 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 12
  store i8 0, ptr %64, align 2, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %63, i8 0, i64 32, i1 false)
  br label %67

65:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  br label %67

66:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  br label %67

67:                                               ; preds = %66, %65, %22, %11, %55
  %68 = phi i32 [ 0, %55 ], [ -25, %11 ], [ -25, %22 ], [ -25, %65 ], [ -25, %66 ]
  ret i32 %68
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_add_char_path(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [3 x %struct.gs_fixed_point_s], align 16
  %5 = alloca %struct.gs_fixed_rect_s, align 8
  %6 = alloca %struct.gs_fixed_rect_s, align 8
  switch i32 %2, label %7 [
    i32 2, label %12
    i32 1, label %12
    i32 4, label %14
    i32 3, label %62
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 11
  store i8 0, ptr %9, align 1, !tbaa !23
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 13
  store i8 0, ptr %10, align 1, !tbaa !24
  %11 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 12
  store i8 0, ptr %11, align 2, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  br label %102

12:                                               ; preds = %3, %3
  %13 = tail call i32 @gx_path_add_path(ptr noundef %0, ptr noundef %1), !range !66
  br label %102

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  %15 = call i32 @gx_path_bbox(ptr noundef %1, ptr noundef nonnull %5) #8
  %16 = load i64, ptr %5, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !90
  %19 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #8
  store i64 %16, ptr %4, align 16, !tbaa !63
  %23 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %4, i64 0, i64 2
  store i64 %20, ptr %23, align 16, !tbaa !63
  %24 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %4, i64 0, i64 1
  store i64 %20, ptr %24, align 16, !tbaa !63
  %25 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %4, i64 0, i64 2, i32 1
  store i64 %18, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], ptr %4, i64 0, i64 1, i32 1
  store i64 %22, ptr %26, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  store i64 %22, ptr %27, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %29 = load i8, ptr %28, align 2, !tbaa !25
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !35
  %34 = icmp sgt i64 %33, %16
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !36
  %38 = icmp slt i64 %37, %16
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !37
  %42 = icmp sgt i64 %41, %18
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !38
  %46 = icmp slt i64 %45, %18
  br i1 %46, label %52, label %47

47:                                               ; preds = %43, %14
  %48 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  store i64 %16, ptr %48, align 8, !tbaa !39
  %49 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %18, ptr %49, align 8, !tbaa !40
  %50 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 10
  store i8 3, ptr %50, align 8, !tbaa !41
  %51 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  store i8 3, ptr %51, align 1, !tbaa !23
  br label %52

52:                                               ; preds = %47, %43, %39, %35, %31
  %53 = phi i1 [ false, %47 ], [ true, %43 ], [ true, %39 ], [ true, %35 ], [ true, %31 ]
  %54 = phi i32 [ 0, %47 ], [ -15, %43 ], [ -15, %39 ], [ -15, %35 ], [ -15, %31 ]
  br i1 %53, label %60, label %55

55:                                               ; preds = %52
  %56 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 3, i32 noundef 0)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 @gx_path_close_subpath_notes(ptr noundef %0, i32 noundef 0), !range !66
  br label %60

60:                                               ; preds = %52, %55, %58
  %61 = phi i32 [ %54, %52 ], [ %56, %55 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  br label %102

62:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  %63 = call i32 @gx_path_bbox(ptr noundef %1, ptr noundef nonnull %6) #8
  %64 = load i64, ptr %6, align 8, !tbaa !89
  %65 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !90
  %67 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 12
  %68 = load i8, ptr %67, align 2, !tbaa !25
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !35
  %73 = icmp sgt i64 %72, %64
  br i1 %73, label %91, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !36
  %77 = icmp slt i64 %76, %64
  br i1 %77, label %91, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !37
  %81 = icmp sgt i64 %80, %66
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 1, i32 1, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !38
  %85 = icmp slt i64 %84, %66
  br i1 %85, label %91, label %86

86:                                               ; preds = %82, %62
  %87 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7
  store i64 %64, ptr %87, align 8, !tbaa !39
  %88 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 7, i32 1
  store i64 %66, ptr %88, align 8, !tbaa !40
  %89 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 10
  store i8 3, ptr %89, align 8, !tbaa !41
  %90 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 11
  store i8 3, ptr %90, align 1, !tbaa !23
  br label %91

91:                                               ; preds = %70, %74, %78, %82, %86
  %92 = phi i1 [ false, %86 ], [ true, %82 ], [ true, %78 ], [ true, %74 ], [ true, %70 ]
  %93 = phi i32 [ 0, %86 ], [ -15, %82 ], [ -15, %78 ], [ -15, %74 ], [ -15, %70 ]
  br i1 %92, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %6, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !91
  %97 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %6, i64 0, i32 1, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !92
  %99 = call i32 @gx_path_add_line_notes(ptr noundef %0, i64 noundef %96, i64 noundef %98, i32 noundef 0)
  br label %100

100:                                              ; preds = %91, %94
  %101 = phi i32 [ %99, %94 ], [ %93, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  br label %102

102:                                              ; preds = %100, %60, %12, %7
  %103 = phi i32 [ 0, %7 ], [ %101, %100 ], [ %61, %60 ], [ %13, %12 ]
  ret i32 %103
}

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_path_pop_close_notes(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.subpath_s, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.segment_s, ptr %8, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !93
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %8, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.segment_s, ptr %15, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !59
  store ptr %15, ptr %7, align 8, !tbaa !26
  %17 = load ptr, ptr %0, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %17, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  tail call void %19(ptr noundef %17, ptr noundef nonnull %8, ptr noundef nonnull @.str.6) #8
  %20 = tail call i32 @gx_path_close_subpath_notes(ptr noundef nonnull %0, i32 noundef %1), !range !66
  br label %21

21:                                               ; preds = %2, %6, %10, %14
  %22 = phi i32 [ %20, %14 ], [ -1, %10 ], [ -1, %6 ], [ -1, %2 ]
  ret i32 %22
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @subpath_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %12 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.subpath_s, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %4, %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %0, %4 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  store ptr %11, ptr %3, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @subpath_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !30
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #8
  store ptr %5, ptr %0, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #8
  store ptr %8, ptr %6, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.subpath_s, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #8
  store ptr %11, ptr %9, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @segment_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %10 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  store ptr %9, ptr %3, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %7 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @segment_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !30
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #8
  store ptr %5, ptr %0, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #8
  store ptr %8, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @line_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %10 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  store ptr %9, ptr %3, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %7 ]
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal void @line_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !30
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #8
  store ptr %5, ptr %0, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #8
  store ptr %8, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @close_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %12 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.line_close_segment, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %4, %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %0, %4 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  store ptr %11, ptr %3, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @close_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !30
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #8
  store ptr %5, ptr %0, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #8
  store ptr %8, ptr %6, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.line_close_segment, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #8
  store ptr %11, ptr %9, align 8, !tbaa !75
  ret void
}

declare i32 @gx_path_copy_reducing(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!9 = !{!10, !6, i64 40}
!10 = !{!"gx_path_s", !6, i64 0, !11, i64 8, !6, i64 40, !6, i64 48, !6, i64 56, !14, i64 64, !14, i64 68, !12, i64 72, !15, i64 88, !15, i64 104, !7, i64 120, !7, i64 121, !7, i64 122, !7, i64 123}
!11 = !{!"gs_fixed_rect_s", !12, i64 0, !12, i64 16}
!12 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!13 = !{!"long", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!"gs_point_s", !16, i64 0, !16, i64 8}
!16 = !{!"double", !7, i64 0}
!17 = !{!10, !6, i64 48}
!18 = !{!10, !6, i64 56}
!19 = !{!20, !6, i64 16}
!20 = !{!"gs_memory_s", !21, i64 0}
!21 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!22 = !{!10, !6, i64 0}
!23 = !{!10, !7, i64 121}
!24 = !{!10, !7, i64 123}
!25 = !{!10, !7, i64 122}
!26 = !{!27, !6, i64 40}
!27 = !{!"subpath_s", !6, i64 0, !6, i64 8, !28, i64 16, !28, i64 18, !12, i64 24, !6, i64 40, !14, i64 48, !29, i64 56, !7, i64 104}
!28 = !{!"short", !7, i64 0}
!29 = !{!"", !6, i64 0, !6, i64 8, !28, i64 16, !28, i64 18, !12, i64 24, !6, i64 40}
!30 = !{!31, !6, i64 0}
!31 = !{!"segment_s", !6, i64 0, !6, i64 8, !28, i64 16, !28, i64 18, !12, i64 24}
!32 = !{!20, !6, i64 88}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!10, !13, i64 8}
!36 = !{!10, !13, i64 24}
!37 = !{!10, !13, i64 16}
!38 = !{!10, !13, i64 32}
!39 = !{!10, !13, i64 72}
!40 = !{!10, !13, i64 80}
!41 = !{!10, !7, i64 120}
!42 = !{i64 0, i64 8, !5, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 4, !44, i64 68, i64 4, !44, i64 72, i64 8, !43, i64 80, i64 8, !43, i64 88, i64 8, !45, i64 96, i64 8, !45, i64 104, i64 8, !45, i64 112, i64 8, !45, i64 120, i64 1, !46, i64 121, i64 1, !46, i64 122, i64 1, !46, i64 123, i64 1, !46}
!43 = !{!13, !13, i64 0}
!44 = !{!14, !14, i64 0}
!45 = !{!16, !16, i64 0}
!46 = !{!7, !7, i64 0}
!47 = !{!27, !28, i64 16}
!48 = !{!27, !28, i64 18}
!49 = !{!27, !6, i64 8}
!50 = !{!27, !14, i64 48}
!51 = !{!27, !7, i64 104}
!52 = !{i64 0, i64 8, !43, i64 8, i64 8, !43}
!53 = !{!27, !6, i64 0}
!54 = !{!10, !14, i64 64}
!55 = !{!56, !28, i64 16}
!56 = !{!"", !6, i64 0, !6, i64 8, !28, i64 16, !28, i64 18, !12, i64 24}
!57 = !{!56, !28, i64 18}
!58 = !{!56, !6, i64 8}
!59 = !{!31, !6, i64 8}
!60 = !{!56, !6, i64 0}
!61 = !{!56, !13, i64 24}
!62 = !{!56, !13, i64 32}
!63 = !{!12, !13, i64 0}
!64 = !{!12, !13, i64 8}
!65 = distinct !{!65, !34}
!66 = !{i32 -25, i32 1}
!67 = !{!29, !28, i64 16}
!68 = !{!29, !28, i64 18}
!69 = !{!29, !6, i64 8}
!70 = !{!29, !6, i64 0}
!71 = !{!27, !13, i64 24}
!72 = !{!29, !13, i64 24}
!73 = !{!27, !13, i64 32}
!74 = !{!29, !13, i64 32}
!75 = !{!29, !6, i64 40}
!76 = !{!77, !28, i64 16}
!77 = !{!"", !6, i64 0, !6, i64 8, !28, i64 16, !28, i64 18, !12, i64 24, !12, i64 40, !12, i64 56}
!78 = !{!77, !28, i64 18}
!79 = !{!77, !6, i64 8}
!80 = !{!77, !6, i64 0}
!81 = !{!77, !13, i64 40}
!82 = !{!77, !13, i64 48}
!83 = !{!77, !13, i64 56}
!84 = !{!77, !13, i64 64}
!85 = !{!77, !13, i64 24}
!86 = !{!77, !13, i64 32}
!87 = !{!10, !14, i64 68}
!88 = !{i64 0, i64 8, !45, i64 8, i64 8, !45}
!89 = !{!11, !13, i64 0}
!90 = !{!11, !13, i64 8}
!91 = !{!11, !13, i64 16}
!92 = !{!11, !13, i64 24}
!93 = !{!31, !28, i64 16}
