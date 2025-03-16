; ModuleID = 'gdevmem.c'
source_filename = "gdevmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"gx_device_memory\00", align 1
@st_device_memory = dso_local constant %struct.gs_memory_struct_type_s { i32 632, ptr @.str, ptr null, ptr null, ptr @device_memory_enum_ptrs, ptr @device_memory_reloc_ptrs, ptr null }, align 8
@b_w_palette_string = internal constant [6 x i8] c"\FF\FF\FF\00\00\00", align 1
@mem_mono_b_w_palette = dso_local local_unnamed_addr constant %struct.gs_const_string_s { ptr @b_w_palette_string, i32 6 }, align 8
@w_b_palette_string = internal constant [6 x i8] c"\00\00\00\FF\FF\FF", align 1
@mem_mono_w_b_palette = dso_local local_unnamed_addr constant %struct.gs_const_string_s { ptr @w_b_palette_string, i32 6 }, align 8
@mem_mono_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped2_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped4_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped8_device = external constant %struct.gx_device_memory_s, align 8
@mem_true16_device = external constant %struct.gx_device_memory_s, align 8
@mem_true24_device = external constant %struct.gx_device_memory_s, align 8
@mem_true32_device = external constant %struct.gx_device_memory_s, align 8
@mem_mono_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped2_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped4_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_mapped8_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_true24_word_device = external constant %struct.gx_device_memory_s, align 8
@mem_true32_word_device = external constant %struct.gx_device_memory_s, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"mem_open\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mem_close\00", align 1
@st_device_forward = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal ptr @device_memory_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #0 {
  switch i32 %2, label %5 [
    i32 0, label %9
    i32 1, label %18
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 4), align 8, !tbaa !5
  %7 = add i32 %2, -2
  %8 = tail call ptr %6(ptr noundef %0, i32 noundef 496, i32 noundef %7, ptr noundef %3) #12
  br label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %15, %13 ], [ null, %9 ]
  store ptr %17, ptr %3, align 8, !tbaa !24
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  store ptr %19, ptr %3, align 8, !tbaa !24
  br label %20

20:                                               ; preds = %5, %16, %18
  %21 = phi ptr [ %8, %5 ], [ @ptr_string_procs, %18 ], [ @ptr_struct_procs, %16 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @device_memory_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 25
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %9, ptr noundef %2) #12
  store ptr %10, ptr %8, align 8, !tbaa !23
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !25
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %19 = sub i64 0, %13
  %20 = zext nneg i32 %15 to i64
  br label %21

21:                                               ; preds = %17, %21
  %22 = phi i64 [ 0, %17 ], [ %27, %21 ]
  %23 = load ptr, ptr %18, align 8, !tbaa !26
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds i8, ptr %25, i64 %19
  store ptr %26, ptr %24, align 8, !tbaa !24
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, %20
  br i1 %28, label %29, label %21, !llvm.loop !27

29:                                               ; preds = %21, %7
  %30 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %31 = load ptr, ptr %30, align 8, !tbaa !26
  %32 = sub i64 0, %13
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  store ptr %33, ptr %30, align 8, !tbaa !26
  br label %34

34:                                               ; preds = %29, %3
  %35 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  tail call void @gs_reloc_const_string(ptr noundef nonnull %35, ptr noundef %2) #12
  %36 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 5), align 8, !tbaa !29
  tail call void %36(ptr noundef %0, i32 noundef 496, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @gdev_mem_device_for_bits(i32 noundef %0) local_unnamed_addr #1 {
  switch i32 %0, label %8 [
    i32 1, label %9
    i32 2, label %2
    i32 4, label %3
    i32 8, label %4
    i32 16, label %5
    i32 24, label %6
    i32 32, label %7
  ]

2:                                                ; preds = %1
  br label %9

3:                                                ; preds = %1
  br label %9

4:                                                ; preds = %1
  br label %9

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  br label %9

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8, %7, %6, %5, %4, %3, %2
  %10 = phi ptr [ null, %8 ], [ @mem_true32_device, %7 ], [ @mem_true24_device, %6 ], [ @mem_true16_device, %5 ], [ @mem_mapped8_device, %4 ], [ @mem_mapped4_device, %3 ], [ @mem_mapped2_device, %2 ], [ @mem_mono_device, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @gdev_mem_word_device_for_bits(i32 noundef %0) local_unnamed_addr #1 {
  switch i32 %0, label %7 [
    i32 1, label %8
    i32 2, label %2
    i32 4, label %3
    i32 8, label %4
    i32 24, label %5
    i32 32, label %6
  ]

2:                                                ; preds = %1
  br label %8

3:                                                ; preds = %1
  br label %8

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7, %6, %5, %4, %3, %2
  %9 = phi ptr [ null, %7 ], [ @mem_true32_word_device, %6 ], [ @mem_true24_word_device, %5 ], [ @mem_mapped8_word_device, %4 ], [ @mem_mapped4_word_device, %3 ], [ @mem_mapped2_word_device, %2 ], [ @mem_mono_word_device, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_make_mem_device(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, i64 632, i1 false), !tbaa.struct !30
  %6 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 4
  store ptr @st_device_memory, ptr %7, align 8, !tbaa !37
  switch i32 %3, label %12 [
    i32 -1, label %9
    i32 1, label %8
  ]

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %5, %8
  %10 = phi ptr [ @gx_page_device_get_page_device, %8 ], [ @gx_default_get_page_device, %5 ]
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21, i32 19
  store ptr %10, ptr %11, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 22
  store ptr %4, ptr %13, align 8, !tbaa !39
  %14 = icmp eq ptr %4, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @gx_device_forward_color_procs(ptr noundef %0) #12
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  br i1 %14, label %26, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %4, i64 0, i32 21, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = tail call i64 %23(ptr noundef nonnull %4, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #12
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20, %21
  %27 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) @mem_mono_b_w_palette, i64 16, i1 false), !tbaa.struct !43
  br label %30

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) @mem_mono_w_b_palette, i64 16, i1 false), !tbaa.struct !43
  br label %30

30:                                               ; preds = %28, %26, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare ptr @gx_default_get_page_device(ptr noundef) #3

declare ptr @gx_page_device_get_page_device(ptr noundef) #3

declare void @gx_device_forward_color_procs(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gdev_mem_mono_set_inverted(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  br i1 %3, label %6, label %5

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @mem_mono_b_w_palette, i64 16, i1 false), !tbaa.struct !43
  br label %7

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @mem_mono_w_b_palette, i64 16, i1 false), !tbaa.struct !43
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_make_mem_mono_device(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(632) @mem_mono_device, i64 632, i1 false), !tbaa.struct !30
  %4 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21, i32 19
  store ptr @gx_default_get_page_device, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 22
  store ptr %2, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) @mem_mono_b_w_palette, i64 16, i1 false), !tbaa.struct !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @gdev_mem_data_size(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !40
  %7 = mul nsw i32 %6, %1
  %8 = add nsw i32 %7, 63
  %9 = ashr i32 %8, 3
  %10 = and i32 %9, -8
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 8
  %13 = mul nsw i64 %12, %4
  ret i64 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @gdev_mem_max_height(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = mul nsw i32 %5, %1
  %7 = add nsw i32 %6, 63
  %8 = ashr i32 %7, 3
  %9 = and i32 %8, -8
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 8
  %12 = udiv i64 %2, %11
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 2147483647)
  br label %14

14:                                               ; preds = %14, %3
  %15 = phi i64 [ %18, %14 ], [ %13, %3 ]
  %16 = mul nsw i64 %11, %15
  %17 = icmp ugt i64 %16, %2
  %18 = add i64 %15, -1
  br i1 %17, label %14, label %19, !llvm.loop !44

19:                                               ; preds = %14
  %20 = trunc i64 %15 to i32
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mem_open(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !25
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = mul nsw i32 %12, %7
  %14 = add nsw i32 %13, 63
  %15 = ashr i32 %14, 3
  %16 = and i32 %15, -8
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, 8
  %19 = mul nsw i64 %18, %10
  %20 = icmp ult i64 %19, 4294967296
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = trunc i64 %19 to i32
  %23 = load ptr, ptr %3, align 8, !tbaa !47
  %24 = tail call ptr %23(ptr noundef nonnull %3, i32 noundef %22, ptr noundef nonnull @.str.1) #12
  %25 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  store ptr %24, ptr %25, align 8, !tbaa !23
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 25
  store i32 0, ptr %28, align 4, !tbaa !11
  br label %29

29:                                               ; preds = %21, %5, %27
  %30 = phi i32 [ undef, %27 ], [ -13, %5 ], [ -25, %21 ]
  %31 = phi i1 [ true, %27 ], [ false, %5 ], [ false, %21 ]
  br i1 %31, label %32, label %62

32:                                               ; preds = %29, %1
  %33 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 4, !tbaa !25
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = mul nsw i32 %41, %36
  %43 = add nsw i32 %42, 63
  %44 = ashr i32 %43, 3
  %45 = and i32 %44, -8
  %46 = zext i32 %45 to i64
  %47 = mul nsw i64 %46, %39
  %48 = getelementptr inbounds i8, ptr %34, i64 %47
  %49 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  store ptr %48, ptr %49, align 8, !tbaa !26
  %50 = getelementptr inbounds ptr, ptr %48, i64 %39
  %51 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 1) #12
  %52 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  store i32 %51, ptr %52, align 8, !tbaa !50
  %53 = icmp sgt i32 %38, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %32
  %55 = zext i32 %51 to i64
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi ptr [ %48, %54 ], [ %59, %56 ]
  %58 = phi ptr [ %34, %54 ], [ %60, %56 ]
  %59 = getelementptr inbounds ptr, ptr %57, i64 1
  store ptr %58, ptr %57, align 8, !tbaa !24
  %60 = getelementptr inbounds i8, ptr %58, i64 %55
  %61 = icmp ult ptr %59, %50
  br i1 %61, label %56, label %62, !llvm.loop !51

62:                                               ; preds = %56, %32, %29
  %63 = phi i32 [ %30, %29 ], [ 0, %32 ], [ 0, %56 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @mem_get_initial_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 23
  %4 = load float, ptr %3, align 8, !tbaa !52
  store float %4, ptr %1, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 23, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  store float %6, ptr %7, align 4, !tbaa !55
  %8 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 23, i32 2
  %9 = load float, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  store float %9, ptr %10, align 4, !tbaa !57
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 23, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !58
  %13 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  store float %12, ptr %13, align 4, !tbaa !59
  %14 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 23, i32 4
  %15 = load float, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  store float %15, ptr %16, align 4, !tbaa !61
  %17 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 23, i32 5
  %18 = load float, ptr %17, align 4, !tbaa !62
  %19 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  store float %18, ptr %19, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gs_device_is_memory(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !64
  switch i32 %3, label %10 [
    i32 1, label %11
    i32 2, label %4
    i32 4, label %5
    i32 8, label %6
    i32 16, label %7
    i32 24, label %8
    i32 32, label %9
  ]

4:                                                ; preds = %1
  br label %11

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  br label %11

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %1, %4, %5, %6, %7, %8, %9, %10
  %12 = phi i1 [ true, %10 ], [ false, %9 ], [ false, %8 ], [ false, %7 ], [ false, %6 ], [ false, %5 ], [ false, %4 ], [ false, %1 ]
  %13 = phi ptr [ null, %10 ], [ @mem_true32_device, %9 ], [ @mem_true24_device, %8 ], [ @mem_true16_device, %7 ], [ @mem_mapped8_device, %6 ], [ @mem_mapped4_device, %5 ], [ @mem_mapped2_device, %4 ], [ @mem_mono_device, %1 ]
  br i1 %12, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gx_device_memory_s, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %14, %11
  switch i32 %3, label %26 [
    i32 1, label %27
    i32 2, label %21
    i32 4, label %22
    i32 8, label %23
    i32 24, label %24
    i32 32, label %25
  ]

21:                                               ; preds = %20
  br label %27

22:                                               ; preds = %20
  br label %27

23:                                               ; preds = %20
  br label %27

24:                                               ; preds = %20
  br label %27

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %20, %21, %22, %23, %24, %25, %26
  %28 = phi i1 [ true, %26 ], [ false, %25 ], [ false, %24 ], [ false, %23 ], [ false, %22 ], [ false, %21 ], [ false, %20 ]
  %29 = phi ptr [ null, %26 ], [ @mem_true32_word_device, %25 ], [ @mem_true24_word_device, %24 ], [ @mem_mapped8_word_device, %23 ], [ @mem_mapped4_word_device, %22 ], [ @mem_mapped2_word_device, %21 ], [ @mem_mono_word_device, %20 ]
  br i1 %28, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gx_device_memory_s, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = icmp eq ptr %32, %34
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %27, %30, %14
  %38 = phi i32 [ 1, %14 ], [ 0, %27 ], [ %36, %30 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mem_close(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  tail call void %7(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull @.str.2) #12
  br label %10

10:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mem_get_bits(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %1, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !68
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = zext nneg i32 %1 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = icmp eq ptr %3, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 0) #12
  %19 = zext i32 %18 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %15, i64 %19, i1 false)
  br label %21

20:                                               ; preds = %10
  store ptr %15, ptr %3, align 8, !tbaa !24
  br label %21

21:                                               ; preds = %17, %20, %4, %6
  %22 = phi i32 [ -15, %6 ], [ -15, %4 ], [ 0, %20 ], [ 0, %17 ]
  ret i32 %22
}

declare i32 @gx_device_raster(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mem_swap_byte_rect(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
  %7 = and i32 %2, 31
  %8 = icmp ne i32 %5, 0
  %9 = add nsw i32 %7, %3
  %10 = icmp sgt i32 %9, 64
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = icmp ne i32 %7, 0
  %14 = icmp sgt i32 %4, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = ashr i32 %2, 3
  %18 = and i32 %17, -4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = zext i32 %1 to i64
  br label %22

22:                                               ; preds = %16, %22
  %23 = phi i32 [ %4, %16 ], [ %28, %22 ]
  %24 = phi ptr [ %20, %16 ], [ %27, %22 ]
  %25 = load i32, ptr %24, align 4, !tbaa !31
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  store i32 %26, ptr %24, align 4, !tbaa !31
  %27 = getelementptr inbounds i8, ptr %24, i64 %21
  %28 = add nsw i32 %23, -1
  %29 = icmp sgt i32 %23, 1
  br i1 %29, label %22, label %30, !llvm.loop !69

30:                                               ; preds = %22, %12
  %31 = add i32 %2, -1
  %32 = add i32 %31, %3
  %33 = and i32 %32, 31
  %34 = icmp eq i32 %33, 31
  br i1 %34, label %64, label %35

35:                                               ; preds = %30, %6
  %36 = phi i32 [ %7, %6 ], [ %33, %30 ]
  %37 = phi i32 [ %3, %6 ], [ 1, %30 ]
  %38 = phi i32 [ %2, %6 ], [ %32, %30 ]
  %39 = add nuw nsw i32 %36, 31
  %40 = add i32 %39, %37
  %41 = ashr i32 %40, 5
  %42 = icmp sgt i32 %4, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  %44 = ashr i32 %38, 3
  %45 = and i32 %44, -4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = zext i32 %1 to i64
  br label %49

49:                                               ; preds = %43, %60
  %50 = phi i32 [ %4, %43 ], [ %62, %60 ]
  %51 = phi ptr [ %47, %43 ], [ %61, %60 ]
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi i32 [ %58, %52 ], [ %41, %49 ]
  %54 = phi ptr [ %57, %52 ], [ %51, %49 ]
  %55 = load i32, ptr %54, align 4, !tbaa !31
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = getelementptr inbounds i32, ptr %54, i64 1
  store i32 %56, ptr %54, align 4, !tbaa !31
  %58 = add nsw i32 %53, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %52, !llvm.loop !70

60:                                               ; preds = %52
  %61 = getelementptr inbounds i8, ptr %51, i64 %48
  %62 = add nsw i32 %50, -1
  %63 = icmp sgt i32 %50, 1
  br i1 %63, label %49, label %64, !llvm.loop !69

64:                                               ; preds = %60, %35, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mem_word_get_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 0) #12
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = zext nneg i32 %1 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = shl i32 %5, 3
  %18 = add i32 %17, 31
  %19 = ashr i32 %18, 5
  br label %20

20:                                               ; preds = %20, %11
  %21 = phi i32 [ %26, %20 ], [ %19, %11 ]
  %22 = phi ptr [ %25, %20 ], [ %16, %11 ]
  %23 = load i32, ptr %22, align 4, !tbaa !31
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = getelementptr inbounds i32, ptr %22, i64 1
  store i32 %24, ptr %22, align 4, !tbaa !31
  %26 = add nsw i32 %21, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %20, !llvm.loop !70

28:                                               ; preds = %20
  %29 = zext i32 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %16, i64 %29, i1 false)
  %30 = icmp eq ptr %3, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store ptr %2, ptr %3, align 8, !tbaa !24
  br label %32

32:                                               ; preds = %28, %31
  br label %33

33:                                               ; preds = %32, %33
  %34 = phi i32 [ %39, %33 ], [ %19, %32 ]
  %35 = phi ptr [ %38, %33 ], [ %16, %32 ]
  %36 = load i32, ptr %35, align 4, !tbaa !31
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr inbounds i32, ptr %35, i64 1
  store i32 %37, ptr %35, align 4, !tbaa !31
  %39 = add nsw i32 %34, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %33, !llvm.loop !70

41:                                               ; preds = %33, %4, %7
  %42 = phi i32 [ -15, %7 ], [ -15, %4 ], [ 0, %33 ]
  ret i32 %42
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @mem_mapped_map_rgb_color(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #9 {
  %5 = lshr i16 %1, 8
  %6 = zext nneg i16 %5 to i32
  %7 = lshr i16 %2, 8
  %8 = zext nneg i16 %7 to i32
  %9 = lshr i16 %3, 8
  %10 = zext nneg i16 %9 to i32
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !72
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %52

16:                                               ; preds = %4, %45
  %17 = phi i32 [ %21, %45 ], [ %14, %4 ]
  %18 = phi i32 [ %47, %45 ], [ 768, %4 ]
  %19 = phi ptr [ %46, %45 ], [ null, %4 ]
  %20 = phi ptr [ %48, %45 ], [ %12, %4 ]
  %21 = add nsw i32 %17, -3
  %22 = load i8, ptr %20, align 1, !tbaa !33
  %23 = zext i8 %22 to i32
  %24 = sub nsw i32 %23, %6
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp slt i32 %25, %18
  br i1 %26, label %27, label %45

27:                                               ; preds = %16
  %28 = getelementptr inbounds i8, ptr %20, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !33
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 %30, %8
  %32 = tail call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = add nuw nsw i32 %32, %25
  %34 = icmp slt i32 %33, %18
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = getelementptr inbounds i8, ptr %20, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !33
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, %10
  %40 = tail call i32 @llvm.abs.i32(i32 %39, i1 true)
  %41 = add nuw nsw i32 %40, %33
  %42 = icmp slt i32 %41, %18
  %43 = select i1 %42, ptr %20, ptr %19
  %44 = tail call i32 @llvm.smin.i32(i32 %41, i32 %18)
  br label %45

45:                                               ; preds = %27, %35, %16
  %46 = phi ptr [ %19, %16 ], [ %43, %35 ], [ %19, %27 ]
  %47 = phi i32 [ %18, %16 ], [ %44, %35 ], [ %18, %27 ]
  %48 = getelementptr inbounds i8, ptr %20, i64 3
  %49 = icmp sgt i32 %17, 5
  br i1 %49, label %16, label %50, !llvm.loop !73

50:                                               ; preds = %45
  %51 = ptrtoint ptr %46 to i64
  br label %52

52:                                               ; preds = %50, %4
  %53 = phi i64 [ 0, %4 ], [ %51, %50 ]
  %54 = ptrtoint ptr %12 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv i64 %55, 3
  ret i64 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mem_mapped_map_color_rgb(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = mul i64 %1, 12884901888
  %7 = ashr exact i64 %6, 32
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !33
  %10 = zext i8 %9 to i16
  %11 = mul nuw i16 %10, 257
  store i16 %11, ptr %2, align 2, !tbaa !32
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !33
  %14 = zext i8 %13 to i16
  %15 = mul nuw i16 %14, 257
  %16 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !32
  %17 = getelementptr inbounds i8, ptr %8, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !33
  %19 = zext i8 %18 to i16
  %20 = mul nuw i16 %19, 257
  %21 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %20, ptr %21, align 2, !tbaa !32
  ret i32 0
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 32}
!6 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !7, i64 524}
!12 = !{!"gx_device_memory_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !13, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !7, i64 160, !16, i64 168, !17, i64 192, !10, i64 488, !18, i64 496, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 536, !10, i64 544, !20, i64 552, !21, i64 568, !22, i64 592, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !15, i64 624}
!13 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14}
!14 = !{!"short", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!18 = !{!"gs_matrix_s", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20}
!19 = !{!"float", !8, i64 0}
!20 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!21 = !{!"_c24", !15, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!22 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!23 = !{!12, !10, i64 528}
!24 = !{!10, !10, i64 0}
!25 = !{!12, !7, i64 68}
!26 = !{!12, !10, i64 536}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!6, !10, i64 40}
!30 = !{i64 0, i64 4, !31, i64 8, i64 8, !24, i64 16, i64 8, !24, i64 24, i64 8, !24, i64 32, i64 8, !24, i64 40, i64 4, !31, i64 44, i64 4, !31, i64 48, i64 4, !31, i64 52, i64 4, !31, i64 56, i64 2, !32, i64 58, i64 2, !32, i64 60, i64 2, !32, i64 62, i64 2, !32, i64 64, i64 4, !31, i64 68, i64 4, !31, i64 72, i64 8, !33, i64 80, i64 16, !33, i64 96, i64 4, !31, i64 100, i64 8, !33, i64 108, i64 8, !33, i64 116, i64 8, !33, i64 124, i64 16, !33, i64 144, i64 8, !34, i64 152, i64 8, !34, i64 160, i64 4, !31, i64 168, i64 8, !24, i64 176, i64 8, !24, i64 184, i64 8, !24, i64 192, i64 8, !24, i64 200, i64 8, !24, i64 208, i64 8, !24, i64 216, i64 8, !24, i64 224, i64 8, !24, i64 232, i64 8, !24, i64 240, i64 8, !24, i64 248, i64 8, !24, i64 256, i64 8, !24, i64 264, i64 8, !24, i64 272, i64 8, !24, i64 280, i64 8, !24, i64 288, i64 8, !24, i64 296, i64 8, !24, i64 304, i64 8, !24, i64 312, i64 8, !24, i64 320, i64 8, !24, i64 328, i64 8, !24, i64 336, i64 8, !24, i64 344, i64 8, !24, i64 352, i64 8, !24, i64 360, i64 8, !24, i64 368, i64 8, !24, i64 376, i64 8, !24, i64 384, i64 8, !24, i64 392, i64 8, !24, i64 400, i64 8, !24, i64 408, i64 8, !24, i64 416, i64 8, !24, i64 424, i64 8, !24, i64 432, i64 8, !24, i64 440, i64 8, !24, i64 448, i64 8, !24, i64 456, i64 8, !24, i64 464, i64 8, !24, i64 472, i64 8, !24, i64 480, i64 8, !24, i64 488, i64 8, !24, i64 496, i64 4, !35, i64 500, i64 4, !35, i64 504, i64 4, !35, i64 508, i64 4, !35, i64 512, i64 4, !35, i64 516, i64 4, !35, i64 520, i64 4, !31, i64 524, i64 4, !31, i64 528, i64 8, !24, i64 536, i64 8, !24, i64 544, i64 8, !24, i64 552, i64 8, !24, i64 560, i64 4, !31, i64 568, i64 8, !34, i64 576, i64 4, !31, i64 580, i64 4, !31, i64 584, i64 4, !31, i64 592, i64 4, !31, i64 596, i64 4, !31, i64 600, i64 4, !31, i64 604, i64 4, !31, i64 608, i64 4, !31, i64 612, i64 4, !31, i64 616, i64 4, !31, i64 624, i64 8, !34}
!31 = !{!7, !7, i64 0}
!32 = !{!14, !14, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!15, !15, i64 0}
!35 = !{!19, !19, i64 0}
!36 = !{!12, !10, i64 24}
!37 = !{!12, !10, i64 32}
!38 = !{!12, !10, i64 344}
!39 = !{!12, !10, i64 488}
!40 = !{!12, !7, i64 52}
!41 = !{!42, !10, i64 232}
!42 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !13, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !7, i64 160, !16, i64 168, !17, i64 192}
!43 = !{i64 0, i64 8, !24, i64 8, i64 4, !31}
!44 = distinct !{!44, !28}
!45 = !{!12, !10, i64 544}
!46 = !{!12, !7, i64 64}
!47 = !{!48, !10, i64 0}
!48 = !{!"gs_memory_s", !49, i64 0}
!49 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!50 = !{!12, !7, i64 520}
!51 = distinct !{!51, !28}
!52 = !{!12, !19, i64 496}
!53 = !{!18, !19, i64 0}
!54 = !{!12, !19, i64 500}
!55 = !{!18, !19, i64 4}
!56 = !{!12, !19, i64 504}
!57 = !{!18, !19, i64 8}
!58 = !{!12, !19, i64 508}
!59 = !{!18, !19, i64 12}
!60 = !{!12, !19, i64 512}
!61 = !{!18, !19, i64 16}
!62 = !{!12, !19, i64 516}
!63 = !{!18, !19, i64 20}
!64 = !{!42, !7, i64 52}
!65 = !{!12, !10, i64 16}
!66 = !{!42, !10, i64 16}
!67 = !{!48, !10, i64 88}
!68 = !{!42, !7, i64 68}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = !{!12, !10, i64 552}
!72 = !{!12, !7, i64 560}
!73 = distinct !{!73, !28}
