; ModuleID = 'gsfont.c'
source_filename = "gsfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_dir_s = type { ptr, ptr, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32 }
%struct.fm_pair_cache_s = type { i32, i32, ptr, i32 }
%struct.char_cache_s = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.gs_font_base_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, ptr, i64, i8, ptr, i32, i32, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.cached_fm_pair_s = type { ptr, %struct.gs_uid_s, i32, float, float, float, float, i32, i32, ptr, ptr, i32 }

@.str = private unnamed_addr constant [8 x i8] c"gs_font\00", align 1
@st_gs_font = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 280, ptr @.str, ptr null, ptr null, ptr @font_enum_ptrs, ptr @font_reloc_ptrs, ptr @gs_font_finalize }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"gs_font_base\00", align 1
@st_gs_font_base = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 336, ptr @.str.1, ptr null, ptr null, ptr @font_base_enum_ptrs, ptr @font_base_reloc_ptrs, ptr @gs_font_finalize }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"gs_font *[]\00", align 1
@st_gs_font_ptr_element = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 8, ptr @.str.2, ptr null, ptr null, ptr @font_ptr_element_enum_ptrs, ptr @font_ptr_element_reloc_ptrs, ptr null }, align 8
@st_font_dir = internal constant %struct.gs_memory_struct_type_s { i32 136, ptr @.str.10, ptr null, ptr null, ptr @font_dir_enum_ptrs, ptr @font_dir_reloc_ptrs, ptr null }, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"font_dir_alloc(dir)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gs_makefont\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"gs_makefont(discarding)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"gs_base_make_font(XUID)\00", align 1
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"gsfont.c\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"purged font 0x%lx not found\0A\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"gs_font_dir\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @font_enum_ptrs(ptr noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %26 [
    i32 0, label %5
    i32 1, label %9
    i32 2, label %15
    i32 3, label %17
    i32 4, label %19
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %24, label %21

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 1
  br label %21

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  br label %21

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  br label %21

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 5
  br label %21

21:                                               ; preds = %5, %15, %17, %19, %13
  %22 = phi ptr [ %14, %13 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %0, %5 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  br label %24

24:                                               ; preds = %21, %9, %5
  %25 = phi ptr [ null, %5 ], [ null, %9 ], [ %23, %21 ]
  store ptr %25, ptr %3, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %24 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define internal void @font_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #11
  store ptr %5, ptr %0, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #11
  store ptr %8, ptr %6, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #11
  store ptr %11, ptr %9, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %13, ptr noundef %2) #11
  store ptr %14, ptr %12, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %16, ptr noundef %2) #11
  store ptr %17, ptr %15, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gs_font_finalize(ptr noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = icmp ne ptr %2, null
  %14 = icmp ne ptr %4, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gs_font_dir_s, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.gs_font_dir_s, ptr %6, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !25
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 8, !tbaa !25
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.gs_font_dir_s, ptr %6, i64 0, i32 1
  br label %26

26:                                               ; preds = %8, %1, %24
  %27 = phi ptr [ %25, %24 ], [ null, %1 ], [ %6, %8 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gs_font_s, ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store ptr %4, ptr %30, align 8, !tbaa !18
  br label %34

34:                                               ; preds = %33, %29, %26
  %35 = icmp eq ptr %4, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %4, align 8, !tbaa !17
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %44, label %46

39:                                               ; preds = %34
  %40 = icmp eq ptr %27, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %27, align 8, !tbaa !16
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %4, %36 ], [ %27, %41 ]
  store ptr %2, ptr %45, align 8, !tbaa !16
  br label %46

46:                                               ; preds = %44, %39, %41, %36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @font_base_enum_ptrs(ptr noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %28 [
    i32 0, label %21
    i32 1, label %5
    i32 2, label %9
    i32 3, label %15
    i32 4, label %17
    i32 5, label %19
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %26, label %23

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 1
  br label %23

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  br label %23

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  br label %23

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 5
  br label %23

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.gs_font_base_s, ptr %0, i64 0, i32 19, i32 1
  br label %23

23:                                               ; preds = %5, %19, %17, %15, %21, %13
  %24 = phi ptr [ %14, %13 ], [ %22, %21 ], [ %16, %15 ], [ %18, %17 ], [ %20, %19 ], [ %0, %5 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %23, %9, %5
  %27 = phi ptr [ null, %5 ], [ null, %9 ], [ %25, %23 ]
  store ptr %27, ptr %3, align 8, !tbaa !16
  br label %28

28:                                               ; preds = %26, %4
  %29 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %26 ]
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define internal void @font_base_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #11
  store ptr %5, ptr %0, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #11
  store ptr %8, ptr %6, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #11
  store ptr %11, ptr %9, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %13, ptr noundef %2) #11
  store ptr %14, ptr %12, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %16, ptr noundef %2) #11
  store ptr %17, ptr %15, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.gs_font_base_s, ptr %0, i64 0, i32 19, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !26
  %20 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %19, ptr noundef %2) #11
  store ptr %20, ptr %18, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @font_ptr_element_enum_ptrs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ugt i32 %1, 7
  %6 = lshr i32 %1, 3
  %7 = icmp ugt i32 %6, %2
  %8 = and i1 %5, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = shl nuw i32 %2, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  store ptr %13, ptr %3, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @font_ptr_element_reloc_ptrs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp ult i32 %1, 8
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %1, 3
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %12, %7 ], [ %6, %5 ]
  %9 = phi ptr [ %13, %7 ], [ %0, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #11
  store ptr %11, ptr %9, align 8, !tbaa !16
  %12 = add nsw i32 %8, -1
  %13 = getelementptr inbounds i8, ptr %9, i64 8
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %7, !llvm.loop !33

15:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_font_dir_alloc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull @st_font_dir, ptr noundef nonnull @.str.3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @gx_char_cache_alloc(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 500000, i32 noundef 200, i32 noundef 5000, i32 noundef 2500) #11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void %11(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.3) #11
  br label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gs_font_dir_s, ptr %4, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  store i32 50, ptr %13, align 4, !tbaa !39
  br label %14

14:                                               ; preds = %1, %9, %12
  %15 = phi ptr [ null, %9 ], [ %4, %12 ], [ null, %1 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8, !tbaa !35
  %19 = tail call ptr %18(ptr noundef %0, ptr noundef nonnull @st_font_dir, ptr noundef nonnull @.str.3) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @gx_char_cache_alloc(ptr noundef %0, ptr noundef nonnull %19, i32 noundef 25000, i32 noundef 40, i32 noundef 500, i32 noundef 100) #11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  tail call void %26(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull @.str.3) #11
  br label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gs_font_dir_s, ptr %19, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %19, i8 0, i64 20, i1 false)
  store i32 20, ptr %28, align 4, !tbaa !39
  br label %29

29:                                               ; preds = %27, %24, %17, %14
  %30 = phi ptr [ %15, %14 ], [ null, %24 ], [ %19, %27 ], [ null, %17 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gs_font_dir_s, ptr %30, i64 0, i32 5, i32 12
  store ptr @cc_no_mark_glyph, ptr %33, align 8, !tbaa !40
  %34 = getelementptr inbounds %struct.gs_font_dir_s, ptr %30, i64 0, i32 5, i32 13
  store ptr null, ptr %34, align 8, !tbaa !41
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi ptr [ %30, %32 ], [ null, %29 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_font_dir_alloc_limits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = tail call ptr %8(ptr noundef %0, ptr noundef nonnull @st_font_dir, ptr noundef nonnull @.str.3) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @gx_char_cache_alloc(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  tail call void %16(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull @.str.3) #11
  br label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.gs_font_dir_s, ptr %9, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  store i32 %1, ptr %18, align 4, !tbaa !39
  br label %19

19:                                               ; preds = %6, %17, %14
  %20 = phi ptr [ null, %14 ], [ %9, %17 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @cc_no_mark_glyph(i64 %0, ptr nocapture readnone %1) #4 {
  ret i32 0
}

declare i32 @gx_char_cache_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_definefont(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 3
  store ptr %0, ptr %3, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 4
  store ptr %1, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 15, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !5
  br label %17

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !43
  store ptr %11, ptr %1, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gs_font_s, ptr %11, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !18
  br label %15

15:                                               ; preds = %13, %10
  %16 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !18
  store ptr %1, ptr %0, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %7, %9 ], [ 0, %15 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gs_no_define_font(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_scalefont(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.gs_matrix_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = call i32 @gs_make_scaling(double noundef %2, double noundef %2, ptr noundef nonnull %5) #11
  %7 = call i32 @gs_makefont(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3), !range !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %7
}

declare i32 @gs_make_scaling(double noundef, double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_makefont(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.gs_matrix_s, align 4
  %6 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %10 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 6
  %11 = call i32 @gs_matrix_multiply(ptr noundef nonnull %10, ptr noundef %2, ptr noundef nonnull %5) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %140, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %79, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gs_font_base_s, ptr %1, i64 0, i32 19
  %19 = load i64, ptr %18, align 8, !tbaa !47
  %20 = icmp eq i64 %19, 16777216
  br i1 %20, label %79, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %7, null
  br i1 %22, label %79, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 4
  %25 = getelementptr inbounds %struct.gs_matrix_s, ptr %5, i64 0, i32 1
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %5, i64 0, i32 2
  %27 = getelementptr inbounds %struct.gs_matrix_s, ptr %5, i64 0, i32 3
  %28 = getelementptr inbounds %struct.gs_matrix_s, ptr %5, i64 0, i32 4
  %29 = getelementptr inbounds %struct.gs_matrix_s, ptr %5, i64 0, i32 5
  br label %30

30:                                               ; preds = %23, %76
  %31 = phi ptr [ %7, %23 ], [ %77, %76 ]
  %32 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !46
  %34 = load i32, ptr %14, align 8, !tbaa !46
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load ptr, ptr %24, align 8, !tbaa !5
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.gs_font_base_s, ptr %31, i64 0, i32 19
  %43 = call i32 @uid_equal(ptr noundef nonnull %42, ptr noundef nonnull %18) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %76, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 6
  %47 = load float, ptr %46, align 8, !tbaa !48
  %48 = load float, ptr %5, align 4, !tbaa !49
  %49 = fcmp oeq float %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 6, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !50
  %53 = load float, ptr %25, align 4, !tbaa !51
  %54 = fcmp oeq float %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 6, i32 2
  %57 = load float, ptr %56, align 8, !tbaa !52
  %58 = load float, ptr %26, align 4, !tbaa !53
  %59 = fcmp oeq float %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 6, i32 3
  %62 = load float, ptr %61, align 4, !tbaa !54
  %63 = load float, ptr %27, align 4, !tbaa !55
  %64 = fcmp oeq float %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 6, i32 4
  %67 = load float, ptr %66, align 8, !tbaa !56
  %68 = load float, ptr %28, align 4, !tbaa !57
  %69 = fcmp oeq float %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 6, i32 5
  %72 = load float, ptr %71, align 4, !tbaa !58
  %73 = load float, ptr %29, align 4, !tbaa !59
  %74 = fcmp oeq float %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store ptr %31, ptr %3, align 8, !tbaa !16
  br label %140

76:                                               ; preds = %30, %36, %41, %45, %50, %55, %60, %65, %70
  %77 = load ptr, ptr %31, align 8, !tbaa !17
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %30, !llvm.loop !60

79:                                               ; preds = %76, %21, %13, %17
  %80 = phi ptr [ null, %17 ], [ null, %13 ], [ null, %21 ], [ %31, %76 ]
  %81 = phi i1 [ true, %17 ], [ true, %13 ], [ false, %21 ], [ false, %76 ]
  %82 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %9, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !35
  %84 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %9, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = call ptr %85(ptr noundef %9, ptr noundef %1) #11
  %87 = call ptr %83(ptr noundef %9, ptr noundef %86, ptr noundef nonnull @.str.4) #11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %140, label %89

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %9, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !62
  %92 = call i32 %91(ptr noundef %9, ptr noundef %1) #11
  %93 = zext i32 %92 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %87, ptr align 8 %1, i64 %93, i1 false)
  %94 = getelementptr inbounds %struct.gs_font_s, ptr %87, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !63
  %95 = getelementptr inbounds %struct.gs_font_s, ptr %87, i64 0, i32 5
  store ptr null, ptr %95, align 8, !tbaa !20
  %96 = getelementptr inbounds %struct.gs_font_s, ptr %87, i64 0, i32 3
  store ptr %0, ptr %96, align 8, !tbaa !19
  %97 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.gs_font_s, ptr %87, i64 0, i32 4
  store ptr %98, ptr %99, align 8, !tbaa !5
  store ptr %87, ptr %3, align 8, !tbaa !16
  %100 = getelementptr inbounds %struct.gs_font_s, ptr %87, i64 0, i32 15, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !65
  %102 = call i32 %101(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #11
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %140, label %104

104:                                              ; preds = %89
  br i1 %81, label %139, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !25
  %108 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !39
  %110 = icmp uge i32 %107, %109
  %111 = icmp ne ptr %80, null
  %112 = and i1 %111, %110
  br i1 %112, label %113, label %130

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.gs_font_s, ptr %80, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !18
  %116 = icmp eq ptr %115, null
  %117 = select i1 %116, ptr %6, ptr %115
  store ptr null, ptr %117, align 8, !tbaa !16
  %118 = add i32 %107, -1
  store i32 %118, ptr %106, align 8, !tbaa !25
  store ptr null, ptr %114, align 8, !tbaa !18
  %119 = getelementptr inbounds %struct.gs_font_s, ptr %80, i64 0, i32 7
  %120 = load i32, ptr %119, align 8, !tbaa !46
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.gs_font_s, ptr %80, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !45
  %125 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %124, i64 0, i32 11
  %126 = load ptr, ptr %125, align 8, !tbaa !38
  %127 = getelementptr inbounds %struct.gs_font_base_s, ptr %80, i64 0, i32 19
  %128 = getelementptr inbounds %struct.gs_font_base_s, ptr %80, i64 0, i32 19, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !26
  call void %126(ptr noundef %124, ptr noundef %129, ptr noundef nonnull @.str.5) #11
  store i64 16777216, ptr %127, align 8, !tbaa !47
  store ptr null, ptr %128, align 8, !tbaa !26
  br label %130

130:                                              ; preds = %113, %122, %105
  %131 = load i32, ptr %106, align 8, !tbaa !25
  %132 = add i32 %131, 1
  store i32 %132, ptr %106, align 8, !tbaa !25
  %133 = load ptr, ptr %6, align 8, !tbaa !21
  store ptr %133, ptr %87, align 8, !tbaa !17
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.gs_font_s, ptr %133, i64 0, i32 1
  store ptr %87, ptr %136, align 8, !tbaa !18
  br label %137

137:                                              ; preds = %135, %130
  %138 = getelementptr inbounds %struct.gs_font_s, ptr %87, i64 0, i32 1
  store ptr null, ptr %138, align 8, !tbaa !18
  store ptr %87, ptr %6, align 8, !tbaa !21
  br label %140

139:                                              ; preds = %104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %87, i8 0, i64 16, i1 false)
  br label %140

140:                                              ; preds = %139, %137, %89, %79, %4, %75
  %141 = phi i32 [ 0, %75 ], [ %11, %4 ], [ -25, %79 ], [ %102, %89 ], [ 1, %137 ], [ 1, %139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %141
}

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @uid_equal(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gs_no_make_font(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_base_make_font(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr %3, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.gs_font_base_s, ptr %5, i64 0, i32 19
  %7 = load i64, ptr %6, align 8, !tbaa !47
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = trunc i64 %7 to i32
  %11 = sub i32 0, %10
  %12 = getelementptr inbounds %struct.gs_font_base_s, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = tail call ptr %15(ptr noundef %13, i32 noundef %11, i32 noundef 8, ptr noundef nonnull @.str.6) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %3, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.gs_font_base_s, ptr %19, i64 0, i32 19, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  %22 = zext i32 %11 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %16, ptr align 8 %21, i64 %23, i1 false)
  %24 = load ptr, ptr %3, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.gs_font_base_s, ptr %24, i64 0, i32 19, i32 1
  store ptr %16, ptr %25, align 8, !tbaa !26
  br label %26

26:                                               ; preds = %4, %18, %9
  %27 = phi i32 [ -25, %9 ], [ 0, %18 ], [ 0, %4 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setfont(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 36
  store ptr %1, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 35
  store ptr %1, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 38
  store i32 0, ptr %5, align 8, !tbaa !77
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_currentfont(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 35
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_rootfont(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 36
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_cachestatus(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !78
  store i32 %4, ptr %1, align 4, !tbaa !79
  %5 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !80
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %6, ptr %7, align 4, !tbaa !79
  %8 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !81
  %10 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %9, ptr %10, align 4, !tbaa !79
  %11 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !82
  %13 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %12, ptr %13, align 4, !tbaa !79
  %14 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !83
  %16 = getelementptr inbounds i32, ptr %1, i64 4
  store i32 %15, ptr %16, align 4, !tbaa !79
  %17 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !84
  %19 = getelementptr inbounds i32, ptr %1, i64 5
  store i32 %18, ptr %19, align 4, !tbaa !79
  %20 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 11
  %21 = load i32, ptr %20, align 4, !tbaa !85
  %22 = getelementptr inbounds i32, ptr %1, i64 6
  store i32 %21, ptr %22, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setcachesize(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 7
  store i32 %1, ptr %3, align 4, !tbaa !80
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setcachelower(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 10
  store i32 %1, ptr %3, align 8, !tbaa !86
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setcacheupper(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 11
  store i32 %1, ptr %3, align 4, !tbaa !85
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentcachesize(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !80
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentcachelower(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !86
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentcacheupper(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !85
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_purge_font(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = load ptr, ptr %0, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gs_font_s, ptr %6, i64 0, i32 1
  store ptr %5, ptr %9, align 8, !tbaa !18
  store ptr null, ptr %0, align 8, !tbaa !17
  br label %10

10:                                               ; preds = %8, %1
  %11 = icmp eq ptr %5, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  store ptr %6, ptr %5, align 8, !tbaa !17
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %27

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 8, !tbaa !43
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store ptr %6, ptr %3, align 8, !tbaa !43
  br label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gs_font_dir_s, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store ptr %6, ptr %18, align 8, !tbaa !21
  br label %27

22:                                               ; preds = %17
  %23 = load ptr, ptr @gs_stderr, align 8, !tbaa !16
  tail call void @lprintf_file_and_line(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef 502) #11
  %24 = load ptr, ptr @gs_stderr, align 8, !tbaa !16
  %25 = ptrtoint ptr %0 to i64
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.8, i64 noundef %25)
  br label %27

27:                                               ; preds = %16, %22, %21, %12
  %28 = getelementptr inbounds %struct.gs_font_dir_s, ptr %3, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %27, %37
  %32 = phi ptr [ %39, %37 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.gs_font_s, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @gs_purge_font(ptr noundef nonnull %32)
  br label %37

37:                                               ; preds = %31, %36
  %38 = phi ptr [ %28, %36 ], [ %32, %31 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %31, !llvm.loop !87

41:                                               ; preds = %37, %27
  tail call void @gs_purge_font_from_char_caches(ptr noundef %3, ptr noundef nonnull %0) #11
  ret void
}

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare void @gs_purge_font_from_char_caches(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef ptr @font_dir_enum_ptrs(ptr nocapture noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  switch i32 %2, label %5 [
    i32 0, label %59
    i32 1, label %61
    i32 2, label %63
    i32 3, label %65
  ]

5:                                                ; preds = %4
  %6 = add i32 %2, -4
  %7 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !88
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !89
  %13 = add i32 %12, 5
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !90
  %18 = add i32 %17, 1
  br label %19

19:                                               ; preds = %10, %5, %15
  %20 = phi i32 [ 1, %15 ], [ 1, %5 ], [ %6, %10 ]
  %21 = phi i32 [ %18, %15 ], [ 0, %5 ], [ 0, %10 ]
  %22 = icmp ugt i32 %21, %8
  br i1 %22, label %70, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %25 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 12
  %26 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 13
  %27 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 7
  br label %32

29:                                               ; preds = %56
  %30 = add i32 %33, 1
  %31 = icmp ugt i32 %30, %8
  br i1 %31, label %70, label %32, !llvm.loop !91

32:                                               ; preds = %23, %29
  %33 = phi i32 [ %21, %23 ], [ %30, %29 ]
  %34 = phi i32 [ %20, %23 ], [ %57, %29 ]
  %35 = load ptr, ptr %24, align 8, !tbaa !92
  %36 = zext i32 %33 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %32
  %41 = add i32 %34, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load ptr, ptr %25, align 8, !tbaa !40
  %45 = getelementptr inbounds %struct.cached_char_s, ptr %38, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !93
  %47 = load ptr, ptr %26, align 8, !tbaa !41
  %48 = tail call i32 %44(i64 noundef %46, ptr noundef %47) #11
  store i32 %6, ptr %27, align 8, !tbaa !89
  store i32 %33, ptr %28, align 4, !tbaa !90
  %49 = getelementptr inbounds %struct.cached_char_s, ptr %38, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !96
  %51 = getelementptr inbounds %struct.cached_char_s, ptr %38, i64 0, i32 11
  %52 = load i32, ptr %51, align 4, !tbaa !97
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %50, i64 %54
  store ptr %55, ptr %3, align 8, !tbaa !16
  br label %56

56:                                               ; preds = %32, %40, %43
  %57 = phi i32 [ 0, %43 ], [ %41, %40 ], [ %34, %32 ]
  %58 = phi i1 [ false, %43 ], [ true, %40 ], [ true, %32 ]
  br i1 %58, label %29, label %70

59:                                               ; preds = %4
  %60 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 1
  br label %67

61:                                               ; preds = %4
  %62 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 2
  br label %67

63:                                               ; preds = %4
  %64 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  br label %67

65:                                               ; preds = %4
  %66 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 13
  br label %67

67:                                               ; preds = %65, %63, %61, %59
  %68 = phi ptr [ %60, %59 ], [ %62, %61 ], [ %64, %63 ], [ %66, %65 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  store ptr %69, ptr %3, align 8, !tbaa !16
  br label %70

70:                                               ; preds = %29, %56, %67, %19
  %71 = phi ptr [ null, %19 ], [ @ptr_struct_procs, %67 ], [ @ptr_struct_procs, %56 ], [ null, %29 ]
  ret ptr %71
}

; Function Attrs: nounwind uwtable
define internal void @font_dir_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !88
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %28
  %11 = phi i64 [ %9, %7 ], [ %29, %28 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !92
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.cached_char_s, ptr %14, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.cached_char_s, ptr %14, i64 0, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !97
  %21 = zext i32 %20 to i64
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %18, i64 %22
  %24 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %23, ptr noundef %2) #11
  %25 = load i32, ptr %19, align 4, !tbaa !97
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %24, i64 %26
  store ptr %27, ptr %17, align 8, !tbaa !96
  br label %28

28:                                               ; preds = %16, %10
  %29 = add nsw i64 %11, -1
  %30 = icmp sgt i64 %11, 0
  br i1 %30, label %10, label %31, !llvm.loop !98

31:                                               ; preds = %28, %3
  %32 = load ptr, ptr %0, align 8, !tbaa !43
  %33 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %32, ptr noundef %2) #11
  store ptr %33, ptr %0, align 8, !tbaa !43
  %34 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %35, ptr noundef %2) #11
  store ptr %36, ptr %34, align 8, !tbaa !21
  %37 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !99
  %39 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %38, ptr noundef %2) #11
  store ptr %39, ptr %37, align 8, !tbaa !99
  %40 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %41, ptr noundef %2) #11
  store ptr %42, ptr %40, align 8, !tbaa !92
  %43 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %44, ptr noundef %2) #11
  store ptr %45, ptr %43, align 8, !tbaa !41
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 32}
!6 = !{!"gs_font_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !11, i64 100, !13, i64 104, !15, i64 176, !15, i64 228}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!11 = !{!"float", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"gs_font_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !14, i64 32, !7, i64 48, !7, i64 56, !7, i64 64}
!14 = !{!"gx_xfont_callbacks_s", !7, i64 0, !7, i64 8}
!15 = !{!"gs_font_name_s", !8, i64 0, !12, i64 48}
!16 = !{!7, !7, i64 0}
!17 = !{!6, !7, i64 0}
!18 = !{!6, !7, i64 8}
!19 = !{!6, !7, i64 24}
!20 = !{!6, !7, i64 40}
!21 = !{!22, !7, i64 8}
!22 = !{!"gs_font_dir_s", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !23, i64 24, !24, i64 48, !12, i64 128, !12, i64 132}
!23 = !{!"fm_pair_cache_s", !12, i64 0, !12, i64 4, !7, i64 8, !12, i64 16}
!24 = !{!"char_cache_s", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !7, i64 64, !7, i64 72}
!25 = !{!22, !12, i64 16}
!26 = !{!27, !7, i64 320}
!27 = !{!"gs_font_base_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !11, i64 100, !13, i64 104, !15, i64 176, !15, i64 228, !28, i64 280, !31, i64 312, !12, i64 328, !12, i64 332}
!28 = !{!"gs_rect_s", !29, i64 0, !29, i64 16}
!29 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!30 = !{!"double", !8, i64 0}
!31 = !{!"gs_uid_s", !32, i64 0, !7, i64 8}
!32 = !{!"long", !8, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!36, !7, i64 16}
!36 = !{!"gs_memory_s", !37, i64 0}
!37 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!38 = !{!36, !7, i64 88}
!39 = !{!22, !12, i64 20}
!40 = !{!22, !7, i64 112}
!41 = !{!22, !7, i64 120}
!42 = !{!6, !7, i64 152}
!43 = !{!22, !7, i64 0}
!44 = !{i32 -2147483648, i32 2}
!45 = !{!6, !7, i64 16}
!46 = !{!6, !12, i64 72}
!47 = !{!27, !32, i64 312}
!48 = !{!6, !11, i64 48}
!49 = !{!10, !11, i64 0}
!50 = !{!6, !11, i64 52}
!51 = !{!10, !11, i64 4}
!52 = !{!6, !11, i64 56}
!53 = !{!10, !11, i64 8}
!54 = !{!6, !11, i64 60}
!55 = !{!10, !11, i64 12}
!56 = !{!6, !11, i64 64}
!57 = !{!10, !11, i64 16}
!58 = !{!6, !11, i64 68}
!59 = !{!10, !11, i64 20}
!60 = distinct !{!60, !34}
!61 = !{!36, !7, i64 80}
!62 = !{!36, !7, i64 72}
!63 = !{i64 0, i64 4, !64, i64 4, i64 4, !64, i64 8, i64 4, !64, i64 12, i64 4, !64, i64 16, i64 4, !64, i64 20, i64 4, !64}
!64 = !{!11, !11, i64 0}
!65 = !{!6, !7, i64 160}
!66 = !{!27, !7, i64 16}
!67 = !{!36, !7, i64 32}
!68 = !{!69, !7, i64 448}
!69 = !{!"gs_state_s", !7, i64 0, !70, i64 8, !72, i64 80, !12, i64 128, !73, i64 132, !12, i64 136, !11, i64 140, !74, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !10, i64 336, !12, i64 360, !10, i64 364, !12, i64 388, !7, i64 392, !7, i64 400, !12, i64 408, !12, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !72, i64 456, !12, i64 504, !8, i64 508, !12, i64 512, !7, i64 520, !12, i64 528, !7, i64 536, !7, i64 544, !75, i64 552}
!70 = !{!"gx_line_params_s", !11, i64 0, !12, i64 4, !12, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !71, i64 32}
!71 = !{!"gx_dash_params_s", !7, i64 0, !12, i64 8, !11, i64 12, !12, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !11, i64 32}
!72 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !32, i64 24, !32, i64 32, !12, i64 40}
!73 = !{!"short", !8, i64 0}
!74 = !{!"gs_fixed_point_s", !32, i64 0, !32, i64 8}
!75 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!76 = !{!69, !7, i64 440}
!77 = !{!69, !12, i64 504}
!78 = !{!22, !12, i64 60}
!79 = !{!12, !12, i64 0}
!80 = !{!22, !12, i64 92}
!81 = !{!22, !12, i64 24}
!82 = !{!22, !12, i64 28}
!83 = !{!22, !12, i64 64}
!84 = !{!22, !12, i64 96}
!85 = !{!22, !12, i64 108}
!86 = !{!22, !12, i64 104}
!87 = distinct !{!87, !34}
!88 = !{!22, !12, i64 88}
!89 = !{!22, !12, i64 128}
!90 = !{!22, !12, i64 132}
!91 = distinct !{!91, !34}
!92 = !{!22, !7, i64 80}
!93 = !{!94, !32, i64 32}
!94 = !{!"cached_char_s", !95, i64 0, !73, i64 8, !73, i64 10, !73, i64 12, !73, i64 14, !32, i64 16, !7, i64 24, !32, i64 32, !8, i64 40, !7, i64 48, !12, i64 56, !12, i64 60, !32, i64 64, !74, i64 72, !74, i64 88}
!95 = !{!"gx_cached_bits_head_s", !12, i64 0, !12, i64 4}
!96 = !{!94, !7, i64 24}
!97 = !{!94, !12, i64 60}
!98 = distinct !{!98, !34}
!99 = !{!22, !7, i64 32}
