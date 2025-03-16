; ModuleID = 'zfont2.c'
source_filename = "zfont2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_font_base_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f1 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [10 x i8] c"font_data\00", align 1
@st_font_data = dso_local constant %struct.gs_memory_struct_type_s { i32 128, ptr @.str, ptr null, ptr @ref_struct_clear_marks, ptr @ref_struct_enum_ptrs, ptr @ref_struct_reloc_ptrs, ptr null }, align 8
@zfont2_op_defs.op_defs_ = internal constant [3 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zbuildfont3 }, %struct.op_def { ptr @.str.2, ptr @zregisterencoding }, %struct.op_def { ptr null, ptr @zfont2_init }], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"2.buildfont3\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"2.registerencoding\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"BuildChar\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"BuildGlyph\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"StrokeWidth\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@registered_Encodings = dso_local global %struct.ref_s zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"WMode\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"BitmapWidths\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ExactSize\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"InBetweenSize\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"TransformedChar\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@ref_language_level = external local_unnamed_addr global %struct.ref_s, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"buildfont(font)\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"buildfont(data)\00", align 1
@ifont_dir = external local_unnamed_addr global ptr, align 8
@st_gs_font_base = external constant %struct.gs_memory_struct_type_s, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c".registerencoding\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str.21 = private unnamed_addr constant [21 x i8] c"registered_Encodings\00", align 1
@registered_Encodings_root = internal global %struct.gs_gc_root_s zeroinitializer, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@registered_Encodings_p = internal global ptr @registered_Encodings, align 8
@.str.22 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1

declare void @ref_struct_clear_marks(ptr noundef, i32 noundef) #0

declare ptr @ref_struct_enum_ptrs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

declare void @ref_struct_reloc_ptrs(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfont2_op_defs() local_unnamed_addr #1 {
  ret ptr @zfont2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont3(ptr noundef %0) #2 {
  %2 = alloca %struct.build_proc_refs_s, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %27

9:                                                ; preds = %1
  %10 = call i32 @build_gs_font_procs(ptr noundef %0, ptr noundef nonnull %2)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = call i32 @build_gs_simple_font(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull @st_gs_font_base, ptr noundef nonnull %2, i32 noundef 0)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8, !tbaa !8
  %17 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = icmp eq ptr %18, %16
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gs_font_s, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %26 = tail call i32 @gs_definefont(ptr noundef %25, ptr noundef %16) #9
  br label %27

27:                                               ; preds = %24, %20, %15, %12, %9, %7
  %28 = phi i32 [ %8, %7 ], [ %10, %9 ], [ %13, %12 ], [ %26, %24 ], [ 0, %20 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zregisterencoding(ptr noundef %0) #2 {
  %2 = alloca %struct.ref_s, align 8
  %3 = load i16, ptr %0, align 8, !tbaa !19
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 15360
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #9
  br label %54

9:                                                ; preds = %1
  %10 = and i32 %4, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %0, i64 -15
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 11
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %18 = tail call i32 @check_type_failed(ptr noundef nonnull %17) #9
  br label %54

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !23
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds i8, ptr %2, i64 1
  br label %24

24:                                               ; preds = %27, %19
  %25 = phi i64 [ %22, %19 ], [ %28, %27 ]
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %28 = add nsw i64 %25, -1
  %29 = call i32 @array_get(ptr noundef nonnull %0, i64 noundef %28, ptr noundef nonnull %2) #9
  %30 = load i8, ptr %23, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  br i1 %31, label %24, label %54, !llvm.loop !24

32:                                               ; preds = %24
  %33 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !5
  %35 = icmp ult i64 %34, 5
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @registered_Encodings, i64 0, i32 1), align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.ref_s, ptr %37, i64 %34
  %39 = load i16, ptr %38, align 8, !tbaa !19
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !26
  %42 = and i32 %41, %40
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull @registered_Encodings, ptr noundef nonnull %38, ptr noundef nonnull @.str.20) #9
  br label %46

46:                                               ; preds = %36, %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !28
  %47 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !33
  %48 = load i16, ptr %38, align 8, !tbaa !19
  %49 = trunc i32 %47 to i16
  %50 = or i16 %48, %49
  store i16 %50, ptr %38, align 8, !tbaa !19
  br label %51

51:                                               ; preds = %46, %32
  %52 = load ptr, ptr @o_stack, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.ref_s, ptr %52, i64 -2
  store ptr %53, ptr @o_stack, align 8, !tbaa !34
  br label %54

54:                                               ; preds = %27, %9, %51, %16, %7
  %55 = phi i32 [ 0, %51 ], [ %18, %16 ], [ %8, %7 ], [ -7, %9 ], [ -20, %27 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @zfont2_init() #2 {
  %1 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %2 = tail call i32 @gs_alloc_ref_array(ptr noundef %1, ptr noundef nonnull @registered_Encodings, i32 noundef 96, i32 noundef 5, ptr noundef nonnull @.str.21) #9
  br label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ 0, %0 ], [ %11, %3 ]
  %5 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @registered_Encodings, i64 0, i32 1), align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 %4, i32 1
  store ptr null, ptr %6, align 8, !tbaa !5
  %7 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @registered_Encodings, i64 0, i32 1), align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.ref_s, ptr %7, i64 %4
  store i16 1024, ptr %8, align 8, !tbaa !19
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @registered_Encodings, i64 0, i32 1), align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 %4, i32 0, i32 1
  store i16 0, ptr %10, align 2, !tbaa !23
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 5
  br i1 %12, label %13, label %3, !llvm.loop !37

13:                                               ; preds = %3
  %14 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %15 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %14, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  tail call void %16(ptr noundef %14, ptr noundef nonnull @registered_Encodings_root, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull @registered_Encodings_p, ptr noundef nonnull @.str.21) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @build_proc_name_refs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 @name_ref(ptr noundef nonnull %1, i32 noundef %7, ptr noundef %0, i32 noundef 0) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %5
  %11 = load i16, ptr %0, align 8, !tbaa !41
  %12 = or i16 %11, 128
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i16 [ %12, %10 ], [ 3584, %3 ]
  store i16 %14, ptr %0, align 8, !tbaa !41
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.build_proc_refs_s, ptr %0, i64 0, i32 1
  store i16 3584, ptr %17, align 8, !tbaa !43
  br label %27

18:                                               ; preds = %13
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.build_proc_refs_s, ptr %0, i64 0, i32 1
  %22 = tail call i32 @name_ref(ptr noundef nonnull %2, i32 noundef %20, ptr noundef nonnull %21, i32 noundef 0) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i16, ptr %21, align 8, !tbaa !43
  %26 = or i16 %25, 128
  store i16 %26, ptr %21, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %16, %24, %18, %5
  %28 = phi i32 [ %8, %5 ], [ %22, %18 ], [ 0, %24 ], [ 0, %16 ]
  ret i32 %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @build_gs_font_procs(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %38

10:                                               ; preds = %2
  %11 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #9
  %12 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #9
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = icmp slt i32 %12, 1
  br i1 %15, label %38, label %16

16:                                               ; preds = %14
  store i16 3584, ptr %1, align 8, !tbaa !41
  br label %25

17:                                               ; preds = %10
  %18 = load ptr, ptr %3, align 8, !tbaa !8
  %19 = load i16, ptr %18, align 8, !tbaa !19
  %20 = and i16 %19, 15552
  %21 = icmp eq i16 %20, 1216
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @check_proc_failed(ptr noundef nonnull %18) #9
  br label %38

24:                                               ; preds = %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !28
  br label %25

25:                                               ; preds = %24, %16
  %26 = icmp slt i32 %12, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.build_proc_refs_s, ptr %1, i64 0, i32 1
  store i16 3584, ptr %28, align 8, !tbaa !43
  br label %38

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 8, !tbaa !8
  %31 = load i16, ptr %30, align 8, !tbaa !19
  %32 = and i16 %31, 15552
  %33 = icmp eq i16 %32, 1216
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @check_proc_failed(ptr noundef nonnull %30) #9
  br label %38

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.build_proc_refs_s, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !28
  br label %38

38:                                               ; preds = %27, %36, %14, %34, %22, %8
  %39 = phi i32 [ %35, %34 ], [ %23, %22 ], [ %9, %8 ], [ -10, %14 ], [ 0, %36 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %39
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #0

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @build_gs_primitive_font(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store ptr null, ptr %9, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %11 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %7) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %6
  %14 = call i32 @dict_float_param(ptr noundef %0, ptr noundef nonnull @.str.6, double noundef 0.000000e+00, ptr noundef nonnull %8) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %13
  %17 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %9) #9
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = and i32 %5, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %27

22:                                               ; preds = %16
  %23 = load ptr, ptr %9, align 8, !tbaa !8
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 2
  br i1 %26, label %27, label %53

27:                                               ; preds = %22, %19
  %28 = call i32 @build_gs_simple_font(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load i32, ptr %7, align 4, !tbaa !44
  %32 = load ptr, ptr %10, align 8, !tbaa !8
  %33 = getelementptr inbounds %struct.gs_font_base_s, ptr %32, i64 0, i32 13
  store i32 %31, ptr %33, align 8, !tbaa !45
  %34 = load float, ptr %8, align 4, !tbaa !32
  %35 = getelementptr inbounds %struct.gs_font_base_s, ptr %32, i64 0, i32 14
  store float %34, ptr %35, align 4, !tbaa !51
  %36 = getelementptr inbounds %struct.gs_font_base_s, ptr %32, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = load ptr, ptr %9, align 8, !tbaa !8
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.font_data_s, ptr %37, i64 0, i32 4
  br i1 %39, label %42, label %41

41:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !28
  br label %43

42:                                               ; preds = %30
  store i16 3584, ptr %40, align 8, !tbaa !53
  br label %43

43:                                               ; preds = %42, %41
  %44 = getelementptr inbounds %struct.gs_font_base_s, ptr %32, i64 0, i32 19
  %45 = load i64, ptr %44, align 8, !tbaa !55
  %46 = icmp eq i64 %45, 16777216
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = call i32 @dict_check_uid_param(ptr noundef %0, ptr noundef nonnull %44) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  store i64 16777216, ptr %44, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.gs_font_base_s, ptr %32, i64 0, i32 19, i32 1
  store ptr null, ptr %51, align 8, !tbaa !56
  br label %52

52:                                               ; preds = %50, %47, %43
  store ptr %32, ptr %1, align 8, !tbaa !8
  br label %53

53:                                               ; preds = %27, %22, %19, %13, %6, %52
  %54 = phi i32 [ 0, %52 ], [ %11, %6 ], [ %14, %13 ], [ -10, %19 ], [ -10, %22 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %54
}

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @dict_float_param(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i32 @build_gs_simple_font(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca [4 x float], align 16
  %8 = alloca %struct.gs_uid_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %9 = call i32 @font_bbox_param(ptr noundef %0, ptr noundef nonnull %7) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %6
  %12 = and i32 %5, 2
  %13 = icmp ne i32 %12, 0
  %14 = load float, ptr %7, align 16
  %15 = fcmp oeq float %14, 0.000000e+00
  %16 = select i1 %13, i1 %15, i1 false
  %17 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %18 = load float, ptr %17, align 4
  %19 = fcmp oeq float %18, 0.000000e+00
  %20 = select i1 %16, i1 %19, i1 false
  %21 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %22 = load float, ptr %21, align 8
  %23 = fcmp oeq float %22, 0.000000e+00
  %24 = select i1 %20, i1 %23, i1 false
  %25 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %26 = load float, ptr %25, align 4
  %27 = fcmp oeq float %26, 0.000000e+00
  %28 = select i1 %24, i1 %27, i1 false
  br i1 %28, label %63, label %29

29:                                               ; preds = %11
  %30 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %31 = call i32 @dict_uid_param(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0, ptr noundef %30) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %29
  %34 = and i32 %5, 4
  %35 = icmp ne i32 %34, 0
  %36 = load i64, ptr %8, align 8
  %37 = icmp ult i64 %36, 16777216
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  store i64 16777216, ptr %8, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct.gs_uid_s, ptr %8, i64 0, i32 1
  store ptr null, ptr %40, align 8, !tbaa !58
  br label %41

41:                                               ; preds = %39, %33
  %42 = call i32 @build_gs_font(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load ptr, ptr %1, align 8, !tbaa !8
  %46 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 15
  store ptr @gs_default_init_fstack, ptr %46, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 15, i32 1
  store ptr @gs_default_next_char, ptr %47, align 8, !tbaa !60
  %48 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 15, i32 5
  store ptr @gs_no_define_font, ptr %48, align 8, !tbaa !61
  %49 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 15, i32 6
  store ptr @zbase_make_font, ptr %49, align 8, !tbaa !62
  %50 = load float, ptr %7, align 16, !tbaa !32
  %51 = fpext float %50 to double
  %52 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 18
  store double %51, ptr %52, align 8, !tbaa !63
  %53 = load float, ptr %17, align 4, !tbaa !32
  %54 = fpext float %53 to double
  %55 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 18, i32 0, i32 1
  store double %54, ptr %55, align 8, !tbaa !64
  %56 = load float, ptr %21, align 8, !tbaa !32
  %57 = fpext float %56 to double
  %58 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 18, i32 1
  store double %57, ptr %58, align 8, !tbaa !65
  %59 = load float, ptr %25, align 4, !tbaa !32
  %60 = fpext float %59 to double
  %61 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 18, i32 1, i32 1
  store double %60, ptr %61, align 8, !tbaa !66
  %62 = getelementptr inbounds %struct.gs_font_base_s, ptr %45, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !67
  call void @lookup_gs_simple_font_encoding(ptr noundef %45)
  br label %63

63:                                               ; preds = %41, %29, %11, %6, %44
  %64 = phi i32 [ 0, %44 ], [ %9, %6 ], [ -10, %11 ], [ %31, %29 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret i32 %64
}

declare i32 @dict_check_uid_param(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @font_bbox_param(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @dict_uid_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i32 @build_gs_font(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.gs_matrix_s, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  store ptr null, ptr %13, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #9
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %23 = getelementptr inbounds i8, ptr %0, i64 -15
  %24 = load i8, ptr %23, align 1, !tbaa !5
  switch i8 %24, label %27 [
    i8 18, label %25
    i8 13, label %26
  ]

25:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !28
  br label %30

26:                                               ; preds = %6
  call void @name_string_ref(ptr noundef nonnull %22, ptr noundef nonnull %7) #9
  br label %30

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !5
  store i16 4704, ptr %7, align 8, !tbaa !19
  %29 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  store i16 0, ptr %29, align 2, !tbaa !23
  br label %30

30:                                               ; preds = %25, %26, %27
  %31 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %9) #9
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %214, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %9, align 8, !tbaa !8
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = icmp eq i8 %36, 11
  br i1 %37, label %38, label %214

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ref_s, ptr %34, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !5
  %41 = sext i32 %2 to i64
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %214

43:                                               ; preds = %38
  %44 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %11) #9
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %214, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %11, align 8, !tbaa !8
  %48 = call i32 @read_matrix(ptr noundef %47, ptr noundef nonnull %12) #9
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %214, label %50

50:                                               ; preds = %46
  %51 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %13) #9
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = and i32 %5, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %214, label %61

56:                                               ; preds = %50
  %57 = load ptr, ptr %13, align 8, !tbaa !8
  %58 = load i16, ptr %57, align 8, !tbaa !19
  %59 = and i16 %58, 15360
  %60 = icmp eq i16 %59, 1024
  br i1 %60, label %61, label %214

61:                                               ; preds = %56, %53
  %62 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %10) #9
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load ptr, ptr %10, align 8, !tbaa !8
  call fastcc void @get_font_name(ptr noundef nonnull %8, ptr noundef %65)
  br label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  store ptr null, ptr %67, align 8, !tbaa !5
  store i16 4704, ptr %8, align 8, !tbaa !19
  %68 = getelementptr inbounds %struct.tas_s, ptr %8, i64 0, i32 1
  store i16 0, ptr %68, align 2, !tbaa !23
  br label %69

69:                                               ; preds = %66, %64
  %70 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %18) #9
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %214, label %72

72:                                               ; preds = %69
  %73 = call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull %14) #9
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %214, label %75

75:                                               ; preds = %72
  %76 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %15) #9
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %214, label %78

78:                                               ; preds = %75
  %79 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %16) #9
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %214, label %81

81:                                               ; preds = %78
  %82 = call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %17) #9
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %214, label %84

84:                                               ; preds = %81
  %85 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %19) #9
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = load ptr, ptr %19, align 8, !tbaa !8
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !5
  %91 = icmp eq i8 %90, 10
  br i1 %91, label %92, label %214

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ref_s, ptr %88, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.gs_font_s, ptr %94, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !10
  %97 = icmp eq ptr %96, %94
  br i1 %97, label %98, label %188

98:                                               ; preds = %92
  %99 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %100 = and i64 %99, 4294967295
  %101 = icmp eq i64 %100, 2
  br i1 %101, label %102, label %214

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.gs_font_s, ptr %94, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !68
  %105 = call i32 @obj_eq(ptr noundef %104, ptr noundef %0) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %211

107:                                              ; preds = %102, %84
  %108 = load i16, ptr %21, align 8, !tbaa !19
  %109 = and i16 %108, 16
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %214, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !69
  %113 = load i16, ptr %0, align 8, !tbaa !19
  %114 = and i16 %113, 12
  %115 = zext nneg i16 %114 to i32
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %115) #9
  %116 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %117 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !70
  %119 = call ptr %118(ptr noundef %116, ptr noundef %3, ptr noundef nonnull @.str.18) #9
  %120 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %121 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !70
  %123 = call ptr %122(ptr noundef %120, ptr noundef nonnull @st_font_data, ptr noundef nonnull @.str.19) #9
  %124 = icmp eq ptr %119, null
  %125 = icmp eq ptr %123, null
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %129, label %127

127:                                              ; preds = %111
  %128 = call i32 @add_FID(ptr noundef nonnull %0, ptr noundef %119) #9
  br label %129

129:                                              ; preds = %111, %127
  %130 = phi i32 [ %128, %127 ], [ -25, %111 ]
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %134 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %133, i64 0, i32 11
  %135 = load ptr, ptr %134, align 8, !tbaa !71
  call void %135(ptr noundef %133, ptr noundef %123, ptr noundef nonnull @.str.19) #9
  %136 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %137 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %136, i64 0, i32 11
  %138 = load ptr, ptr %137, align 8, !tbaa !71
  call void %138(ptr noundef %136, ptr noundef %119, ptr noundef nonnull @.str.18) #9
  br label %187

139:                                              ; preds = %129
  call void @refset_null(ptr noundef %123, i32 noundef 8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !28
  %140 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !33
  %141 = load i16, ptr %123, align 8, !tbaa !72
  %142 = trunc i32 %140 to i16
  %143 = or i16 %141, %142
  store i16 %143, ptr %123, align 8, !tbaa !72
  %144 = getelementptr inbounds %struct.font_data_s, ptr %123, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %144, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !28
  %145 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !33
  %146 = load i16, ptr %144, align 8, !tbaa !73
  %147 = trunc i32 %145 to i16
  %148 = or i16 %146, %147
  store i16 %148, ptr %144, align 8, !tbaa !73
  %149 = getelementptr inbounds %struct.font_data_s, ptr %123, i64 0, i32 2
  %150 = getelementptr inbounds %struct.build_proc_refs_s, ptr %4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %149, ptr noundef nonnull align 8 dereferenceable(16) %150, i64 16, i1 false), !tbaa.struct !28
  %151 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !33
  %152 = load i16, ptr %149, align 8, !tbaa !74
  %153 = trunc i32 %151 to i16
  %154 = or i16 %152, %153
  store i16 %154, ptr %149, align 8, !tbaa !74
  %155 = load ptr, ptr %13, align 8, !tbaa !8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %139
  %158 = getelementptr inbounds %struct.font_data_s, ptr %123, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %158, ptr noundef nonnull align 8 dereferenceable(16) %155, i64 16, i1 false), !tbaa.struct !28
  %159 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !33
  %160 = load i16, ptr %158, align 8, !tbaa !75
  %161 = trunc i32 %159 to i16
  %162 = or i16 %160, %161
  store i16 %162, ptr %158, align 8, !tbaa !75
  br label %163

163:                                              ; preds = %157, %139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %119, i8 0, i64 16, i1 false)
  %164 = load ptr, ptr @gs_imemory, align 8, !tbaa !36
  %165 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 2
  store ptr %164, ptr %165, align 8, !tbaa !76
  %166 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 3
  store ptr null, ptr %166, align 8, !tbaa !18
  %167 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 4
  store ptr %119, ptr %167, align 8, !tbaa !10
  %168 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 5
  store ptr %123, ptr %168, align 8, !tbaa !68
  %169 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 7
  store i32 %2, ptr %169, align 8, !tbaa !77
  %170 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %170, ptr noundef nonnull align 4 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !78
  %171 = load i32, ptr %14, align 4, !tbaa !44
  %172 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 8
  store i32 %171, ptr %172, align 4, !tbaa !79
  %173 = load i32, ptr %15, align 4, !tbaa !44
  %174 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 9
  store i32 %173, ptr %174, align 8, !tbaa !80
  %175 = load i32, ptr %16, align 4, !tbaa !44
  %176 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 10
  store i32 %175, ptr %176, align 4, !tbaa !81
  %177 = load i32, ptr %17, align 4, !tbaa !44
  %178 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 11
  store i32 %177, ptr %178, align 8, !tbaa !82
  %179 = load i32, ptr %18, align 4, !tbaa !44
  %180 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 12
  store i32 %179, ptr %180, align 4, !tbaa !83
  %181 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 13
  store i32 0, ptr %181, align 8, !tbaa !84
  %182 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 14
  store float 0.000000e+00, ptr %182, align 4, !tbaa !85
  %183 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 15, i32 3
  store ptr @gs_no_build_char, ptr %183, align 8, !tbaa !86
  %184 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 15, i32 2
  store ptr @zfont_encode_char, ptr %184, align 8, !tbaa !87
  %185 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 15, i32 4
  store ptr @zfont_glyph_name, ptr %185, align 8, !tbaa !88
  %186 = getelementptr inbounds %struct.gs_font_s, ptr %119, i64 0, i32 15, i32 4, i32 1
  store ptr @zfont_known_encode, ptr %186, align 8, !tbaa !89
  br label %187

187:                                              ; preds = %163, %132
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %112) #9
  br i1 %131, label %188, label %214

188:                                              ; preds = %187, %92
  %189 = phi ptr [ %94, %92 ], [ %119, %187 ]
  %190 = phi i32 [ 1, %92 ], [ 0, %187 ]
  %191 = getelementptr inbounds %struct.gs_font_s, ptr %189, i64 0, i32 16
  %192 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  %193 = load i16, ptr %192, align 2, !tbaa !23
  %194 = call i16 @llvm.umin.i16(i16 %193, i16 47)
  %195 = zext nneg i16 %194 to i32
  %196 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = zext nneg i16 %194 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %191, ptr align 1 %197, i64 %198, i1 false)
  %199 = getelementptr inbounds [48 x i8], ptr %191, i64 0, i64 %198
  store i8 0, ptr %199, align 1, !tbaa !5
  %200 = getelementptr inbounds %struct.gs_font_s, ptr %189, i64 0, i32 16, i32 1
  store i32 %195, ptr %200, align 4, !tbaa !90
  %201 = getelementptr inbounds %struct.gs_font_s, ptr %189, i64 0, i32 17
  %202 = getelementptr inbounds %struct.tas_s, ptr %8, i64 0, i32 1
  %203 = load i16, ptr %202, align 2, !tbaa !23
  %204 = call i16 @llvm.umin.i16(i16 %203, i16 47)
  %205 = zext nneg i16 %204 to i32
  %206 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = zext nneg i16 %204 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %201, ptr align 1 %207, i64 %208, i1 false)
  %209 = getelementptr inbounds [48 x i8], ptr %201, i64 0, i64 %208
  store i8 0, ptr %209, align 1, !tbaa !5
  %210 = getelementptr inbounds %struct.gs_font_s, ptr %189, i64 0, i32 17, i32 1
  store i32 %205, ptr %210, align 4, !tbaa !90
  br label %211

211:                                              ; preds = %102, %188
  %212 = phi ptr [ %189, %188 ], [ %94, %102 ]
  %213 = phi i32 [ %190, %188 ], [ 1, %102 ]
  store ptr %212, ptr %1, align 8, !tbaa !8
  br label %214

214:                                              ; preds = %211, %107, %98, %87, %69, %72, %75, %78, %81, %56, %53, %30, %33, %38, %43, %46, %187
  %215 = phi i32 [ %130, %187 ], [ -10, %46 ], [ -10, %43 ], [ -10, %38 ], [ -10, %33 ], [ -10, %30 ], [ -10, %53 ], [ -10, %56 ], [ %70, %69 ], [ %73, %72 ], [ %76, %75 ], [ %79, %78 ], [ %82, %81 ], [ -10, %87 ], [ -10, %98 ], [ -7, %107 ], [ %213, %211 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  ret i32 %215
}

declare i32 @gs_default_init_fstack(ptr noundef, ptr noundef) #0

declare i32 @gs_default_next_char(ptr noundef, ptr noundef) #0

declare i32 @gs_no_define_font(ptr noundef, ptr noundef) #0

declare i32 @zbase_make_font(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @lookup_gs_simple_font_encoding(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = getelementptr inbounds %struct.gs_font_base_s, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.font_data_s, ptr %5, i64 0, i32 3
  br label %7

7:                                                ; preds = %10, %1
  %8 = phi i64 [ %11, %10 ], [ 5, %1 ]
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = add nsw i64 %8, -1
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @registered_Encodings, i64 0, i32 1), align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 %11
  %14 = tail call i32 @obj_eq(ptr noundef nonnull %6, ptr noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %7, label %16, !llvm.loop !91

16:                                               ; preds = %10
  %17 = trunc i64 %8 to i32
  %18 = trunc i64 %11 to i32
  br label %19

19:                                               ; preds = %7, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %7 ]
  %21 = phi i32 [ %18, %16 ], [ -1, %7 ]
  %22 = getelementptr inbounds %struct.gs_font_base_s, ptr %0, i64 0, i32 20
  store i32 %21, ptr %22, align 8, !tbaa !92
  %23 = icmp slt i32 %20, 1
  br i1 %23, label %24, label %96

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.font_data_s, ptr %5, i64 0, i32 3, i32 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !23
  %27 = zext i16 %26 to i32
  %28 = udiv i32 %27, 3
  %29 = getelementptr inbounds i8, ptr %5, i64 49
  %30 = getelementptr inbounds %struct.font_data_s, ptr %5, i64 0, i32 3, i32 1
  %31 = zext i16 %26 to i64
  br label %32

32:                                               ; preds = %24, %91
  %33 = phi i64 [ 4, %24 ], [ %94, %91 ]
  %34 = phi i32 [ -1, %24 ], [ %93, %91 ]
  %35 = phi i32 [ %28, %24 ], [ %92, %91 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @registered_Encodings, i64 0, i32 1), align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 %33
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = icmp eq i8 %39, 6
  %41 = load i8, ptr %29, align 1, !tbaa !5
  %42 = icmp eq i8 %41, 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %43 = getelementptr inbounds %struct.tas_s, ptr %37, i64 0, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !23
  %45 = icmp eq i16 %44, %26
  br i1 %45, label %46, label %91, !llvm.loop !93

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.ref_s, ptr %36, i64 %33, i32 1
  br label %48

48:                                               ; preds = %46, %82
  %49 = phi i64 [ %31, %46 ], [ %52, %82 ]
  %50 = phi i32 [ %27, %46 ], [ %83, %82 ]
  %51 = phi ptr [ %2, %46 ], [ %72, %82 ]
  %52 = add nsw i64 %49, -1
  %53 = icmp sgt i64 %49, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %48
  br i1 %40, label %55, label %61

55:                                               ; preds = %54
  %56 = load ptr, ptr %47, align 8, !tbaa !5
  %57 = getelementptr inbounds i16, ptr %56, i64 %52
  %58 = load i16, ptr %57, align 2, !tbaa !29
  %59 = and i16 %58, 4095
  %60 = zext nneg i16 %59 to i32
  br label %64

61:                                               ; preds = %54
  %62 = call i32 @array_get(ptr noundef %37, i64 noundef %52, ptr noundef nonnull %3) #9
  %63 = call i32 @name_index(ptr noundef nonnull %3) #9
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i32 [ %60, %55 ], [ %63, %61 ]
  br i1 %42, label %68, label %66

66:                                               ; preds = %64
  %67 = call i32 @array_get(ptr noundef nonnull %6, i64 noundef %52, ptr noundef nonnull %2) #9
  br label %71

68:                                               ; preds = %64
  %69 = load ptr, ptr %30, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.ref_s, ptr %69, i64 %52
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi ptr [ %51, %66 ], [ %70, %68 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = icmp eq i8 %74, 13
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = call i32 @name_index(ptr noundef %72) #9
  %78 = icmp eq i32 %77, %65
  br i1 %78, label %82, label %79

79:                                               ; preds = %76, %71
  %80 = add i32 %50, -1
  %81 = icmp ugt i32 %80, %35
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %50, %76 ], [ %80, %79 ]
  %84 = phi i1 [ true, %76 ], [ %81, %79 ]
  br i1 %84, label %48, label %85

85:                                               ; preds = %82, %48
  %86 = phi i32 [ %83, %82 ], [ %50, %48 ]
  %87 = icmp ugt i32 %86, %35
  %88 = call i32 @llvm.umax.i32(i32 %86, i32 %35)
  %89 = trunc i64 %33 to i32
  %90 = select i1 %87, i32 %89, i32 %34
  br label %91

91:                                               ; preds = %32, %85
  %92 = phi i32 [ %88, %85 ], [ %35, %32 ]
  %93 = phi i32 [ %90, %85 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %94 = add nsw i64 %33, -1
  %95 = icmp eq i64 %33, 0
  br i1 %95, label %96, label %32

96:                                               ; preds = %91, %19
  %97 = phi i32 [ %21, %19 ], [ %93, %91 ]
  %98 = getelementptr inbounds %struct.gs_font_base_s, ptr %0, i64 0, i32 21
  store i32 %97, ptr %98, align 4, !tbaa !94
  ret void
}

declare i32 @obj_eq(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @name_index(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @get_font_name(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  switch i8 %4, label %7 [
    i8 18, label %5
    i8 13, label %6
  ]

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !28
  br label %10

6:                                                ; preds = %2
  tail call void @name_string_ref(ptr noundef %1, ptr noundef %0) #9
  br label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !5
  store i16 4704, ptr %0, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 0, ptr %9, align 2, !tbaa !23
  br label %10

10:                                               ; preds = %7, %6, %5
  ret void
}

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @add_FID(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @refset_null(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @gs_no_build_char(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define internal i64 @zfont_encode_char(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.ref_s, align 8
  %5 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.font_data_s, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %9 = call i32 @array_get(ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %4) #9
  %10 = icmp sgt i32 %9, -1
  %11 = getelementptr inbounds i8, ptr %4, i64 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 13
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 @name_index(ptr noundef nonnull %4) #9
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %3, %15
  %19 = phi i64 [ %17, %15 ], [ 2147483647, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define internal ptr @zfont_glyph_name(i64 noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca [25 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %6 = icmp ugt i64 %0, 2147483647
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #9
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.22, i64 noundef %0) #9
  %9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #10
  %10 = trunc i64 %9 to i32
  %11 = call i32 @name_ref(ptr noundef nonnull %5, i32 noundef %10, ptr noundef nonnull %3, i32 noundef 1) #9
  %12 = icmp sgt i32 %11, -1
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #9
  br i1 %12, label %15, label %21

13:                                               ; preds = %2
  %14 = trunc i64 %0 to i32
  call void @name_index_ref(i32 noundef %14, ptr noundef nonnull %3) #9
  br label %15

15:                                               ; preds = %7, %13
  call void @name_string_ref(ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %16 = getelementptr inbounds %struct.tas_s, ptr %4, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !23
  %18 = zext i16 %17 to i32
  store i32 %18, ptr %1, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  br label %21

21:                                               ; preds = %7, %15
  %22 = phi ptr [ %20, %15 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define internal i64 @zfont_known_encode(i64 noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @registered_Encodings, i64 0, i32 1), align 8, !tbaa !5
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds %struct.ref_s, ptr %6, i64 %7
  %9 = call i32 @array_get(ptr noundef %8, i64 noundef %0, ptr noundef nonnull %3) #9
  %10 = icmp sgt i32 %9, -1
  %11 = getelementptr inbounds i8, ptr %3, i64 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 13
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = call i32 @name_index(ptr noundef nonnull %3) #9
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %5, %2, %15
  %19 = phi i64 [ %17, %15 ], [ 2147483647, %2 ], [ 2147483647, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @define_gs_font(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_font_s, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr @ifont_dir, align 8, !tbaa !8
  %11 = tail call i32 @gs_definefont(ptr noundef %10, ptr noundef %0) #9
  br label %12

12:                                               ; preds = %1, %5, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %13
}

declare i32 @gs_definefont(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @name_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !9, i64 32}
!11 = !{!"gs_font_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !12, i64 48, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !13, i64 100, !15, i64 104, !17, i64 176, !17, i64 228}
!12 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!13 = !{!"float", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!"gs_font_procs_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !16, i64 32, !9, i64 48, !9, i64 56, !9, i64 64}
!16 = !{!"gx_xfont_callbacks_s", !9, i64 0, !9, i64 8}
!17 = !{!"gs_font_name_s", !6, i64 0, !14, i64 48}
!18 = !{!11, !9, i64 24}
!19 = !{!20, !22, i64 0}
!20 = !{!"ref_s", !21, i64 0, !6, i64 8}
!21 = !{!"tas_s", !22, i64 0, !22, i64 2}
!22 = !{!"short", !6, i64 0}
!23 = !{!20, !22, i64 2}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!27, !14, i64 56}
!27 = !{!"gs_dual_memory_s", !9, i64 0, !6, i64 8, !14, i64 40, !14, i64 44, !9, i64 48, !14, i64 56, !14, i64 60}
!28 = !{i64 0, i64 2, !29, i64 2, i64 2, !29, i64 8, i64 8, !30, i64 8, i64 2, !29, i64 8, i64 4, !32, i64 8, i64 8, !30, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8, i64 8, i64 8, !8}
!29 = !{!22, !22, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"long", !6, i64 0}
!32 = !{!13, !13, i64 0}
!33 = !{!27, !14, i64 60}
!34 = !{!35, !9, i64 0}
!35 = !{!"ref_stack_s", !9, i64 0, !9, i64 8, !9, i64 16, !20, i64 24, !14, i64 40, !14, i64 44, !20, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !20, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !9, i64 120}
!36 = !{!27, !9, i64 0}
!37 = distinct !{!37, !25}
!38 = !{!39, !9, i64 128}
!39 = !{!"gs_memory_s", !40, i64 0}
!40 = !{!"gs_memory_procs_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152}
!41 = !{!42, !22, i64 0}
!42 = !{!"build_proc_refs_s", !20, i64 0, !20, i64 16}
!43 = !{!42, !22, i64 16}
!44 = !{!14, !14, i64 0}
!45 = !{!46, !14, i64 96}
!46 = !{!"gs_font_base_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !12, i64 48, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !13, i64 100, !15, i64 104, !17, i64 176, !17, i64 228, !47, i64 280, !50, i64 312, !14, i64 328, !14, i64 332}
!47 = !{!"gs_rect_s", !48, i64 0, !48, i64 16}
!48 = !{!"gs_point_s", !49, i64 0, !49, i64 8}
!49 = !{!"double", !6, i64 0}
!50 = !{!"gs_uid_s", !31, i64 0, !9, i64 8}
!51 = !{!46, !13, i64 100}
!52 = !{!46, !9, i64 40}
!53 = !{!54, !22, i64 64}
!54 = !{!"font_data_s", !20, i64 0, !20, i64 16, !20, i64 32, !20, i64 48, !20, i64 64, !6, i64 80}
!55 = !{!46, !31, i64 312}
!56 = !{!46, !9, i64 320}
!57 = !{!50, !31, i64 0}
!58 = !{!50, !9, i64 8}
!59 = !{!46, !9, i64 104}
!60 = !{!46, !9, i64 112}
!61 = !{!46, !9, i64 152}
!62 = !{!46, !9, i64 160}
!63 = !{!46, !49, i64 280}
!64 = !{!46, !49, i64 288}
!65 = !{!46, !49, i64 296}
!66 = !{!46, !49, i64 304}
!67 = !{i64 0, i64 8, !30, i64 8, i64 8, !8}
!68 = !{!11, !9, i64 40}
!69 = !{!27, !14, i64 40}
!70 = !{!39, !9, i64 16}
!71 = !{!39, !9, i64 88}
!72 = !{!54, !22, i64 0}
!73 = !{!54, !22, i64 16}
!74 = !{!54, !22, i64 32}
!75 = !{!54, !22, i64 48}
!76 = !{!11, !9, i64 16}
!77 = !{!11, !14, i64 72}
!78 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32}
!79 = !{!11, !14, i64 76}
!80 = !{!11, !14, i64 80}
!81 = !{!11, !14, i64 84}
!82 = !{!11, !14, i64 88}
!83 = !{!11, !14, i64 92}
!84 = !{!11, !14, i64 96}
!85 = !{!11, !13, i64 100}
!86 = !{!11, !9, i64 128}
!87 = !{!11, !9, i64 120}
!88 = !{!11, !9, i64 136}
!89 = !{!11, !9, i64 144}
!90 = !{!17, !14, i64 48}
!91 = distinct !{!91, !25}
!92 = !{!46, !14, i64 328}
!93 = distinct !{!93, !25}
!94 = !{!46, !14, i64 332}
