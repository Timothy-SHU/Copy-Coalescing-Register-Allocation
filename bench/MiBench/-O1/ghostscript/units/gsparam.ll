; ModuleID = 'gsparam.c'
source_filename = "gsparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_c_param_list_s = type { ptr, ptr, ptr, i32 }
%struct.gs_c_param_s = type { ptr, ptr, %union.c_param_value_s, i32 }
%union.c_param_value_s = type { %struct.gs_c_param_list_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_param_collection_s = type { ptr, i32 }

@c_write_procs = internal constant %struct.gs_param_list_procs_s { ptr @c_param_write_null, ptr @c_param_write_bool, ptr @c_param_write_int, ptr @c_param_write_long, ptr @c_param_write_float, ptr @c_param_write_string, ptr @c_param_write_string, ptr @c_param_write_int_array, ptr @c_param_write_float_array, ptr @c_param_write_string_array, ptr @c_param_write_string_array, ptr @c_param_begin_write_dict, ptr @c_param_end_write_dict, ptr @c_param_requested, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [24 x i8] c"gs_c_param_list_release\00", align 1
@c_read_procs = internal constant %struct.gs_param_list_procs_s { ptr @c_param_read_null, ptr @c_param_read_bool, ptr @c_param_read_int, ptr @c_param_read_long, ptr @c_param_read_float, ptr @c_param_read_string, ptr @c_param_read_string, ptr @c_param_read_int_array, ptr @c_param_read_float_array, ptr @c_param_read_string_array, ptr @c_param_read_string_array, ptr @c_param_begin_read_dict, ptr @c_param_end_read_dict, ptr null, ptr @c_param_read_get_policy, ptr @c_param_read_signal_error, ptr @c_param_read_commit }, align 8
@st_c_param = internal constant %struct.gs_memory_struct_type_s { i32 56, ptr @.str.2, ptr null, ptr null, ptr @c_param_enum_ptrs, ptr @c_param_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"c_param_write\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gs_c_param\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_c_param_list = internal constant %struct.gs_memory_struct_type_s { i32 32, ptr @.str.4, ptr null, ptr null, ptr @c_param_list_enum_ptrs, ptr @c_param_list_reloc_ptrs, ptr null }, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"c_param_begin_write_dict\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"c_param_list\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gs_c_param_list_write(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr @c_write_procs, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_c_param_list_release(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %5, %16
  %9 = phi ptr [ %3, %5 ], [ %10, %16 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.gs_c_param_s, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gs_c_param_s, ptr %9, i64 0, i32 2
  tail call void @gs_c_param_list_release(ptr noundef nonnull %15)
  br label %16

16:                                               ; preds = %14, %8
  %17 = load ptr, ptr %6, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %17, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  tail call void %19(ptr noundef %17, ptr noundef nonnull %9, ptr noundef nonnull @.str) #10
  store ptr %10, ptr %2, align 8, !tbaa !12
  %20 = load i32, ptr %7, align 8, !tbaa !13
  %21 = add i32 %20, -1
  store i32 %21, ptr %7, align 8, !tbaa !13
  %22 = icmp eq ptr %10, null
  br i1 %22, label %23, label %8, !llvm.loop !20

23:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gs_c_param_list_read(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @c_read_procs, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_null(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = tail call ptr %6(ptr noundef %4, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  store ptr %11, ptr %7, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 3
  store i32 0, ptr %13, align 8, !tbaa !16
  store ptr %7, ptr %10, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !13
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !13
  br label %17

17:                                               ; preds = %2, %9
  %18 = phi i32 [ 0, %9 ], [ -25, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_bool(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr %7(ptr noundef %5, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %12, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 2
  %15 = load i32, ptr %2, align 1
  store i32 %15, ptr %14, align 8
  %16 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 3
  store i32 1, ptr %16, align 8, !tbaa !16
  store ptr %8, ptr %11, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !13
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %3, %10
  %21 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_int(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i32, ptr %2, align 4, !tbaa !24
  %5 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call ptr %8(ptr noundef %6, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  store ptr %14, ptr %9, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.gs_c_param_s, ptr %9, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.gs_c_param_s, ptr %9, i64 0, i32 2
  store i64 %12, ptr %16, align 8
  %17 = getelementptr inbounds %struct.gs_c_param_s, ptr %9, i64 0, i32 3
  store i32 2, ptr %17, align 8, !tbaa !16
  store ptr %9, ptr %13, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !13
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !13
  br label %21

21:                                               ; preds = %3, %11
  %22 = phi i32 [ 0, %11 ], [ -25, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_long(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr %7(ptr noundef %5, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %12, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 2
  %15 = load i64, ptr %2, align 1
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 3
  store i32 2, ptr %16, align 8, !tbaa !16
  store ptr %8, ptr %11, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !13
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %3, %10
  %21 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_float(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr %7(ptr noundef %5, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %12, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 2
  %15 = load i32, ptr %2, align 1
  store i32 %15, ptr %14, align 8
  %16 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 3
  store i32 3, ptr %16, align 8, !tbaa !16
  store ptr %8, ptr %11, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !13
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %3, %10
  %21 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_string(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr %7(ptr noundef %5, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %12, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 3
  store i32 4, ptr %15, align 8, !tbaa !16
  store ptr %8, ptr %11, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !13
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !13
  br label %19

19:                                               ; preds = %3, %10
  %20 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_int_array(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr %7(ptr noundef %5, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %12, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 3
  store i32 5, ptr %15, align 8, !tbaa !16
  store ptr %8, ptr %11, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !13
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !13
  br label %19

19:                                               ; preds = %3, %10
  %20 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_float_array(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr %7(ptr noundef %5, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %12, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 3
  store i32 6, ptr %15, align 8, !tbaa !16
  store ptr %8, ptr %11, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !13
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !13
  br label %19

19:                                               ; preds = %3, %10
  %20 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_write_string_array(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr %7(ptr noundef %5, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  store ptr %12, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 3
  store i32 7, ptr %15, align 8, !tbaa !16
  store ptr %8, ptr %11, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !13
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !13
  br label %19

19:                                               ; preds = %3, %10
  %20 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_begin_write_dict(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call ptr %8(ptr noundef %6, ptr noundef nonnull @st_c_param_list, ptr noundef nonnull @.str.3) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !11
  store ptr @c_write_procs, ptr %9, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %9, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %9, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %9, i64 0, i32 3
  store i32 0, ptr %15, align 8, !tbaa !13
  store ptr %9, ptr %2, align 8, !tbaa !25
  br label %16

16:                                               ; preds = %4, %11
  %17 = phi i32 [ 0, %11 ], [ -25, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @c_param_end_write_dict(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load ptr, ptr %2, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call ptr %8(ptr noundef %6, ptr noundef nonnull @st_c_param, ptr noundef nonnull @.str.1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  store ptr %13, ptr %9, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.gs_c_param_s, ptr %9, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.gs_c_param_s, ptr %9, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 1 dereferenceable(32) %4, i64 32, i1 false)
  %16 = getelementptr inbounds %struct.gs_c_param_s, ptr %9, i64 0, i32 3
  store i32 8, ptr %16, align 8, !tbaa !16
  store ptr %9, ptr %12, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !13
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %3, %11
  %21 = phi i32 [ 0, %11 ], [ -25, %3 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @c_param_requested(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @c_param_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  store ptr %7, ptr %3, align 8, !tbaa !27
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @c_param_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #10
  store ptr %5, ptr %0, align 8, !tbaa !14
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @c_param_list_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  store ptr %8, ptr %3, align 8, !tbaa !27
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @c_param_list_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #10
  store ptr %6, ptr %4, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @c_param_read_null(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_c_param_s, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !28

13:                                               ; preds = %8, %4
  %14 = phi ptr [ %6, %8 ], [ null, %4 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gs_c_param_s, ptr %14, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !16
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 -20
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ 1, %13 ], [ %20, %16 ]
  ret i32 %22
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @c_param_read_bool(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 2
  %23 = load i32, ptr %22, align 8
  store i32 %23, ptr %2, align 1
  br label %24

24:                                               ; preds = %14, %17, %21
  %25 = phi i32 [ 0, %21 ], [ 1, %14 ], [ -20, %17 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @c_param_read_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #6 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, -2147483648
  %25 = icmp ult i64 %24, -4294967296
  %26 = select i1 %25, i32 -15, i32 0
  br label %27

27:                                               ; preds = %14, %17, %21
  %28 = phi i32 [ 1, %14 ], [ %26, %21 ], [ -20, %17 ]
  ret i32 %28
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @c_param_read_long(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %2, align 1
  br label %24

24:                                               ; preds = %14, %17, %21
  %25 = phi i32 [ 0, %21 ], [ 1, %14 ], [ -20, %17 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @c_param_read_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 2
  %23 = load i32, ptr %22, align 8
  store i32 %23, ptr %2, align 1
  br label %24

24:                                               ; preds = %14, %17, %21
  %25 = phi i32 [ 0, %21 ], [ 1, %14 ], [ -20, %17 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @c_param_read_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  br label %23

23:                                               ; preds = %14, %17, %21
  %24 = phi i32 [ 0, %21 ], [ 1, %14 ], [ -20, %17 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @c_param_read_int_array(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  br label %23

23:                                               ; preds = %14, %17, %21
  %24 = phi i32 [ 0, %21 ], [ 1, %14 ], [ -20, %17 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @c_param_read_float_array(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  br label %23

23:                                               ; preds = %14, %17, %21
  %24 = phi i32 [ 0, %21 ], [ 1, %14 ], [ -20, %17 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @c_param_read_string_array(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_c_param_s, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %9 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_c_param_s, ptr %15, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  br label %23

23:                                               ; preds = %14, %17, %21
  %24 = phi i32 [ 0, %21 ], [ 1, %14 ], [ -20, %17 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @c_param_begin_read_dict(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 %3) #8 {
  %5 = getelementptr inbounds %struct.gs_c_param_list_s, ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gs_c_param_s, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !28

15:                                               ; preds = %6, %10
  %16 = phi ptr [ %8, %10 ], [ null, %6 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.gs_c_param_s, ptr %16, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gs_c_param_s, ptr %16, i64 0, i32 2
  store ptr @c_read_procs, ptr %23, align 8, !tbaa !5
  store ptr %23, ptr %2, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.gs_c_param_s, ptr %16, i64 0, i32 2, i32 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.gs_param_collection_s, ptr %2, i64 0, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !30
  br label %27

27:                                               ; preds = %18, %15, %22
  %28 = phi i32 [ 0, %22 ], [ 1, %15 ], [ -20, %18 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @c_param_end_read_dict(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @c_param_read_get_policy(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @c_param_read_signal_error(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef returned %2) #2 {
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @c_param_read_commit(ptr nocapture readnone %0) #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_c_param_list_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 16}
!13 = !{!6, !10, i64 24}
!14 = !{!15, !7, i64 0}
!15 = !{!"gs_c_param_s", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 48}
!16 = !{!15, !10, i64 48}
!17 = !{!18, !7, i64 88}
!18 = !{!"gs_memory_s", !19, i64 0}
!19 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!18, !7, i64 16}
!23 = !{!15, !7, i64 8}
!24 = !{!10, !10, i64 0}
!25 = !{!26, !7, i64 0}
!26 = !{!"gs_param_collection_s", !7, i64 0, !10, i64 8}
!27 = !{!7, !7, i64 0}
!28 = distinct !{!28, !21}
!29 = !{!8, !8, i64 0}
!30 = !{!26, !10, i64 8}
