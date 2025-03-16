; ModuleID = 'zfilter.c'
source_filename = "zfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_SFD_state_s = type { ptr, ptr, ptr, i64, %struct.gs_const_string_s, i32, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.stream_PFBD_state_s = type { ptr, ptr, ptr, i32, i32, i64 }
%struct.stream_RLE_state_s = type { ptr, ptr, ptr, i32, i64, i64, i32 }
%struct.stream_RLD_state_s = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@s_new_read_procs = dso_local constant %struct.stream_procs { ptr @s_std_noavailable, ptr @s_std_noseek, ptr @s_std_read_reset, ptr @s_std_read_flush, ptr @s_filter_close, ptr null, ptr null }, align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [27 x i8] c"filter_read(string stream)\00", align 1
@invalid_file_entry = external local_unnamed_addr global ptr, align 8
@file_default_buffer_size = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@s_new_write_procs = dso_local constant %struct.stream_procs { ptr @s_std_noavailable, ptr @s_std_noseek, ptr @s_std_write_reset, ptr @s_std_write_flush, ptr @s_filter_close, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"filter_write(string)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@zfilter_op_defs.op_defs_ = internal constant [13 x %struct.op_def] [%struct.op_def { ptr @.str.4, ptr @zPSSE }, %struct.op_def { ptr @.str.5, ptr @zSFD }, %struct.op_def { ptr @.str.6, ptr null }, %struct.op_def { ptr @.str.7, ptr @zAXE }, %struct.op_def { ptr @.str.8, ptr @zAXD }, %struct.op_def { ptr @.str.9, ptr @zNullE }, %struct.op_def { ptr @.str.10, ptr @zPFBD }, %struct.op_def { ptr @.str.11, ptr @zPSSE }, %struct.op_def { ptr @.str.12, ptr @zRLE }, %struct.op_def { ptr @.str.13, ptr @zRLD }, %struct.op_def { ptr @.str.14, ptr @zSFD }, %struct.op_def { ptr @.str.15, ptr @zBSE }, %struct.op_def zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"1.psstringencode\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"3.subfiledecode\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"1ASCIIHexEncode\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"1ASCIIHexDecode\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"1NullEncode\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"2PFBDecode\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"1PSStringEncode\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"2RunLengthEncode\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"1RunLengthDecode\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"3SubFileDecode\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"1BigStringEncode\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"filter_ensure_buf\00", align 1
@s_Null_template = external constant %struct.stream_template_s, align 8
@s_Null1D_template = internal constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr @s_Null1D_process, i32 1, i32 1, ptr null, ptr null, ptr null }, align 8
@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_PSSE_template = external constant %struct.stream_template_s, align 8
@s_SFD_template = external constant %struct.stream_template_s, align 8
@s_AXE_template = external constant %struct.stream_template_s, align 8
@s_AXD_template = external constant %struct.stream_template_s, align 8
@s_PFBD_template = external constant %struct.stream_template_s, align 8
@s_RLE_template = external constant %struct.stream_template_s, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"EndOfData\00", align 1
@s_RLD_template = external constant %struct.stream_template_s, align 8
@.str.18 = private unnamed_addr constant [24 x i8] c"BigStringEncode(string)\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"BigStringEncode(stream)\00", align 1

declare i32 @s_std_noavailable(ptr noundef, ptr noundef) #0

declare i32 @s_std_noseek(ptr noundef, i64 noundef) #0

declare void @s_std_read_reset(ptr noundef) #0

declare i32 @s_std_read_flush(ptr noundef) #0

declare i32 @s_filter_close(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @filter_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.stream_template_s, ptr %2, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = add i32 %9, 1
  %11 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !11
  %12 = sext i32 %1 to i64
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !13
  switch i8 %16, label %60 [
    i8 18, label %17
    i8 3, label %36
  ]

17:                                               ; preds = %5
  %18 = load i16, ptr %14, align 8, !tbaa !14
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %137, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, 12
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %4)
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %24) #7
  %25 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %26 = tail call ptr @file_alloc_stream(ptr noundef %25, ptr noundef nonnull @.str) #7
  store ptr %26, ptr %7, align 8, !tbaa !19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %135, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %13, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !20
  %33 = zext i16 %32 to i32
  tail call void @sread_string(ptr noundef nonnull %26, ptr noundef %30, i32 noundef %33) #7
  %34 = load ptr, ptr %7, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.stream_s, ptr %34, i64 0, i32 14
  store i32 1, ptr %35, align 8, !tbaa !21
  br label %122

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %13, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  store ptr %38, ptr %7, align 8, !tbaa !19
  %39 = getelementptr inbounds %struct.stream_s, ptr %38, i64 0, i32 17
  %40 = load i16, ptr %39, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !20
  %43 = icmp eq i16 %40, %42
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = icmp eq i16 %40, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.stream_s, ptr %38, i64 0, i32 18
  %48 = load i16, ptr %47, align 2, !tbaa !27
  %49 = icmp eq i16 %48, %42
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = tail call i32 @file_switch_to_read(ptr noundef %14) #7
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %55, label %137

53:                                               ; preds = %44, %46
  %54 = load ptr, ptr @invalid_file_entry, align 8, !tbaa !19
  store ptr %54, ptr %7, align 8, !tbaa !19
  br label %55

55:                                               ; preds = %53, %50, %36
  %56 = load i16, ptr %14, align 8, !tbaa !14
  %57 = and i16 %56, 12
  %58 = zext nneg i16 %57 to i32
  %59 = tail call i32 @llvm.umax.i32(i32 %58, i32 %4)
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %59) #7
  br label %75

60:                                               ; preds = %5
  %61 = load i16, ptr %14, align 8, !tbaa !14
  %62 = zext i16 %61 to i32
  %63 = and i32 %62, 15552
  %64 = icmp eq i32 %63, 1216
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = tail call i32 @check_proc_failed(ptr noundef nonnull %14) #7
  br label %137

67:                                               ; preds = %60
  %68 = and i32 %62, 12
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 %4)
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %69) #7
  %70 = call i32 @sread_proc(ptr noundef nonnull %14, ptr noundef nonnull %7) #7
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %135, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %7, align 8, !tbaa !19
  %74 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 14
  store i32 2, ptr %74, align 8, !tbaa !21
  br label %75

75:                                               ; preds = %72, %55
  %76 = getelementptr inbounds %struct.stream_template_s, ptr %2, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !28
  %78 = load ptr, ptr %7, align 8, !tbaa !19
  %79 = getelementptr inbounds %struct.stream_s, ptr %78, i64 0, i32 16
  %80 = load ptr, ptr %79, align 8, !tbaa !29
  %81 = load ptr, ptr %80, align 8, !tbaa !30
  %82 = getelementptr inbounds %struct.stream_template_s, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = add i32 %77, 1
  %85 = add i32 %84, %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %86 = getelementptr inbounds %struct.stream_s, ptr %78, i64 0, i32 9
  %87 = load i8, ptr %86, align 1, !tbaa !32
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %119, label %89

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.stream_s, ptr %78, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !33
  %92 = icmp ult i32 %91, %85
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.stream_s, ptr %78, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = call i32 @llvm.umax.i32(i32 %85, i32 128)
  %99 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  %101 = call ptr %100(ptr noundef nonnull %99, i32 noundef %98, ptr noundef nonnull @.str.16) #7
  %102 = icmp eq ptr %101, null
  br i1 %102, label %119, label %103

103:                                              ; preds = %97
  store ptr %101, ptr %94, align 8, !tbaa !34
  %104 = getelementptr inbounds i8, ptr %101, i64 -1
  %105 = getelementptr inbounds %struct.stream_s, ptr %78, i64 0, i32 3
  %106 = getelementptr inbounds %struct.stream_s, ptr %78, i64 0, i32 3, i32 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !13
  store ptr %104, ptr %105, align 8, !tbaa !13
  %107 = zext i32 %98 to i64
  %108 = getelementptr inbounds i8, ptr %104, i64 %107
  %109 = getelementptr inbounds %struct.stream_s, ptr %78, i64 0, i32 3, i32 0, i32 2
  store ptr %108, ptr %109, align 8, !tbaa !13
  %110 = getelementptr inbounds %struct.stream_s, ptr %78, i64 0, i32 6
  store i32 %98, ptr %110, align 4, !tbaa !38
  store i32 %98, ptr %90, align 8, !tbaa !33
  br label %119

111:                                              ; preds = %93
  %112 = call i32 @filter_open(ptr noundef nonnull @.str.1, i32 noundef %85, ptr noundef nonnull %6, ptr noundef nonnull @s_new_read_procs, ptr noundef nonnull @s_Null1D_template, ptr noundef null) #7
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !13
  %117 = getelementptr inbounds %struct.stream_s, ptr %116, i64 0, i32 13
  store ptr %78, ptr %117, align 8, !tbaa !39
  %118 = getelementptr inbounds %struct.stream_s, ptr %116, i64 0, i32 14
  store i32 2, ptr %118, align 8, !tbaa !21
  store ptr %116, ptr %7, align 8, !tbaa !19
  br label %119

119:                                              ; preds = %75, %89, %97, %103, %111, %114
  %120 = phi i32 [ %112, %114 ], [ 0, %89 ], [ 0, %75 ], [ 0, %103 ], [ -25, %97 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %119, %28
  %123 = icmp ult i32 %10, 128
  %124 = load i32, ptr @file_default_buffer_size, align 4
  %125 = select i1 %123, i32 %124, i32 %10
  %126 = call i32 @filter_open(ptr noundef nonnull @.str.1, i32 noundef %125, ptr noundef %14, ptr noundef nonnull @s_new_read_procs, ptr noundef %2, ptr noundef %3) #7
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %13, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !13
  %131 = load ptr, ptr %7, align 8, !tbaa !19
  %132 = getelementptr inbounds %struct.stream_s, ptr %130, i64 0, i32 13
  store ptr %131, ptr %132, align 8, !tbaa !39
  %133 = load ptr, ptr @o_stack, align 8, !tbaa !40
  %134 = getelementptr inbounds %struct.ref_s, ptr %133, i64 %13
  store ptr %134, ptr @o_stack, align 8, !tbaa !40
  br label %135

135:                                              ; preds = %22, %122, %119, %67, %128
  %136 = phi i32 [ %70, %67 ], [ %120, %119 ], [ %126, %122 ], [ %126, %128 ], [ -25, %22 ]
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %11) #7
  br label %137

137:                                              ; preds = %17, %50, %135, %65
  %138 = phi i32 [ %136, %135 ], [ %66, %65 ], [ %51, %50 ], [ -7, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret i32 %138
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @file_alloc_stream(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @file_switch_to_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #0

declare i32 @sread_proc(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @filter_open(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i32 @filter_read_simple(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 2
  %6 = zext i1 %5 to i32
  %7 = tail call i32 @filter_read(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef null, i32 noundef 0)
  ret i32 %7
}

declare void @s_std_write_reset(ptr noundef) #0

declare i32 @s_std_write_flush(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @filter_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.stream_template_s, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !28
  %10 = add i32 %9, 1
  %11 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !11
  %12 = sext i32 %1 to i64
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !13
  switch i8 %16, label %52 [
    i8 18, label %17
    i8 3, label %36
  ]

17:                                               ; preds = %5
  %18 = load i16, ptr %14, align 8, !tbaa !14
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %129, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, 12
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %4)
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %24) #7
  %25 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %26 = tail call ptr @file_alloc_stream(ptr noundef %25, ptr noundef nonnull @.str.2) #7
  store ptr %26, ptr %7, align 8, !tbaa !19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %127, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %13, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !20
  %33 = zext i16 %32 to i32
  tail call void @swrite_string(ptr noundef nonnull %26, ptr noundef %30, i32 noundef %33) #7
  %34 = load ptr, ptr %7, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.stream_s, ptr %34, i64 0, i32 14
  store i32 1, ptr %35, align 8, !tbaa !21
  br label %114

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %13, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  store ptr %38, ptr %7, align 8, !tbaa !19
  %39 = getelementptr inbounds %struct.stream_s, ptr %38, i64 0, i32 18
  %40 = load i16, ptr %39, align 2, !tbaa !27
  %41 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !20
  %43 = icmp eq i16 %40, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = tail call i32 @file_switch_to_write(ptr noundef %14) #7
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %129

47:                                               ; preds = %44, %36
  %48 = load i16, ptr %14, align 8, !tbaa !14
  %49 = and i16 %48, 12
  %50 = zext nneg i16 %49 to i32
  %51 = tail call i32 @llvm.umax.i32(i32 %50, i32 %4)
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %51) #7
  br label %67

52:                                               ; preds = %5
  %53 = load i16, ptr %14, align 8, !tbaa !14
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 15552
  %56 = icmp eq i32 %55, 1216
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = tail call i32 @check_proc_failed(ptr noundef nonnull %14) #7
  br label %129

59:                                               ; preds = %52
  %60 = and i32 %54, 12
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 %4)
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %61) #7
  %62 = call i32 @swrite_proc(ptr noundef nonnull %14, ptr noundef nonnull %7) #7
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %127, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %7, align 8, !tbaa !19
  %66 = getelementptr inbounds %struct.stream_s, ptr %65, i64 0, i32 14
  store i32 2, ptr %66, align 8, !tbaa !21
  br label %67

67:                                               ; preds = %64, %47
  %68 = getelementptr inbounds %struct.stream_template_s, ptr %2, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %70 = load ptr, ptr %7, align 8, !tbaa !19
  %71 = getelementptr inbounds %struct.stream_s, ptr %70, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !29
  %73 = load ptr, ptr %72, align 8, !tbaa !30
  %74 = getelementptr inbounds %struct.stream_template_s, ptr %73, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !28
  %76 = add i32 %69, 1
  %77 = add i32 %76, %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %78 = getelementptr inbounds %struct.stream_s, ptr %70, i64 0, i32 9
  %79 = load i8, ptr %78, align 1, !tbaa !32
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %111, label %81

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.stream_s, ptr %70, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !33
  %84 = icmp ult i32 %83, %77
  br i1 %84, label %85, label %111

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.stream_s, ptr %70, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = call i32 @llvm.umax.i32(i32 %77, i32 128)
  %91 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %92 = load ptr, ptr %91, align 8, !tbaa !35
  %93 = call ptr %92(ptr noundef nonnull %91, i32 noundef %90, ptr noundef nonnull @.str.16) #7
  %94 = icmp eq ptr %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %89
  store ptr %93, ptr %86, align 8, !tbaa !34
  %96 = getelementptr inbounds i8, ptr %93, i64 -1
  %97 = getelementptr inbounds %struct.stream_s, ptr %70, i64 0, i32 3
  %98 = getelementptr inbounds %struct.stream_s, ptr %70, i64 0, i32 3, i32 0, i32 1
  store ptr %96, ptr %98, align 8, !tbaa !13
  store ptr %96, ptr %97, align 8, !tbaa !13
  %99 = zext i32 %90 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  %101 = getelementptr inbounds %struct.stream_s, ptr %70, i64 0, i32 3, i32 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !13
  %102 = getelementptr inbounds %struct.stream_s, ptr %70, i64 0, i32 6
  store i32 %90, ptr %102, align 4, !tbaa !38
  store i32 %90, ptr %82, align 8, !tbaa !33
  br label %111

103:                                              ; preds = %85
  %104 = call i32 @filter_open(ptr noundef nonnull @.str.3, i32 noundef %77, ptr noundef nonnull %6, ptr noundef nonnull @s_new_write_procs, ptr noundef nonnull @s_Null_template, ptr noundef null) #7
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !13
  %109 = getelementptr inbounds %struct.stream_s, ptr %108, i64 0, i32 13
  store ptr %70, ptr %109, align 8, !tbaa !39
  %110 = getelementptr inbounds %struct.stream_s, ptr %108, i64 0, i32 14
  store i32 2, ptr %110, align 8, !tbaa !21
  store ptr %108, ptr %7, align 8, !tbaa !19
  br label %111

111:                                              ; preds = %67, %81, %89, %95, %103, %106
  %112 = phi i32 [ %104, %106 ], [ 0, %81 ], [ 0, %67 ], [ 0, %95 ], [ -25, %89 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %111, %28
  %115 = icmp ult i32 %10, 128
  %116 = load i32, ptr @file_default_buffer_size, align 4
  %117 = select i1 %115, i32 %116, i32 %10
  %118 = call i32 @filter_open(ptr noundef nonnull @.str.3, i32 noundef %117, ptr noundef %14, ptr noundef nonnull @s_new_write_procs, ptr noundef %2, ptr noundef %3) #7
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %13, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !13
  %123 = load ptr, ptr %7, align 8, !tbaa !19
  %124 = getelementptr inbounds %struct.stream_s, ptr %122, i64 0, i32 13
  store ptr %123, ptr %124, align 8, !tbaa !39
  %125 = load ptr, ptr @o_stack, align 8, !tbaa !40
  %126 = getelementptr inbounds %struct.ref_s, ptr %125, i64 %13
  store ptr %126, ptr @o_stack, align 8, !tbaa !40
  br label %127

127:                                              ; preds = %22, %114, %111, %59, %120
  %128 = phi i32 [ %62, %59 ], [ %112, %111 ], [ %118, %114 ], [ %118, %120 ], [ -25, %22 ]
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %11) #7
  br label %129

129:                                              ; preds = %17, %44, %127, %57
  %130 = phi i32 [ %128, %127 ], [ %58, %57 ], [ %45, %44 ], [ -7, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret i32 %130
}

declare void @swrite_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @file_switch_to_write(ptr noundef) local_unnamed_addr #0

declare i32 @swrite_proc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i32 @filter_write_simple(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 2
  %6 = zext i1 %5 to i32
  %7 = tail call i32 @filter_write(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef null, i32 noundef 0)
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @filter_mark_temp(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 14
  store i32 %1, ptr %5, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfilter_op_defs() local_unnamed_addr #4 {
  ret ptr @zfilter_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zPSSE(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 2
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @filter_write(ptr noundef %0, i32 noundef %5, ptr noundef nonnull @s_PSSE_template, ptr noundef null, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @zSFD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_SFD_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 2
  %6 = sext i1 %5 to i64
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6
  %8 = select i1 %5, i32 3, i32 2
  %9 = getelementptr inbounds i8, ptr %7, i64 -15
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 11
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, ptr %7, i64 -1
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %13) #7
  br label %41

15:                                               ; preds = %1
  %16 = load i16, ptr %7, align 8, !tbaa !14
  %17 = and i16 %16, 16160
  %18 = icmp eq i16 %17, 4640
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = icmp eq i8 %21, 18
  br i1 %22, label %41, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #7
  br label %41

25:                                               ; preds = %15
  %26 = getelementptr %struct.ref_s, ptr %7, i64 -1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !13
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %2, i64 0, i32 3
  store i64 %27, ptr %30, align 8, !tbaa !42
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  %33 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %2, i64 0, i32 4
  store ptr %32, ptr %33, align 8, !tbaa !45
  %34 = getelementptr inbounds %struct.tas_s, ptr %7, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !20
  %36 = zext i16 %35 to i32
  %37 = getelementptr inbounds %struct.stream_SFD_state_s, ptr %2, i64 0, i32 4, i32 1
  store i32 %36, ptr %37, align 8, !tbaa !46
  %38 = and i16 %16, 12
  %39 = zext nneg i16 %38 to i32
  %40 = call i32 @filter_read(ptr noundef %0, i32 noundef %8, ptr noundef nonnull @s_SFD_template, ptr noundef nonnull %2, i32 noundef %39)
  br label %41

41:                                               ; preds = %25, %23, %19, %29, %12
  %42 = phi i32 [ %40, %29 ], [ %14, %12 ], [ %24, %23 ], [ -7, %19 ], [ -15, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #7
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @zAXE(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 2
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @filter_write(ptr noundef %0, i32 noundef %5, ptr noundef nonnull @s_AXE_template, ptr noundef null, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @zAXD(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 2
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @filter_read(ptr noundef %0, i32 noundef %5, ptr noundef nonnull @s_AXD_template, ptr noundef null, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @zNullE(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 2
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @filter_write(ptr noundef %0, i32 noundef %5, ptr noundef nonnull @s_Null_template, ptr noundef null, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @zPFBD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_PFBD_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 2
  %6 = sext i1 %5 to i64
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @check_type_failed(ptr noundef %7) #7
  br label %20

13:                                               ; preds = %1
  %14 = select i1 %5, i32 2, i32 1
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %6, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !13
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.stream_PFBD_state_s, ptr %2, i64 0, i32 3
  store i32 %17, ptr %18, align 8, !tbaa !47
  %19 = call i32 @filter_read(ptr noundef %0, i32 noundef %14, ptr noundef nonnull @s_PFBD_template, ptr noundef nonnull %2, i32 noundef 0)
  br label %20

20:                                               ; preds = %13, %11
  %21 = phi i32 [ %19, %13 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zRLE(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_RLE_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load i16, ptr %9, align 8, !tbaa !49
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %3) #7
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 %14, i32 1
  br label %18

17:                                               ; preds = %1
  store i32 1, ptr %3, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %7, %13, %17
  %19 = phi i32 [ 0, %17 ], [ -7, %7 ], [ %16, %13 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = sub nsw i32 0, %19
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = icmp eq i8 %26, 11
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = call i32 @check_type_failed(ptr noundef %24) #7
  br label %40

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %23, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !13
  %33 = icmp ugt i64 %32, 4294967295
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !13
  %37 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %2, i64 0, i32 4
  store i64 %36, ptr %37, align 8, !tbaa !52
  %38 = add nuw nsw i32 %19, 1
  %39 = call i32 @filter_write(ptr noundef %0, i32 noundef %38, ptr noundef nonnull @s_RLE_template, ptr noundef nonnull %2, i32 noundef 0)
  br label %40

40:                                               ; preds = %30, %18, %34, %28
  %41 = phi i32 [ %39, %34 ], [ %29, %28 ], [ %19, %18 ], [ -15, %30 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #7
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @zRLD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_RLD_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load i16, ptr %9, align 8, !tbaa !49
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %3) #7
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 %14, i32 1
  br label %18

17:                                               ; preds = %1
  store i32 1, ptr %3, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %7, %13, %17
  %19 = phi i32 [ 0, %17 ], [ -7, %7 ], [ %16, %13 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @filter_read(ptr noundef %0, i32 noundef %19, ptr noundef nonnull @s_RLD_template, ptr noundef nonnull %2, i32 noundef 0)
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi i32 [ %22, %21 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @zBSE(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %38

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = trunc i64 %9 to i32
  %16 = tail call ptr %14(ptr noundef %12, i32 noundef %15, ptr noundef nonnull @.str.18) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %20 = tail call ptr @file_alloc_stream(ptr noundef %19, ptr noundef nonnull @.str.19) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %23, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  tail call void %25(ptr noundef %23, ptr noundef nonnull %16, i32 noundef %15, ptr noundef nonnull @.str.18) #7
  br label %38

26:                                               ; preds = %18
  tail call void @swrite_string(ptr noundef nonnull %20, ptr noundef nonnull %16, i32 noundef %15) #7
  %27 = getelementptr inbounds %struct.stream_s, ptr %20, i64 0, i32 14
  store i32 0, ptr %27, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.stream_s, ptr %20, i64 0, i32 17
  store i16 0, ptr %28, align 8, !tbaa !26
  %29 = getelementptr inbounds %struct.stream_s, ptr %20, i64 0, i32 12, i32 4
  store ptr @BSE_close, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.stream_s, ptr %20, i64 0, i32 24
  store ptr @BSE_close, ptr %30, align 8, !tbaa !57
  store ptr %20, ptr %8, align 8, !tbaa !13
  %31 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !11
  %32 = trunc i32 %31 to i16
  %33 = or i16 %32, 80
  %34 = add i16 %33, 768
  store i16 %34, ptr %0, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.stream_s, ptr %20, i64 0, i32 18
  %36 = load i16, ptr %35, align 2, !tbaa !27
  %37 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 %36, ptr %37, align 2, !tbaa !20
  br label %38

38:                                               ; preds = %11, %7, %26, %22, %5
  %39 = phi i32 [ 0, %26 ], [ -25, %22 ], [ %6, %5 ], [ -15, %7 ], [ -25, %11 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @s_Null1D_process(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #5 {
  %5 = load ptr, ptr %1, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp ult ptr %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp ult ptr %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %16, ptr %1, align 8, !tbaa !58
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %18, ptr %10, align 8, !tbaa !61
  store i8 %17, ptr %18, align 1, !tbaa !13
  br label %19

19:                                               ; preds = %9, %4, %15
  %20 = phi i32 [ 1, %15 ], [ 0, %4 ], [ 1, %9 ]
  ret i32 %20
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #0

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @BSE_close(ptr nocapture readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"stream_template_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40, !7, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !10, i64 40}
!12 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !17, i64 0}
!15 = !{!"ref_s", !16, i64 0, !8, i64 8}
!16 = !{!"tas_s", !17, i64 0, !17, i64 2}
!17 = !{!"short", !8, i64 0}
!18 = !{!12, !7, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!15, !17, i64 2}
!21 = !{!22, !10, i64 160}
!22 = !{!"stream_s", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !7, i64 48, !10, i64 56, !10, i64 60, !17, i64 64, !8, i64 66, !8, i64 67, !23, i64 72, !24, i64 88, !25, i64 96, !7, i64 152, !10, i64 160, !10, i64 164, !7, i64 168, !17, i64 176, !17, i64 178, !7, i64 184, !7, i64 192, !10, i64 200, !7, i64 208, !10, i64 216, !7, i64 224}
!23 = !{!"gs_string_s", !7, i64 0, !10, i64 8}
!24 = !{!"long", !8, i64 0}
!25 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!26 = !{!22, !17, i64 176}
!27 = !{!22, !17, i64 178}
!28 = !{!6, !10, i64 24}
!29 = !{!22, !7, i64 168}
!30 = !{!31, !7, i64 0}
!31 = !{!"stream_state_s", !7, i64 0, !7, i64 8, !7, i64 16}
!32 = !{!22, !8, i64 67}
!33 = !{!22, !10, i64 56}
!34 = !{!22, !7, i64 48}
!35 = !{!36, !7, i64 0}
!36 = !{!"gs_memory_s", !37, i64 0}
!37 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!38 = !{!22, !10, i64 60}
!39 = !{!22, !7, i64 152}
!40 = !{!41, !7, i64 0}
!41 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !15, i64 24, !10, i64 40, !10, i64 44, !15, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !15, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !7, i64 120}
!42 = !{!43, !24, i64 24}
!43 = !{!"stream_SFD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !24, i64 24, !44, i64 32, !10, i64 48, !10, i64 52, !10, i64 56}
!44 = !{!"gs_const_string_s", !7, i64 0, !10, i64 8}
!45 = !{!43, !7, i64 32}
!46 = !{!43, !10, i64 40}
!47 = !{!48, !10, i64 24}
!48 = !{!"stream_PFBD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !24, i64 32}
!49 = !{!50, !17, i64 0}
!50 = !{!"dict_s", !15, i64 0, !15, i64 16, !15, i64 32, !15, i64 48}
!51 = !{!10, !10, i64 0}
!52 = !{!53, !24, i64 32}
!53 = !{!"stream_RLE_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !24, i64 32, !24, i64 40, !10, i64 48}
!54 = !{!36, !7, i64 96}
!55 = !{!36, !7, i64 120}
!56 = !{!22, !7, i64 128}
!57 = !{!22, !7, i64 224}
!58 = !{!59, !7, i64 0}
!59 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!60 = !{!59, !7, i64 8}
!61 = !{!62, !7, i64 8}
!62 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!63 = !{!62, !7, i64 16}
