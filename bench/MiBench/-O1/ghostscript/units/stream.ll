; ModuleID = 'stream.c'
source_filename = "stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"stream_state\00", align 1
@st_stream_state = dso_local constant %struct.gs_memory_struct_type_s { i32 24, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@st_stream = internal constant %struct.gs_memory_struct_type_s { i32 232, ptr @.str.2, ptr null, ptr null, ptr @stream_enum_ptrs, ptr @stream_reloc_ptrs, ptr @stream_finalize }, align 8
@s_no_template = internal constant %struct.stream_template_s { ptr @st_stream_state, ptr null, ptr null, i32 1, i32 1, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"s_std_close\00", align 1
@sread_string.p = internal unnamed_addr constant %struct.stream_procs { ptr @s_string_available, ptr @s_string_read_seek, ptr @s_std_read_reset, ptr @s_std_read_flush, ptr @s_std_null, ptr @s_string_read_process, ptr null }, align 8
@swrite_string.p = internal unnamed_addr constant %struct.stream_procs { ptr @s_std_noavailable, ptr @s_string_write_seek, ptr @s_std_write_reset, ptr @s_std_null, ptr @s_std_null, ptr @s_string_write_process, ptr null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @s_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call ptr %4(ptr noundef %0, ptr noundef nonnull @st_stream, ptr noundef %1) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 2
  store ptr @s_no_report_error, ptr %9, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %5, %7 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @s_no_report_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @s_alloc_state(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.stream_state_s, ptr %6, i64 0, i32 1
  store ptr %0, ptr %9, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.stream_state_s, ptr %6, i64 0, i32 2
  store ptr @s_no_report_error, ptr %10, align 8, !tbaa !21
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %6, %8 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @s_no_init(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @s_std_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #3 {
  store ptr @s_no_template, ptr %0, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  store ptr %1, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds i8, ptr %1, i64 -1
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !24
  store ptr %7, ptr %8, align 8, !tbaa !24
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 0, ptr %13, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 8
  store i8 0, ptr %14, align 2, !tbaa !26
  %15 = trunc i32 %4 to i8
  %16 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  store i8 %15, ptr %16, align 1, !tbaa !27
  %17 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %17, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  store i64 0, ptr %18, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 6
  store i32 %2, ptr %19, align 4, !tbaa !30
  %20 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  store i32 %2, ptr %20, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  store ptr null, ptr %21, align 8, !tbaa !32
  %22 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %22, align 8, !tbaa !33
  %23 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !34
  %24 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  store ptr %0, ptr %24, align 8, !tbaa !36
  %25 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  store ptr null, ptr %25, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @s_std_null(ptr nocapture readnone %0) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @s_std_read_reset(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = getelementptr inbounds i8, ptr %3, i64 -1
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !24
  store ptr %4, ptr %5, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @s_std_write_reset(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = getelementptr inbounds i8, ptr %3, i64 -1
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @s_std_read_flush(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  br label %6

6:                                                ; preds = %1, %10
  %7 = load ptr, ptr %2, align 8, !tbaa !23
  %8 = getelementptr inbounds i8, ptr %7, i64 -1
  store ptr %8, ptr %4, align 8, !tbaa !24
  store ptr %8, ptr %3, align 8, !tbaa !24
  %9 = load i16, ptr %5, align 8, !tbaa !25
  switch i16 %9, label %14 [
    i16 0, label %10
    i16 -1, label %16
  ]

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @sreadbuf(ptr noundef %0, ptr noundef nonnull %3)
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 0)
  %13 = trunc i32 %12 to i16
  store i16 %13, ptr %5, align 8, !tbaa !25
  br label %6, !llvm.loop !38

14:                                               ; preds = %6
  %15 = sext i16 %9 to i32
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %6 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @s_process_read_buf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %9 = load i16, ptr %8, align 8, !tbaa !25
  %10 = icmp sgt i16 %9, -1
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %3, i64 1
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %5 to i64
  %15 = sub i64 %13, %14
  %16 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %3 to i64
  %20 = sub i64 %18, %19
  %21 = and i64 %20, 4294967295
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %12, i64 %21, i1 false)
  %22 = load ptr, ptr %4, align 8, !tbaa !23
  %23 = getelementptr inbounds i8, ptr %22, i64 -1
  store ptr %23, ptr %2, align 8, !tbaa !24
  %24 = load ptr, ptr %16, align 8, !tbaa !24
  %25 = and i64 %15, 4294967295
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  store ptr %27, ptr %16, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  %29 = load i64, ptr %28, align 8, !tbaa !29
  %30 = add nsw i64 %29, %25
  store i64 %30, ptr %28, align 8, !tbaa !29
  br label %31

31:                                               ; preds = %1, %7, %11
  %32 = tail call fastcc i32 @sreadbuf(ptr noundef %0, ptr noundef nonnull %2)
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 0)
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 %34, ptr %35, align 8, !tbaa !25
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @s_std_write_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @s_process_write_buf(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @s_process_write_buf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stream_cursor_write_s, align 8
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %3, i64 0, i32 1
  br label %7

7:                                                ; preds = %108, %2
  %8 = phi i32 [ 0, %2 ], [ %109, %108 ]
  %9 = phi ptr [ %0, %2 ], [ %110, %108 ]
  %10 = phi ptr [ null, %2 ], [ %111, %108 ]
  %11 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  br i1 %5, label %21, label %13

13:                                               ; preds = %7
  %14 = icmp eq ptr %10, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = icmp slt i32 %8, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 7
  %19 = load i16, ptr %18, align 8, !tbaa !25
  %20 = icmp eq i16 %19, -1
  br label %21

21:                                               ; preds = %17, %15, %13, %7
  %22 = phi i1 [ false, %7 ], [ true, %13 ], [ false, %15 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = icmp eq ptr %12, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 3
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi ptr [ %3, %25 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 7
  %31 = load i16, ptr %30, align 8, !tbaa !25
  %32 = icmp slt i16 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = sext i16 %31 to i32
  br label %102

35:                                               ; preds = %28
  %36 = icmp eq ptr %10, null
  %37 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 3
  %38 = select i1 %36, ptr %4, ptr %37
  %39 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 12, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  %43 = call i32 %40(ptr noundef %42, ptr noundef nonnull %38, ptr noundef nonnull %29, i32 noundef %23) #12
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i1 %22, i1 false
  %46 = select i1 %45, i32 -1, i32 %43
  %47 = icmp ugt i32 %46, -3
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = trunc i32 %46 to i16
  store i16 %49, ptr %30, align 8, !tbaa !25
  br label %50

50:                                               ; preds = %48, %35
  %51 = icmp slt i32 %46, -1
  %52 = or i1 %24, %51
  br i1 %52, label %102, label %53

53:                                               ; preds = %50
  %54 = icmp eq i32 %46, 1
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  br i1 %22, label %56, label %102

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 14
  %58 = load i32, ptr %57, align 8, !tbaa !33
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %102, label %60

60:                                               ; preds = %56, %53
  %61 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 7
  %62 = load i16, ptr %61, align 8, !tbaa !25
  %63 = sext i16 %62 to i32
  %64 = icmp slt i16 %62, 0
  br i1 %64, label %102, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %11, align 8, !tbaa !32
  store ptr %10, ptr %11, align 8, !tbaa !32
  %67 = getelementptr inbounds %struct.stream_s, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !24
  %69 = getelementptr inbounds %struct.stream_s, ptr %66, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !23
  %71 = icmp ult ptr %68, %70
  br i1 %71, label %96, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.stream_s, ptr %66, i64 0, i32 7
  %74 = load i16, ptr %73, align 8, !tbaa !25
  %75 = icmp sgt i16 %74, -1
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %68, i64 1
  %78 = ptrtoint ptr %77 to i64
  %79 = ptrtoint ptr %70 to i64
  %80 = sub i64 %78, %79
  %81 = getelementptr inbounds %struct.stream_s, ptr %66, i64 0, i32 3, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !24
  %83 = ptrtoint ptr %82 to i64
  %84 = ptrtoint ptr %68 to i64
  %85 = sub i64 %83, %84
  %86 = and i64 %85, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %70, ptr nonnull align 1 %77, i64 %86, i1 false)
  %87 = load ptr, ptr %69, align 8, !tbaa !23
  %88 = getelementptr inbounds i8, ptr %87, i64 -1
  store ptr %88, ptr %67, align 8, !tbaa !24
  %89 = load ptr, ptr %81, align 8, !tbaa !24
  %90 = and i64 %80, 4294967295
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i8, ptr %89, i64 %91
  store ptr %92, ptr %81, align 8, !tbaa !24
  %93 = getelementptr inbounds %struct.stream_s, ptr %66, i64 0, i32 11
  %94 = load i64, ptr %93, align 8, !tbaa !29
  %95 = add nsw i64 %94, %90
  store i64 %95, ptr %93, align 8, !tbaa !29
  br label %96

96:                                               ; preds = %76, %72, %65
  %97 = getelementptr inbounds %struct.stream_s, ptr %66, i64 0, i32 14
  %98 = load i32, ptr %97, align 8, !tbaa !33
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = add nsw i32 %8, %100
  br label %102

102:                                              ; preds = %96, %60, %56, %55, %50, %33
  %103 = phi i32 [ %34, %33 ], [ %63, %96 ], [ %46, %50 ], [ %46, %56 ], [ %46, %55 ], [ %63, %60 ]
  %104 = phi i1 [ false, %33 ], [ true, %96 ], [ false, %50 ], [ false, %56 ], [ false, %55 ], [ false, %60 ]
  %105 = phi i32 [ %8, %33 ], [ %101, %96 ], [ %8, %50 ], [ %8, %56 ], [ %8, %55 ], [ %8, %60 ]
  %106 = phi ptr [ %9, %33 ], [ %66, %96 ], [ %9, %50 ], [ %9, %56 ], [ %9, %55 ], [ %9, %60 ]
  %107 = phi ptr [ %10, %33 ], [ %9, %96 ], [ %10, %50 ], [ %10, %56 ], [ %10, %55 ], [ %10, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br i1 %104, label %108, label %112

108:                                              ; preds = %102, %127
  %109 = phi i32 [ %105, %102 ], [ %134, %127 ]
  %110 = phi ptr [ %106, %102 ], [ %107, %127 ]
  %111 = phi ptr [ %107, %102 ], [ %129, %127 ]
  br label %7, !llvm.loop !41

112:                                              ; preds = %102
  %113 = call i32 @llvm.smin.i32(i32 %103, i32 0)
  %114 = trunc i32 %113 to i16
  %115 = getelementptr inbounds %struct.stream_s, ptr %106, i64 0, i32 7
  store i16 %114, ptr %115, align 8, !tbaa !25
  %116 = icmp slt i32 %103, 0
  %117 = icmp eq ptr %107, null
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  br i1 %117, label %135, label %120

120:                                              ; preds = %119, %120
  %121 = phi ptr [ %124, %120 ], [ %107, %119 ]
  %122 = phi ptr [ %121, %120 ], [ %106, %119 ]
  %123 = getelementptr inbounds %struct.stream_s, ptr %121, i64 0, i32 13
  %124 = load ptr, ptr %123, align 8, !tbaa !32
  store ptr %122, ptr %123, align 8, !tbaa !32
  %125 = getelementptr inbounds %struct.stream_s, ptr %121, i64 0, i32 7
  store i16 %114, ptr %125, align 8, !tbaa !25
  %126 = icmp eq ptr %124, null
  br i1 %126, label %135, label %120, !llvm.loop !42

127:                                              ; preds = %112
  %128 = getelementptr inbounds %struct.stream_s, ptr %107, i64 0, i32 13
  %129 = load ptr, ptr %128, align 8, !tbaa !32
  store ptr %106, ptr %128, align 8, !tbaa !32
  %130 = getelementptr inbounds %struct.stream_s, ptr %107, i64 0, i32 14
  %131 = load i32, ptr %130, align 8, !tbaa !33
  %132 = icmp eq i32 %131, 0
  %133 = sext i1 %132 to i32
  %134 = add nsw i32 %105, %133
  br label %108

135:                                              ; preds = %120, %119
  %136 = load ptr, ptr %4, align 8, !tbaa !24
  %137 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !23
  %139 = icmp ult ptr %136, %138
  br i1 %139, label %164, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %142 = load i16, ptr %141, align 8, !tbaa !25
  %143 = icmp sgt i16 %142, -1
  br i1 %143, label %144, label %164

144:                                              ; preds = %140
  %145 = getelementptr inbounds i8, ptr %136, i64 1
  %146 = ptrtoint ptr %145 to i64
  %147 = ptrtoint ptr %138 to i64
  %148 = sub i64 %146, %147
  %149 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !24
  %151 = ptrtoint ptr %150 to i64
  %152 = ptrtoint ptr %136 to i64
  %153 = sub i64 %151, %152
  %154 = and i64 %153, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %138, ptr nonnull align 1 %145, i64 %154, i1 false)
  %155 = load ptr, ptr %137, align 8, !tbaa !23
  %156 = getelementptr inbounds i8, ptr %155, i64 -1
  store ptr %156, ptr %4, align 8, !tbaa !24
  %157 = load ptr, ptr %149, align 8, !tbaa !24
  %158 = and i64 %148, 4294967295
  %159 = sub nsw i64 0, %158
  %160 = getelementptr inbounds i8, ptr %157, i64 %159
  store ptr %160, ptr %149, align 8, !tbaa !24
  %161 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  %162 = load i64, ptr %161, align 8, !tbaa !29
  %163 = add nsw i64 %162, %158
  store i64 %163, ptr %161, align 8, !tbaa !29
  br label %164

164:                                              ; preds = %135, %140, %144
  %165 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 %114, ptr %165, align 8, !tbaa !25
  ret i32 %113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @s_std_noavailable(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i64 -1, ptr %1, align 8, !tbaa !43
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @s_std_noseek(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #2 {
  ret i32 -2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @s_std_close(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @s_std_switch_mode(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #2 {
  ret i32 -2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @s_disable(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !23
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %3, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 -1, ptr %4, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  store i8 0, ptr %5, align 1, !tbaa !27
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %6, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr @s_std_null, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  store ptr null, ptr %9, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  store ptr %0, ptr %10, align 8, !tbaa !36
  store ptr @s_no_template, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @s_filter_write_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @s_process_write_buf(ptr noundef %0, i32 noundef 0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 12, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call i32 %8(ptr noundef %6) #12
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @s_filter_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 1, !tbaa !27
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @s_process_write_buf(ptr noundef %0, i32 noundef 1)
  %8 = add i32 %7, 1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %11

11:                                               ; preds = %6, %10
  %12 = phi i32 [ %7, %6 ], [ 0, %10 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savailable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #12
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @stell(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 1, !tbaa !27
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = ptrtoint ptr %12 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  br label %18

18:                                               ; preds = %1, %11
  %19 = phi i64 [ %17, %11 ], [ 0, %1 ]
  %20 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  %21 = load i64, ptr %20, align 8, !tbaa !29
  %22 = add nsw i64 %21, %19
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spseek(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call i32 %4(ptr noundef %0, i64 noundef %1) #12
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sswitch(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, i32 noundef %1) #12
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ -2, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sclose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = tail call i32 %3(ptr noundef %0) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.stream_template_s, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void %13(ptr noundef nonnull %8) #12
  br label %16

16:                                               ; preds = %15, %10
  %17 = icmp eq ptr %8, %0
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.stream_state_s, ptr %8, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %20, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  tail call void %24(ptr noundef nonnull %20, ptr noundef nonnull %8, ptr noundef nonnull @.str.1) #12
  br label %25

25:                                               ; preds = %22, %18, %16
  store ptr %0, ptr %7, align 8, !tbaa !36
  br label %26

26:                                               ; preds = %25, %6
  %27 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  store ptr null, ptr %27, align 8, !tbaa !23
  %28 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %28, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 -1, ptr %29, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  store i8 0, ptr %30, align 1, !tbaa !27
  %31 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %31, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  store ptr @s_std_null, ptr %2, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  store ptr null, ptr %33, align 8, !tbaa !32
  store ptr %0, ptr %7, align 8, !tbaa !36
  store ptr @s_no_template, ptr %0, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %1, %26
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spgetcc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %8 = load i16, ptr %7, align 8, !tbaa !25
  %9 = icmp eq i16 %8, -4
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 1, %2 ], [ %10, %6 ]
  %13 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %16 = load i16, ptr %13, align 8, !tbaa !25
  %17 = load ptr, ptr %15, align 8, !tbaa !24
  %18 = load ptr, ptr %14, align 8, !tbaa !24
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp sge i32 %12, %22
  %24 = icmp sgt i16 %16, -1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %61

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %28 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  br label %29

29:                                               ; preds = %26, %48
  %30 = phi i64 [ %21, %26 ], [ %56, %48 ]
  %31 = phi ptr [ %18, %26 ], [ %53, %48 ]
  %32 = load ptr, ptr %27, align 8, !tbaa !23
  %33 = icmp ult ptr %31, %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %32 to i64
  %38 = sub i64 %36, %37
  %39 = and i64 %30, 4294967295
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %32, ptr nonnull align 1 %35, i64 %39, i1 false)
  %40 = load ptr, ptr %27, align 8, !tbaa !23
  %41 = getelementptr inbounds i8, ptr %40, i64 -1
  store ptr %41, ptr %14, align 8, !tbaa !24
  %42 = load ptr, ptr %15, align 8, !tbaa !24
  %43 = and i64 %38, 4294967295
  %44 = sub nsw i64 0, %43
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  store ptr %45, ptr %15, align 8, !tbaa !24
  %46 = load i64, ptr %28, align 8, !tbaa !29
  %47 = add nsw i64 %46, %43
  store i64 %47, ptr %28, align 8, !tbaa !29
  br label %48

48:                                               ; preds = %29, %34
  %49 = tail call fastcc i32 @sreadbuf(ptr noundef %0, ptr noundef nonnull %14)
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 0)
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %13, align 8, !tbaa !25
  %52 = load ptr, ptr %15, align 8, !tbaa !24
  %53 = load ptr, ptr %14, align 8, !tbaa !24
  %54 = ptrtoint ptr %52 to i64
  %55 = ptrtoint ptr %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = icmp sge i32 %12, %57
  %59 = icmp sgt i16 %51, -1
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %29, label %61, !llvm.loop !53

61:                                               ; preds = %48, %11
  %62 = phi i16 [ %16, %11 ], [ %51, %48 ]
  %63 = phi ptr [ %18, %11 ], [ %53, %48 ]
  %64 = phi i64 [ %21, %11 ], [ %56, %48 ]
  %65 = phi i32 [ %22, %11 ], [ %57, %48 ]
  %66 = phi i1 [ %23, %11 ], [ %58, %48 ]
  %67 = sext i16 %62 to i32
  br i1 %66, label %68, label %128

68:                                               ; preds = %61
  %69 = icmp eq i32 %65, 0
  %70 = icmp ult i16 %62, -2
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %72, label %128

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !23
  %75 = icmp ult ptr %63, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %63, i64 1
  %78 = ptrtoint ptr %77 to i64
  %79 = ptrtoint ptr %74 to i64
  %80 = sub i64 %78, %79
  %81 = and i64 %64, 4294967295
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %74, ptr nonnull align 1 %77, i64 %81, i1 false)
  %82 = load ptr, ptr %73, align 8, !tbaa !23
  %83 = getelementptr inbounds i8, ptr %82, i64 -1
  store ptr %83, ptr %14, align 8, !tbaa !24
  %84 = load ptr, ptr %15, align 8, !tbaa !24
  %85 = and i64 %80, 4294967295
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %84, i64 %86
  store ptr %87, ptr %15, align 8, !tbaa !24
  %88 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  %89 = load i64, ptr %88, align 8, !tbaa !29
  %90 = add nsw i64 %89, %85
  store i64 %90, ptr %88, align 8, !tbaa !29
  br label %91

91:                                               ; preds = %72, %76
  %92 = icmp eq i16 %62, -1
  %93 = icmp ne i32 %1, 0
  %94 = and i1 %93, %92
  br i1 %94, label %95, label %132

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !44
  %98 = tail call i32 %97(ptr noundef %0) #12
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  %102 = load ptr, ptr %101, align 8, !tbaa !36
  %103 = icmp eq ptr %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %102, align 8, !tbaa !49
  %106 = getelementptr inbounds %struct.stream_template_s, ptr %105, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !50
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  tail call void %107(ptr noundef nonnull %102) #12
  br label %110

110:                                              ; preds = %109, %104
  %111 = icmp eq ptr %102, %0
  br i1 %111, label %119, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.stream_state_s, ptr %102, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !19
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %114, i64 0, i32 11
  %118 = load ptr, ptr %117, align 8, !tbaa !52
  tail call void %118(ptr noundef nonnull %114, ptr noundef nonnull %102, ptr noundef nonnull @.str.1) #12
  br label %119

119:                                              ; preds = %116, %112, %110
  store ptr %0, ptr %101, align 8, !tbaa !36
  br label %120

120:                                              ; preds = %119, %100
  store ptr null, ptr %73, align 8, !tbaa !23
  %121 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %121, align 8, !tbaa !31
  store i16 -1, ptr %13, align 8, !tbaa !25
  %122 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  store i8 0, ptr %122, align 1, !tbaa !27
  %123 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %123, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store ptr @s_std_null, ptr %96, align 8, !tbaa !44
  store ptr null, ptr %3, align 8, !tbaa !32
  store ptr %0, ptr %101, align 8, !tbaa !36
  store ptr @s_no_template, ptr %0, align 8, !tbaa !22
  br label %124

124:                                              ; preds = %95, %120
  %125 = icmp eq i32 %98, 0
  %126 = select i1 %125, i32 -1, i32 %98
  %127 = trunc i32 %126 to i16
  store i16 %127, ptr %13, align 8, !tbaa !25
  br label %132

128:                                              ; preds = %68, %61
  %129 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %129, ptr %14, align 8, !tbaa !24
  %130 = load i8, ptr %129, align 1, !tbaa !24
  %131 = zext i8 %130 to i32
  br label %132

132:                                              ; preds = %91, %124, %128
  %133 = phi i32 [ %131, %128 ], [ %126, %124 ], [ %67, %91 ]
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spputc(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %4 = load i16, ptr %3, align 8, !tbaa !25
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  br label %12

9:                                                ; preds = %20, %2
  %10 = phi i16 [ %4, %2 ], [ %22, %20 ]
  %11 = sext i16 %10 to i32
  br label %24

12:                                               ; preds = %6, %20
  %13 = load ptr, ptr %7, align 8, !tbaa !24
  %14 = load ptr, ptr %8, align 8, !tbaa !24
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %18, ptr %17, align 8, !tbaa !24
  store i8 %1, ptr %18, align 1, !tbaa !24
  %19 = zext i8 %1 to i32
  br label %24

20:                                               ; preds = %12
  %21 = tail call i32 @s_process_write_buf(ptr noundef %0, i32 noundef 0)
  %22 = load i16, ptr %3, align 8, !tbaa !25
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %12, label %9, !llvm.loop !54

24:                                               ; preds = %16, %9
  %25 = phi i32 [ %11, %9 ], [ %19, %16 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @sungetc(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 1, !tbaa !27
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load i8, ptr %9, align 1, !tbaa !24
  %15 = icmp eq i8 %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %9, i64 -1
  store ptr %17, ptr %8, align 8, !tbaa !24
  br label %18

18:                                               ; preds = %2, %7, %13, %16
  %19 = phi i32 [ 0, %16 ], [ -2, %13 ], [ -2, %7 ], [ -2, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sgets(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stream_cursor_write_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %11 = load i16, ptr %10, align 8, !tbaa !25
  %12 = icmp eq i16 %11, -4
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i32 [ 1, %4 ], [ %13, %9 ]
  %16 = getelementptr inbounds i8, ptr %1, i64 -1
  %17 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %5, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !55
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %5, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  %24 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  %25 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %26 = zext nneg i32 %15 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  %29 = zext nneg i32 %15 to i64
  %30 = sub nsw i64 0, %29
  br label %31

31:                                               ; preds = %107, %14
  %32 = phi i32 [ 0, %14 ], [ %108, %107 ]
  %33 = load ptr, ptr %17, align 8, !tbaa !55
  %34 = load ptr, ptr %20, align 8, !tbaa !57
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %36, label %110

36:                                               ; preds = %31
  %37 = load ptr, ptr %22, align 8, !tbaa !24
  %38 = load ptr, ptr %21, align 8, !tbaa !24
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %15, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %36
  %45 = getelementptr inbounds i8, ptr %37, i64 %30
  store ptr %45, ptr %22, align 8, !tbaa !24
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %46, %40
  %48 = trunc i64 %47 to i32
  %49 = ptrtoint ptr %34 to i64
  %50 = ptrtoint ptr %33 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = icmp ugt i32 %48, %52
  %54 = select i1 %53, i64 %51, i64 %47
  %55 = getelementptr inbounds i8, ptr %33, i64 1
  %56 = getelementptr inbounds i8, ptr %38, i64 1
  %57 = and i64 %54, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %55, ptr nonnull align 1 %56, i64 %57, i1 false)
  %58 = load ptr, ptr %21, align 8, !tbaa !58
  %59 = getelementptr inbounds i8, ptr %58, i64 %57
  store ptr %59, ptr %21, align 8, !tbaa !58
  %60 = load ptr, ptr %17, align 8, !tbaa !55
  %61 = getelementptr inbounds i8, ptr %60, i64 %57
  store ptr %61, ptr %17, align 8, !tbaa !55
  %62 = load ptr, ptr %22, align 8, !tbaa !24
  %63 = getelementptr inbounds i8, ptr %62, i64 %29
  store ptr %63, ptr %22, align 8, !tbaa !24
  br label %107

64:                                               ; preds = %36
  %65 = ptrtoint ptr %34 to i64
  %66 = ptrtoint ptr %33 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, ptr %23, align 8, !tbaa !31
  %70 = lshr i32 %69, 2
  %71 = icmp ugt i32 %70, %68
  br i1 %71, label %99, label %72

72:                                               ; preds = %64
  %73 = load ptr, ptr %24, align 8, !tbaa !36
  %74 = icmp eq ptr %73, null
  br i1 %74, label %99, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %73, align 8, !tbaa !49
  %77 = getelementptr inbounds %struct.stream_template_s, ptr %76, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !60
  %79 = icmp ugt i32 %78, %68
  br i1 %79, label %99, label %80

80:                                               ; preds = %75
  %81 = load i16, ptr %25, align 8, !tbaa !25
  %82 = icmp eq i16 %81, 0
  %83 = icmp eq i32 %42, 0
  %84 = and i1 %83, %82
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = getelementptr inbounds i8, ptr %34, i64 %27
  store ptr %86, ptr %20, align 8, !tbaa !57
  %87 = call fastcc i32 @sreadbuf(ptr noundef %0, ptr noundef nonnull %5)
  %88 = load ptr, ptr %20, align 8, !tbaa !57
  %89 = getelementptr inbounds i8, ptr %88, i64 %26
  store ptr %89, ptr %20, align 8, !tbaa !57
  %90 = load ptr, ptr %17, align 8, !tbaa !55
  %91 = ptrtoint ptr %90 to i64
  %92 = sub i64 %91, %66
  %93 = load i64, ptr %28, align 8, !tbaa !29
  %94 = add nsw i64 %92, %93
  store i64 %94, ptr %28, align 8, !tbaa !29
  %95 = icmp eq i32 %87, 1
  %96 = icmp ne ptr %90, %89
  %97 = select i1 %95, i1 %96, i1 false
  %98 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %99, label %107

99:                                               ; preds = %85, %80, %75, %72, %64
  %100 = phi i32 [ %87, %85 ], [ %32, %80 ], [ %32, %75 ], [ %32, %72 ], [ %32, %64 ]
  %101 = call i32 @spgetcc(ptr noundef %0, i32 noundef 1)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = trunc i32 %101 to i8
  %105 = load ptr, ptr %17, align 8, !tbaa !55
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  store ptr %106, ptr %17, align 8, !tbaa !55
  store i8 %104, ptr %106, align 1, !tbaa !24
  br label %107

107:                                              ; preds = %103, %85, %99, %44
  %108 = phi i32 [ %32, %44 ], [ %100, %103 ], [ %87, %85 ], [ %101, %99 ]
  %109 = phi i1 [ true, %44 ], [ true, %103 ], [ %98, %85 ], [ false, %99 ]
  br i1 %109, label %31, label %110

110:                                              ; preds = %107, %31
  %111 = phi i32 [ %108, %107 ], [ %32, %31 ]
  %112 = load ptr, ptr %17, align 8, !tbaa !55
  %113 = getelementptr inbounds i8, ptr %112, i64 1
  %114 = ptrtoint ptr %113 to i64
  %115 = ptrtoint ptr %1 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, ptr %3, align 4, !tbaa !61
  %118 = call i32 @llvm.smin.i32(i32 %111, i32 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret i32 %118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @stream_move(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = load ptr, ptr %0, align 8, !tbaa !58
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = icmp ugt i32 %9, %17
  %19 = select i1 %18, i64 %16, i64 %8
  %20 = zext i1 %18 to i32
  %21 = getelementptr inbounds i8, ptr %13, i64 1
  %22 = getelementptr inbounds i8, ptr %5, i64 1
  %23 = and i64 %19, 4294967295
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %22, i64 %23, i1 false)
  %24 = load ptr, ptr %0, align 8, !tbaa !58
  %25 = getelementptr inbounds i8, ptr %24, i64 %23
  store ptr %25, ptr %0, align 8, !tbaa !58
  %26 = load ptr, ptr %12, align 8, !tbaa !55
  %27 = getelementptr inbounds i8, ptr %26, i64 %23
  store ptr %27, ptr %12, align 8, !tbaa !55
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sreadbuf(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.stream_cursor_read_s, align 8
  br label %4

4:                                                ; preds = %129, %2
  %5 = phi ptr [ %0, %2 ], [ %130, %129 ]
  %6 = phi ptr [ null, %2 ], [ %131, %129 ]
  %7 = phi i32 [ undef, %2 ], [ %132, %129 ]
  br label %8

8:                                                ; preds = %70, %4
  %9 = phi ptr [ %5, %4 ], [ %73, %70 ]
  %10 = phi ptr [ %6, %4 ], [ %74, %70 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %11 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 3
  %17 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 7
  %18 = load i16, ptr %17, align 8, !tbaa !25
  %19 = icmp eq i16 %18, -1
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ %3, %14 ], [ %16, %15 ]
  %23 = phi i32 [ 0, %14 ], [ %20, %15 ]
  %24 = icmp eq ptr %10, null
  %25 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 3
  %26 = select i1 %24, ptr %1, ptr %25
  %27 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 12, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  %31 = call i32 %28(ptr noundef %30, ptr noundef nonnull %22, ptr noundef %26, i32 noundef %23) #12
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %13, i1 true, i1 %32
  br i1 %33, label %70, label %34

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.stream_s, ptr %12, i64 0, i32 7
  %36 = load i16, ptr %35, align 8, !tbaa !25
  %37 = sext i16 %36 to i32
  %38 = icmp slt i16 %36, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %11, align 8, !tbaa !32
  store ptr %10, ptr %11, align 8, !tbaa !32
  %41 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !24
  %43 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  %45 = icmp ult ptr %42, %44
  br i1 %45, label %70, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 7
  %48 = load i16, ptr %47, align 8, !tbaa !25
  %49 = icmp sgt i16 %48, -1
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %42, i64 1
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %44 to i64
  %54 = sub i64 %52, %53
  %55 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 3, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !24
  %57 = ptrtoint ptr %56 to i64
  %58 = ptrtoint ptr %42 to i64
  %59 = sub i64 %57, %58
  %60 = and i64 %59, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %44, ptr nonnull align 1 %51, i64 %60, i1 false)
  %61 = load ptr, ptr %43, align 8, !tbaa !23
  %62 = getelementptr inbounds i8, ptr %61, i64 -1
  store ptr %62, ptr %41, align 8, !tbaa !24
  %63 = load ptr, ptr %55, align 8, !tbaa !24
  %64 = and i64 %54, 4294967295
  %65 = sub nsw i64 0, %64
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  store ptr %66, ptr %55, align 8, !tbaa !24
  %67 = getelementptr inbounds %struct.stream_s, ptr %40, i64 0, i32 11
  %68 = load i64, ptr %67, align 8, !tbaa !29
  %69 = add nsw i64 %68, %64
  store i64 %69, ptr %67, align 8, !tbaa !29
  br label %70

70:                                               ; preds = %50, %46, %39, %34, %21
  %71 = phi i32 [ %31, %21 ], [ %37, %34 ], [ %37, %39 ], [ %37, %46 ], [ %37, %50 ]
  %72 = phi i1 [ false, %21 ], [ false, %34 ], [ true, %39 ], [ true, %46 ], [ true, %50 ]
  %73 = phi ptr [ %9, %21 ], [ %9, %34 ], [ %40, %39 ], [ %40, %46 ], [ %40, %50 ]
  %74 = phi ptr [ %10, %21 ], [ %10, %34 ], [ %9, %39 ], [ %9, %46 ], [ %9, %50 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br i1 %72, label %8, label %75

75:                                               ; preds = %70
  %76 = icmp ne ptr %12, null
  %77 = icmp eq i32 %71, -1
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %120

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !24
  %82 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 3, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !24
  %84 = icmp ult ptr %81, %83
  br i1 %84, label %120, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 12, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !44
  %88 = call i32 %87(ptr noundef %73) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 16
  %92 = load ptr, ptr %91, align 8, !tbaa !36
  %93 = icmp eq ptr %92, null
  br i1 %93, label %110, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %92, align 8, !tbaa !49
  %96 = getelementptr inbounds %struct.stream_template_s, ptr %95, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  call void %97(ptr noundef nonnull %92) #12
  br label %100

100:                                              ; preds = %99, %94
  %101 = icmp eq ptr %92, %73
  br i1 %101, label %109, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.stream_state_s, ptr %92, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !19
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %104, i64 0, i32 11
  %108 = load ptr, ptr %107, align 8, !tbaa !52
  call void %108(ptr noundef nonnull %104, ptr noundef nonnull %92, ptr noundef nonnull @.str.1) #12
  br label %109

109:                                              ; preds = %106, %102, %100
  store ptr %73, ptr %91, align 8, !tbaa !36
  br label %110

110:                                              ; preds = %109, %90
  %111 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 4
  store ptr null, ptr %111, align 8, !tbaa !23
  %112 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 5
  store i32 0, ptr %112, align 8, !tbaa !31
  %113 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 7
  store i16 -1, ptr %113, align 8, !tbaa !25
  %114 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 9
  store i8 0, ptr %114, align 1, !tbaa !27
  %115 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 10
  store ptr null, ptr %115, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, i8 0, i64 24, i1 false)
  store ptr @s_std_null, ptr %86, align 8, !tbaa !44
  %116 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 13
  store ptr null, ptr %116, align 8, !tbaa !32
  store ptr %73, ptr %91, align 8, !tbaa !36
  store ptr @s_no_template, ptr %73, align 8, !tbaa !22
  br label %117

117:                                              ; preds = %85, %110
  %118 = icmp eq i32 %88, 0
  %119 = select i1 %118, i32 -1, i32 %88
  br label %120

120:                                              ; preds = %117, %79, %75
  %121 = phi i32 [ %119, %117 ], [ -1, %79 ], [ %71, %75 ]
  %122 = call i32 @llvm.smin.i32(i32 %121, i32 0)
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds %struct.stream_s, ptr %73, i64 0, i32 7
  store i16 %123, ptr %124, align 8, !tbaa !25
  %125 = icmp eq ptr %74, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.stream_s, ptr %74, i64 0, i32 13
  %128 = load ptr, ptr %127, align 8, !tbaa !32
  store ptr %73, ptr %127, align 8, !tbaa !32
  br label %129

129:                                              ; preds = %120, %126
  %130 = phi ptr [ %74, %126 ], [ %73, %120 ]
  %131 = phi ptr [ %128, %126 ], [ null, %120 ]
  %132 = phi i32 [ %7, %126 ], [ %121, %120 ]
  br i1 %125, label %133, label %4, !llvm.loop !63

133:                                              ; preds = %129
  ret i32 %132
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sputs(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %6 = load i16, ptr %5, align 8, !tbaa !25
  %7 = sext i16 %6 to i32
  %8 = icmp sgt i16 %6, -1
  %9 = icmp ne i32 %2, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %68

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  br label %16

14:                                               ; preds = %63
  %15 = icmp eq i32 %64, 0
  br i1 %15, label %68, label %16

16:                                               ; preds = %11, %14
  %17 = phi i32 [ %64, %14 ], [ %2, %11 ]
  %18 = phi i32 [ %65, %14 ], [ %7, %11 ]
  %19 = phi ptr [ %66, %14 ], [ %1, %11 ]
  %20 = load ptr, ptr %12, align 8, !tbaa !24
  %21 = load ptr, ptr %13, align 8, !tbaa !24
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %16
  %28 = tail call i32 @llvm.umin.i32(i32 %17, i32 %25)
  %29 = getelementptr inbounds i8, ptr %21, i64 1
  %30 = zext i32 %28 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %19, i64 %30, i1 false)
  %31 = load ptr, ptr %13, align 8, !tbaa !24
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %32, ptr %13, align 8, !tbaa !24
  %33 = getelementptr inbounds i8, ptr %19, i64 %30
  %34 = sub i32 %17, %28
  br label %63

35:                                               ; preds = %16
  %36 = getelementptr inbounds i8, ptr %19, i64 1
  %37 = load i8, ptr %19, align 1, !tbaa !24
  %38 = icmp ult ptr %21, %20
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %40, ptr %13, align 8, !tbaa !24
  store i8 %37, ptr %40, align 1, !tbaa !24
  br label %58

41:                                               ; preds = %35
  %42 = load i16, ptr %5, align 8, !tbaa !25
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %54, %41
  %45 = phi i16 [ %42, %41 ], [ %56, %54 ]
  %46 = sext i16 %45 to i32
  br label %58

47:                                               ; preds = %41, %54
  %48 = load ptr, ptr %13, align 8, !tbaa !24
  %49 = load ptr, ptr %12, align 8, !tbaa !24
  %50 = icmp ult ptr %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %52, ptr %13, align 8, !tbaa !24
  store i8 %37, ptr %52, align 1, !tbaa !24
  %53 = zext i8 %37 to i32
  br label %58

54:                                               ; preds = %47
  %55 = tail call i32 @s_process_write_buf(ptr noundef %0, i32 noundef 0)
  %56 = load i16, ptr %5, align 8, !tbaa !25
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %47, label %44, !llvm.loop !54

58:                                               ; preds = %51, %44, %39
  %59 = phi i32 [ 0, %39 ], [ %46, %44 ], [ %53, %51 ]
  %60 = icmp sgt i32 %59, -1
  %61 = sext i1 %60 to i32
  %62 = add i32 %17, %61
  br label %63

63:                                               ; preds = %58, %27
  %64 = phi i32 [ %34, %27 ], [ %62, %58 ]
  %65 = phi i32 [ %18, %27 ], [ %59, %58 ]
  %66 = phi ptr [ %33, %27 ], [ %36, %58 ]
  %67 = phi i1 [ true, %27 ], [ %60, %58 ]
  br i1 %67, label %14, label %68

68:                                               ; preds = %63, %14, %4
  %69 = phi i32 [ %2, %4 ], [ %64, %63 ], [ 0, %14 ]
  %70 = phi i32 [ %7, %4 ], [ %65, %14 ], [ %65, %63 ]
  %71 = sub i32 %2, %69
  store i32 %71, ptr %3, align 4, !tbaa !61
  %72 = tail call i32 @llvm.smin.i32(i32 %70, i32 0)
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spskip(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp slt i64 %1, 0
  br i1 %4, label %100, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %7 = load i8, ptr %6, align 1, !tbaa !27
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %100, label %11

11:                                               ; preds = %5
  %12 = and i32 %8, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %11
  %15 = and i8 %7, 2
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  %24 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = ptrtoint ptr %23 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  br label %29

29:                                               ; preds = %14, %22
  %30 = phi i64 [ %28, %22 ], [ 0, %14 ]
  %31 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  %32 = load i64, ptr %31, align 8, !tbaa !29
  %33 = add nsw i64 %32, %30
  %34 = add nsw i64 %33, %1
  %35 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = tail call i32 %36(ptr noundef %0, i64 noundef %34) #12
  %38 = load i8, ptr %6, align 1, !tbaa !27
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, ptr %18, ptr %17
  %42 = load ptr, ptr %41, align 8, !tbaa !24
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %29
  %45 = getelementptr inbounds i8, ptr %42, i64 1
  %46 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = ptrtoint ptr %45 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  br label %51

51:                                               ; preds = %29, %44
  %52 = phi i64 [ %50, %44 ], [ 0, %29 ]
  %53 = load i64, ptr %31, align 8, !tbaa !29
  %54 = sub i64 %52, %33
  %55 = add i64 %54, %53
  br label %100

56:                                               ; preds = %11
  %57 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  %58 = load ptr, ptr %57, align 8, !tbaa !32
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  %62 = load i16, ptr %61, align 8, !tbaa !25
  %63 = icmp eq i16 %62, -4
  %64 = zext i1 %63 to i64
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i64 [ 1, %56 ], [ %64, %60 ]
  %67 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %68 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %69 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  br label %70

70:                                               ; preds = %94, %65
  %71 = phi i64 [ %1, %65 ], [ %96, %94 ]
  %72 = phi i32 [ undef, %65 ], [ %97, %94 ]
  %73 = load ptr, ptr %68, align 8, !tbaa !24
  %74 = load ptr, ptr %67, align 8, !tbaa !24
  %75 = ptrtoint ptr %73 to i64
  %76 = ptrtoint ptr %74 to i64
  %77 = sub i64 %75, %76
  %78 = add nsw i64 %71, %66
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %70
  %81 = sub nsw i64 %71, %77
  store ptr %73, ptr %67, align 8, !tbaa !24
  %82 = load i16, ptr %69, align 8, !tbaa !25
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = sub nsw i64 %1, %81
  store i64 %85, ptr %2, align 8, !tbaa !43
  %86 = sext i16 %82 to i32
  br label %94

87:                                               ; preds = %80
  %88 = tail call i32 @spgetcc(ptr noundef %0, i32 noundef 1)
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = sub nsw i64 %1, %81
  store i64 %91, ptr %2, align 8, !tbaa !43
  br label %94

92:                                               ; preds = %87
  %93 = add nsw i64 %81, -1
  br label %94

94:                                               ; preds = %92, %90, %84
  %95 = phi i1 [ false, %84 ], [ false, %90 ], [ true, %92 ]
  %96 = phi i64 [ %81, %84 ], [ %81, %90 ], [ %93, %92 ]
  %97 = phi i32 [ %86, %84 ], [ %88, %90 ], [ %72, %92 ]
  br i1 %95, label %70, label %103, !llvm.loop !64

98:                                               ; preds = %70
  %99 = getelementptr inbounds i8, ptr %74, i64 %71
  store ptr %99, ptr %67, align 8, !tbaa !24
  br label %100

100:                                              ; preds = %3, %5, %51, %98
  %101 = phi i64 [ %1, %98 ], [ %55, %51 ], [ 0, %5 ], [ 0, %3 ]
  %102 = phi i32 [ 0, %98 ], [ %37, %51 ], [ -2, %5 ], [ -2, %3 ]
  store i64 %101, ptr %2, align 8, !tbaa !43
  br label %103

103:                                              ; preds = %94, %100
  %104 = phi i32 [ %102, %100 ], [ %97, %94 ]
  ret i32 %104
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sread_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  store ptr @s_no_template, ptr %0, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  store ptr %1, ptr %4, align 8, !tbaa !23
  %5 = getelementptr inbounds i8, ptr %1, i64 -1
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !24
  store ptr %5, ptr %6, align 8, !tbaa !24
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 0, ptr %11, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 8
  store i8 0, ptr %12, align 2, !tbaa !26
  %13 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  store i8 5, ptr %13, align 1, !tbaa !27
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %14, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  store i64 0, ptr %15, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 6
  store i32 %2, ptr %16, align 4, !tbaa !30
  %17 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  store i32 %2, ptr %17, align 8, !tbaa !31
  %18 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  store ptr null, ptr %18, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %19, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 8 dereferenceable(56) @sread_string.p, i64 56, i1 false), !tbaa.struct !34
  %21 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  store ptr %0, ptr %21, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  store ptr null, ptr %22, align 8, !tbaa !37
  store ptr %1, ptr %14, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10, i32 1
  store i32 %2, ptr %23, align 8, !tbaa !65
  store i16 -1, ptr %11, align 8, !tbaa !25
  store ptr %9, ptr %7, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_string_available(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %3, align 8, !tbaa !24
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq ptr %5, %6
  %11 = select i1 %10, i64 -1, i64 %9
  store i64 %11, ptr %1, align 8, !tbaa !43
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_string_read_seek(ptr nocapture noundef %0, i64 noundef %1) #3 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = zext i32 %6 to i64
  %8 = icmp slt i64 %7, %1
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds i8, ptr %11, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -1
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !24
  br label %15

15:                                               ; preds = %2, %4, %9
  %16 = phi i32 [ 0, %9 ], [ -2, %4 ], [ -2, %2 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @s_string_read_process(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3) #2 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @swrite_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  store ptr @s_no_template, ptr %0, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  store ptr %1, ptr %4, align 8, !tbaa !23
  %5 = getelementptr inbounds i8, ptr %1, i64 -1
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !24
  store ptr %5, ptr %6, align 8, !tbaa !24
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 0, ptr %11, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 8
  store i8 0, ptr %12, align 2, !tbaa !26
  %13 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  store i8 6, ptr %13, align 1, !tbaa !27
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %14, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 11
  store i64 0, ptr %15, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 6
  store i32 %2, ptr %16, align 4, !tbaa !30
  %17 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  store i32 %2, ptr %17, align 8, !tbaa !31
  %18 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  store ptr null, ptr %18, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %19, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 8 dereferenceable(56) @swrite_string.p, i64 56, i1 false), !tbaa.struct !34
  %21 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  store ptr %0, ptr %21, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  store ptr null, ptr %22, align 8, !tbaa !37
  store ptr %1, ptr %14, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10, i32 1
  store i32 %2, ptr %23, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @s_string_write_seek(ptr nocapture noundef %0, i64 noundef %1) #3 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = zext i32 %6 to i64
  %8 = icmp slt i64 %7, %1
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds i8, ptr %11, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -1
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !24
  br label %15

15:                                               ; preds = %2, %4, %9
  %16 = phi i32 [ 0, %9 ], [ -2, %4 ], [ -2, %2 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @s_string_write_process(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 noundef %3) #2 {
  %5 = icmp eq i32 %3, 0
  %6 = select i1 %5, i32 -2, i32 -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @stream_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  switch i32 %2, label %29 [
    i32 0, label %5
    i32 1, label %15
    i32 2, label %17
    i32 3, label %19
    i32 4, label %21
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 2, !tbaa !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  br label %23

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  br label %23

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 19
  br label %23

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 20
  br label %23

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  br label %23

23:                                               ; preds = %13, %15, %17, %19, %21
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  br label %26

26:                                               ; preds = %23, %9, %5
  %27 = phi ptr [ null, %5 ], [ %10, %9 ], [ %25, %23 ]
  %28 = phi ptr [ @ptr_struct_procs, %5 ], [ @ptr_string_procs, %9 ], [ @ptr_struct_procs, %23 ]
  store ptr %27, ptr %3, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %26, %4
  %30 = phi ptr [ null, %4 ], [ %28, %26 ]
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define internal void @stream_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 8
  %9 = load i8, ptr %8, align 2, !tbaa !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void @gs_reloc_string(ptr noundef nonnull %12, ptr noundef %2) #12
  %16 = load ptr, ptr %12, align 8, !tbaa !28
  br label %19

17:                                               ; preds = %11
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef nonnull %5, ptr noundef %2) #12
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ]
  store ptr %20, ptr %4, align 8, !tbaa !23
  %21 = ptrtoint ptr %5 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %22, %21
  %24 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds i8, ptr %25, i64 %23
  store ptr %26, ptr %24, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = getelementptr inbounds i8, ptr %28, i64 %23
  store ptr %29, ptr %27, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  %32 = getelementptr inbounds i8, ptr %31, i64 %23
  store ptr %32, ptr %30, align 8, !tbaa !24
  br label %33

33:                                               ; preds = %19, %7, %3
  %34 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !32
  %36 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %35, ptr noundef %2) #12
  store ptr %36, ptr %34, align 8, !tbaa !32
  %37 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  %39 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %38, ptr noundef %2) #12
  store ptr %39, ptr %37, align 8, !tbaa !66
  %40 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %41, ptr noundef %2) #12
  store ptr %42, ptr %40, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  %45 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %44, ptr noundef %2) #12
  store ptr %45, ptr %43, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stream_finalize(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 1, !tbaa !27
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !33
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %15, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 12, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = tail call i32 %17(ptr noundef %0) #12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.stream_template_s, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void %27(ptr noundef nonnull %22) #12
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq ptr %22, %0
  br i1 %31, label %39, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.stream_state_s, ptr %22, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %34, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  tail call void %38(ptr noundef nonnull %34, ptr noundef nonnull %22, ptr noundef nonnull @.str.1) #12
  br label %39

39:                                               ; preds = %36, %32, %30
  store ptr %0, ptr %21, align 8, !tbaa !36
  br label %40

40:                                               ; preds = %39, %20
  store ptr null, ptr %14, align 8, !tbaa !23
  %41 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %41, align 8, !tbaa !31
  %42 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 7
  store i16 -1, ptr %42, align 8, !tbaa !25
  store i8 0, ptr %2, align 1, !tbaa !27
  store ptr null, ptr %15, align 8, !tbaa !28
  %43 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  store ptr @s_std_null, ptr %16, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 13
  store ptr null, ptr %44, align 8, !tbaa !32
  store ptr %0, ptr %21, align 8, !tbaa !36
  store ptr @s_no_template, ptr %0, align 8, !tbaa !22
  br label %45

45:                                               ; preds = %40, %13, %9, %5, %1
  ret void
}

declare void @gs_reloc_string(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 16}
!6 = !{!"gs_memory_s", !7, i64 0}
!7 = !{!"gs_memory_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 8}
!12 = !{!"stream_s", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !8, i64 48, !13, i64 56, !13, i64 60, !14, i64 64, !9, i64 66, !9, i64 67, !15, i64 72, !16, i64 88, !17, i64 96, !8, i64 152, !13, i64 160, !13, i64 164, !8, i64 168, !14, i64 176, !14, i64 178, !8, i64 184, !8, i64 192, !13, i64 200, !8, i64 208, !13, i64 216, !8, i64 224}
!13 = !{!"int", !9, i64 0}
!14 = !{!"short", !9, i64 0}
!15 = !{!"gs_string_s", !8, i64 0, !13, i64 8}
!16 = !{!"long", !9, i64 0}
!17 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!18 = !{!12, !8, i64 16}
!19 = !{!20, !8, i64 8}
!20 = !{!"stream_state_s", !8, i64 0, !8, i64 8, !8, i64 16}
!21 = !{!20, !8, i64 16}
!22 = !{!12, !8, i64 0}
!23 = !{!12, !8, i64 48}
!24 = !{!9, !9, i64 0}
!25 = !{!12, !14, i64 64}
!26 = !{!12, !9, i64 66}
!27 = !{!12, !9, i64 67}
!28 = !{!12, !8, i64 72}
!29 = !{!12, !16, i64 88}
!30 = !{!12, !13, i64 60}
!31 = !{!12, !13, i64 56}
!32 = !{!12, !8, i64 152}
!33 = !{!12, !13, i64 160}
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 8, !35, i64 48, i64 8, !35}
!35 = !{!8, !8, i64 0}
!36 = !{!12, !8, i64 168}
!37 = !{!12, !8, i64 208}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!12, !8, i64 136}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = !{!16, !16, i64 0}
!44 = !{!12, !8, i64 128}
!45 = !{!12, !8, i64 120}
!46 = !{!12, !8, i64 96}
!47 = !{!12, !8, i64 104}
!48 = !{!12, !8, i64 144}
!49 = !{!20, !8, i64 0}
!50 = !{!51, !8, i64 32}
!51 = !{!"stream_template_s", !8, i64 0, !8, i64 8, !8, i64 16, !13, i64 24, !13, i64 28, !8, i64 32, !8, i64 40, !8, i64 48}
!52 = !{!6, !8, i64 88}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !39}
!55 = !{!56, !8, i64 8}
!56 = !{!"stream_cursor_write_s", !8, i64 0, !8, i64 8, !8, i64 16}
!57 = !{!56, !8, i64 16}
!58 = !{!59, !8, i64 0}
!59 = !{!"stream_cursor_read_s", !8, i64 0, !8, i64 8, !8, i64 16}
!60 = !{!51, !13, i64 28}
!61 = !{!13, !13, i64 0}
!62 = !{!59, !8, i64 8}
!63 = distinct !{!63, !39}
!64 = distinct !{!64, !39}
!65 = !{!12, !13, i64 80}
!66 = !{!12, !8, i64 184}
!67 = !{!12, !8, i64 192}
