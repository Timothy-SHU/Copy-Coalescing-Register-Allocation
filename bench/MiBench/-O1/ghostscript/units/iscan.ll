; ModuleID = 'iscan.c'
source_filename = "iscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.scanner_state_s = type { i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_ }
%struct.dynamic_area_s = type { %struct.gs_string_s, ptr, ptr, ptr, i32, [257 x i8], ptr }
%struct.gs_string_s = type { ptr, i32 }
%union.sss_ = type { %struct.scan_binary_state_s }
%struct.scan_binary_state_s = type { i32, ptr, %struct.ref_s, i32, i32, i32, i32, i32 }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@scan_btoken_proc = dso_local local_unnamed_addr global ptr null, align 8
@scan_ascii85_template = dso_local local_unnamed_addr global ptr null, align 8
@scan_dsc_proc = dso_local local_unnamed_addr global ptr null, align 8
@scan_comment_proc = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [14 x i8] c"scanner state\00", align 1
@st_scanner_state = dso_local constant %struct.gs_memory_struct_type_s { i32 384, ptr @.str, ptr null, ptr @scanner_clear_marks, ptr @scanner_enum_ptrs, ptr @scanner_reloc_ptrs, ptr null }, align 8
@ref_array_packing = dso_local local_unnamed_addr global %struct.ref_s zeroinitializer, align 8
@ref_binary_object_format = dso_local local_unnamed_addr global %struct.ref_s zeroinitializer, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"scan_handle_refill\00", align 1
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"iscan.c\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Can't refill scanner input buffer!\00", align 1
@ref_language_level = external local_unnamed_addr global %struct.ref_s, align 8
@scan_char_array = external local_unnamed_addr constant [260 x i8], align 16
@o_stack = external global %struct.ref_stack_s, align 8
@s_AXD_template = external constant %struct.stream_template_s, align 8
@s_PSSD_template = external constant %struct.stream_template_s, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"scanner(packed)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"scanner(proc)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"scanner\00", align 1
@name_max_string = external local_unnamed_addr constant i32, align 4
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @scanner_clear_marks(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 5, i32 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !5
  %5 = and i16 %4, -2
  store i16 %5, ptr %3, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @scanner_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %33 [
    i32 0, label %5
    i32 1, label %24
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  store ptr %16, ptr %14, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !18
  br label %30

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 5, i32 0, i32 2
  br label %30

30:                                               ; preds = %9, %5, %13, %28
  %31 = phi ptr [ %29, %28 ], [ %14, %13 ], [ null, %5 ], [ null, %9 ]
  %32 = phi ptr [ @ptr_ref_procs, %28 ], [ @ptr_string_procs, %13 ], [ @ptr_struct_procs, %5 ], [ @ptr_struct_procs, %9 ]
  store ptr %31, ptr %3, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %30, %24, %4
  %34 = phi ptr [ null, %4 ], [ null, %24 ], [ %32, %30 ]
  ret ptr %34
}

; Function Attrs: nounwind uwtable
define internal void @scanner_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4
  tail call void @gs_reloc_string(ptr noundef nonnull %12, ptr noundef %2) #8
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 4, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = ptrtoint ptr %20 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = getelementptr inbounds i8, ptr %13, i64 %25
  store ptr %26, ptr %19, align 8, !tbaa !20
  store ptr %13, ptr %21, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %11, %7, %3
  %28 = load i32, ptr %4, align 4, !tbaa !8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 5, i32 0, i32 2
  %32 = getelementptr inbounds %struct.scanner_state_s, ptr %0, i64 0, i32 5, i32 0, i32 3
  tail call void @gs_reloc_refs(ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef %2) #8
  %33 = load i16, ptr %31, align 8, !tbaa !5
  %34 = and i16 %33, -2
  store i16 %34, ptr %31, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %30, %27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @scan_init() local_unnamed_addr #2 {
  store i16 0, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_array_packing, i64 0, i32 1), align 8, !tbaa !5
  store i16 256, ptr @ref_array_packing, align 8, !tbaa !21
  store i64 0, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_binary_object_format, i64 0, i32 1), align 8, !tbaa !5
  store i16 2816, ptr @ref_binary_object_format, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @scan_handle_refill(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca [2 x %struct.ref_s], align 16
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 7
  %10 = load i16, ptr %9, align 8, !tbaa !25
  %11 = icmp eq i16 %10, -1
  br i1 %11, label %63, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = ptrtoint ptr %14 to i64
  %16 = getelementptr inbounds %struct.stream_s, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %15, %18
  %20 = tail call i32 @s_process_read_buf(ptr noundef %8) #8
  %21 = load ptr, ptr %13, align 8, !tbaa !5
  %22 = load ptr, ptr %16, align 8, !tbaa !5
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = and i64 %19, 4294967295
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %63, label %28

28:                                               ; preds = %12
  %29 = icmp eq i32 %20, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i16, ptr %9, align 8, !tbaa !25
  %32 = sext i16 %31 to i32
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %32, %30 ], [ %20, %28 ]
  switch i32 %34, label %59 [
    i32 -1, label %63
    i32 -2, label %35
    i32 -3, label %36
    i32 -4, label %36
  ]

35:                                               ; preds = %33
  br label %63

36:                                               ; preds = %33, %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  %37 = icmp eq i32 %3, 0
  %38 = select i1 %37, i32 1, i32 2
  %39 = icmp eq i32 %2, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @gs_imemory, align 8, !tbaa !29
  %42 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !31
  %44 = tail call ptr %43(ptr noundef %41, ptr noundef nonnull @st_scanner_state, ptr noundef nonnull @.str.1) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %44, ptr noundef nonnull align 8 dereferenceable(384) %1, i64 384, i1 false), !tbaa.struct !34
  br label %47

47:                                               ; preds = %36, %46
  %48 = phi ptr [ %44, %46 ], [ %1, %36 ]
  %49 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !5
  %50 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !40
  %51 = trunc i32 %50 to i16
  %52 = add i16 %51, 2048
  store i16 %52, ptr %6, align 16, !tbaa !21
  %53 = getelementptr inbounds [2 x %struct.ref_s], ptr %6, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !41
  %54 = load i16, ptr %53, align 16, !tbaa !21
  %55 = and i16 %54, -129
  store i16 %55, ptr %53, align 16, !tbaa !21
  %56 = call i32 @s_handle_read_exception(i32 noundef %34, ptr noundef %0, ptr noundef nonnull %6, i32 noundef %38, ptr noundef %4) #8
  br label %57

57:                                               ; preds = %40, %47
  %58 = phi i32 [ %56, %47 ], [ -25, %40 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  br label %63

59:                                               ; preds = %33
  %60 = load ptr, ptr @gs_stderr, align 8, !tbaa !19
  tail call void @lprintf_file_and_line(ptr noundef %60, ptr noundef nonnull @.str.2, i32 noundef 286) #8
  %61 = load ptr, ptr @gs_stderr, align 8, !tbaa !19
  %62 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 34, i64 1, ptr %61)
  br label %63

63:                                               ; preds = %33, %12, %5, %59, %57, %35
  %64 = phi i32 [ -100, %59 ], [ %58, %57 ], [ -12, %35 ], [ -18, %5 ], [ 0, %12 ], [ 0, %33 ]
  ret i32 %64
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @s_process_read_buf(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @s_handle_read_exception(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @scan_string_token(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.stream_s, align 8
  %4 = alloca %struct.scanner_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #8
  %5 = load i16, ptr %0, align 8, !tbaa !21
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !42
  %13 = zext i16 %12 to i32
  call void @sread_string(ptr noundef nonnull %3, ptr noundef %10, i32 noundef %13) #8
  %14 = getelementptr inbounds %struct.scanner_state_s, ptr %4, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !8
  store i32 0, ptr %4, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.scanner_state_s, ptr %4, i64 0, i32 2
  store i32 1, ptr %15, align 8, !tbaa !44
  %16 = call i32 @scan_token(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4)
  switch i32 %16, label %26 [
    i32 0, label %17
    i32 1, label %17
    i32 3, label %25
  ]

17:                                               ; preds = %8, %8
  %18 = call i64 @stell(ptr noundef nonnull %3) #8
  %19 = trunc i64 %18 to i16
  %20 = load ptr, ptr %9, align 8, !tbaa !5
  %21 = and i64 %18, 4294967295
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  store ptr %22, ptr %9, align 8, !tbaa !5
  %23 = load i16, ptr %11, align 2, !tbaa !42
  %24 = sub i16 %23, %19
  store i16 %24, ptr %11, align 2, !tbaa !42
  br label %26

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %17, %8, %25, %2
  %27 = phi i32 [ -7, %2 ], [ %16, %8 ], [ -18, %25 ], [ %16, %17 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #8
  ret i32 %27
}

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @scan_token(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca [2 x i8], align 1
  %6 = alloca %struct.scanner_state_s, align 8
  %7 = alloca %struct.stream_cursor_write_s, align 8
  %8 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %9 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_binary_object_format, i64 0, i32 1), align 8, !tbaa !5
  %10 = icmp ne i64 %9, 0
  %11 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8
  %12 = and i64 %11, 4294967295
  %13 = icmp eq i64 %12, 2
  %14 = select i1 %10, i1 %13, i1 false
  %15 = select i1 %14, i32 100, i32 101
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #8
  %16 = load i32, ptr %2, align 8, !tbaa !43
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !47
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ref_s, ptr %19, i64 1
  store ptr %23, ptr @o_stack, align 8, !tbaa !45
  br label %27

24:                                               ; preds = %18
  %25 = tail call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #8
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %1287

27:                                               ; preds = %24, %22
  %28 = phi i32 [ 0, %22 ], [ %25, %24 ]
  %29 = load ptr, ptr @o_stack, align 8, !tbaa !45
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %32 = phi ptr [ %29, %27 ], [ %1, %3 ]
  %33 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %6, ptr noundef nonnull align 8 dereferenceable(384) %2, i64 384, i1 false), !tbaa.struct !34
  %37 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !14
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %43 = icmp ne ptr %41, %42
  %44 = select i1 %39, i1 %43, i1 false
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !20
  %48 = ptrtoint ptr %47 to i64
  %49 = ptrtoint ptr %41 to i64
  %50 = sub i64 %48, %49
  store ptr %42, ptr %40, align 8, !tbaa !15
  %51 = and i64 %50, 4294967295
  %52 = getelementptr inbounds i8, ptr %42, i64 %51
  store ptr %52, ptr %46, align 8, !tbaa !20
  %53 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5, i64 257
  %54 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !17
  br label %55

55:                                               ; preds = %45, %36
  %56 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !20
  %58 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !8
  switch i32 %59, label %1287 [
    i32 1, label %60
    i32 2, label %69
    i32 3, label %844
    i32 4, label %154
  ]

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = call i32 %62(ptr noundef %0, ptr noundef %32, ptr noundef nonnull %6) #8
  %64 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = icmp eq i32 %63, 3
  br i1 %68, label %1271, label %1206

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  br label %575

74:                                               ; preds = %30
  %75 = load i32, ptr %2, align 8, !tbaa !43
  store i32 %75, ptr %6, align 8, !tbaa !43
  %76 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !48
  %78 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 1
  store i32 %77, ptr %78, align 4, !tbaa !48
  %79 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  br label %83

83:                                               ; preds = %74, %1243, %638
  %84 = phi ptr [ undef, %74 ], [ %585, %638 ], [ %1228, %1243 ]
  %85 = phi ptr [ %82, %74 ], [ %602, %638 ], [ %1229, %1243 ]
  %86 = phi ptr [ %80, %74 ], [ %603, %638 ], [ %1230, %1243 ]
  %87 = phi i32 [ %31, %74 ], [ %639, %638 ], [ %1244, %1243 ]
  %88 = phi ptr [ %32, %74 ], [ %579, %638 ], [ %1245, %1243 ]
  %89 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %90 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 15
  %91 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %92 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %93 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5, i64 1
  %94 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5, i64 256
  %95 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %96 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  br label %97

97:                                               ; preds = %83, %570
  %98 = phi ptr [ %84, %83 ], [ %572, %570 ]
  %99 = phi ptr [ %85, %83 ], [ %115, %570 ]
  %100 = phi ptr [ %86, %83 ], [ %573, %570 ]
  %101 = phi i32 [ %87, %83 ], [ %574, %570 ]
  br label %102

102:                                              ; preds = %118, %97
  %103 = phi ptr [ %99, %97 ], [ %115, %118 ]
  %104 = phi ptr [ %100, %97 ], [ %116, %118 ]
  %105 = icmp ult ptr %104, %103
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  store ptr %104, ptr %89, align 8, !tbaa !5
  %107 = call i32 @spgetcc(ptr noundef %0, i32 noundef 1) #8
  store i32 %107, ptr %90, align 4, !tbaa !49
  %108 = load ptr, ptr %89, align 8, !tbaa !5
  %109 = load ptr, ptr %91, align 8, !tbaa !5
  br label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds i8, ptr %104, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !5
  %113 = zext i8 %112 to i32
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi ptr [ %109, %106 ], [ %103, %110 ]
  %116 = phi ptr [ %108, %106 ], [ %111, %110 ]
  %117 = phi i32 [ %107, %106 ], [ %113, %110 ]
  switch i32 %117, label %713 [
    i32 32, label %118
    i32 12, label %118
    i32 9, label %118
    i32 13, label %118
    i32 10, label %118
    i32 0, label %118
    i32 11, label %118
    i32 4, label %119
    i32 26, label %119
    i32 91, label %119
    i32 93, label %119
    i32 60, label %124
    i32 40, label %330
    i32 123, label %342
    i32 62, label %384
    i32 41, label %1206
    i32 125, label %392
    i32 47, label %464
    i32 37, label %508
    i32 -1, label %641
    i32 -2, label %1205
    i32 48, label %673
    i32 49, label %673
    i32 50, label %673
    i32 51, label %673
    i32 52, label %673
    i32 53, label %673
    i32 54, label %673
    i32 55, label %673
    i32 56, label %673
    i32 57, label %673
    i32 46, label %673
    i32 43, label %692
    i32 45, label %695
    i32 128, label %698
    i32 129, label %698
    i32 130, label %698
    i32 131, label %698
    i32 132, label %698
    i32 133, label %698
    i32 134, label %698
    i32 135, label %698
    i32 136, label %698
    i32 137, label %698
    i32 138, label %698
    i32 139, label %698
    i32 140, label %698
    i32 141, label %698
    i32 142, label %698
    i32 143, label %698
    i32 144, label %698
    i32 145, label %698
    i32 146, label %698
    i32 147, label %698
    i32 148, label %698
    i32 149, label %698
    i32 150, label %698
    i32 151, label %698
    i32 152, label %698
    i32 153, label %698
    i32 154, label %698
    i32 155, label %698
    i32 156, label %698
    i32 157, label %698
    i32 158, label %698
    i32 159, label %698
    i32 33, label %724
    i32 34, label %724
    i32 35, label %724
    i32 36, label %724
    i32 38, label %724
    i32 39, label %724
    i32 42, label %724
    i32 44, label %724
    i32 61, label %724
    i32 58, label %724
    i32 59, label %724
    i32 63, label %724
    i32 64, label %724
    i32 65, label %724
    i32 66, label %724
    i32 67, label %724
    i32 68, label %724
    i32 69, label %724
    i32 70, label %724
    i32 71, label %724
    i32 72, label %724
    i32 73, label %724
    i32 74, label %724
    i32 75, label %724
    i32 76, label %724
    i32 77, label %724
    i32 78, label %724
    i32 79, label %724
    i32 80, label %724
    i32 81, label %724
    i32 82, label %724
    i32 83, label %724
    i32 84, label %724
    i32 85, label %724
    i32 86, label %724
    i32 87, label %724
    i32 88, label %724
    i32 89, label %724
    i32 90, label %724
    i32 92, label %724
    i32 94, label %724
    i32 95, label %724
    i32 96, label %724
    i32 97, label %724
    i32 98, label %724
    i32 99, label %724
    i32 100, label %724
    i32 101, label %724
    i32 102, label %724
    i32 103, label %724
    i32 104, label %724
    i32 105, label %724
    i32 106, label %724
    i32 107, label %724
    i32 108, label %724
    i32 109, label %724
    i32 110, label %724
    i32 111, label %724
    i32 112, label %724
    i32 113, label %724
    i32 114, label %724
    i32 115, label %724
    i32 116, label %724
    i32 117, label %724
    i32 118, label %724
    i32 119, label %724
    i32 120, label %724
    i32 121, label %724
    i32 122, label %724
    i32 124, label %724
    i32 126, label %724
  ]

118:                                              ; preds = %114, %114, %114, %114, %114, %114, %114
  br label %102

119:                                              ; preds = %114, %114, %114, %114
  %120 = trunc i32 %117 to i8
  store i8 %120, ptr %5, align 1, !tbaa !5
  %121 = call i32 @name_ref(ptr noundef nonnull %5, i32 noundef 1, ptr noundef %88, i32 noundef 1) #8
  %122 = load i16, ptr %88, align 8, !tbaa !21
  %123 = or i16 %122, 128
  store i16 %123, ptr %88, align 8, !tbaa !21
  br label %1200

124:                                              ; preds = %114
  %125 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %126 = and i64 %125, 4294967295
  %127 = icmp eq i64 %126, 2
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = icmp ult ptr %116, %115
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds i8, ptr %116, i64 -1
  br label %1266

132:                                              ; preds = %128
  %133 = getelementptr inbounds i8, ptr %116, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !5
  switch i8 %134, label %140 [
    i8 60, label %644
    i8 126, label %135
  ]

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  %137 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5, i32 0, i32 3
  store i64 0, ptr %137, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5, i32 0, i32 2, i32 1
  store i32 0, ptr %138, align 8, !tbaa !5
  %139 = load ptr, ptr @scan_ascii85_template, align 8, !tbaa !19
  store ptr %139, ptr %136, align 8, !tbaa !5
  br label %143

140:                                              ; preds = %132, %124
  %141 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  %142 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5, i32 0, i32 2, i32 1
  store i32 -1, ptr %142, align 8, !tbaa !5
  store ptr @s_AXD_template, ptr %141, align 8, !tbaa !5
  br label %143

143:                                              ; preds = %330, %140, %135
  %144 = phi ptr [ %116, %330 ], [ %116, %140 ], [ %133, %135 ]
  %145 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %144, ptr %145, align 8, !tbaa !5
  %146 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  store i32 0, ptr %146, align 8, !tbaa !14
  %147 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %148 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5, i64 257
  %149 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  store ptr %148, ptr %149, align 8, !tbaa !17
  %150 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  store ptr %147, ptr %150, align 8, !tbaa !15
  %151 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  store ptr %147, ptr %151, align 8, !tbaa !20
  %152 = load ptr, ptr @gs_imemory, align 8, !tbaa !29
  %153 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  store ptr %152, ptr %153, align 8, !tbaa !50
  br label %154

154:                                              ; preds = %55, %143
  %155 = phi ptr [ %57, %55 ], [ %98, %143 ]
  %156 = phi ptr [ undef, %55 ], [ %115, %143 ]
  %157 = phi ptr [ undef, %55 ], [ %144, %143 ]
  %158 = phi i32 [ %31, %55 ], [ %101, %143 ]
  %159 = phi ptr [ %32, %55 ], [ %88, %143 ]
  %160 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %161 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %7, i64 0, i32 1
  %162 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %163 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %7, i64 0, i32 2
  %164 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  %165 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %166 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %167 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %168 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %169 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %170 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  %171 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %172 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  br label %173

173:                                              ; preds = %262, %154
  %174 = phi i32 [ %158, %154 ], [ %265, %262 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %175 = load ptr, ptr %160, align 8, !tbaa !20
  %176 = getelementptr inbounds i8, ptr %175, i64 -1
  store ptr %176, ptr %161, align 8, !tbaa !51
  %177 = load ptr, ptr %162, align 8, !tbaa !17
  %178 = getelementptr inbounds i8, ptr %177, i64 -1
  store ptr %178, ptr %163, align 8, !tbaa !53
  %179 = load ptr, ptr %164, align 8, !tbaa !5
  %180 = getelementptr inbounds %struct.stream_template_s, ptr %179, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !54
  %182 = load i16, ptr %166, align 8, !tbaa !25
  %183 = icmp eq i16 %182, -1
  %184 = zext i1 %183 to i32
  %185 = call i32 %181(ptr noundef nonnull %164, ptr noundef nonnull %165, ptr noundef nonnull %7, i32 noundef %184) #8
  %186 = load ptr, ptr %161, align 8, !tbaa !51
  %187 = getelementptr inbounds i8, ptr %186, i64 1
  store ptr %187, ptr %160, align 8, !tbaa !20
  switch i32 %185, label %262 [
    i32 0, label %188
    i32 1, label %196
  ]

188:                                              ; preds = %173
  %189 = load i16, ptr %166, align 8, !tbaa !25
  %190 = sext i16 %189 to i32
  %191 = icmp slt i16 %189, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = icmp eq i16 %189, -1
  br i1 %193, label %262, label %261

194:                                              ; preds = %188
  %195 = call i32 @s_process_read_buf(ptr noundef %0) #8
  br label %262, !llvm.loop !56

196:                                              ; preds = %173
  %197 = load ptr, ptr %167, align 8, !tbaa !58
  %198 = load ptr, ptr %168, align 8, !tbaa !59
  %199 = ptrtoint ptr %197 to i64
  %200 = ptrtoint ptr %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  store ptr %187, ptr %169, align 8, !tbaa !60
  %203 = icmp eq i32 %202, 65535
  br i1 %203, label %254, label %204

204:                                              ; preds = %196
  %205 = icmp ult i32 %202, 10
  %206 = icmp ult i32 %202, 32767
  %207 = shl i32 %202, 1
  %208 = select i1 %206, i32 %207, i32 65535
  %209 = select i1 %205, i32 20, i32 %208
  br label %210

210:                                              ; preds = %249, %204
  %211 = phi i32 [ %253, %249 ], [ %209, %204 ]
  %212 = load ptr, ptr %167, align 8, !tbaa !58
  %213 = load ptr, ptr %168, align 8, !tbaa !59
  %214 = ptrtoint ptr %212 to i64
  %215 = ptrtoint ptr %213 to i64
  %216 = sub i64 %214, %215
  %217 = trunc i64 %216 to i32
  %218 = load ptr, ptr %169, align 8, !tbaa !60
  %219 = ptrtoint ptr %218 to i64
  %220 = sub i64 %219, %215
  %221 = load ptr, ptr %170, align 8, !tbaa !61
  %222 = load i32, ptr %171, align 8, !tbaa !62
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %210
  %225 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %221, i64 0, i32 14
  %226 = load ptr, ptr %225, align 8, !tbaa !63
  %227 = call ptr %226(ptr noundef %221, ptr noundef %213, i32 noundef %217, i32 noundef %211, ptr noundef nonnull @.str.6) #8
  %228 = icmp eq ptr %227, null
  br i1 %228, label %244, label %238

229:                                              ; preds = %210
  %230 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %221, i64 0, i32 12
  %231 = load ptr, ptr %230, align 8, !tbaa !64
  %232 = call ptr %231(ptr noundef %221, i32 noundef %211, ptr noundef nonnull @.str.6) #8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %244, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %168, align 8, !tbaa !59
  %236 = call i32 @llvm.umin.i32(i32 %217, i32 %211)
  %237 = zext i32 %236 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %232, ptr align 1 %235, i64 %237, i1 false)
  store i32 1, ptr %171, align 8, !tbaa !62
  br label %238

238:                                              ; preds = %234, %224
  %239 = phi ptr [ %227, %224 ], [ %232, %234 ]
  store ptr %239, ptr %168, align 8, !tbaa !59
  %240 = and i64 %220, 4294967295
  %241 = getelementptr inbounds i8, ptr %239, i64 %240
  store ptr %241, ptr %169, align 8, !tbaa !60
  %242 = zext i32 %211 to i64
  %243 = getelementptr inbounds i8, ptr %239, i64 %242
  store ptr %243, ptr %167, align 8, !tbaa !58
  br label %244

244:                                              ; preds = %238, %229, %224
  %245 = phi i1 [ false, %238 ], [ true, %224 ], [ true, %229 ]
  %246 = phi i32 [ 0, %238 ], [ -25, %224 ], [ -25, %229 ]
  %247 = icmp ugt i32 %211, %202
  %248 = and i1 %247, %245
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = sub i32 %211, %202
  %251 = add i32 %250, 1
  %252 = lshr i32 %251, 1
  %253 = sub i32 %211, %252
  br label %210, !llvm.loop !65

254:                                              ; preds = %244, %196
  %255 = phi i32 [ -13, %196 ], [ %246, %244 ]
  %256 = icmp eq i32 %255, -25
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 4, ptr %172, align 4, !tbaa !8
  br label %262

258:                                              ; preds = %254
  %259 = icmp slt i32 %255, 0
  %260 = select i1 %259, i32 4, i32 16
  br label %262

261:                                              ; preds = %192
  br label %262

262:                                              ; preds = %173, %258, %192, %257, %261, %194
  %263 = phi i32 [ 18, %257 ], [ 16, %194 ], [ 4, %192 ], [ %260, %258 ], [ 15, %173 ], [ 15, %261 ]
  %264 = phi i32 [ 1, %257 ], [ %190, %194 ], [ -1, %192 ], [ 1, %258 ], [ %185, %173 ], [ %190, %261 ]
  %265 = phi i32 [ -25, %257 ], [ %174, %194 ], [ -18, %192 ], [ %255, %258 ], [ %174, %173 ], [ %174, %261 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  switch i32 %263, label %1287 [
    i32 16, label %173
    i32 15, label %266
    i32 4, label %1206
    i32 18, label %1275
  ]

266:                                              ; preds = %262
  %267 = load ptr, ptr %165, align 8, !tbaa !5
  %268 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !5
  switch i32 %264, label %1206 [
    i32 -3, label %1266
    i32 -4, label %1266
    i32 -1, label %270
  ]

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !20
  %273 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %274 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !59
  %276 = ptrtoint ptr %272 to i64
  %277 = ptrtoint ptr %275 to i64
  %278 = sub i64 %276, %277
  %279 = trunc i64 %278 to i32
  %280 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %281 = load ptr, ptr %280, align 8, !tbaa !58
  %282 = ptrtoint ptr %281 to i64
  %283 = sub i64 %282, %277
  %284 = trunc i64 %283 to i32
  %285 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  %286 = load ptr, ptr %285, align 8, !tbaa !61
  %287 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %288 = load i32, ptr %287, align 8, !tbaa !62
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %270
  %291 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %286, i64 0, i32 14
  %292 = load ptr, ptr %291, align 8, !tbaa !63
  %293 = call ptr %292(ptr noundef %286, ptr noundef %275, i32 noundef %284, i32 noundef %279, ptr noundef nonnull @.str.6) #8
  %294 = icmp eq ptr %293, null
  br i1 %294, label %308, label %304

295:                                              ; preds = %270
  %296 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %286, i64 0, i32 12
  %297 = load ptr, ptr %296, align 8, !tbaa !64
  %298 = call ptr %297(ptr noundef %286, i32 noundef %279, ptr noundef nonnull @.str.6) #8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %308, label %300

300:                                              ; preds = %295
  %301 = load ptr, ptr %274, align 8, !tbaa !59
  %302 = call i32 @llvm.umin.i32(i32 %284, i32 %279)
  %303 = zext i32 %302 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %298, ptr align 1 %301, i64 %303, i1 false)
  store i32 1, ptr %287, align 8, !tbaa !62
  br label %304

304:                                              ; preds = %300, %290
  %305 = phi ptr [ %293, %290 ], [ %298, %300 ]
  store ptr %305, ptr %274, align 8, !tbaa !59
  %306 = and i64 %278, 4294967295
  %307 = getelementptr inbounds i8, ptr %305, i64 %306
  store ptr %307, ptr %273, align 8, !tbaa !60
  store ptr %307, ptr %280, align 8, !tbaa !58
  br label %308

308:                                              ; preds = %304, %295, %290
  %309 = phi i1 [ false, %304 ], [ true, %290 ], [ true, %295 ]
  %310 = phi i32 [ 0, %304 ], [ -25, %290 ], [ -25, %295 ]
  br i1 %309, label %323, label %311

311:                                              ; preds = %308
  %312 = load ptr, ptr %274, align 8, !tbaa !59
  %313 = getelementptr inbounds %struct.ref_s, ptr %159, i64 0, i32 1
  store ptr %312, ptr %313, align 8, !tbaa !5
  %314 = load ptr, ptr %285, align 8, !tbaa !61
  %315 = call i32 @imemory_space(ptr noundef %314) #8
  %316 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !66
  %317 = or i32 %316, %315
  %318 = trunc i32 %317 to i16
  %319 = or i16 %318, 112
  %320 = add i16 %319, 4608
  store i16 %320, ptr %159, align 8, !tbaa !21
  %321 = trunc i64 %278 to i16
  %322 = getelementptr inbounds %struct.tas_s, ptr %159, i64 0, i32 1
  store i16 %321, ptr %322, align 2, !tbaa !42
  br label %323

323:                                              ; preds = %308, %311
  %324 = phi i32 [ 0, %311 ], [ %310, %308 ]
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %1200

326:                                              ; preds = %323
  %327 = load ptr, ptr %165, align 8, !tbaa !5
  %328 = getelementptr inbounds i8, ptr %327, i64 -1
  store ptr %328, ptr %165, align 8, !tbaa !5
  %329 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  store i32 4, ptr %329, align 4, !tbaa !8
  br label %1275

330:                                              ; preds = %114
  %331 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 2
  %332 = load i32, ptr %331, align 8, !tbaa !44
  %333 = icmp ne i32 %332, 0
  %334 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8
  %335 = and i64 %334, 4294967295
  %336 = icmp ne i64 %335, 2
  %337 = select i1 %333, i1 %336, i1 false
  %338 = zext i1 %337 to i32
  %339 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  %340 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5, i32 0, i32 2, i32 1
  store i32 %338, ptr %340, align 8, !tbaa !5
  %341 = getelementptr inbounds i8, ptr %6, i64 356
  store i32 0, ptr %341, align 4, !tbaa !5
  store ptr @s_PSSD_template, ptr %339, align 8, !tbaa !5
  br label %143

342:                                              ; preds = %114
  %343 = load i32, ptr %6, align 8, !tbaa !43
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %369

345:                                              ; preds = %342
  %346 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %347 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !47
  %348 = icmp ult ptr %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.ref_s, ptr %346, i64 1
  store ptr %350, ptr @o_stack, align 8, !tbaa !45
  br label %356

351:                                              ; preds = %345
  %352 = call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #8
  %353 = icmp sgt i32 %352, -1
  br i1 %353, label %356, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds i8, ptr %116, i64 -1
  br label %1266

356:                                              ; preds = %351, %349
  %357 = phi i32 [ %101, %349 ], [ %352, %351 ]
  %358 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %359 = getelementptr inbounds %struct.ref_s, ptr %358, i64 1
  %360 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !67
  %361 = ptrtoint ptr %359 to i64
  %362 = ptrtoint ptr %360 to i64
  %363 = sub i64 %361, %362
  %364 = lshr exact i64 %363, 4
  %365 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 5), align 4, !tbaa !68
  %366 = trunc i64 %364 to i32
  %367 = add i32 %365, %366
  %368 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 1
  store i32 %367, ptr %368, align 4, !tbaa !48
  br label %369

369:                                              ; preds = %356, %342
  %370 = phi i32 [ %357, %356 ], [ %101, %342 ]
  %371 = load i32, ptr %6, align 8, !tbaa !43
  %372 = zext i32 %371 to i64
  %373 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %374 = getelementptr inbounds %struct.ref_s, ptr %373, i64 0, i32 1
  store i64 %372, ptr %374, align 8, !tbaa !5
  store i16 2816, ptr %373, align 8, !tbaa !21
  %375 = getelementptr inbounds %struct.ref_s, ptr %373, i64 1
  %376 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !67
  %377 = ptrtoint ptr %375 to i64
  %378 = ptrtoint ptr %376 to i64
  %379 = sub i64 %377, %378
  %380 = lshr exact i64 %379, 4
  %381 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 5), align 4, !tbaa !68
  %382 = trunc i64 %380 to i32
  %383 = add i32 %381, %382
  store i32 %383, ptr %6, align 8, !tbaa !43
  br label %1227

384:                                              ; preds = %114
  %385 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %386 = and i64 %385, 4294967295
  %387 = icmp eq i64 %386, 2
  br i1 %387, label %388, label %1206

388:                                              ; preds = %384
  %389 = icmp ult ptr %116, %115
  br i1 %389, label %644, label %390

390:                                              ; preds = %388
  %391 = getelementptr inbounds i8, ptr %116, i64 -1
  br label %1266

392:                                              ; preds = %114
  %393 = load i32, ptr %6, align 8, !tbaa !43
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %1206, label %395

395:                                              ; preds = %392
  %396 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %397 = getelementptr inbounds %struct.ref_s, ptr %396, i64 -1
  store ptr %397, ptr @o_stack, align 8, !tbaa !45
  %398 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !67
  %399 = ptrtoint ptr %396 to i64
  %400 = ptrtoint ptr %398 to i64
  %401 = sub i64 %399, %400
  %402 = lshr exact i64 %401, 4
  %403 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 5), align 4, !tbaa !68
  %404 = trunc i64 %402 to i32
  %405 = sub i32 %403, %393
  %406 = add i32 %405, %404
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %407 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 1
  %408 = load i32, ptr %407, align 4, !tbaa !48
  %409 = icmp eq i32 %393, %408
  %410 = select i1 %409, ptr %1, ptr %8
  %411 = load i16, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_array_packing, i64 0, i32 1), align 8, !tbaa !5
  %412 = icmp eq i16 %411, 0
  br i1 %412, label %424, label %413

413:                                              ; preds = %395
  %414 = call i32 @make_packed_array(ptr noundef %410, ptr noundef nonnull @o_stack, i32 noundef %406, ptr noundef nonnull @.str.4) #8
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %413
  %417 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %418 = getelementptr inbounds %struct.ref_s, ptr %417, i64 1
  store ptr %418, ptr @o_stack, align 8, !tbaa !45
  %419 = getelementptr inbounds i8, ptr %116, i64 -1
  %420 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  store i32 0, ptr %420, align 4, !tbaa !8
  br label %460

421:                                              ; preds = %413
  %422 = load i16, ptr %410, align 8, !tbaa !21
  %423 = or i16 %422, 128
  store i16 %423, ptr %410, align 8, !tbaa !21
  br label %439

424:                                              ; preds = %395
  %425 = load ptr, ptr @gs_imemory, align 8, !tbaa !29
  %426 = call i32 @gs_alloc_ref_array(ptr noundef %425, ptr noundef %410, i32 noundef 240, i32 noundef %406, ptr noundef nonnull @.str.5) #8
  %427 = icmp slt i32 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %424
  %429 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %430 = getelementptr inbounds %struct.ref_s, ptr %429, i64 1
  store ptr %430, ptr @o_stack, align 8, !tbaa !45
  %431 = getelementptr inbounds i8, ptr %116, i64 -1
  %432 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  store i32 0, ptr %432, align 4, !tbaa !8
  br label %460

433:                                              ; preds = %424
  %434 = call i32 @ref_stack_store(ptr noundef nonnull @o_stack, ptr noundef %410, i32 noundef %406, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.6) #8
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %433
  %437 = load ptr, ptr @gs_imemory, align 8, !tbaa !29
  call void @gs_free_ref_array(ptr noundef %437, ptr noundef %410, ptr noundef nonnull @.str.5) #8
  br label %460

438:                                              ; preds = %433
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %406) #8
  br label %439

439:                                              ; preds = %438, %421
  %440 = phi i32 [ %414, %421 ], [ %434, %438 ]
  %441 = load i32, ptr %6, align 8, !tbaa !43
  %442 = load i32, ptr %407, align 4, !tbaa !48
  %443 = icmp eq i32 %441, %442
  %444 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %445 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !67
  %446 = icmp ult ptr %444, %445
  br i1 %443, label %447, label %452

447:                                              ; preds = %439
  br i1 %446, label %450, label %448

448:                                              ; preds = %447
  %449 = getelementptr inbounds %struct.ref_s, ptr %444, i64 -1
  store ptr %449, ptr @o_stack, align 8, !tbaa !45
  br label %451

450:                                              ; preds = %447
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef 1) #8
  br label %451

451:                                              ; preds = %450, %448
  store i32 0, ptr %6, align 8, !tbaa !43
  br label %460

452:                                              ; preds = %439
  br i1 %446, label %453, label %455

453:                                              ; preds = %452
  %454 = call i32 @ref_stack_pop_block(ptr noundef nonnull @o_stack) #8
  br label %455

455:                                              ; preds = %453, %452
  %456 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %457 = getelementptr inbounds %struct.ref_s, ptr %456, i64 0, i32 1
  %458 = load i64, ptr %457, align 8, !tbaa !5
  %459 = trunc i64 %458 to i32
  store i32 %459, ptr %6, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %456, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !41
  br label %460

460:                                              ; preds = %455, %436, %428, %416, %451
  %461 = phi i32 [ 20, %416 ], [ 0, %451 ], [ 23, %455 ], [ 20, %428 ], [ 4, %436 ]
  %462 = phi ptr [ %419, %416 ], [ %116, %451 ], [ %116, %455 ], [ %431, %428 ], [ %116, %436 ]
  %463 = phi i32 [ %414, %416 ], [ %440, %451 ], [ %440, %455 ], [ %426, %428 ], [ %434, %436 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  switch i32 %461, label %1287 [
    i32 0, label %1200
    i32 4, label %1206
    i32 23, label %1227
    i32 20, label %1271
  ]

464:                                              ; preds = %114
  %465 = icmp ult ptr %116, %115
  br i1 %465, label %468, label %466

466:                                              ; preds = %464
  %467 = getelementptr inbounds i8, ptr %116, i64 -1
  br label %1266

468:                                              ; preds = %464
  %469 = getelementptr inbounds i8, ptr %116, i64 1
  %470 = load i8, ptr %469, align 1, !tbaa !5
  %471 = icmp eq i8 %470, 47
  br i1 %471, label %472, label %486

472:                                              ; preds = %468
  %473 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  store i32 2, ptr %473, align 8, !tbaa !5
  %474 = icmp ult ptr %469, %115
  br i1 %474, label %482, label %475

475:                                              ; preds = %472
  %476 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %469, ptr %476, align 8, !tbaa !5
  %477 = call i32 @spgetcc(ptr noundef %0, i32 noundef 1) #8
  %478 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 15
  store i32 %477, ptr %478, align 4, !tbaa !49
  %479 = load ptr, ptr %476, align 8, !tbaa !5
  %480 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %481 = load ptr, ptr %480, align 8, !tbaa !5
  br label %489

482:                                              ; preds = %472
  %483 = getelementptr inbounds i8, ptr %116, i64 2
  %484 = load i8, ptr %483, align 1, !tbaa !5
  %485 = zext i8 %484 to i32
  br label %489

486:                                              ; preds = %468
  %487 = zext i8 %470 to i32
  %488 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  store i32 1, ptr %488, align 8, !tbaa !5
  br label %489

489:                                              ; preds = %475, %482, %486
  %490 = phi ptr [ %115, %486 ], [ %481, %475 ], [ %115, %482 ]
  %491 = phi ptr [ %469, %486 ], [ %479, %475 ], [ %483, %482 ]
  %492 = phi i32 [ %487, %486 ], [ %477, %475 ], [ %485, %482 ]
  %493 = getelementptr inbounds i8, ptr %6, i64 332
  store i32 0, ptr %493, align 4, !tbaa !5
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %494
  %496 = load i8, ptr %495, align 1, !tbaa !5
  switch i8 %496, label %728 [
    i8 103, label %504
    i8 101, label %497
    i8 104, label %504
    i8 102, label %504
  ]

497:                                              ; preds = %489
  %498 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_binary_object_format, i64 0, i32 1), align 8, !tbaa !5
  %499 = icmp ne i64 %498, 0
  %500 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8
  %501 = and i64 %500, 4294967295
  %502 = icmp eq i64 %501, 2
  %503 = select i1 %499, i1 %502, i1 false
  br i1 %503, label %504, label %728

504:                                              ; preds = %489, %497, %489, %489
  %505 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  store ptr null, ptr %505, align 8, !tbaa !17
  %506 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  store ptr null, ptr %506, align 8, !tbaa !15
  %507 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  store i32 0, ptr %507, align 8, !tbaa !14
  br label %972

508:                                              ; preds = %114, %512
  %509 = phi ptr [ %510, %512 ], [ %116, %114 ]
  %510 = getelementptr inbounds i8, ptr %509, i64 1
  %511 = icmp ult ptr %510, %115
  br i1 %511, label %512, label %547

512:                                              ; preds = %508
  %513 = load i8, ptr %510, align 1, !tbaa !5
  switch i8 %513, label %508 [
    i8 13, label %514
    i8 10, label %519
    i8 12, label %519
  ], !llvm.loop !69

514:                                              ; preds = %512
  %515 = getelementptr inbounds i8, ptr %509, i64 2
  %516 = load i8, ptr %515, align 1, !tbaa !5
  %517 = icmp eq i8 %516, 10
  %518 = select i1 %517, ptr %515, ptr %510
  br label %519

519:                                              ; preds = %512, %512, %514
  %520 = phi ptr [ %518, %514 ], [ %510, %512 ], [ %510, %512 ]
  %521 = ptrtoint ptr %510 to i64
  %522 = ptrtoint ptr %116 to i64
  %523 = sub i64 %521, %522
  %524 = trunc i64 %523 to i32
  %525 = icmp ugt i32 %524, 1
  br i1 %525, label %526, label %535

526:                                              ; preds = %519
  %527 = getelementptr inbounds i8, ptr %116, i64 1
  %528 = load i8, ptr %527, align 1, !tbaa !5
  %529 = icmp eq i8 %528, 37
  %530 = load ptr, ptr @scan_dsc_proc, align 8
  %531 = icmp ne ptr %530, null
  %532 = select i1 %529, i1 %531, i1 false
  br i1 %532, label %533, label %535

533:                                              ; preds = %526
  %534 = icmp sgt i64 %523, 2
  br i1 %534, label %540, label %543

535:                                              ; preds = %526, %519
  %536 = load ptr, ptr @scan_comment_proc, align 8, !tbaa !19
  %537 = icmp ne ptr %536, null
  %538 = icmp sgt i64 %523, 1
  %539 = and i1 %538, %537
  br i1 %539, label %540, label %543

540:                                              ; preds = %535, %533
  %541 = phi ptr [ %530, %533 ], [ %536, %535 ]
  %542 = call i32 %541(ptr noundef %116, i32 noundef %524) #8
  br label %543

543:                                              ; preds = %540, %533, %535
  %544 = phi i32 [ 0, %535 ], [ 0, %533 ], [ %542, %540 ]
  %545 = icmp slt i32 %544, 0
  %546 = select i1 %545, i32 4, i32 8
  br label %570

547:                                              ; preds = %508
  store i8 0, ptr %93, align 1, !tbaa !5
  %548 = load ptr, ptr @scan_comment_proc, align 8, !tbaa !19
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %562

550:                                              ; preds = %547
  %551 = icmp eq ptr %509, %116
  br i1 %551, label %559, label %552

552:                                              ; preds = %550
  %553 = getelementptr inbounds i8, ptr %116, i64 1
  %554 = load i8, ptr %553, align 1, !tbaa !5
  %555 = icmp eq i8 %554, 37
  %556 = load ptr, ptr @scan_dsc_proc, align 8
  %557 = icmp ne ptr %556, null
  %558 = select i1 %555, i1 %557, i1 false
  br i1 %558, label %562, label %568

559:                                              ; preds = %550
  %560 = load ptr, ptr @scan_dsc_proc, align 8, !tbaa !19
  %561 = icmp eq ptr %560, null
  br i1 %561, label %568, label %562

562:                                              ; preds = %552, %559, %547
  %563 = ptrtoint ptr %510 to i64
  %564 = ptrtoint ptr %116 to i64
  %565 = sub i64 %563, %564
  %566 = and i64 %565, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %92, ptr align 1 %116, i64 %566, i1 false)
  %567 = getelementptr inbounds i8, ptr %92, i64 %566
  br label %568

568:                                              ; preds = %552, %559, %562
  %569 = phi ptr [ %567, %562 ], [ %94, %559 ], [ %94, %552 ]
  store ptr %92, ptr %95, align 8, !tbaa !15
  store i32 0, ptr %96, align 8, !tbaa !14
  br label %570

570:                                              ; preds = %543, %568
  %571 = phi i32 [ 0, %568 ], [ %546, %543 ]
  %572 = phi ptr [ %569, %568 ], [ %98, %543 ]
  %573 = phi ptr [ %509, %568 ], [ %520, %543 ]
  %574 = phi i32 [ %101, %568 ], [ %544, %543 ]
  switch i32 %571, label %1287 [
    i32 0, label %575
    i32 8, label %97
    i32 4, label %1206
  ]

575:                                              ; preds = %570, %69
  %576 = phi ptr [ %57, %69 ], [ %572, %570 ]
  %577 = phi ptr [ %73, %69 ], [ %115, %570 ]
  %578 = phi ptr [ %71, %69 ], [ %573, %570 ]
  %579 = phi ptr [ %32, %69 ], [ %88, %570 ]
  %580 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %581 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 15
  %582 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %583 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5, i64 255
  br label %584

584:                                              ; preds = %611, %575
  %585 = phi ptr [ %613, %611 ], [ %576, %575 ]
  %586 = phi ptr [ %602, %611 ], [ %577, %575 ]
  %587 = phi ptr [ %603, %611 ], [ %578, %575 ]
  %588 = icmp ult ptr %585, %583
  br label %589

589:                                              ; preds = %584, %610
  %590 = phi ptr [ %602, %610 ], [ %586, %584 ]
  %591 = phi ptr [ %603, %610 ], [ %587, %584 ]
  %592 = icmp ult ptr %591, %590
  br i1 %592, label %597, label %593

593:                                              ; preds = %589
  store ptr %591, ptr %580, align 8, !tbaa !5
  %594 = call i32 @spgetcc(ptr noundef %0, i32 noundef 1) #8
  store i32 %594, ptr %581, align 4, !tbaa !49
  %595 = load ptr, ptr %580, align 8, !tbaa !5
  %596 = load ptr, ptr %582, align 8, !tbaa !5
  br label %601

597:                                              ; preds = %589
  %598 = getelementptr inbounds i8, ptr %591, i64 1
  %599 = load i8, ptr %598, align 1, !tbaa !5
  %600 = zext i8 %599 to i32
  br label %601

601:                                              ; preds = %597, %593
  %602 = phi ptr [ %596, %593 ], [ %590, %597 ]
  %603 = phi ptr [ %595, %593 ], [ %598, %597 ]
  %604 = phi i32 [ %594, %593 ], [ %600, %597 ]
  switch i32 %604, label %605 [
    i32 13, label %614
    i32 10, label %614
    i32 12, label %614
  ]

605:                                              ; preds = %601
  %606 = icmp slt i32 %604, 0
  br i1 %606, label %607, label %610

607:                                              ; preds = %605
  switch i32 %604, label %1206 [
    i32 -3, label %608
    i32 -4, label %608
    i32 -1, label %614
  ]

608:                                              ; preds = %607, %607
  %609 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  store ptr %585, ptr %609, align 8, !tbaa !20
  br label %1266

610:                                              ; preds = %605
  br i1 %588, label %611, label %589, !llvm.loop !70

611:                                              ; preds = %610
  %612 = trunc i32 %604 to i8
  %613 = getelementptr inbounds i8, ptr %585, i64 1
  store i8 %612, ptr %585, align 1, !tbaa !5
  br label %584, !llvm.loop !70

614:                                              ; preds = %601, %601, %601, %607
  %615 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %616 = ptrtoint ptr %585 to i64
  %617 = ptrtoint ptr %615 to i64
  %618 = sub i64 %616, %617
  %619 = trunc i64 %618 to i32
  %620 = icmp ugt i32 %619, 1
  br i1 %620, label %621, label %630

621:                                              ; preds = %614
  %622 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5, i64 1
  %623 = load i8, ptr %622, align 1, !tbaa !5
  %624 = icmp eq i8 %623, 37
  %625 = load ptr, ptr @scan_dsc_proc, align 8
  %626 = icmp ne ptr %625, null
  %627 = select i1 %624, i1 %626, i1 false
  br i1 %627, label %628, label %630

628:                                              ; preds = %621
  %629 = icmp sgt i64 %618, 2
  br i1 %629, label %635, label %638

630:                                              ; preds = %621, %614
  %631 = load ptr, ptr @scan_comment_proc, align 8, !tbaa !19
  %632 = icmp ne ptr %631, null
  %633 = icmp sgt i64 %618, 1
  %634 = and i1 %633, %632
  br i1 %634, label %635, label %638

635:                                              ; preds = %630, %628
  %636 = phi ptr [ %625, %628 ], [ %631, %630 ]
  %637 = call i32 %636(ptr noundef nonnull %615, i32 noundef %619) #8
  br label %638

638:                                              ; preds = %635, %628, %630
  %639 = phi i32 [ 0, %630 ], [ 0, %628 ], [ %637, %635 ]
  %640 = icmp slt i32 %639, 0
  br i1 %640, label %1206, label %83

641:                                              ; preds = %114
  %642 = load i32, ptr %6, align 8, !tbaa !43
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %1200, label %1206

644:                                              ; preds = %388, %132
  %645 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  store i32 0, ptr %645, align 8, !tbaa !5
  %646 = getelementptr inbounds i8, ptr %6, i64 332
  store i32 0, ptr %646, align 4, !tbaa !5
  %647 = icmp ult ptr %116, %115
  br i1 %647, label %655, label %648

648:                                              ; preds = %644
  %649 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %116, ptr %649, align 8, !tbaa !5
  %650 = call i32 @spgetcc(ptr noundef %0, i32 noundef 1) #8
  %651 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 15
  store i32 %650, ptr %651, align 4, !tbaa !49
  %652 = load ptr, ptr %649, align 8, !tbaa !5
  %653 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %654 = load ptr, ptr %653, align 8, !tbaa !5
  br label %659

655:                                              ; preds = %644
  %656 = getelementptr inbounds i8, ptr %116, i64 1
  %657 = load i8, ptr %656, align 1, !tbaa !5
  %658 = zext i8 %657 to i32
  br label %659

659:                                              ; preds = %655, %648
  %660 = phi ptr [ %654, %648 ], [ %115, %655 ]
  %661 = phi ptr [ %652, %648 ], [ %656, %655 ]
  %662 = phi i32 [ %650, %648 ], [ %658, %655 ]
  %663 = icmp eq i32 %662, %117
  br i1 %663, label %664, label %668

664:                                              ; preds = %659
  %665 = trunc i32 %117 to i8
  %666 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  store i8 %665, ptr %666, align 1, !tbaa !5
  store i8 %665, ptr %5, align 1, !tbaa !5
  %667 = call i32 @name_ref(ptr noundef nonnull %5, i32 noundef 2, ptr noundef %88, i32 noundef 1) #8
  br label %670

668:                                              ; preds = %659
  %669 = getelementptr inbounds i8, ptr %661, i64 -1
  br label %670

670:                                              ; preds = %664, %668
  %671 = phi i32 [ 38, %664 ], [ 0, %668 ]
  %672 = phi ptr [ %661, %664 ], [ %669, %668 ]
  switch i32 %671, label %1287 [
    i32 0, label %1206
    i32 38, label %1160
  ]

673:                                              ; preds = %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114
  %674 = call i32 @scan_number(ptr noundef %116, ptr noundef %115, i32 noundef 0, ptr noundef %88, ptr noundef nonnull %4) #8
  br label %675

675:                                              ; preds = %695, %692, %673
  %676 = phi i32 [ %697, %695 ], [ %694, %692 ], [ %674, %673 ]
  %677 = icmp eq i32 %676, 1
  br i1 %677, label %678, label %724

678:                                              ; preds = %675
  %679 = load ptr, ptr %4, align 8, !tbaa !19
  %680 = getelementptr inbounds i8, ptr %679, i64 -1
  %681 = load i8, ptr %680, align 1, !tbaa !5
  %682 = zext i8 %681 to i64
  %683 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !5
  %685 = icmp eq i8 %684, 102
  br i1 %685, label %686, label %724

686:                                              ; preds = %678
  %687 = icmp eq i8 %681, 13
  br i1 %687, label %688, label %1200

688:                                              ; preds = %686
  %689 = load i8, ptr %679, align 1, !tbaa !5
  %690 = icmp eq i8 %689, 10
  %691 = select i1 %690, ptr %679, ptr %680
  br label %1200

692:                                              ; preds = %114
  %693 = getelementptr inbounds i8, ptr %116, i64 1
  %694 = call i32 @scan_number(ptr noundef nonnull %693, ptr noundef %115, i32 noundef 1, ptr noundef %88, ptr noundef nonnull %4) #8
  br label %675

695:                                              ; preds = %114
  %696 = getelementptr inbounds i8, ptr %116, i64 1
  %697 = call i32 @scan_number(ptr noundef nonnull %696, ptr noundef %115, i32 noundef -1, ptr noundef %88, ptr noundef nonnull %4) #8
  br label %675

698:                                              ; preds = %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114
  %699 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_binary_object_format, i64 0, i32 1), align 8, !tbaa !5
  %700 = icmp ne i64 %699, 0
  %701 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8
  %702 = and i64 %701, 4294967295
  %703 = icmp eq i64 %702, 2
  %704 = select i1 %700, i1 %703, i1 false
  br i1 %704, label %705, label %713

705:                                              ; preds = %698
  %706 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %116, ptr %706, align 8, !tbaa !5
  %707 = load ptr, ptr @scan_btoken_proc, align 8, !tbaa !19
  %708 = call i32 %707(ptr noundef %0, ptr noundef %88, ptr noundef nonnull %6) #8
  %709 = load ptr, ptr %706, align 8, !tbaa !5
  %710 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %711 = load ptr, ptr %710, align 8, !tbaa !5
  %712 = icmp eq i32 %708, 3
  br i1 %712, label %1271, label %1200

713:                                              ; preds = %114, %698
  %714 = icmp slt i32 %117, 0
  br i1 %714, label %715, label %724

715:                                              ; preds = %713
  %716 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  store i32 0, ptr %716, align 8, !tbaa !14
  %717 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %718 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5, i64 257
  %719 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  store ptr %718, ptr %719, align 8, !tbaa !17
  %720 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  store ptr %717, ptr %720, align 8, !tbaa !15
  %721 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  store ptr %717, ptr %721, align 8, !tbaa !20
  %722 = call ptr @name_memory() #8
  %723 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  store ptr %722, ptr %723, align 8, !tbaa !50
  br label %1266

724:                                              ; preds = %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %713, %675, %678
  %725 = phi i32 [ 1, %678 ], [ 1, %675 ], [ 0, %713 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ]
  %726 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  store i32 0, ptr %726, align 8, !tbaa !5
  %727 = getelementptr inbounds i8, ptr %6, i64 332
  store i32 %725, ptr %727, align 4, !tbaa !5
  br label %728

728:                                              ; preds = %724, %497, %489
  %729 = phi ptr [ %490, %489 ], [ %490, %497 ], [ %115, %724 ]
  %730 = phi ptr [ %491, %489 ], [ %491, %497 ], [ %116, %724 ]
  %731 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  store ptr %730, ptr %731, align 8, !tbaa !15
  %732 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  store i32 0, ptr %732, align 8, !tbaa !14
  %733 = getelementptr inbounds i8, ptr %729, i64 -1
  %734 = trunc i32 %15 to i8
  br label %735

735:                                              ; preds = %738, %728
  %736 = phi ptr [ %730, %728 ], [ %739, %738 ]
  %737 = icmp ult ptr %736, %733
  br i1 %737, label %738, label %745

738:                                              ; preds = %735
  %739 = getelementptr inbounds i8, ptr %736, i64 1
  %740 = load i8, ptr %739, align 1, !tbaa !5
  %741 = zext i8 %740 to i64
  %742 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %741
  %743 = load i8, ptr %742, align 1, !tbaa !5
  %744 = icmp ugt i8 %743, %734
  br i1 %744, label %745, label %735, !llvm.loop !71

745:                                              ; preds = %738, %735
  %746 = phi i32 [ 42, %735 ], [ 0, %738 ]
  %747 = phi ptr [ %736, %735 ], [ %739, %738 ]
  switch i32 %746, label %1287 [
    i32 0, label %748
    i32 42, label %751
  ]

748:                                              ; preds = %745
  %749 = load i8, ptr %747, align 1, !tbaa !5
  %750 = zext i8 %749 to i32
  br label %972

751:                                              ; preds = %745
  %752 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %747, ptr %752, align 8, !tbaa !5
  %753 = getelementptr inbounds i8, ptr %747, i64 1
  %754 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  store ptr %753, ptr %754, align 8, !tbaa !17
  %755 = call ptr @name_memory() #8
  %756 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  store ptr %755, ptr %756, align 8, !tbaa !50
  %757 = load ptr, ptr %754, align 8, !tbaa !58
  %758 = load i32, ptr @name_max_string, align 4, !tbaa !35
  %759 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %760 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %761 = load ptr, ptr %760, align 8, !tbaa !59
  %762 = ptrtoint ptr %757 to i64
  %763 = ptrtoint ptr %761 to i64
  %764 = sub i64 %762, %763
  %765 = trunc i64 %764 to i32
  %766 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  store ptr %757, ptr %766, align 8, !tbaa !60
  %767 = icmp eq i32 %758, %765
  br i1 %767, label %821, label %768

768:                                              ; preds = %751
  %769 = icmp ult i32 %765, 10
  %770 = lshr i32 %758, 1
  %771 = icmp ugt i32 %770, %765
  %772 = shl i32 %765, 1
  %773 = select i1 %771, i32 %772, i32 %758
  %774 = select i1 %769, i32 20, i32 %773
  %775 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  %776 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  br label %777

777:                                              ; preds = %816, %768
  %778 = phi i32 [ %820, %816 ], [ %774, %768 ]
  %779 = load ptr, ptr %759, align 8, !tbaa !58
  %780 = load ptr, ptr %760, align 8, !tbaa !59
  %781 = ptrtoint ptr %779 to i64
  %782 = ptrtoint ptr %780 to i64
  %783 = sub i64 %781, %782
  %784 = trunc i64 %783 to i32
  %785 = load ptr, ptr %766, align 8, !tbaa !60
  %786 = ptrtoint ptr %785 to i64
  %787 = sub i64 %786, %782
  %788 = load ptr, ptr %775, align 8, !tbaa !61
  %789 = load i32, ptr %776, align 8, !tbaa !62
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %796, label %791

791:                                              ; preds = %777
  %792 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %788, i64 0, i32 14
  %793 = load ptr, ptr %792, align 8, !tbaa !63
  %794 = call ptr %793(ptr noundef %788, ptr noundef %780, i32 noundef %784, i32 noundef %778, ptr noundef nonnull @.str.6) #8
  %795 = icmp eq ptr %794, null
  br i1 %795, label %811, label %805

796:                                              ; preds = %777
  %797 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %788, i64 0, i32 12
  %798 = load ptr, ptr %797, align 8, !tbaa !64
  %799 = call ptr %798(ptr noundef %788, i32 noundef %778, ptr noundef nonnull @.str.6) #8
  %800 = icmp eq ptr %799, null
  br i1 %800, label %811, label %801

801:                                              ; preds = %796
  %802 = load ptr, ptr %760, align 8, !tbaa !59
  %803 = call i32 @llvm.umin.i32(i32 %784, i32 %778)
  %804 = zext i32 %803 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %799, ptr align 1 %802, i64 %804, i1 false)
  store i32 1, ptr %776, align 8, !tbaa !62
  br label %805

805:                                              ; preds = %801, %791
  %806 = phi ptr [ %794, %791 ], [ %799, %801 ]
  store ptr %806, ptr %760, align 8, !tbaa !59
  %807 = and i64 %787, 4294967295
  %808 = getelementptr inbounds i8, ptr %806, i64 %807
  store ptr %808, ptr %766, align 8, !tbaa !60
  %809 = zext i32 %778 to i64
  %810 = getelementptr inbounds i8, ptr %806, i64 %809
  store ptr %810, ptr %759, align 8, !tbaa !58
  br label %811

811:                                              ; preds = %805, %796, %791
  %812 = phi i1 [ false, %805 ], [ true, %791 ], [ true, %796 ]
  %813 = phi i32 [ 0, %805 ], [ -25, %791 ], [ -25, %796 ]
  %814 = icmp ugt i32 %778, %765
  %815 = and i1 %814, %812
  br i1 %815, label %816, label %821

816:                                              ; preds = %811
  %817 = sub i32 %778, %765
  %818 = add i32 %817, 1
  %819 = lshr i32 %818, 1
  %820 = sub i32 %778, %819
  br label %777, !llvm.loop !65

821:                                              ; preds = %811, %751
  %822 = phi i32 [ -13, %751 ], [ %813, %811 ]
  %823 = icmp slt i32 %822, 0
  br i1 %823, label %824, label %841

824:                                              ; preds = %821
  %825 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %826 = load i32, ptr %825, align 8, !tbaa !62
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %839

828:                                              ; preds = %824
  %829 = load ptr, ptr %760, align 8, !tbaa !59
  %830 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %831 = icmp eq ptr %829, %830
  br i1 %831, label %839, label %832

832:                                              ; preds = %828
  %833 = load ptr, ptr %759, align 8, !tbaa !58
  %834 = ptrtoint ptr %833 to i64
  %835 = ptrtoint ptr %829 to i64
  %836 = sub i64 %834, %835
  %837 = and i64 %836, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %830, ptr align 1 %829, i64 %837, i1 false)
  %838 = getelementptr inbounds i8, ptr %830, i64 %837
  store ptr %838, ptr %766, align 8, !tbaa !60
  store ptr %830, ptr %760, align 8, !tbaa !59
  br label %839

839:                                              ; preds = %824, %828, %832
  %840 = icmp eq i32 %822, -25
  br i1 %840, label %1266, label %1206

841:                                              ; preds = %821
  %842 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %843 = load ptr, ptr %842, align 8, !tbaa !20
  br label %844

844:                                              ; preds = %55, %841
  %845 = phi ptr [ %843, %841 ], [ %57, %55 ]
  %846 = phi ptr [ %88, %841 ], [ %32, %55 ]
  %847 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %848 = load ptr, ptr %847, align 8, !tbaa !5
  %849 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %850 = load ptr, ptr %849, align 8, !tbaa !5
  %851 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 15
  %852 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %853 = load i32, ptr @name_max_string, align 4
  %854 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %855 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %856 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %857 = lshr i32 %853, 1
  %858 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  %859 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %860 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %861 = trunc i32 %15 to i8
  br label %862

862:                                              ; preds = %968, %844
  %863 = phi ptr [ %845, %844 ], [ %971, %968 ]
  %864 = phi ptr [ %850, %844 ], [ %876, %968 ]
  %865 = phi ptr [ %848, %844 ], [ %877, %968 ]
  %866 = icmp ult ptr %865, %864
  br i1 %866, label %871, label %867

867:                                              ; preds = %862
  store ptr %865, ptr %847, align 8, !tbaa !5
  %868 = call i32 @spgetcc(ptr noundef %0, i32 noundef 1) #8
  store i32 %868, ptr %851, align 4, !tbaa !49
  %869 = load ptr, ptr %847, align 8, !tbaa !5
  %870 = load ptr, ptr %849, align 8, !tbaa !5
  br label %875

871:                                              ; preds = %862
  %872 = getelementptr inbounds i8, ptr %865, i64 1
  %873 = load i8, ptr %872, align 1, !tbaa !5
  %874 = zext i8 %873 to i32
  br label %875

875:                                              ; preds = %871, %867
  %876 = phi ptr [ %870, %867 ], [ %864, %871 ]
  %877 = phi ptr [ %869, %867 ], [ %872, %871 ]
  %878 = phi i32 [ %868, %867 ], [ %874, %871 ]
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %879
  %881 = load i8, ptr %880, align 1, !tbaa !5
  %882 = icmp ugt i8 %881, %861
  br i1 %882, label %972, label %883

883:                                              ; preds = %875
  %884 = load ptr, ptr %852, align 8, !tbaa !17
  %885 = icmp eq ptr %863, %884
  br i1 %885, label %886, label %968

886:                                              ; preds = %883
  %887 = load ptr, ptr %854, align 8, !tbaa !58
  %888 = load ptr, ptr %855, align 8, !tbaa !59
  %889 = ptrtoint ptr %887 to i64
  %890 = ptrtoint ptr %888 to i64
  %891 = sub i64 %889, %890
  %892 = trunc i64 %891 to i32
  store ptr %863, ptr %856, align 8, !tbaa !60
  %893 = icmp eq i32 %853, %892
  br i1 %893, label %944, label %894

894:                                              ; preds = %886
  %895 = icmp ult i32 %892, 10
  %896 = icmp ugt i32 %857, %892
  %897 = shl i32 %892, 1
  %898 = select i1 %896, i32 %897, i32 %853
  %899 = select i1 %895, i32 20, i32 %898
  br label %900

900:                                              ; preds = %939, %894
  %901 = phi i32 [ %943, %939 ], [ %899, %894 ]
  %902 = load ptr, ptr %854, align 8, !tbaa !58
  %903 = load ptr, ptr %855, align 8, !tbaa !59
  %904 = ptrtoint ptr %902 to i64
  %905 = ptrtoint ptr %903 to i64
  %906 = sub i64 %904, %905
  %907 = trunc i64 %906 to i32
  %908 = load ptr, ptr %856, align 8, !tbaa !60
  %909 = ptrtoint ptr %908 to i64
  %910 = sub i64 %909, %905
  %911 = load ptr, ptr %858, align 8, !tbaa !61
  %912 = load i32, ptr %859, align 8, !tbaa !62
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %919, label %914

914:                                              ; preds = %900
  %915 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %911, i64 0, i32 14
  %916 = load ptr, ptr %915, align 8, !tbaa !63
  %917 = call ptr %916(ptr noundef %911, ptr noundef %903, i32 noundef %907, i32 noundef %901, ptr noundef nonnull @.str.6) #8
  %918 = icmp eq ptr %917, null
  br i1 %918, label %934, label %928

919:                                              ; preds = %900
  %920 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %911, i64 0, i32 12
  %921 = load ptr, ptr %920, align 8, !tbaa !64
  %922 = call ptr %921(ptr noundef %911, i32 noundef %901, ptr noundef nonnull @.str.6) #8
  %923 = icmp eq ptr %922, null
  br i1 %923, label %934, label %924

924:                                              ; preds = %919
  %925 = load ptr, ptr %855, align 8, !tbaa !59
  %926 = call i32 @llvm.umin.i32(i32 %907, i32 %901)
  %927 = zext i32 %926 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %922, ptr align 1 %925, i64 %927, i1 false)
  store i32 1, ptr %859, align 8, !tbaa !62
  br label %928

928:                                              ; preds = %924, %914
  %929 = phi ptr [ %917, %914 ], [ %922, %924 ]
  store ptr %929, ptr %855, align 8, !tbaa !59
  %930 = and i64 %910, 4294967295
  %931 = getelementptr inbounds i8, ptr %929, i64 %930
  store ptr %931, ptr %856, align 8, !tbaa !60
  %932 = zext i32 %901 to i64
  %933 = getelementptr inbounds i8, ptr %929, i64 %932
  store ptr %933, ptr %854, align 8, !tbaa !58
  br label %934

934:                                              ; preds = %928, %919, %914
  %935 = phi i1 [ false, %928 ], [ true, %914 ], [ true, %919 ]
  %936 = phi i32 [ 0, %928 ], [ -25, %914 ], [ -25, %919 ]
  %937 = icmp ugt i32 %901, %892
  %938 = and i1 %937, %935
  br i1 %938, label %939, label %944

939:                                              ; preds = %934
  %940 = sub i32 %901, %892
  %941 = add i32 %940, 1
  %942 = lshr i32 %941, 1
  %943 = sub i32 %901, %942
  br label %900, !llvm.loop !65

944:                                              ; preds = %934, %886
  %945 = phi i32 [ -13, %886 ], [ %936, %934 ]
  %946 = icmp slt i32 %945, 0
  br i1 %946, label %947, label %966

947:                                              ; preds = %944
  %948 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %949 = load i32, ptr %948, align 8, !tbaa !62
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %962

951:                                              ; preds = %947
  %952 = load ptr, ptr %855, align 8, !tbaa !59
  %953 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %954 = icmp eq ptr %952, %953
  br i1 %954, label %962, label %955

955:                                              ; preds = %951
  %956 = load ptr, ptr %854, align 8, !tbaa !58
  %957 = ptrtoint ptr %956 to i64
  %958 = ptrtoint ptr %952 to i64
  %959 = sub i64 %957, %958
  %960 = and i64 %959, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %953, ptr align 1 %952, i64 %960, i1 false)
  %961 = getelementptr inbounds i8, ptr %953, i64 %960
  store ptr %961, ptr %856, align 8, !tbaa !60
  store ptr %953, ptr %855, align 8, !tbaa !59
  br label %962

962:                                              ; preds = %947, %951, %955
  %963 = icmp eq i32 %945, -25
  br i1 %963, label %964, label %1206

964:                                              ; preds = %962
  %965 = getelementptr inbounds i8, ptr %877, i64 -1
  br label %1266

966:                                              ; preds = %944
  %967 = load ptr, ptr %860, align 8, !tbaa !20
  br label %968

968:                                              ; preds = %966, %883
  %969 = phi ptr [ %967, %966 ], [ %863, %883 ]
  %970 = trunc i32 %878 to i8
  %971 = getelementptr inbounds i8, ptr %969, i64 1
  store i8 %970, ptr %969, align 1, !tbaa !5
  br label %862, !llvm.loop !72

972:                                              ; preds = %875, %748, %504
  %973 = phi ptr [ %747, %748 ], [ null, %504 ], [ %863, %875 ]
  %974 = phi ptr [ %729, %748 ], [ %490, %504 ], [ %876, %875 ]
  %975 = phi ptr [ %747, %748 ], [ %491, %504 ], [ %877, %875 ]
  %976 = phi i32 [ %750, %748 ], [ %492, %504 ], [ %878, %875 ]
  %977 = phi ptr [ %88, %748 ], [ %88, %504 ], [ %846, %875 ]
  %978 = sext i32 %976 to i64
  %979 = getelementptr inbounds i8, ptr getelementptr inbounds ([260 x i8], ptr @scan_char_array, i64 0, i64 4), i64 %978
  %980 = load i8, ptr %979, align 1, !tbaa !5
  switch i8 %980, label %999 [
    i8 101, label %981
    i8 103, label %981
    i8 102, label %983
    i8 104, label %998
  ]

981:                                              ; preds = %972, %972
  %982 = getelementptr inbounds i8, ptr %975, i64 -1
  br label %999

983:                                              ; preds = %972
  %984 = icmp eq i32 %976, 13
  br i1 %984, label %985, label %999

985:                                              ; preds = %983
  %986 = icmp ult ptr %975, %974
  br i1 %986, label %993, label %987

987:                                              ; preds = %985
  %988 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %989 = load i16, ptr %988, align 8, !tbaa !25
  %990 = icmp eq i16 %989, -1
  br i1 %990, label %999, label %991

991:                                              ; preds = %987
  %992 = getelementptr inbounds i8, ptr %975, i64 -1
  br label %1246

993:                                              ; preds = %985
  %994 = getelementptr inbounds i8, ptr %975, i64 1
  %995 = load i8, ptr %994, align 1, !tbaa !5
  %996 = icmp eq i8 %995, 10
  %997 = select i1 %996, ptr %994, ptr %975
  br label %999

998:                                              ; preds = %972
  switch i32 %976, label %999 [
    i32 -3, label %1246
    i32 -4, label %1246
    i32 -2, label %1206
  ]

999:                                              ; preds = %993, %998, %983, %987, %972, %981
  %1000 = phi ptr [ %975, %972 ], [ %975, %998 ], [ %975, %987 ], [ %975, %983 ], [ %982, %981 ], [ %997, %993 ]
  %1001 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  %1002 = getelementptr inbounds i8, ptr %6, i64 332
  %1003 = load i32, ptr %1002, align 4, !tbaa !5
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1043, label %1005

1005:                                             ; preds = %999
  %1006 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %1007 = load ptr, ptr %1006, align 8, !tbaa !15
  %1008 = load i8, ptr %1007, align 1, !tbaa !5
  switch i8 %1008, label %1013 [
    i8 45, label %1009
    i8 43, label %1011
  ]

1009:                                             ; preds = %1005
  %1010 = getelementptr inbounds i8, ptr %1007, i64 1
  br label %1013

1011:                                             ; preds = %1005
  %1012 = getelementptr inbounds i8, ptr %1007, i64 1
  br label %1013

1013:                                             ; preds = %1005, %1011, %1009
  %1014 = phi i32 [ 1, %1011 ], [ -1, %1009 ], [ 0, %1005 ]
  %1015 = phi ptr [ %1012, %1011 ], [ %1010, %1009 ], [ %1007, %1005 ]
  %1016 = call i32 @scan_number(ptr noundef nonnull %1015, ptr noundef %973, i32 noundef %1014, ptr noundef %977, ptr noundef nonnull %4) #8
  switch i32 %1016, label %1017 [
    i32 1, label %1040
    i32 -18, label %1039
  ]

1017:                                             ; preds = %1013
  %1018 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %1019 = load i32, ptr %1018, align 8, !tbaa !62
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1034, label %1021

1021:                                             ; preds = %1017
  %1022 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  %1023 = load ptr, ptr %1022, align 8, !tbaa !61
  %1024 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1023, i64 0, i32 15
  %1025 = load ptr, ptr %1024, align 8, !tbaa !73
  %1026 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %1027 = load ptr, ptr %1026, align 8, !tbaa !59
  %1028 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %1029 = load ptr, ptr %1028, align 8, !tbaa !58
  %1030 = ptrtoint ptr %1029 to i64
  %1031 = ptrtoint ptr %1027 to i64
  %1032 = sub i64 %1030, %1031
  %1033 = trunc i64 %1032 to i32
  call void %1025(ptr noundef %1023, ptr noundef %1027, i32 noundef %1033, ptr noundef nonnull @.str.6) #8
  br label %1034

1034:                                             ; preds = %1017, %1021
  %1035 = load i32, ptr %1001, align 8, !tbaa !5
  %1036 = icmp eq i32 %1035, 2
  %1037 = select i1 %1036, i32 4, i32 11
  %1038 = select i1 %1036, i32 -18, i32 %1016
  br label %1040

1039:                                             ; preds = %1013
  br label %1040

1040:                                             ; preds = %1039, %1013, %1034
  %1041 = phi i32 [ %1037, %1034 ], [ 0, %1013 ], [ 0, %1039 ]
  %1042 = phi i32 [ %1038, %1034 ], [ 0, %1013 ], [ -18, %1039 ]
  switch i32 %1041, label %1287 [
    i32 0, label %1043
    i32 11, label %1200
    i32 4, label %1206
  ]

1043:                                             ; preds = %1040, %999
  %1044 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %1045 = load i32, ptr %1044, align 8, !tbaa !14
  %1046 = icmp eq i32 %1045, 0
  %1047 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %1048 = load ptr, ptr %1047, align 8, !tbaa !15
  %1049 = ptrtoint ptr %973 to i64
  %1050 = ptrtoint ptr %1048 to i64
  %1051 = sub i64 %1049, %1050
  %1052 = trunc i64 %1051 to i32
  br i1 %1046, label %1126, label %1053

1053:                                             ; preds = %1043
  %1054 = call i32 @name_ref(ptr noundef %1048, i32 noundef %1052, ptr noundef %977, i32 noundef -1) #8
  %1055 = icmp sgt i32 %1054, -1
  br i1 %1055, label %1056, label %1073

1056:                                             ; preds = %1053
  %1057 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %1058 = load i32, ptr %1057, align 8, !tbaa !62
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1122, label %1060

1060:                                             ; preds = %1056
  %1061 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  %1062 = load ptr, ptr %1061, align 8, !tbaa !61
  %1063 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1062, i64 0, i32 15
  %1064 = load ptr, ptr %1063, align 8, !tbaa !73
  %1065 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %1066 = load ptr, ptr %1065, align 8, !tbaa !59
  %1067 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %1068 = load ptr, ptr %1067, align 8, !tbaa !58
  %1069 = ptrtoint ptr %1068 to i64
  %1070 = ptrtoint ptr %1066 to i64
  %1071 = sub i64 %1069, %1070
  %1072 = trunc i64 %1071 to i32
  call void %1064(ptr noundef %1062, ptr noundef %1066, i32 noundef %1072, ptr noundef nonnull @.str.6) #8
  br label %1122

1073:                                             ; preds = %1053
  %1074 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %1075 = load ptr, ptr %1074, align 8, !tbaa !58
  %1076 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %1077 = load ptr, ptr %1076, align 8, !tbaa !59
  %1078 = ptrtoint ptr %1075 to i64
  %1079 = ptrtoint ptr %1077 to i64
  %1080 = sub i64 %1078, %1079
  %1081 = trunc i64 %1080 to i32
  %1082 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  %1083 = load ptr, ptr %1082, align 8, !tbaa !60
  %1084 = ptrtoint ptr %1083 to i64
  %1085 = sub i64 %1084, %1079
  %1086 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 6
  %1087 = load ptr, ptr %1086, align 8, !tbaa !61
  %1088 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %1089 = load i32, ptr %1088, align 8, !tbaa !62
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1096, label %1091

1091:                                             ; preds = %1073
  %1092 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1087, i64 0, i32 14
  %1093 = load ptr, ptr %1092, align 8, !tbaa !63
  %1094 = call ptr %1093(ptr noundef %1087, ptr noundef %1077, i32 noundef %1081, i32 noundef %1052, ptr noundef nonnull @.str.6) #8
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1111, label %1105

1096:                                             ; preds = %1073
  %1097 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1087, i64 0, i32 12
  %1098 = load ptr, ptr %1097, align 8, !tbaa !64
  %1099 = call ptr %1098(ptr noundef %1087, i32 noundef %1052, ptr noundef nonnull @.str.6) #8
  %1100 = icmp eq ptr %1099, null
  br i1 %1100, label %1111, label %1101

1101:                                             ; preds = %1096
  %1102 = load ptr, ptr %1076, align 8, !tbaa !59
  %1103 = call i32 @llvm.umin.i32(i32 %1081, i32 %1052)
  %1104 = zext i32 %1103 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1099, ptr align 1 %1102, i64 %1104, i1 false)
  store i32 1, ptr %1088, align 8, !tbaa !62
  br label %1105

1105:                                             ; preds = %1101, %1091
  %1106 = phi ptr [ %1094, %1091 ], [ %1099, %1101 ]
  store ptr %1106, ptr %1076, align 8, !tbaa !59
  %1107 = and i64 %1085, 4294967295
  %1108 = getelementptr inbounds i8, ptr %1106, i64 %1107
  store ptr %1108, ptr %1082, align 8, !tbaa !60
  %1109 = and i64 %1051, 4294967295
  %1110 = getelementptr inbounds i8, ptr %1106, i64 %1109
  store ptr %1110, ptr %1074, align 8, !tbaa !58
  br label %1111

1111:                                             ; preds = %1091, %1096, %1105
  %1112 = phi i1 [ false, %1105 ], [ true, %1091 ], [ true, %1096 ]
  %1113 = phi i32 [ 0, %1105 ], [ -25, %1091 ], [ -25, %1096 ]
  br i1 %1112, label %1114, label %1119

1114:                                             ; preds = %1111
  %1115 = icmp ne i32 %976, -1
  %1116 = sext i1 %1115 to i64
  %1117 = getelementptr inbounds i8, ptr %1000, i64 %1116
  %1118 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  store i32 3, ptr %1118, align 4, !tbaa !8
  br label %1122

1119:                                             ; preds = %1111
  %1120 = load ptr, ptr %1047, align 8, !tbaa !15
  %1121 = call i32 @name_ref(ptr noundef %1120, i32 noundef %1052, ptr noundef %977, i32 noundef 2) #8
  br label %1122

1122:                                             ; preds = %1060, %1056, %1119, %1114
  %1123 = phi i32 [ 20, %1114 ], [ 0, %1119 ], [ 0, %1056 ], [ 0, %1060 ]
  %1124 = phi ptr [ %1117, %1114 ], [ %1000, %1119 ], [ %1000, %1056 ], [ %1000, %1060 ]
  %1125 = phi i32 [ %1113, %1114 ], [ %1121, %1119 ], [ %1054, %1056 ], [ %1054, %1060 ]
  switch i32 %1123, label %1287 [
    i32 0, label %1128
    i32 20, label %1271
  ]

1126:                                             ; preds = %1043
  %1127 = call i32 @name_ref(ptr noundef %1048, i32 noundef %1052, ptr noundef %977, i32 noundef 1) #8
  br label %1128

1128:                                             ; preds = %1122, %1126
  %1129 = phi ptr [ %1124, %1122 ], [ %1000, %1126 ]
  %1130 = phi i32 [ %1125, %1122 ], [ %1127, %1126 ]
  %1131 = icmp slt i32 %1130, 0
  br i1 %1131, label %1132, label %1160

1132:                                             ; preds = %1128
  %1133 = icmp eq i32 %1130, -25
  br i1 %1133, label %1134, label %1206

1134:                                             ; preds = %1132
  %1135 = load i32, ptr %1044, align 8, !tbaa !14
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1137, label %1156

1137:                                             ; preds = %1134
  %1138 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  store ptr %973, ptr %1138, align 8, !tbaa !20
  %1139 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %1140 = load i32, ptr %1139, align 8, !tbaa !62
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1142, label %1156

1142:                                             ; preds = %1137
  %1143 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %1144 = load ptr, ptr %1143, align 8, !tbaa !59
  %1145 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %1146 = icmp eq ptr %1144, %1145
  br i1 %1146, label %1156, label %1147

1147:                                             ; preds = %1142
  %1148 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %1149 = load ptr, ptr %1148, align 8, !tbaa !58
  %1150 = ptrtoint ptr %1149 to i64
  %1151 = ptrtoint ptr %1144 to i64
  %1152 = sub i64 %1150, %1151
  %1153 = and i64 %1152, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1145, ptr align 1 %1144, i64 %1153, i1 false)
  %1154 = getelementptr inbounds i8, ptr %1145, i64 %1153
  %1155 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  store ptr %1154, ptr %1155, align 8, !tbaa !60
  store ptr %1145, ptr %1143, align 8, !tbaa !59
  br label %1156

1156:                                             ; preds = %1147, %1142, %1137, %1134
  %1157 = icmp ne i32 %976, -1
  %1158 = sext i1 %1157 to i64
  %1159 = getelementptr inbounds i8, ptr %1129, i64 %1158
  br label %1266

1160:                                             ; preds = %1128, %670
  %1161 = phi ptr [ %973, %1128 ], [ %98, %670 ]
  %1162 = phi ptr [ %974, %1128 ], [ %660, %670 ]
  %1163 = phi ptr [ %1129, %1128 ], [ %672, %670 ]
  %1164 = phi i32 [ %1130, %1128 ], [ %101, %670 ]
  %1165 = phi ptr [ %977, %1128 ], [ %88, %670 ]
  %1166 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 5
  %1167 = load i32, ptr %1166, align 8, !tbaa !5
  switch i32 %1167, label %1200 [
    i32 0, label %1168
    i32 2, label %1175
  ]

1168:                                             ; preds = %1160
  %1169 = getelementptr inbounds i8, ptr %1165, i64 1
  %1170 = load i8, ptr %1169, align 1, !tbaa !5
  %1171 = icmp eq i8 %1170, 13
  br i1 %1171, label %1172, label %1200

1172:                                             ; preds = %1168
  %1173 = load i16, ptr %1165, align 8, !tbaa !21
  %1174 = or i16 %1173, 128
  store i16 %1174, ptr %1165, align 8, !tbaa !21
  br label %1200

1175:                                             ; preds = %1160
  %1176 = getelementptr inbounds i8, ptr %1165, i64 1
  %1177 = load i8, ptr %1176, align 1, !tbaa !5
  %1178 = icmp eq i8 %1177, 13
  br i1 %1178, label %1179, label %1197

1179:                                             ; preds = %1175
  %1180 = call i32 @name_index(ptr noundef %1165) #8
  %1181 = call ptr @dict_find_name_by_index(i32 noundef %1180) #8
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %1197, label %1183

1183:                                             ; preds = %1179
  %1184 = load i32, ptr %6, align 8, !tbaa !43
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1192, label %1186

1186:                                             ; preds = %1183
  %1187 = load i16, ptr %1181, align 8, !tbaa !21
  %1188 = and i16 %1187, 12
  %1189 = zext nneg i16 %1188 to i32
  %1190 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !40
  %1191 = icmp ult i32 %1190, %1189
  br i1 %1191, label %1197, label %1192

1192:                                             ; preds = %1186, %1183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1165, ptr noundef nonnull align 8 dereferenceable(16) %1181, i64 16, i1 false), !tbaa.struct !41
  %1193 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !66
  %1194 = load i16, ptr %1165, align 8, !tbaa !21
  %1195 = trunc i32 %1193 to i16
  %1196 = or i16 %1194, %1195
  store i16 %1196, ptr %1165, align 8, !tbaa !21
  br label %1197

1197:                                             ; preds = %1186, %1179, %1175, %1192
  %1198 = phi i1 [ true, %1192 ], [ false, %1175 ], [ false, %1179 ], [ false, %1186 ]
  %1199 = phi i32 [ %1164, %1192 ], [ -21, %1175 ], [ -21, %1179 ], [ -7, %1186 ]
  br i1 %1198, label %1200, label %1206

1200:                                             ; preds = %688, %1197, %686, %641, %1160, %1172, %1168, %705, %460, %323, %1040, %119
  %1201 = phi ptr [ %973, %1040 ], [ %1161, %1160 ], [ %1161, %1197 ], [ %1161, %1172 ], [ %1161, %1168 ], [ %98, %705 ], [ %98, %460 ], [ %98, %119 ], [ %155, %323 ], [ %98, %641 ], [ %98, %688 ], [ %98, %686 ]
  %1202 = phi ptr [ %974, %1040 ], [ %1162, %1160 ], [ %1162, %1197 ], [ %1162, %1172 ], [ %1162, %1168 ], [ %711, %705 ], [ %115, %460 ], [ %115, %119 ], [ %269, %323 ], [ %115, %641 ], [ %115, %688 ], [ %115, %686 ]
  %1203 = phi ptr [ %1000, %1040 ], [ %1163, %1160 ], [ %1163, %1197 ], [ %1163, %1172 ], [ %1163, %1168 ], [ %709, %705 ], [ %462, %460 ], [ %116, %119 ], [ %267, %323 ], [ %116, %641 ], [ %691, %688 ], [ %680, %686 ]
  %1204 = phi i32 [ %1042, %1040 ], [ %1164, %1160 ], [ %1199, %1197 ], [ %1164, %1172 ], [ %1164, %1168 ], [ %708, %705 ], [ %463, %460 ], [ %121, %119 ], [ %324, %323 ], [ 2, %641 ], [ 0, %688 ], [ 0, %686 ]
  br label %1206

1205:                                             ; preds = %114
  br label %1206

1206:                                             ; preds = %570, %262, %114, %1205, %1197, %1132, %998, %962, %839, %670, %641, %607, %392, %384, %266, %638, %60, %1200, %1040, %460
  %1207 = phi ptr [ %973, %1040 ], [ %1201, %1200 ], [ %1161, %1197 ], [ %585, %638 ], [ %98, %460 ], [ %57, %60 ], [ %155, %266 ], [ %98, %384 ], [ %98, %392 ], [ %585, %607 ], [ %98, %641 ], [ %98, %670 ], [ %98, %839 ], [ %863, %962 ], [ %973, %998 ], [ %973, %1132 ], [ %98, %1205 ], [ %98, %114 ], [ %155, %262 ], [ %572, %570 ]
  %1208 = phi ptr [ %974, %1040 ], [ %1202, %1200 ], [ %1162, %1197 ], [ %602, %638 ], [ %115, %460 ], [ %67, %60 ], [ %269, %266 ], [ %115, %384 ], [ %115, %392 ], [ %602, %607 ], [ %115, %641 ], [ %660, %670 ], [ %729, %839 ], [ %876, %962 ], [ %974, %998 ], [ %974, %1132 ], [ %115, %1205 ], [ %115, %114 ], [ %156, %262 ], [ %115, %570 ]
  %1209 = phi ptr [ %1000, %1040 ], [ %1203, %1200 ], [ %1163, %1197 ], [ %603, %638 ], [ %462, %460 ], [ %65, %60 ], [ %267, %266 ], [ %116, %384 ], [ %116, %392 ], [ %603, %607 ], [ %116, %641 ], [ %672, %670 ], [ %753, %839 ], [ %877, %962 ], [ %975, %998 ], [ %1129, %1132 ], [ %116, %1205 ], [ %116, %114 ], [ %157, %262 ], [ %573, %570 ]
  %1210 = phi i32 [ %1042, %1040 ], [ %1204, %1200 ], [ %1199, %1197 ], [ %639, %638 ], [ %463, %460 ], [ %63, %60 ], [ -18, %266 ], [ -18, %384 ], [ -18, %392 ], [ -18, %607 ], [ -18, %641 ], [ -18, %670 ], [ %822, %839 ], [ %945, %962 ], [ -12, %998 ], [ %1130, %1132 ], [ -12, %1205 ], [ -18, %114 ], [ %265, %262 ], [ %574, %570 ]
  %1211 = icmp slt i32 %1210, 0
  br i1 %1211, label %1212, label %1222

1212:                                             ; preds = %1206
  %1213 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %1209, ptr %1213, align 8, !tbaa !5
  %1214 = load i32, ptr %6, align 8, !tbaa !43
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1287, label %1216

1216:                                             ; preds = %1212
  %1217 = call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #8
  %1218 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 1
  %1219 = load i32, ptr %1218, align 4, !tbaa !48
  %1220 = add i32 %1217, 1
  %1221 = sub i32 %1220, %1219
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %1221) #8
  br label %1287

1222:                                             ; preds = %1206
  %1223 = load i32, ptr %6, align 8, !tbaa !43
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1225, label %1227

1225:                                             ; preds = %1222
  %1226 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %1209, ptr %1226, align 8, !tbaa !5
  br label %1287

1227:                                             ; preds = %1222, %460, %369
  %1228 = phi ptr [ %1207, %1222 ], [ %98, %460 ], [ %98, %369 ]
  %1229 = phi ptr [ %1208, %1222 ], [ %115, %460 ], [ %115, %369 ]
  %1230 = phi ptr [ %1209, %1222 ], [ %462, %460 ], [ %116, %369 ]
  %1231 = phi i32 [ %1210, %1222 ], [ %463, %460 ], [ %370, %369 ]
  %1232 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %1233 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !47
  %1234 = icmp ult ptr %1232, %1233
  br i1 %1234, label %1235, label %1237

1235:                                             ; preds = %1227
  %1236 = getelementptr inbounds %struct.ref_s, ptr %1232, i64 1
  store ptr %1236, ptr @o_stack, align 8, !tbaa !45
  br label %1243

1237:                                             ; preds = %1227
  %1238 = call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #8
  %1239 = icmp sgt i32 %1238, -1
  br i1 %1239, label %1243, label %1240

1240:                                             ; preds = %1237
  %1241 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %1230, ptr %1241, align 8, !tbaa !5
  %1242 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  store i32 0, ptr %1242, align 4, !tbaa !8
  br label %1282

1243:                                             ; preds = %1237, %1235
  %1244 = phi i32 [ %1231, %1235 ], [ %1238, %1237 ]
  %1245 = load ptr, ptr @o_stack, align 8, !tbaa !45
  br label %83

1246:                                             ; preds = %998, %998, %991
  %1247 = phi ptr [ %975, %998 ], [ %975, %998 ], [ %992, %991 ]
  %1248 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  store ptr %973, ptr %1248, align 8, !tbaa !20
  %1249 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 4
  %1250 = load i32, ptr %1249, align 8, !tbaa !62
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1252, label %1266

1252:                                             ; preds = %1246
  %1253 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 1
  %1254 = load ptr, ptr %1253, align 8, !tbaa !59
  %1255 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 5
  %1256 = icmp eq ptr %1254, %1255
  br i1 %1256, label %1266, label %1257

1257:                                             ; preds = %1252
  %1258 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 3
  %1259 = load ptr, ptr %1258, align 8, !tbaa !58
  %1260 = ptrtoint ptr %1259 to i64
  %1261 = ptrtoint ptr %1254 to i64
  %1262 = sub i64 %1260, %1261
  %1263 = and i64 %1262, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1255, ptr align 1 %1254, i64 %1263, i1 false)
  %1264 = getelementptr inbounds i8, ptr %1255, i64 %1263
  %1265 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 4, i32 2
  store ptr %1264, ptr %1265, align 8, !tbaa !60
  store ptr %1255, ptr %1253, align 8, !tbaa !59
  br label %1266

1266:                                             ; preds = %1257, %1252, %1246, %839, %266, %266, %354, %964, %1156, %715, %608, %466, %390, %130
  %1267 = phi i32 [ 0, %130 ], [ 0, %390 ], [ 0, %466 ], [ 2, %608 ], [ 0, %715 ], [ 3, %1156 ], [ 3, %964 ], [ 0, %354 ], [ 4, %266 ], [ 4, %266 ], [ 3, %839 ], [ 3, %1246 ], [ 3, %1252 ], [ 3, %1257 ]
  %1268 = phi ptr [ %131, %130 ], [ %391, %390 ], [ %467, %466 ], [ %603, %608 ], [ %116, %715 ], [ %1159, %1156 ], [ %965, %964 ], [ %355, %354 ], [ %267, %266 ], [ %267, %266 ], [ %753, %839 ], [ %1247, %1246 ], [ %1247, %1252 ], [ %1247, %1257 ]
  %1269 = phi i32 [ 3, %130 ], [ 3, %390 ], [ 3, %466 ], [ 3, %608 ], [ 3, %715 ], [ -25, %1156 ], [ -25, %964 ], [ %352, %354 ], [ 3, %266 ], [ 3, %266 ], [ -25, %839 ], [ 3, %1246 ], [ 3, %1252 ], [ 3, %1257 ]
  %1270 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 3
  store i32 %1267, ptr %1270, align 4, !tbaa !8
  br label %1271

1271:                                             ; preds = %1266, %60, %705, %1122, %460
  %1272 = phi ptr [ %1124, %1122 ], [ %462, %460 ], [ %709, %705 ], [ %65, %60 ], [ %1268, %1266 ]
  %1273 = phi i32 [ %1125, %1122 ], [ %463, %460 ], [ 3, %705 ], [ 3, %60 ], [ %1269, %1266 ]
  %1274 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %1272, ptr %1274, align 8, !tbaa !5
  br label %1275

1275:                                             ; preds = %262, %1271, %326
  %1276 = phi i32 [ %1273, %1271 ], [ %324, %326 ], [ %265, %262 ]
  %1277 = load i32, ptr %6, align 8, !tbaa !43
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1282, label %1279

1279:                                             ; preds = %1275
  %1280 = load ptr, ptr @o_stack, align 8, !tbaa !45
  %1281 = getelementptr inbounds %struct.ref_s, ptr %1280, i64 -1
  store ptr %1281, ptr @o_stack, align 8, !tbaa !45
  br label %1282

1282:                                             ; preds = %1275, %1279, %1240
  %1283 = phi i32 [ %1276, %1279 ], [ %1276, %1275 ], [ %1238, %1240 ]
  %1284 = getelementptr inbounds %struct.scanner_state_s, ptr %2, i64 0, i32 2
  %1285 = load i32, ptr %1284, align 8, !tbaa !44
  %1286 = getelementptr inbounds %struct.scanner_state_s, ptr %6, i64 0, i32 2
  store i32 %1285, ptr %1286, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull align 8 dereferenceable(384) %6, i64 384, i1 false), !tbaa.struct !34
  br label %1287

1287:                                             ; preds = %570, %262, %1212, %1216, %55, %24, %1282, %1225, %1122, %1040, %745, %670, %460
  %1288 = phi i32 [ %1283, %1282 ], [ %1210, %1225 ], [ undef, %745 ], [ undef, %1040 ], [ undef, %1122 ], [ undef, %460 ], [ undef, %670 ], [ %25, %24 ], [ -100, %55 ], [ %1210, %1216 ], [ %1210, %1212 ], [ undef, %262 ], [ undef, %570 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %1288
}

declare i64 @stell(ptr noundef) local_unnamed_addr #4

declare i32 @ref_stack_push(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @spgetcc(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @make_packed_array(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ref_stack_store(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @gs_free_ref_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ref_stack_pop_block(ptr noundef) local_unnamed_addr #4

declare i32 @scan_number(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @name_memory() local_unnamed_addr #4

declare ptr @dict_find_name_by_index(i32 noundef) local_unnamed_addr #4

declare i32 @name_index(ptr noundef) local_unnamed_addr #4

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #4

declare void @gs_reloc_string(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gs_reloc_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @imemory_space(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 12}
!9 = !{!"scanner_state_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !6, i64 328}
!10 = !{!"int", !6, i64 0}
!11 = !{!"dynamic_area_s", !12, i64 0, !13, i64 16, !13, i64 24, !13, i64 32, !10, i64 40, !6, i64 44, !13, i64 304}
!12 = !{!"gs_string_s", !13, i64 0, !10, i64 8}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!9, !10, i64 56}
!15 = !{!9, !13, i64 32}
!16 = !{!9, !13, i64 16}
!17 = !{!9, !13, i64 48}
!18 = !{!9, !10, i64 24}
!19 = !{!13, !13, i64 0}
!20 = !{!9, !13, i64 40}
!21 = !{!22, !24, i64 0}
!22 = !{!"ref_s", !23, i64 0, !6, i64 8}
!23 = !{!"tas_s", !24, i64 0, !24, i64 2}
!24 = !{!"short", !6, i64 0}
!25 = !{!26, !24, i64 64}
!26 = !{!"stream_s", !13, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !13, i64 48, !10, i64 56, !10, i64 60, !24, i64 64, !6, i64 66, !6, i64 67, !12, i64 72, !27, i64 88, !28, i64 96, !13, i64 152, !10, i64 160, !10, i64 164, !13, i64 168, !24, i64 176, !24, i64 178, !13, i64 184, !13, i64 192, !10, i64 200, !13, i64 208, !10, i64 216, !13, i64 224}
!27 = !{!"long", !6, i64 0}
!28 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!29 = !{!30, !13, i64 0}
!30 = !{!"gs_dual_memory_s", !13, i64 0, !6, i64 8, !10, i64 40, !10, i64 44, !13, i64 48, !10, i64 56, !10, i64 60}
!31 = !{!32, !13, i64 16}
!32 = !{!"gs_memory_s", !33, i64 0}
!33 = !{!"gs_memory_procs_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!34 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !35, i64 12, i64 4, !35, i64 16, i64 8, !19, i64 24, i64 4, !35, i64 32, i64 8, !19, i64 40, i64 8, !19, i64 48, i64 8, !19, i64 56, i64 4, !35, i64 60, i64 257, !5, i64 320, i64 8, !19, i64 328, i64 4, !35, i64 336, i64 8, !19, i64 344, i64 2, !36, i64 346, i64 2, !36, i64 352, i64 8, !37, i64 352, i64 2, !36, i64 352, i64 4, !38, i64 352, i64 8, !37, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 352, i64 8, !19, i64 360, i64 4, !35, i64 364, i64 4, !35, i64 368, i64 4, !35, i64 372, i64 4, !35, i64 376, i64 4, !35, i64 328, i64 4, !35, i64 332, i64 4, !35, i64 328, i64 8, !19, i64 336, i64 8, !19, i64 344, i64 8, !19, i64 328, i64 8, !19, i64 336, i64 8, !19, i64 344, i64 8, !19, i64 352, i64 4, !35, i64 360, i64 8, !37, i64 328, i64 8, !19, i64 336, i64 8, !19, i64 344, i64 8, !19, i64 352, i64 4, !35, i64 328, i64 8, !19, i64 336, i64 8, !19, i64 344, i64 8, !19, i64 352, i64 4, !35, i64 356, i64 4, !35}
!35 = !{!10, !10, i64 0}
!36 = !{!24, !24, i64 0}
!37 = !{!27, !27, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !6, i64 0}
!40 = !{!30, !10, i64 40}
!41 = !{i64 0, i64 2, !36, i64 2, i64 2, !36, i64 8, i64 8, !37, i64 8, i64 2, !36, i64 8, i64 4, !38, i64 8, i64 8, !37, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19}
!42 = !{!22, !24, i64 2}
!43 = !{!9, !10, i64 0}
!44 = !{!9, !10, i64 8}
!45 = !{!46, !13, i64 0}
!46 = !{!"ref_stack_s", !13, i64 0, !13, i64 8, !13, i64 16, !22, i64 24, !10, i64 40, !10, i64 44, !22, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !22, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !13, i64 120}
!47 = !{!46, !13, i64 16}
!48 = !{!9, !10, i64 4}
!49 = !{!26, !10, i64 164}
!50 = !{!9, !13, i64 320}
!51 = !{!52, !13, i64 8}
!52 = !{!"stream_cursor_write_s", !13, i64 0, !13, i64 8, !13, i64 16}
!53 = !{!52, !13, i64 16}
!54 = !{!55, !13, i64 16}
!55 = !{!"stream_template_s", !13, i64 0, !13, i64 8, !13, i64 16, !10, i64 24, !10, i64 28, !13, i64 32, !13, i64 40, !13, i64 48}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!11, !13, i64 32}
!59 = !{!11, !13, i64 16}
!60 = !{!11, !13, i64 24}
!61 = !{!11, !13, i64 304}
!62 = !{!11, !10, i64 40}
!63 = !{!32, !13, i64 112}
!64 = !{!32, !13, i64 96}
!65 = distinct !{!65, !57}
!66 = !{!30, !10, i64 60}
!67 = !{!46, !13, i64 8}
!68 = !{!46, !10, i64 44}
!69 = distinct !{!69, !57}
!70 = distinct !{!70, !57}
!71 = distinct !{!71, !57}
!72 = distinct !{!72, !57}
!73 = !{!32, !13, i64 120}
