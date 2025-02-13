; ModuleID = 'pretty-print.c'
source_filename = "pretty-print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.chunk_info = type { ptr, [60 x ptr] }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"pretty-print.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@open_quote = external local_unnamed_addr global ptr, align 8
@close_quote = external local_unnamed_addr global ptr, align 8
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"qwl+#\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%llo\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@locale_utf8 = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\\U%08x\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_write_text_to_stream(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !79 {
  %2 = tail call ptr @pp_base_formatted_text(ptr noundef %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = tail call i32 @fputs(ptr noundef %2, ptr noundef %5) #16
  tail call void @pp_base_clear_output_area(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pp_base_formatted_text(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !79 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %17, !prof !94

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull %4, i32 noundef 1) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.output_buffer, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  br label %17

17:                                               ; preds = %1, %11
  %18 = phi ptr [ %6, %1 ], [ %16, %11 ]
  %19 = phi ptr [ %4, %1 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %21, ptr %20, align 8, !tbaa !92
  store i8 0, ptr %18, align 1, !tbaa !95
  %22 = load ptr, ptr %0, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.output_buffer, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.obstack, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  ret ptr %26
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_clear_output_area(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !79 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !98
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %23, !prof !99

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = icmp slt i64 %11, %18
  br i1 %19, label %20, label %23, !prof !99

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %8, i64 %11
  store ptr %21, ptr %5, align 8, !tbaa !96
  %22 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !92
  br label %26

23:                                               ; preds = %14, %1
  %24 = getelementptr inbounds i8, ptr %8, i64 %11
  tail call void @obstack_free(ptr noundef nonnull %4, ptr noundef %24) #17
  %25 = load ptr, ptr %0, align 8, !tbaa !80
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi ptr [ %25, %23 ], [ %2, %20 ]
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 5
  store i32 0, ptr %28, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_indent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !101 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !102
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #16
  %7 = add nuw nsw i32 %6, 1
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %9, label %5, !llvm.loop !103

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_character(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !105 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !106
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16, !prof !107

6:                                                ; preds = %2
  %7 = tail call i32 @pp_base_remaining_character_count_for_line(ptr noundef nonnull %0) #16
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  tail call void @pp_base_newline(ptr noundef nonnull %0) #16
  %10 = and i32 %1, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !108
  %14 = and i16 %13, 64
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %9, %6, %2
  %17 = load ptr, ptr %0, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct.output_buffer, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !92
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  %25 = icmp ugt ptr %22, %24
  br i1 %25, label %26, label %32, !prof !107

26:                                               ; preds = %16
  tail call void @_obstack_newchunk(ptr noundef nonnull %19, i32 noundef 1) #17
  %27 = load ptr, ptr %0, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.obstack, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  br label %32

32:                                               ; preds = %16, %26
  %33 = phi ptr [ %21, %16 ], [ %31, %26 ]
  %34 = phi ptr [ %19, %16 ], [ %29, %26 ]
  %35 = trunc i32 %1 to i8
  %36 = getelementptr inbounds %struct.obstack, ptr %34, i64 0, i32 3
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %37, ptr %36, align 8, !tbaa !92
  store i8 %35, ptr %33, align 1, !tbaa !95
  %38 = load ptr, ptr %0, align 8, !tbaa !80
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !100
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !100
  br label %42

42:                                               ; preds = %9, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_format(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !79 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #18
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 5
  store i64 488, ptr %9, align 8, !tbaa !110
  %10 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, 488
  br i1 %17, label %18, label %21, !prof !94

18:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 488) #17
  %19 = load i64, ptr %9, align 8, !tbaa !110
  %20 = load ptr, ptr %12, align 8, !tbaa !112
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi ptr [ %13, %2 ], [ %20, %18 ]
  %23 = phi i64 [ 488, %2 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %28, label %32, !prof !94

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %30 = load i8, ptr %29, align 8
  %31 = or i8 %30, 2
  store i8 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %21, %28
  %33 = ptrtoint ptr %26 to i64
  store i64 %33, ptr %9, align 8, !tbaa !110
  %34 = ptrtoint ptr %24 to i64
  %35 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !114
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %34
  %39 = xor i32 %36, -1
  %40 = sext i32 %39 to i64
  %41 = and i64 %38, %40
  %42 = inttoptr i64 %41 to ptr
  store ptr %42, ptr %12, align 8, !tbaa !112
  %43 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !115
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %41, %45
  %47 = load ptr, ptr %10, align 8, !tbaa !111
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %48, %45
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52, !prof !94

51:                                               ; preds = %32
  store ptr %47, ptr %12, align 8, !tbaa !112
  br label %52

52:                                               ; preds = %32, %51
  %53 = phi ptr [ %42, %32 ], [ %47, %51 ]
  store ptr %53, ptr %25, align 8, !tbaa !113
  %54 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !116
  store ptr %55, ptr %26, align 8, !tbaa !117
  store ptr %26, ptr %54, align 8, !tbaa !116
  %56 = getelementptr inbounds %struct.chunk_info, ptr %26, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %3, i8 0, i64 240, i1 false)
  %57 = load ptr, ptr %1, align 8, !tbaa !119
  %58 = load i8, ptr %57, align 1, !tbaa !95
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %401, label %60, !prof !121

60:                                               ; preds = %52, %380
  %61 = phi i8 [ %399, %380 ], [ %58, %52 ]
  %62 = phi ptr [ %357, %380 ], [ %57, %52 ]
  %63 = phi i32 [ %356, %380 ], [ 0, %52 ]
  %64 = phi i32 [ %398, %380 ], [ 0, %52 ]
  %65 = phi i8 [ %230, %380 ], [ 0, %52 ]
  %66 = phi i8 [ %229, %380 ], [ 0, %52 ]
  br label %67

67:                                               ; preds = %84, %60
  %68 = phi i8 [ %61, %60 ], [ %85, %84 ]
  %69 = phi ptr [ %62, %60 ], [ %86, %84 ]
  switch i8 %68, label %70 [
    i8 0, label %401
    i8 37, label %87
  ], !prof !122

70:                                               ; preds = %67
  %71 = load ptr, ptr %12, align 8, !tbaa !112
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = load ptr, ptr %10, align 8, !tbaa !111
  %74 = icmp ugt ptr %72, %73
  br i1 %74, label %75, label %78, !prof !123

75:                                               ; preds = %70
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %76 = load i8, ptr %69, align 1, !tbaa !95
  %77 = load ptr, ptr %12, align 8, !tbaa !112
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi ptr [ %71, %70 ], [ %77, %75 ]
  %80 = phi i8 [ %68, %70 ], [ %76, %75 ]
  %81 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %81, ptr %12, align 8, !tbaa !112
  store i8 %80, ptr %79, align 1, !tbaa !95
  %82 = getelementptr inbounds i8, ptr %69, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !95
  br label %84

84:                                               ; preds = %78, %101
  %85 = phi i8 [ %83, %78 ], [ %103, %101 ]
  %86 = phi ptr [ %82, %78 ], [ %102, %101 ]
  br label %67, !llvm.loop !124

87:                                               ; preds = %67
  %88 = getelementptr inbounds i8, ptr %69, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !95
  switch i8 %89, label %162 [
    i8 0, label %90
    i8 37, label %91
    i8 60, label %105
    i8 62, label %124
    i8 39, label %124
    i8 109, label %143
  ], !prof !125

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @.str.1) #17
  br label %91

91:                                               ; preds = %87, %90
  %92 = load ptr, ptr %12, align 8, !tbaa !112
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  %94 = load ptr, ptr %10, align 8, !tbaa !111
  %95 = icmp ugt ptr %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %97 = load ptr, ptr %12, align 8, !tbaa !112
  br label %98

98:                                               ; preds = %91, %96
  %99 = phi ptr [ %92, %91 ], [ %97, %96 ]
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %100, ptr %12, align 8, !tbaa !112
  store i8 37, ptr %99, align 1, !tbaa !95
  br label %101

101:                                              ; preds = %98, %117, %136, %156
  %102 = getelementptr inbounds i8, ptr %69, i64 2
  %103 = load i8, ptr %102, align 1, !tbaa !95
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %401, label %84, !prof !126

105:                                              ; preds = %87
  %106 = load ptr, ptr @open_quote, align 8, !tbaa !127
  %107 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %106) #16
  store i64 %107, ptr %9, align 8, !tbaa !110
  %108 = load ptr, ptr %12, align 8, !tbaa !112
  %109 = getelementptr inbounds i8, ptr %108, i64 %107
  %110 = load ptr, ptr %10, align 8, !tbaa !111
  %111 = icmp ugt ptr %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = trunc i64 %107 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %113) #17
  %114 = load ptr, ptr %12, align 8, !tbaa !112
  %115 = load ptr, ptr @open_quote, align 8, !tbaa !127
  %116 = load i64, ptr %9, align 8, !tbaa !110
  br label %117

117:                                              ; preds = %105, %112
  %118 = phi i64 [ %107, %105 ], [ %116, %112 ]
  %119 = phi ptr [ %106, %105 ], [ %115, %112 ]
  %120 = phi ptr [ %108, %105 ], [ %114, %112 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %119, i64 %118, i1 false)
  %121 = load i64, ptr %9, align 8, !tbaa !110
  %122 = load ptr, ptr %12, align 8, !tbaa !112
  %123 = getelementptr inbounds i8, ptr %122, i64 %121
  store ptr %123, ptr %12, align 8, !tbaa !112
  br label %101

124:                                              ; preds = %87, %87
  %125 = load ptr, ptr @close_quote, align 8, !tbaa !127
  %126 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %125) #16
  store i64 %126, ptr %9, align 8, !tbaa !110
  %127 = load ptr, ptr %12, align 8, !tbaa !112
  %128 = getelementptr inbounds i8, ptr %127, i64 %126
  %129 = load ptr, ptr %10, align 8, !tbaa !111
  %130 = icmp ugt ptr %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = trunc i64 %126 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %132) #17
  %133 = load ptr, ptr %12, align 8, !tbaa !112
  %134 = load ptr, ptr @close_quote, align 8, !tbaa !127
  %135 = load i64, ptr %9, align 8, !tbaa !110
  br label %136

136:                                              ; preds = %124, %131
  %137 = phi i64 [ %126, %124 ], [ %135, %131 ]
  %138 = phi ptr [ %125, %124 ], [ %134, %131 ]
  %139 = phi ptr [ %127, %124 ], [ %133, %131 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %139, ptr align 1 %138, i64 %137, i1 false)
  %140 = load i64, ptr %9, align 8, !tbaa !110
  %141 = load ptr, ptr %12, align 8, !tbaa !112
  %142 = getelementptr inbounds i8, ptr %141, i64 %140
  store ptr %142, ptr %12, align 8, !tbaa !112
  br label %101

143:                                              ; preds = %87
  %144 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !128
  %146 = tail call ptr @xstrerror(i32 noundef %145) #17
  %147 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %146) #16
  store i64 %147, ptr %9, align 8, !tbaa !110
  %148 = load ptr, ptr %12, align 8, !tbaa !112
  %149 = getelementptr inbounds i8, ptr %148, i64 %147
  %150 = load ptr, ptr %10, align 8, !tbaa !111
  %151 = icmp ugt ptr %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = trunc i64 %147 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %153) #17
  %154 = load ptr, ptr %12, align 8, !tbaa !112
  %155 = load i64, ptr %9, align 8, !tbaa !110
  br label %156

156:                                              ; preds = %143, %152
  %157 = phi i64 [ %147, %143 ], [ %155, %152 ]
  %158 = phi ptr [ %148, %143 ], [ %154, %152 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %158, ptr align 1 %146, i64 %157, i1 false)
  %159 = load i64, ptr %9, align 8, !tbaa !110
  %160 = load ptr, ptr %12, align 8, !tbaa !112
  %161 = getelementptr inbounds i8, ptr %160, i64 %159
  store ptr %161, ptr %12, align 8, !tbaa !112
  br label %101

162:                                              ; preds = %87
  %163 = getelementptr inbounds i8, ptr %69, i64 1
  %164 = load ptr, ptr %12, align 8, !tbaa !112
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  %166 = load ptr, ptr %10, align 8, !tbaa !111
  %167 = icmp ugt ptr %165, %166
  br i1 %167, label %168, label %170, !prof !107

168:                                              ; preds = %162
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %169 = load ptr, ptr %12, align 8, !tbaa !112
  br label %170

170:                                              ; preds = %162, %168
  %171 = phi ptr [ %164, %162 ], [ %169, %168 ]
  %172 = getelementptr inbounds i8, ptr %171, i64 1
  store ptr %172, ptr %12, align 8, !tbaa !112
  store i8 0, ptr %171, align 1, !tbaa !95
  %173 = icmp ult i32 %64, 60
  br i1 %173, label %175, label %174, !prof !129

174:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 282, ptr noundef nonnull @.str.1) #17
  br label %175

175:                                              ; preds = %170, %174
  %176 = load ptr, ptr %12, align 8, !tbaa !112
  %177 = load ptr, ptr %25, align 8, !tbaa !113
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %179, label %183, !prof !107

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %181 = load i8, ptr %180, align 8
  %182 = or i8 %181, 2
  store i8 %182, ptr %180, align 8
  br label %183

183:                                              ; preds = %175, %179
  %184 = ptrtoint ptr %177 to i64
  store i64 %184, ptr %9, align 8, !tbaa !110
  %185 = ptrtoint ptr %176 to i64
  %186 = load i32, ptr %35, align 8, !tbaa !114
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %185
  %189 = xor i32 %186, -1
  %190 = sext i32 %189 to i64
  %191 = and i64 %188, %190
  %192 = inttoptr i64 %191 to ptr
  %193 = load ptr, ptr %43, align 8, !tbaa !115
  %194 = ptrtoint ptr %193 to i64
  %195 = sub i64 %191, %194
  %196 = load ptr, ptr %10, align 8, !tbaa !111
  %197 = ptrtoint ptr %196 to i64
  %198 = sub i64 %197, %194
  %199 = icmp sgt i64 %195, %198
  %200 = select i1 %199, ptr %196, ptr %192, !prof !107
  store ptr %200, ptr %12, align 8
  store ptr %200, ptr %25, align 8, !tbaa !113
  %201 = or disjoint i32 %64, 1
  %202 = zext i32 %64 to i64
  %203 = getelementptr inbounds ptr, ptr %56, i64 %202
  store ptr %177, ptr %203, align 8, !tbaa !127
  %204 = load i8, ptr %163, align 1, !tbaa !95
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !108
  %208 = and i16 %207, 4
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %223, label %210, !prof !129

210:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %211 = call i64 @strtoul(ptr noundef nonnull %163, ptr noundef nonnull %4, i32 noundef 10) #16
  %212 = trunc i64 %211 to i32
  %213 = add i32 %212, -1
  %214 = load ptr, ptr %4, align 8, !tbaa !127
  %215 = load i8, ptr %214, align 1, !tbaa !95
  %216 = icmp eq i8 %215, 36
  br i1 %216, label %218, label %217

217:                                              ; preds = %210
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.1) #17
  br label %218

218:                                              ; preds = %210, %217
  %219 = getelementptr inbounds i8, ptr %214, i64 1
  %220 = icmp eq i8 %65, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 296, ptr noundef nonnull @.str.1) #17
  br label %222

222:                                              ; preds = %218, %221
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %227

223:                                              ; preds = %183
  %224 = add i32 %63, 1
  %225 = icmp eq i8 %66, 0
  br i1 %225, label %227, label %226, !prof !129

226:                                              ; preds = %223
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @.str.1) #17
  br label %227

227:                                              ; preds = %226, %223, %222
  %228 = phi i1 [ false, %222 ], [ false, %226 ], [ true, %223 ]
  %229 = phi i8 [ 1, %222 ], [ 1, %226 ], [ 0, %223 ]
  %230 = phi i8 [ %65, %222 ], [ 1, %226 ], [ 1, %223 ]
  %231 = phi i32 [ %213, %222 ], [ %63, %226 ], [ %63, %223 ]
  %232 = phi i32 [ %63, %222 ], [ %224, %226 ], [ %224, %223 ]
  %233 = phi ptr [ %219, %222 ], [ %163, %226 ], [ %163, %223 ]
  %234 = icmp ult i32 %231, 30
  br i1 %234, label %236, label %235, !prof !129

235:                                              ; preds = %227
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @.str.1) #17
  br label %236

236:                                              ; preds = %227, %235
  %237 = zext i32 %231 to i64
  %238 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !127
  %240 = icmp eq ptr %239, null
  br i1 %240, label %242, label %241, !prof !129

241:                                              ; preds = %236
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.1) #17
  br label %242

242:                                              ; preds = %236, %241
  %243 = zext i32 %201 to i64
  %244 = getelementptr inbounds ptr, ptr %56, i64 %243
  store ptr %244, ptr %238, align 8, !tbaa !127
  br label %245

245:                                              ; preds = %253, %242
  %246 = phi ptr [ %233, %242 ], [ %257, %253 ]
  %247 = load ptr, ptr %12, align 8, !tbaa !112
  %248 = getelementptr inbounds i8, ptr %247, i64 1
  %249 = load ptr, ptr %10, align 8, !tbaa !111
  %250 = icmp ugt ptr %248, %249
  br i1 %250, label %251, label %253, !prof !94

251:                                              ; preds = %245
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %252 = load ptr, ptr %12, align 8, !tbaa !112
  br label %253

253:                                              ; preds = %245, %251
  %254 = phi ptr [ %247, %245 ], [ %252, %251 ]
  %255 = load i8, ptr %246, align 1, !tbaa !95
  %256 = getelementptr inbounds i8, ptr %254, i64 1
  store ptr %256, ptr %12, align 8, !tbaa !112
  store i8 %255, ptr %254, align 1, !tbaa !95
  %257 = getelementptr inbounds i8, ptr %246, i64 1
  %258 = load i8, ptr %246, align 1, !tbaa !95
  %259 = sext i8 %258 to i32
  %260 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.2, i32 %259, i64 6)
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %245, !prof !130, !llvm.loop !131

262:                                              ; preds = %253
  %263 = icmp eq i8 %258, 46
  br i1 %263, label %264, label %355, !prof !107

264:                                              ; preds = %262
  %265 = load i8, ptr %257, align 1, !tbaa !95
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %266
  %268 = load i16, ptr %267, align 2, !tbaa !108
  %269 = and i16 %268, 4
  %270 = icmp eq i16 %269, 0
  br i1 %270, label %293, label %271

271:                                              ; preds = %264, %279
  %272 = phi ptr [ %283, %279 ], [ %257, %264 ]
  %273 = load ptr, ptr %12, align 8, !tbaa !112
  %274 = getelementptr inbounds i8, ptr %273, i64 1
  %275 = load ptr, ptr %10, align 8, !tbaa !111
  %276 = icmp ugt ptr %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %271
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %278 = load ptr, ptr %12, align 8, !tbaa !112
  br label %279

279:                                              ; preds = %271, %277
  %280 = phi ptr [ %273, %271 ], [ %278, %277 ]
  %281 = load i8, ptr %272, align 1, !tbaa !95
  %282 = getelementptr inbounds i8, ptr %280, i64 1
  store ptr %282, ptr %12, align 8, !tbaa !112
  store i8 %281, ptr %280, align 1, !tbaa !95
  %283 = getelementptr inbounds i8, ptr %272, i64 1
  %284 = load i8, ptr %272, align 1, !tbaa !95
  %285 = zext i8 %284 to i64
  %286 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !108
  %288 = and i16 %287, 4
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %290, label %271, !llvm.loop !132

290:                                              ; preds = %279
  %291 = icmp eq i8 %284, 115
  br i1 %291, label %355, label %292

292:                                              ; preds = %290
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.1) #17
  br label %355

293:                                              ; preds = %264
  %294 = icmp eq i8 %265, 42
  br i1 %294, label %296, label %295

295:                                              ; preds = %293
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @.str.1) #17
  br label %296

296:                                              ; preds = %293, %295
  %297 = load ptr, ptr %12, align 8, !tbaa !112
  %298 = getelementptr inbounds i8, ptr %297, i64 1
  %299 = load ptr, ptr %10, align 8, !tbaa !111
  %300 = icmp ugt ptr %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %302 = load ptr, ptr %12, align 8, !tbaa !112
  br label %303

303:                                              ; preds = %296, %301
  %304 = phi ptr [ %297, %296 ], [ %302, %301 ]
  %305 = getelementptr inbounds i8, ptr %304, i64 1
  store ptr %305, ptr %12, align 8, !tbaa !112
  store i8 42, ptr %304, align 1, !tbaa !95
  %306 = getelementptr inbounds i8, ptr %246, i64 2
  %307 = load i8, ptr %306, align 1, !tbaa !95
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %308
  %310 = load i16, ptr %309, align 2, !tbaa !108
  %311 = and i16 %310, 4
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %331, label %313

313:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %314 = call i64 @strtoul(ptr noundef nonnull %306, ptr noundef nonnull %5, i32 noundef 10) #16
  %315 = trunc i64 %314 to i32
  %316 = add i64 %314, 4294967295
  %317 = load ptr, ptr %5, align 8, !tbaa !127
  %318 = icmp eq i32 %231, %315
  br i1 %318, label %320, label %319

319:                                              ; preds = %313
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #17
  br label %320

320:                                              ; preds = %313, %319
  %321 = icmp eq i8 %230, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %320
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.1) #17
  br label %323

323:                                              ; preds = %320, %322
  %324 = load i8, ptr %317, align 1, !tbaa !95
  %325 = icmp eq i8 %324, 36
  br i1 %325, label %327, label %326

326:                                              ; preds = %323
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.1) #17
  br label %327

327:                                              ; preds = %323, %326
  %328 = getelementptr inbounds i8, ptr %317, i64 1
  %329 = and i64 %316, 4294967295
  %330 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %329
  store ptr %244, ptr %330, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %338

331:                                              ; preds = %303
  br i1 %228, label %333, label %332

332:                                              ; preds = %331
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 348, ptr noundef nonnull @.str.1) #17
  br label %333

333:                                              ; preds = %331, %332
  %334 = add i32 %231, 1
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %335
  store ptr %244, ptr %336, align 8, !tbaa !127
  %337 = add i32 %232, 1
  br label %338

338:                                              ; preds = %333, %327
  %339 = phi i32 [ %232, %327 ], [ %337, %333 ]
  %340 = phi ptr [ %328, %327 ], [ %306, %333 ]
  %341 = load i8, ptr %340, align 1, !tbaa !95
  %342 = icmp eq i8 %341, 115
  br i1 %342, label %344, label %343

343:                                              ; preds = %338
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 352, ptr noundef nonnull @.str.1) #17
  br label %344

344:                                              ; preds = %338, %343
  %345 = load ptr, ptr %12, align 8, !tbaa !112
  %346 = getelementptr inbounds i8, ptr %345, i64 1
  %347 = load ptr, ptr %10, align 8, !tbaa !111
  %348 = icmp ugt ptr %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %344
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %350 = load ptr, ptr %12, align 8, !tbaa !112
  br label %351

351:                                              ; preds = %344, %349
  %352 = phi ptr [ %345, %344 ], [ %350, %349 ]
  %353 = getelementptr inbounds i8, ptr %352, i64 1
  store ptr %353, ptr %12, align 8, !tbaa !112
  store i8 115, ptr %352, align 1, !tbaa !95
  %354 = getelementptr inbounds i8, ptr %340, i64 1
  br label %355

355:                                              ; preds = %292, %290, %351, %262
  %356 = phi i32 [ %232, %290 ], [ %232, %292 ], [ %339, %351 ], [ %232, %262 ]
  %357 = phi ptr [ %283, %290 ], [ %283, %292 ], [ %354, %351 ], [ %257, %262 ]
  %358 = load i8, ptr %357, align 1, !tbaa !95
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %401, label %360, !prof !129

360:                                              ; preds = %355
  %361 = load ptr, ptr %12, align 8, !tbaa !112
  %362 = getelementptr inbounds i8, ptr %361, i64 1
  %363 = load ptr, ptr %10, align 8, !tbaa !111
  %364 = icmp ugt ptr %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %360
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %366 = load ptr, ptr %12, align 8, !tbaa !112
  br label %367

367:                                              ; preds = %360, %365
  %368 = phi ptr [ %361, %360 ], [ %366, %365 ]
  %369 = getelementptr inbounds i8, ptr %368, i64 1
  store ptr %369, ptr %12, align 8, !tbaa !112
  store i8 0, ptr %368, align 1, !tbaa !95
  %370 = icmp ult i32 %201, 60
  br i1 %370, label %372, label %371

371:                                              ; preds = %367
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #17
  br label %372

372:                                              ; preds = %367, %371
  %373 = load ptr, ptr %12, align 8, !tbaa !112
  %374 = load ptr, ptr %25, align 8, !tbaa !113
  %375 = icmp eq ptr %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %378 = load i8, ptr %377, align 8
  %379 = or i8 %378, 2
  store i8 %379, ptr %377, align 8
  br label %380

380:                                              ; preds = %372, %376
  %381 = ptrtoint ptr %374 to i64
  store i64 %381, ptr %9, align 8, !tbaa !110
  %382 = ptrtoint ptr %373 to i64
  %383 = load i32, ptr %35, align 8, !tbaa !114
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %382
  %386 = xor i32 %383, -1
  %387 = sext i32 %386 to i64
  %388 = and i64 %385, %387
  %389 = inttoptr i64 %388 to ptr
  %390 = load ptr, ptr %43, align 8, !tbaa !115
  %391 = ptrtoint ptr %390 to i64
  %392 = sub i64 %388, %391
  %393 = load ptr, ptr %10, align 8, !tbaa !111
  %394 = ptrtoint ptr %393 to i64
  %395 = sub i64 %394, %391
  %396 = icmp sgt i64 %392, %395
  %397 = select i1 %396, ptr %393, ptr %389
  store ptr %397, ptr %12, align 8
  store ptr %397, ptr %25, align 8, !tbaa !113
  %398 = add i32 %64, 2
  store ptr %374, ptr %244, align 8, !tbaa !127
  %399 = load i8, ptr %357, align 1, !tbaa !95
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %401, label %60, !prof !133, !llvm.loop !124

401:                                              ; preds = %380, %355, %101, %67, %52
  %402 = phi i32 [ 0, %52 ], [ %64, %67 ], [ %64, %101 ], [ %398, %380 ], [ %201, %355 ]
  %403 = load ptr, ptr %12, align 8, !tbaa !112
  %404 = getelementptr inbounds i8, ptr %403, i64 1
  %405 = load ptr, ptr %10, align 8, !tbaa !111
  %406 = icmp ugt ptr %404, %405
  br i1 %406, label %407, label %409, !prof !94

407:                                              ; preds = %401
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %408 = load ptr, ptr %12, align 8, !tbaa !112
  br label %409

409:                                              ; preds = %401, %407
  %410 = phi ptr [ %403, %401 ], [ %408, %407 ]
  %411 = getelementptr inbounds i8, ptr %410, i64 1
  store ptr %411, ptr %12, align 8, !tbaa !112
  store i8 0, ptr %410, align 1, !tbaa !95
  %412 = icmp ult i32 %402, 60
  br i1 %412, label %414, label %413, !prof !99

413:                                              ; preds = %409
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 366, ptr noundef nonnull @.str.1) #17
  br label %414

414:                                              ; preds = %409, %413
  %415 = load ptr, ptr %12, align 8, !tbaa !112
  %416 = load ptr, ptr %25, align 8, !tbaa !113
  %417 = icmp eq ptr %415, %416
  br i1 %417, label %418, label %422, !prof !94

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %420 = load i8, ptr %419, align 8
  %421 = or i8 %420, 2
  store i8 %421, ptr %419, align 8
  br label %422

422:                                              ; preds = %414, %418
  %423 = ptrtoint ptr %416 to i64
  store i64 %423, ptr %9, align 8, !tbaa !110
  %424 = ptrtoint ptr %415 to i64
  %425 = load i32, ptr %35, align 8, !tbaa !114
  %426 = sext i32 %425 to i64
  %427 = add nsw i64 %426, %424
  %428 = xor i32 %425, -1
  %429 = sext i32 %428 to i64
  %430 = and i64 %427, %429
  %431 = inttoptr i64 %430 to ptr
  %432 = load ptr, ptr %43, align 8, !tbaa !115
  %433 = ptrtoint ptr %432 to i64
  %434 = sub i64 %430, %433
  %435 = load ptr, ptr %10, align 8, !tbaa !111
  %436 = ptrtoint ptr %435 to i64
  %437 = sub i64 %436, %433
  %438 = icmp sgt i64 %434, %437
  %439 = select i1 %438, ptr %435, ptr %431, !prof !94
  store ptr %439, ptr %12, align 8
  store ptr %439, ptr %25, align 8, !tbaa !113
  %440 = add i32 %402, 1
  %441 = zext i32 %402 to i64
  %442 = getelementptr inbounds ptr, ptr %56, i64 %441
  store ptr %416, ptr %442, align 8, !tbaa !127
  %443 = zext i32 %440 to i64
  %444 = getelementptr inbounds ptr, ptr %56, i64 %443
  store ptr null, ptr %444, align 8, !tbaa !127
  %445 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 2
  store ptr %8, ptr %445, align 8, !tbaa !91
  %446 = tail call fastcc i64 @pp_set_verbatim_wrapping_(ptr noundef %0) #16
  %447 = load ptr, ptr %3, align 16, !tbaa !127
  %448 = icmp eq ptr %447, null
  br i1 %448, label %1108, label %449, !prof !134

449:                                              ; preds = %422
  %450 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  br label %451

451:                                              ; preds = %449, %1082
  %452 = phi ptr [ %447, %449 ], [ %1106, %1082 ]
  %453 = phi i32 [ 0, %449 ], [ %1103, %1082 ]
  %454 = load ptr, ptr %452, align 8, !tbaa !127
  br label %455

455:                                              ; preds = %480, %451
  %456 = phi i32 [ 0, %451 ], [ %481, %480 ]
  %457 = phi i8 [ 0, %451 ], [ %482, %480 ]
  %458 = phi i8 [ 0, %451 ], [ %483, %480 ]
  %459 = phi i8 [ 0, %451 ], [ %484, %480 ]
  %460 = phi i8 [ 0, %451 ], [ %485, %480 ]
  %461 = phi ptr [ %454, %451 ], [ %486, %480 ]
  %462 = load i8, ptr %461, align 1, !tbaa !95
  switch i8 %462, label %487 [
    i8 113, label %463
    i8 43, label %466
    i8 35, label %469
    i8 119, label %472
    i8 108, label %475
  ], !prof !135

463:                                              ; preds = %455
  %464 = icmp eq i8 %460, 0
  br i1 %464, label %480, label %465, !prof !129

465:                                              ; preds = %463
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #17
  br label %480

466:                                              ; preds = %455
  %467 = icmp eq i8 %458, 0
  br i1 %467, label %480, label %468

468:                                              ; preds = %466
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.1) #17
  br label %480

469:                                              ; preds = %455
  %470 = icmp eq i8 %459, 0
  br i1 %470, label %480, label %471

471:                                              ; preds = %469
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.1) #17
  br label %480

472:                                              ; preds = %455
  %473 = icmp eq i8 %457, 0
  br i1 %473, label %480, label %474

474:                                              ; preds = %472
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 409, ptr noundef nonnull @.str.1) #17
  br label %480

475:                                              ; preds = %455
  %476 = icmp slt i32 %456, 2
  br i1 %476, label %478, label %477

477:                                              ; preds = %475
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 415, ptr noundef nonnull @.str.1) #17
  br label %478

478:                                              ; preds = %475, %477
  %479 = add nsw i32 %456, 1
  br label %480

480:                                              ; preds = %474, %472, %471, %469, %468, %466, %465, %463, %478
  %481 = phi i32 [ %479, %478 ], [ %456, %463 ], [ %456, %465 ], [ %456, %466 ], [ %456, %468 ], [ %456, %469 ], [ %456, %471 ], [ %456, %472 ], [ %456, %474 ]
  %482 = phi i8 [ %457, %478 ], [ %457, %463 ], [ %457, %465 ], [ %457, %466 ], [ %457, %468 ], [ %457, %469 ], [ %457, %471 ], [ 1, %472 ], [ 1, %474 ]
  %483 = phi i8 [ %458, %478 ], [ %458, %463 ], [ %458, %465 ], [ 1, %466 ], [ 1, %468 ], [ %458, %469 ], [ %458, %471 ], [ %458, %472 ], [ %458, %474 ]
  %484 = phi i8 [ %459, %478 ], [ %459, %463 ], [ %459, %465 ], [ %459, %466 ], [ %459, %468 ], [ 1, %469 ], [ 1, %471 ], [ %459, %472 ], [ %459, %474 ]
  %485 = phi i8 [ %460, %478 ], [ 1, %463 ], [ 1, %465 ], [ %460, %466 ], [ %460, %468 ], [ %460, %469 ], [ %460, %471 ], [ %460, %472 ], [ %460, %474 ]
  %486 = getelementptr inbounds i8, ptr %461, i64 1
  br label %455

487:                                              ; preds = %455
  %488 = icmp eq i8 %457, 0
  %489 = icmp eq i32 %456, 0
  %490 = select i1 %488, i1 true, i1 %489
  br i1 %490, label %492, label %491, !prof !136

491:                                              ; preds = %487
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 422, ptr noundef nonnull @.str.1) #17
  br label %492

492:                                              ; preds = %487, %491
  %493 = icmp eq i8 %460, 0
  br i1 %493, label %496, label %494, !prof !107

494:                                              ; preds = %492
  %495 = load ptr, ptr @open_quote, align 8, !tbaa !127
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %495) #16
  br label %496

496:                                              ; preds = %494, %492
  %497 = load i8, ptr %461, align 1, !tbaa !95
  switch i8 %497, label %1050 [
    i8 99, label %498
    i8 100, label %515
    i8 105, label %515
    i8 111, label %605
    i8 115, label %695
    i8 112, label %712
    i8 117, label %734
    i8 120, label %824
    i8 75, label %914
    i8 46, label %982
  ], !prof !137

498:                                              ; preds = %496
  %499 = load ptr, ptr %450, align 8, !tbaa !138
  %500 = load i32, ptr %499, align 8
  %501 = icmp ult i32 %500, 41
  br i1 %501, label %502, label %508

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.__va_list_tag, ptr %499, i64 0, i32 3
  %504 = load ptr, ptr %503, align 8
  %505 = zext nneg i32 %500 to i64
  %506 = getelementptr i8, ptr %504, i64 %505
  %507 = add nuw nsw i32 %500, 8
  store i32 %507, ptr %499, align 8
  br label %512

508:                                              ; preds = %498
  %509 = getelementptr inbounds %struct.__va_list_tag, ptr %499, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8
  %511 = getelementptr i8, ptr %510, i64 8
  store ptr %511, ptr %509, align 8
  br label %512

512:                                              ; preds = %508, %502
  %513 = phi ptr [ %506, %502 ], [ %510, %508 ]
  %514 = load i32, ptr %513, align 4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %514) #16
  br label %1061

515:                                              ; preds = %496, %496
  br i1 %488, label %538, label %516

516:                                              ; preds = %515
  %517 = load ptr, ptr %0, align 8, !tbaa !80
  %518 = getelementptr inbounds %struct.output_buffer, ptr %517, i64 0, i32 6
  %519 = load ptr, ptr %450, align 8, !tbaa !138
  %520 = load i32, ptr %519, align 8
  %521 = icmp ult i32 %520, 41
  br i1 %521, label %522, label %528

522:                                              ; preds = %516
  %523 = getelementptr inbounds %struct.__va_list_tag, ptr %519, i64 0, i32 3
  %524 = load ptr, ptr %523, align 8
  %525 = zext nneg i32 %520 to i64
  %526 = getelementptr i8, ptr %524, i64 %525
  %527 = add nuw nsw i32 %520, 8
  store i32 %527, ptr %519, align 8
  br label %532

528:                                              ; preds = %516
  %529 = getelementptr inbounds %struct.__va_list_tag, ptr %519, i64 0, i32 2
  %530 = load ptr, ptr %529, align 8
  %531 = getelementptr i8, ptr %530, i64 8
  store ptr %531, ptr %529, align 8
  br label %532

532:                                              ; preds = %528, %522
  %533 = phi ptr [ %526, %522 ], [ %530, %528 ]
  %534 = load i64, ptr %533, align 8
  %535 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %518, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %534) #16
  %536 = load ptr, ptr %0, align 8, !tbaa !80
  %537 = getelementptr inbounds %struct.output_buffer, ptr %536, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %537) #16
  br label %1061

538:                                              ; preds = %515
  switch i32 %456, label %1061 [
    i32 0, label %539
    i32 1, label %561
    i32 2, label %583
  ]

539:                                              ; preds = %538
  %540 = load ptr, ptr %0, align 8, !tbaa !80
  %541 = getelementptr inbounds %struct.output_buffer, ptr %540, i64 0, i32 6
  %542 = load ptr, ptr %450, align 8, !tbaa !138
  %543 = load i32, ptr %542, align 8
  %544 = icmp ult i32 %543, 41
  br i1 %544, label %545, label %551

545:                                              ; preds = %539
  %546 = getelementptr inbounds %struct.__va_list_tag, ptr %542, i64 0, i32 3
  %547 = load ptr, ptr %546, align 8
  %548 = zext nneg i32 %543 to i64
  %549 = getelementptr i8, ptr %547, i64 %548
  %550 = add nuw nsw i32 %543, 8
  store i32 %550, ptr %542, align 8
  br label %555

551:                                              ; preds = %539
  %552 = getelementptr inbounds %struct.__va_list_tag, ptr %542, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8
  %554 = getelementptr i8, ptr %553, i64 8
  store ptr %554, ptr %552, align 8
  br label %555

555:                                              ; preds = %551, %545
  %556 = phi ptr [ %549, %545 ], [ %553, %551 ]
  %557 = load i32, ptr %556, align 4
  %558 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %541, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %557) #16
  %559 = load ptr, ptr %0, align 8, !tbaa !80
  %560 = getelementptr inbounds %struct.output_buffer, ptr %559, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %560) #16
  br label %1061

561:                                              ; preds = %538
  %562 = load ptr, ptr %0, align 8, !tbaa !80
  %563 = getelementptr inbounds %struct.output_buffer, ptr %562, i64 0, i32 6
  %564 = load ptr, ptr %450, align 8, !tbaa !138
  %565 = load i32, ptr %564, align 8
  %566 = icmp ult i32 %565, 41
  br i1 %566, label %567, label %573

567:                                              ; preds = %561
  %568 = getelementptr inbounds %struct.__va_list_tag, ptr %564, i64 0, i32 3
  %569 = load ptr, ptr %568, align 8
  %570 = zext nneg i32 %565 to i64
  %571 = getelementptr i8, ptr %569, i64 %570
  %572 = add nuw nsw i32 %565, 8
  store i32 %572, ptr %564, align 8
  br label %577

573:                                              ; preds = %561
  %574 = getelementptr inbounds %struct.__va_list_tag, ptr %564, i64 0, i32 2
  %575 = load ptr, ptr %574, align 8
  %576 = getelementptr i8, ptr %575, i64 8
  store ptr %576, ptr %574, align 8
  br label %577

577:                                              ; preds = %573, %567
  %578 = phi ptr [ %571, %567 ], [ %575, %573 ]
  %579 = load i64, ptr %578, align 8
  %580 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %563, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %579) #16
  %581 = load ptr, ptr %0, align 8, !tbaa !80
  %582 = getelementptr inbounds %struct.output_buffer, ptr %581, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %582) #16
  br label %1061

583:                                              ; preds = %538
  %584 = load ptr, ptr %0, align 8, !tbaa !80
  %585 = getelementptr inbounds %struct.output_buffer, ptr %584, i64 0, i32 6
  %586 = load ptr, ptr %450, align 8, !tbaa !138
  %587 = load i32, ptr %586, align 8
  %588 = icmp ult i32 %587, 41
  br i1 %588, label %589, label %595

589:                                              ; preds = %583
  %590 = getelementptr inbounds %struct.__va_list_tag, ptr %586, i64 0, i32 3
  %591 = load ptr, ptr %590, align 8
  %592 = zext nneg i32 %587 to i64
  %593 = getelementptr i8, ptr %591, i64 %592
  %594 = add nuw nsw i32 %587, 8
  store i32 %594, ptr %586, align 8
  br label %599

595:                                              ; preds = %583
  %596 = getelementptr inbounds %struct.__va_list_tag, ptr %586, i64 0, i32 2
  %597 = load ptr, ptr %596, align 8
  %598 = getelementptr i8, ptr %597, i64 8
  store ptr %598, ptr %596, align 8
  br label %599

599:                                              ; preds = %595, %589
  %600 = phi ptr [ %593, %589 ], [ %597, %595 ]
  %601 = load i64, ptr %600, align 8
  %602 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %585, ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %601) #16
  %603 = load ptr, ptr %0, align 8, !tbaa !80
  %604 = getelementptr inbounds %struct.output_buffer, ptr %603, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %604) #16
  br label %1061

605:                                              ; preds = %496
  br i1 %488, label %628, label %606

606:                                              ; preds = %605
  %607 = load ptr, ptr %0, align 8, !tbaa !80
  %608 = getelementptr inbounds %struct.output_buffer, ptr %607, i64 0, i32 6
  %609 = load ptr, ptr %450, align 8, !tbaa !138
  %610 = load i32, ptr %609, align 8
  %611 = icmp ult i32 %610, 41
  br i1 %611, label %612, label %618

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.__va_list_tag, ptr %609, i64 0, i32 3
  %614 = load ptr, ptr %613, align 8
  %615 = zext nneg i32 %610 to i64
  %616 = getelementptr i8, ptr %614, i64 %615
  %617 = add nuw nsw i32 %610, 8
  store i32 %617, ptr %609, align 8
  br label %622

618:                                              ; preds = %606
  %619 = getelementptr inbounds %struct.__va_list_tag, ptr %609, i64 0, i32 2
  %620 = load ptr, ptr %619, align 8
  %621 = getelementptr i8, ptr %620, i64 8
  store ptr %621, ptr %619, align 8
  br label %622

622:                                              ; preds = %618, %612
  %623 = phi ptr [ %616, %612 ], [ %620, %618 ]
  %624 = load i64, ptr %623, align 8
  %625 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %608, ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %624) #16
  %626 = load ptr, ptr %0, align 8, !tbaa !80
  %627 = getelementptr inbounds %struct.output_buffer, ptr %626, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %627) #16
  br label %1061

628:                                              ; preds = %605
  switch i32 %456, label %1061 [
    i32 0, label %629
    i32 1, label %651
    i32 2, label %673
  ]

629:                                              ; preds = %628
  %630 = load ptr, ptr %0, align 8, !tbaa !80
  %631 = getelementptr inbounds %struct.output_buffer, ptr %630, i64 0, i32 6
  %632 = load ptr, ptr %450, align 8, !tbaa !138
  %633 = load i32, ptr %632, align 8
  %634 = icmp ult i32 %633, 41
  br i1 %634, label %635, label %641

635:                                              ; preds = %629
  %636 = getelementptr inbounds %struct.__va_list_tag, ptr %632, i64 0, i32 3
  %637 = load ptr, ptr %636, align 8
  %638 = zext nneg i32 %633 to i64
  %639 = getelementptr i8, ptr %637, i64 %638
  %640 = add nuw nsw i32 %633, 8
  store i32 %640, ptr %632, align 8
  br label %645

641:                                              ; preds = %629
  %642 = getelementptr inbounds %struct.__va_list_tag, ptr %632, i64 0, i32 2
  %643 = load ptr, ptr %642, align 8
  %644 = getelementptr i8, ptr %643, i64 8
  store ptr %644, ptr %642, align 8
  br label %645

645:                                              ; preds = %641, %635
  %646 = phi ptr [ %639, %635 ], [ %643, %641 ]
  %647 = load i32, ptr %646, align 4
  %648 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %631, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %647) #16
  %649 = load ptr, ptr %0, align 8, !tbaa !80
  %650 = getelementptr inbounds %struct.output_buffer, ptr %649, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %650) #16
  br label %1061

651:                                              ; preds = %628
  %652 = load ptr, ptr %0, align 8, !tbaa !80
  %653 = getelementptr inbounds %struct.output_buffer, ptr %652, i64 0, i32 6
  %654 = load ptr, ptr %450, align 8, !tbaa !138
  %655 = load i32, ptr %654, align 8
  %656 = icmp ult i32 %655, 41
  br i1 %656, label %657, label %663

657:                                              ; preds = %651
  %658 = getelementptr inbounds %struct.__va_list_tag, ptr %654, i64 0, i32 3
  %659 = load ptr, ptr %658, align 8
  %660 = zext nneg i32 %655 to i64
  %661 = getelementptr i8, ptr %659, i64 %660
  %662 = add nuw nsw i32 %655, 8
  store i32 %662, ptr %654, align 8
  br label %667

663:                                              ; preds = %651
  %664 = getelementptr inbounds %struct.__va_list_tag, ptr %654, i64 0, i32 2
  %665 = load ptr, ptr %664, align 8
  %666 = getelementptr i8, ptr %665, i64 8
  store ptr %666, ptr %664, align 8
  br label %667

667:                                              ; preds = %663, %657
  %668 = phi ptr [ %661, %657 ], [ %665, %663 ]
  %669 = load i64, ptr %668, align 8
  %670 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %653, ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %669) #16
  %671 = load ptr, ptr %0, align 8, !tbaa !80
  %672 = getelementptr inbounds %struct.output_buffer, ptr %671, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %672) #16
  br label %1061

673:                                              ; preds = %628
  %674 = load ptr, ptr %0, align 8, !tbaa !80
  %675 = getelementptr inbounds %struct.output_buffer, ptr %674, i64 0, i32 6
  %676 = load ptr, ptr %450, align 8, !tbaa !138
  %677 = load i32, ptr %676, align 8
  %678 = icmp ult i32 %677, 41
  br i1 %678, label %679, label %685

679:                                              ; preds = %673
  %680 = getelementptr inbounds %struct.__va_list_tag, ptr %676, i64 0, i32 3
  %681 = load ptr, ptr %680, align 8
  %682 = zext nneg i32 %677 to i64
  %683 = getelementptr i8, ptr %681, i64 %682
  %684 = add nuw nsw i32 %677, 8
  store i32 %684, ptr %676, align 8
  br label %689

685:                                              ; preds = %673
  %686 = getelementptr inbounds %struct.__va_list_tag, ptr %676, i64 0, i32 2
  %687 = load ptr, ptr %686, align 8
  %688 = getelementptr i8, ptr %687, i64 8
  store ptr %688, ptr %686, align 8
  br label %689

689:                                              ; preds = %685, %679
  %690 = phi ptr [ %683, %679 ], [ %687, %685 ]
  %691 = load i64, ptr %690, align 8
  %692 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %675, ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %691) #16
  %693 = load ptr, ptr %0, align 8, !tbaa !80
  %694 = getelementptr inbounds %struct.output_buffer, ptr %693, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %694) #16
  br label %1061

695:                                              ; preds = %496
  %696 = load ptr, ptr %450, align 8, !tbaa !138
  %697 = load i32, ptr %696, align 8
  %698 = icmp ult i32 %697, 41
  br i1 %698, label %699, label %705

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.__va_list_tag, ptr %696, i64 0, i32 3
  %701 = load ptr, ptr %700, align 8
  %702 = zext nneg i32 %697 to i64
  %703 = getelementptr i8, ptr %701, i64 %702
  %704 = add nuw nsw i32 %697, 8
  store i32 %704, ptr %696, align 8
  br label %709

705:                                              ; preds = %695
  %706 = getelementptr inbounds %struct.__va_list_tag, ptr %696, i64 0, i32 2
  %707 = load ptr, ptr %706, align 8
  %708 = getelementptr i8, ptr %707, i64 8
  store ptr %708, ptr %706, align 8
  br label %709

709:                                              ; preds = %705, %699
  %710 = phi ptr [ %703, %699 ], [ %707, %705 ]
  %711 = load ptr, ptr %710, align 8
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %711) #16
  br label %1061

712:                                              ; preds = %496
  %713 = load ptr, ptr %0, align 8, !tbaa !80
  %714 = getelementptr inbounds %struct.output_buffer, ptr %713, i64 0, i32 6
  %715 = load ptr, ptr %450, align 8, !tbaa !138
  %716 = load i32, ptr %715, align 8
  %717 = icmp ult i32 %716, 41
  br i1 %717, label %718, label %724

718:                                              ; preds = %712
  %719 = getelementptr inbounds %struct.__va_list_tag, ptr %715, i64 0, i32 3
  %720 = load ptr, ptr %719, align 8
  %721 = zext nneg i32 %716 to i64
  %722 = getelementptr i8, ptr %720, i64 %721
  %723 = add nuw nsw i32 %716, 8
  store i32 %723, ptr %715, align 8
  br label %728

724:                                              ; preds = %712
  %725 = getelementptr inbounds %struct.__va_list_tag, ptr %715, i64 0, i32 2
  %726 = load ptr, ptr %725, align 8
  %727 = getelementptr i8, ptr %726, i64 8
  store ptr %727, ptr %725, align 8
  br label %728

728:                                              ; preds = %724, %718
  %729 = phi ptr [ %722, %718 ], [ %726, %724 ]
  %730 = load ptr, ptr %729, align 8
  %731 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %714, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %730) #16
  %732 = load ptr, ptr %0, align 8, !tbaa !80
  %733 = getelementptr inbounds %struct.output_buffer, ptr %732, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %733) #16
  br label %1061

734:                                              ; preds = %496
  br i1 %488, label %757, label %735

735:                                              ; preds = %734
  %736 = load ptr, ptr %0, align 8, !tbaa !80
  %737 = getelementptr inbounds %struct.output_buffer, ptr %736, i64 0, i32 6
  %738 = load ptr, ptr %450, align 8, !tbaa !138
  %739 = load i32, ptr %738, align 8
  %740 = icmp ult i32 %739, 41
  br i1 %740, label %741, label %747

741:                                              ; preds = %735
  %742 = getelementptr inbounds %struct.__va_list_tag, ptr %738, i64 0, i32 3
  %743 = load ptr, ptr %742, align 8
  %744 = zext nneg i32 %739 to i64
  %745 = getelementptr i8, ptr %743, i64 %744
  %746 = add nuw nsw i32 %739, 8
  store i32 %746, ptr %738, align 8
  br label %751

747:                                              ; preds = %735
  %748 = getelementptr inbounds %struct.__va_list_tag, ptr %738, i64 0, i32 2
  %749 = load ptr, ptr %748, align 8
  %750 = getelementptr i8, ptr %749, i64 8
  store ptr %750, ptr %748, align 8
  br label %751

751:                                              ; preds = %747, %741
  %752 = phi ptr [ %745, %741 ], [ %749, %747 ]
  %753 = load i64, ptr %752, align 8
  %754 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %737, ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %753) #16
  %755 = load ptr, ptr %0, align 8, !tbaa !80
  %756 = getelementptr inbounds %struct.output_buffer, ptr %755, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %756) #16
  br label %1061

757:                                              ; preds = %734
  switch i32 %456, label %1061 [
    i32 0, label %758
    i32 1, label %780
    i32 2, label %802
  ]

758:                                              ; preds = %757
  %759 = load ptr, ptr %0, align 8, !tbaa !80
  %760 = getelementptr inbounds %struct.output_buffer, ptr %759, i64 0, i32 6
  %761 = load ptr, ptr %450, align 8, !tbaa !138
  %762 = load i32, ptr %761, align 8
  %763 = icmp ult i32 %762, 41
  br i1 %763, label %764, label %770

764:                                              ; preds = %758
  %765 = getelementptr inbounds %struct.__va_list_tag, ptr %761, i64 0, i32 3
  %766 = load ptr, ptr %765, align 8
  %767 = zext nneg i32 %762 to i64
  %768 = getelementptr i8, ptr %766, i64 %767
  %769 = add nuw nsw i32 %762, 8
  store i32 %769, ptr %761, align 8
  br label %774

770:                                              ; preds = %758
  %771 = getelementptr inbounds %struct.__va_list_tag, ptr %761, i64 0, i32 2
  %772 = load ptr, ptr %771, align 8
  %773 = getelementptr i8, ptr %772, i64 8
  store ptr %773, ptr %771, align 8
  br label %774

774:                                              ; preds = %770, %764
  %775 = phi ptr [ %768, %764 ], [ %772, %770 ]
  %776 = load i32, ptr %775, align 4
  %777 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %760, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %776) #16
  %778 = load ptr, ptr %0, align 8, !tbaa !80
  %779 = getelementptr inbounds %struct.output_buffer, ptr %778, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %779) #16
  br label %1061

780:                                              ; preds = %757
  %781 = load ptr, ptr %0, align 8, !tbaa !80
  %782 = getelementptr inbounds %struct.output_buffer, ptr %781, i64 0, i32 6
  %783 = load ptr, ptr %450, align 8, !tbaa !138
  %784 = load i32, ptr %783, align 8
  %785 = icmp ult i32 %784, 41
  br i1 %785, label %786, label %792

786:                                              ; preds = %780
  %787 = getelementptr inbounds %struct.__va_list_tag, ptr %783, i64 0, i32 3
  %788 = load ptr, ptr %787, align 8
  %789 = zext nneg i32 %784 to i64
  %790 = getelementptr i8, ptr %788, i64 %789
  %791 = add nuw nsw i32 %784, 8
  store i32 %791, ptr %783, align 8
  br label %796

792:                                              ; preds = %780
  %793 = getelementptr inbounds %struct.__va_list_tag, ptr %783, i64 0, i32 2
  %794 = load ptr, ptr %793, align 8
  %795 = getelementptr i8, ptr %794, i64 8
  store ptr %795, ptr %793, align 8
  br label %796

796:                                              ; preds = %792, %786
  %797 = phi ptr [ %790, %786 ], [ %794, %792 ]
  %798 = load i64, ptr %797, align 8
  %799 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %782, ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %798) #16
  %800 = load ptr, ptr %0, align 8, !tbaa !80
  %801 = getelementptr inbounds %struct.output_buffer, ptr %800, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %801) #16
  br label %1061

802:                                              ; preds = %757
  %803 = load ptr, ptr %0, align 8, !tbaa !80
  %804 = getelementptr inbounds %struct.output_buffer, ptr %803, i64 0, i32 6
  %805 = load ptr, ptr %450, align 8, !tbaa !138
  %806 = load i32, ptr %805, align 8
  %807 = icmp ult i32 %806, 41
  br i1 %807, label %808, label %814

808:                                              ; preds = %802
  %809 = getelementptr inbounds %struct.__va_list_tag, ptr %805, i64 0, i32 3
  %810 = load ptr, ptr %809, align 8
  %811 = zext nneg i32 %806 to i64
  %812 = getelementptr i8, ptr %810, i64 %811
  %813 = add nuw nsw i32 %806, 8
  store i32 %813, ptr %805, align 8
  br label %818

814:                                              ; preds = %802
  %815 = getelementptr inbounds %struct.__va_list_tag, ptr %805, i64 0, i32 2
  %816 = load ptr, ptr %815, align 8
  %817 = getelementptr i8, ptr %816, i64 8
  store ptr %817, ptr %815, align 8
  br label %818

818:                                              ; preds = %814, %808
  %819 = phi ptr [ %812, %808 ], [ %816, %814 ]
  %820 = load i64, ptr %819, align 8
  %821 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %804, ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %820) #16
  %822 = load ptr, ptr %0, align 8, !tbaa !80
  %823 = getelementptr inbounds %struct.output_buffer, ptr %822, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %823) #16
  br label %1061

824:                                              ; preds = %496
  br i1 %488, label %847, label %825

825:                                              ; preds = %824
  %826 = load ptr, ptr %0, align 8, !tbaa !80
  %827 = getelementptr inbounds %struct.output_buffer, ptr %826, i64 0, i32 6
  %828 = load ptr, ptr %450, align 8, !tbaa !138
  %829 = load i32, ptr %828, align 8
  %830 = icmp ult i32 %829, 41
  br i1 %830, label %831, label %837

831:                                              ; preds = %825
  %832 = getelementptr inbounds %struct.__va_list_tag, ptr %828, i64 0, i32 3
  %833 = load ptr, ptr %832, align 8
  %834 = zext nneg i32 %829 to i64
  %835 = getelementptr i8, ptr %833, i64 %834
  %836 = add nuw nsw i32 %829, 8
  store i32 %836, ptr %828, align 8
  br label %841

837:                                              ; preds = %825
  %838 = getelementptr inbounds %struct.__va_list_tag, ptr %828, i64 0, i32 2
  %839 = load ptr, ptr %838, align 8
  %840 = getelementptr i8, ptr %839, i64 8
  store ptr %840, ptr %838, align 8
  br label %841

841:                                              ; preds = %837, %831
  %842 = phi ptr [ %835, %831 ], [ %839, %837 ]
  %843 = load i64, ptr %842, align 8
  %844 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %843) #16
  %845 = load ptr, ptr %0, align 8, !tbaa !80
  %846 = getelementptr inbounds %struct.output_buffer, ptr %845, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %846) #16
  br label %1061

847:                                              ; preds = %824
  switch i32 %456, label %1061 [
    i32 0, label %848
    i32 1, label %870
    i32 2, label %892
  ]

848:                                              ; preds = %847
  %849 = load ptr, ptr %0, align 8, !tbaa !80
  %850 = getelementptr inbounds %struct.output_buffer, ptr %849, i64 0, i32 6
  %851 = load ptr, ptr %450, align 8, !tbaa !138
  %852 = load i32, ptr %851, align 8
  %853 = icmp ult i32 %852, 41
  br i1 %853, label %854, label %860

854:                                              ; preds = %848
  %855 = getelementptr inbounds %struct.__va_list_tag, ptr %851, i64 0, i32 3
  %856 = load ptr, ptr %855, align 8
  %857 = zext nneg i32 %852 to i64
  %858 = getelementptr i8, ptr %856, i64 %857
  %859 = add nuw nsw i32 %852, 8
  store i32 %859, ptr %851, align 8
  br label %864

860:                                              ; preds = %848
  %861 = getelementptr inbounds %struct.__va_list_tag, ptr %851, i64 0, i32 2
  %862 = load ptr, ptr %861, align 8
  %863 = getelementptr i8, ptr %862, i64 8
  store ptr %863, ptr %861, align 8
  br label %864

864:                                              ; preds = %860, %854
  %865 = phi ptr [ %858, %854 ], [ %862, %860 ]
  %866 = load i32, ptr %865, align 4
  %867 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %850, ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %866) #16
  %868 = load ptr, ptr %0, align 8, !tbaa !80
  %869 = getelementptr inbounds %struct.output_buffer, ptr %868, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %869) #16
  br label %1061

870:                                              ; preds = %847
  %871 = load ptr, ptr %0, align 8, !tbaa !80
  %872 = getelementptr inbounds %struct.output_buffer, ptr %871, i64 0, i32 6
  %873 = load ptr, ptr %450, align 8, !tbaa !138
  %874 = load i32, ptr %873, align 8
  %875 = icmp ult i32 %874, 41
  br i1 %875, label %876, label %882

876:                                              ; preds = %870
  %877 = getelementptr inbounds %struct.__va_list_tag, ptr %873, i64 0, i32 3
  %878 = load ptr, ptr %877, align 8
  %879 = zext nneg i32 %874 to i64
  %880 = getelementptr i8, ptr %878, i64 %879
  %881 = add nuw nsw i32 %874, 8
  store i32 %881, ptr %873, align 8
  br label %886

882:                                              ; preds = %870
  %883 = getelementptr inbounds %struct.__va_list_tag, ptr %873, i64 0, i32 2
  %884 = load ptr, ptr %883, align 8
  %885 = getelementptr i8, ptr %884, i64 8
  store ptr %885, ptr %883, align 8
  br label %886

886:                                              ; preds = %882, %876
  %887 = phi ptr [ %880, %876 ], [ %884, %882 ]
  %888 = load i64, ptr %887, align 8
  %889 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %872, ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %888) #16
  %890 = load ptr, ptr %0, align 8, !tbaa !80
  %891 = getelementptr inbounds %struct.output_buffer, ptr %890, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %891) #16
  br label %1061

892:                                              ; preds = %847
  %893 = load ptr, ptr %0, align 8, !tbaa !80
  %894 = getelementptr inbounds %struct.output_buffer, ptr %893, i64 0, i32 6
  %895 = load ptr, ptr %450, align 8, !tbaa !138
  %896 = load i32, ptr %895, align 8
  %897 = icmp ult i32 %896, 41
  br i1 %897, label %898, label %904

898:                                              ; preds = %892
  %899 = getelementptr inbounds %struct.__va_list_tag, ptr %895, i64 0, i32 3
  %900 = load ptr, ptr %899, align 8
  %901 = zext nneg i32 %896 to i64
  %902 = getelementptr i8, ptr %900, i64 %901
  %903 = add nuw nsw i32 %896, 8
  store i32 %903, ptr %895, align 8
  br label %908

904:                                              ; preds = %892
  %905 = getelementptr inbounds %struct.__va_list_tag, ptr %895, i64 0, i32 2
  %906 = load ptr, ptr %905, align 8
  %907 = getelementptr i8, ptr %906, i64 8
  store ptr %907, ptr %905, align 8
  br label %908

908:                                              ; preds = %904, %898
  %909 = phi ptr [ %902, %898 ], [ %906, %904 ]
  %910 = load i64, ptr %909, align 8
  %911 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %894, ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %910) #16
  %912 = load ptr, ptr %0, align 8, !tbaa !80
  %913 = getelementptr inbounds %struct.output_buffer, ptr %912, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %913) #16
  br label %1061

914:                                              ; preds = %496
  %915 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  %916 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 4
  %917 = load ptr, ptr %450, align 8, !tbaa !138
  %918 = load i32, ptr %917, align 8
  %919 = icmp ult i32 %918, 41
  br i1 %919, label %920, label %926

920:                                              ; preds = %914
  %921 = getelementptr inbounds %struct.__va_list_tag, ptr %917, i64 0, i32 3
  %922 = load ptr, ptr %921, align 8
  %923 = zext nneg i32 %918 to i64
  %924 = getelementptr i8, ptr %922, i64 %923
  %925 = add nuw nsw i32 %918, 8
  store i32 %925, ptr %917, align 8
  br label %930

926:                                              ; preds = %914
  %927 = getelementptr inbounds %struct.__va_list_tag, ptr %917, i64 0, i32 2
  %928 = load ptr, ptr %927, align 8
  %929 = getelementptr i8, ptr %928, i64 8
  store ptr %929, ptr %927, align 8
  br label %930

930:                                              ; preds = %926, %920
  %931 = phi ptr [ %924, %920 ], [ %928, %926 ]
  %932 = load ptr, ptr %931, align 8
  %933 = load ptr, ptr %915, align 8, !tbaa !139
  %934 = icmp eq ptr %933, null
  br i1 %934, label %935, label %936

935:                                              ; preds = %930
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 480, ptr noundef nonnull @.str.1) #17
  br label %936

936:                                              ; preds = %930, %935
  %937 = load i64, ptr %932, align 8
  %938 = and i64 %937, 65535
  %939 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %938
  %940 = load i32, ptr %939, align 4, !tbaa !140
  %941 = add i32 %940, -4
  %942 = icmp ult i32 %941, 7
  br i1 %942, label %943, label %946

943:                                              ; preds = %936
  %944 = getelementptr inbounds %struct.tree_exp, ptr %932, i64 0, i32 1
  %945 = load i32, ptr %944, align 8, !tbaa !95
  br label %946

946:                                              ; preds = %936, %943
  %947 = phi i32 [ %945, %943 ], [ 0, %936 ]
  %948 = load ptr, ptr %915, align 8, !tbaa !139
  store i32 %947, ptr %948, align 4, !tbaa !140
  %949 = load ptr, ptr %916, align 8, !tbaa !141
  %950 = icmp eq ptr %949, null
  br i1 %950, label %951, label %952

951:                                              ; preds = %946
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 482, ptr noundef nonnull @.str.1) #17
  br label %952

952:                                              ; preds = %946, %951
  %953 = tail call ptr @tree_block(ptr noundef nonnull %932) #17
  %954 = load ptr, ptr %953, align 8, !tbaa !127
  %955 = load ptr, ptr %916, align 8, !tbaa !141
  store ptr null, ptr %955, align 8, !tbaa !127
  %956 = icmp eq ptr %954, null
  br i1 %956, label %1061, label %957

957:                                              ; preds = %952, %978
  %958 = phi ptr [ %980, %978 ], [ %954, %952 ]
  %959 = load i64, ptr %958, align 8
  %960 = and i64 %959, 65535
  %961 = icmp eq i64 %960, 4
  br i1 %961, label %962, label %1061

962:                                              ; preds = %957
  %963 = getelementptr inbounds %struct.tree_block, ptr %958, i64 0, i32 7
  %964 = load ptr, ptr %963, align 8, !tbaa !95
  %965 = icmp eq ptr %964, null
  br i1 %965, label %1061, label %966

966:                                              ; preds = %962, %970
  %967 = phi ptr [ %972, %970 ], [ %964, %962 ]
  %968 = load i64, ptr %967, align 8
  %969 = trunc i64 %968 to i16
  switch i16 %969, label %978 [
    i16 4, label %970
    i16 29, label %976
  ]

970:                                              ; preds = %966
  %971 = getelementptr inbounds %struct.tree_block, ptr %967, i64 0, i32 7
  %972 = load ptr, ptr %971, align 8, !tbaa !95
  %973 = icmp eq ptr %972, null
  %974 = icmp eq ptr %972, %967
  %975 = or i1 %973, %974
  br i1 %975, label %978, label %966, !llvm.loop !142

976:                                              ; preds = %966
  %977 = load ptr, ptr %916, align 8, !tbaa !141
  store ptr %958, ptr %977, align 8, !tbaa !127
  br label %1061

978:                                              ; preds = %966, %970
  %979 = getelementptr inbounds %struct.tree_block, ptr %958, i64 0, i32 6
  %980 = load ptr, ptr %979, align 8, !tbaa !95
  %981 = icmp eq ptr %980, null
  br i1 %981, label %1061, label %957

982:                                              ; preds = %496
  %983 = getelementptr inbounds i8, ptr %461, i64 1
  %984 = load i8, ptr %983, align 1, !tbaa !95
  %985 = zext i8 %984 to i64
  %986 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %985
  %987 = load i16, ptr %986, align 2, !tbaa !108
  %988 = and i16 %987, 4
  %989 = icmp eq i16 %988, 0
  br i1 %989, label %998, label %990

990:                                              ; preds = %982
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %991 = call i64 @strtoul(ptr noundef nonnull %983, ptr noundef nonnull %6, i32 noundef 10) #16
  %992 = trunc i64 %991 to i32
  %993 = load ptr, ptr %6, align 8, !tbaa !127
  %994 = load i8, ptr %993, align 1, !tbaa !95
  %995 = icmp eq i8 %994, 115
  br i1 %995, label %997, label %996

996:                                              ; preds = %990
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.1) #17
  br label %997

997:                                              ; preds = %990, %996
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %1029

998:                                              ; preds = %982
  %999 = icmp eq i8 %984, 42
  br i1 %999, label %1001, label %1000

1000:                                             ; preds = %998
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 524, ptr noundef nonnull @.str.1) #17
  br label %1001

1001:                                             ; preds = %998, %1000
  %1002 = getelementptr inbounds i8, ptr %461, i64 2
  %1003 = load i8, ptr %1002, align 1, !tbaa !95
  %1004 = icmp eq i8 %1003, 115
  br i1 %1004, label %1006, label %1005

1005:                                             ; preds = %1001
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 526, ptr noundef nonnull @.str.1) #17
  br label %1006

1006:                                             ; preds = %1001, %1005
  %1007 = load ptr, ptr %450, align 8, !tbaa !138
  %1008 = load i32, ptr %1007, align 8
  %1009 = icmp ult i32 %1008, 41
  br i1 %1009, label %1010, label %1016

1010:                                             ; preds = %1006
  %1011 = getelementptr inbounds %struct.__va_list_tag, ptr %1007, i64 0, i32 3
  %1012 = load ptr, ptr %1011, align 8
  %1013 = zext nneg i32 %1008 to i64
  %1014 = getelementptr i8, ptr %1012, i64 %1013
  %1015 = add nuw nsw i32 %1008, 8
  store i32 %1015, ptr %1007, align 8
  br label %1020

1016:                                             ; preds = %1006
  %1017 = getelementptr inbounds %struct.__va_list_tag, ptr %1007, i64 0, i32 2
  %1018 = load ptr, ptr %1017, align 8
  %1019 = getelementptr i8, ptr %1018, i64 8
  store ptr %1019, ptr %1017, align 8
  br label %1020

1020:                                             ; preds = %1016, %1010
  %1021 = phi ptr [ %1014, %1010 ], [ %1018, %1016 ]
  %1022 = load i32, ptr %1021, align 4
  %1023 = add i32 %453, 1
  %1024 = zext i32 %1023 to i64
  %1025 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1024
  %1026 = load ptr, ptr %1025, align 8, !tbaa !127
  %1027 = icmp eq ptr %452, %1026
  br i1 %1027, label %1029, label %1028

1028:                                             ; preds = %1020
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 530, ptr noundef nonnull @.str.1) #17
  br label %1029

1029:                                             ; preds = %1028, %1020, %997
  %1030 = phi i32 [ %453, %997 ], [ %1023, %1020 ], [ %1023, %1028 ]
  %1031 = phi i32 [ %992, %997 ], [ %1022, %1020 ], [ %1022, %1028 ]
  %1032 = load ptr, ptr %450, align 8, !tbaa !138
  %1033 = load i32, ptr %1032, align 8
  %1034 = icmp ult i32 %1033, 41
  br i1 %1034, label %1035, label %1041

1035:                                             ; preds = %1029
  %1036 = getelementptr inbounds %struct.__va_list_tag, ptr %1032, i64 0, i32 3
  %1037 = load ptr, ptr %1036, align 8
  %1038 = zext nneg i32 %1033 to i64
  %1039 = getelementptr i8, ptr %1037, i64 %1038
  %1040 = add nuw nsw i32 %1033, 8
  store i32 %1040, ptr %1032, align 8
  br label %1045

1041:                                             ; preds = %1029
  %1042 = getelementptr inbounds %struct.__va_list_tag, ptr %1032, i64 0, i32 2
  %1043 = load ptr, ptr %1042, align 8
  %1044 = getelementptr i8, ptr %1043, i64 8
  store ptr %1044, ptr %1042, align 8
  br label %1045

1045:                                             ; preds = %1041, %1035
  %1046 = phi ptr [ %1039, %1035 ], [ %1043, %1041 ]
  %1047 = load ptr, ptr %1046, align 8
  %1048 = sext i32 %1031 to i64
  %1049 = getelementptr inbounds i8, ptr %1047, i64 %1048
  tail call void @pp_base_append_text(ptr noundef %0, ptr noundef %1047, ptr noundef %1049) #16
  br label %1061

1050:                                             ; preds = %496
  %1051 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 6
  %1052 = load ptr, ptr %1051, align 8, !tbaa !143
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1054, label %1056

1054:                                             ; preds = %1050
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 543, ptr noundef nonnull @.str.1) #17
  %1055 = load ptr, ptr %1051, align 8, !tbaa !143
  br label %1056

1056:                                             ; preds = %1050, %1054
  %1057 = phi ptr [ %1052, %1050 ], [ %1055, %1054 ]
  %1058 = tail call zeroext i8 %1057(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %461, i32 noundef %456, i8 noundef zeroext %457, i8 noundef zeroext %458, i8 noundef zeroext %459) #17
  %1059 = icmp eq i8 %1058, 0
  br i1 %1059, label %1060, label %1061

1060:                                             ; preds = %1056
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 546, ptr noundef nonnull @.str.1) #17
  br label %1061

1061:                                             ; preds = %957, %978, %962, %952, %976, %1060, %1056, %841, %847, %908, %886, %864, %751, %757, %818, %796, %774, %622, %628, %689, %667, %645, %532, %538, %599, %577, %555, %1045, %728, %709, %512
  %1062 = phi i32 [ %1030, %1045 ], [ %453, %841 ], [ %453, %847 ], [ %453, %908 ], [ %453, %886 ], [ %453, %864 ], [ %453, %751 ], [ %453, %757 ], [ %453, %818 ], [ %453, %796 ], [ %453, %774 ], [ %453, %728 ], [ %453, %709 ], [ %453, %622 ], [ %453, %628 ], [ %453, %689 ], [ %453, %667 ], [ %453, %645 ], [ %453, %532 ], [ %453, %538 ], [ %453, %599 ], [ %453, %577 ], [ %453, %555 ], [ %453, %512 ], [ %453, %1056 ], [ %453, %1060 ], [ %453, %976 ], [ %453, %952 ], [ %453, %962 ], [ %453, %978 ], [ %453, %957 ]
  br i1 %493, label %1065, label %1063, !prof !107

1063:                                             ; preds = %1061
  %1064 = load ptr, ptr @close_quote, align 8, !tbaa !127
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1064) #16
  br label %1065

1065:                                             ; preds = %1063, %1061
  %1066 = load ptr, ptr %12, align 8, !tbaa !112
  %1067 = getelementptr inbounds i8, ptr %1066, i64 1
  %1068 = load ptr, ptr %10, align 8, !tbaa !111
  %1069 = icmp ugt ptr %1067, %1068
  br i1 %1069, label %1070, label %1072, !prof !107

1070:                                             ; preds = %1065
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %1071 = load ptr, ptr %12, align 8, !tbaa !112
  br label %1072

1072:                                             ; preds = %1065, %1070
  %1073 = phi ptr [ %1066, %1065 ], [ %1071, %1070 ]
  %1074 = getelementptr inbounds i8, ptr %1073, i64 1
  store ptr %1074, ptr %12, align 8, !tbaa !112
  store i8 0, ptr %1073, align 1, !tbaa !95
  %1075 = load ptr, ptr %12, align 8, !tbaa !112
  %1076 = load ptr, ptr %25, align 8, !tbaa !113
  %1077 = icmp eq ptr %1075, %1076
  br i1 %1077, label %1078, label %1082, !prof !107

1078:                                             ; preds = %1072
  %1079 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %1080 = load i8, ptr %1079, align 8
  %1081 = or i8 %1080, 2
  store i8 %1081, ptr %1079, align 8
  br label %1082

1082:                                             ; preds = %1072, %1078
  %1083 = ptrtoint ptr %1076 to i64
  store i64 %1083, ptr %9, align 8, !tbaa !110
  %1084 = ptrtoint ptr %1075 to i64
  %1085 = load i32, ptr %35, align 8, !tbaa !114
  %1086 = sext i32 %1085 to i64
  %1087 = add nsw i64 %1086, %1084
  %1088 = xor i32 %1085, -1
  %1089 = sext i32 %1088 to i64
  %1090 = and i64 %1087, %1089
  %1091 = inttoptr i64 %1090 to ptr
  %1092 = load ptr, ptr %43, align 8, !tbaa !115
  %1093 = ptrtoint ptr %1092 to i64
  %1094 = sub i64 %1090, %1093
  %1095 = load ptr, ptr %10, align 8, !tbaa !111
  %1096 = ptrtoint ptr %1095 to i64
  %1097 = sub i64 %1096, %1093
  %1098 = icmp sgt i64 %1094, %1097
  %1099 = select i1 %1098, ptr %1095, ptr %1091, !prof !107
  store ptr %1099, ptr %12, align 8
  store ptr %1099, ptr %25, align 8, !tbaa !113
  %1100 = zext i32 %1062 to i64
  %1101 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1100
  %1102 = load ptr, ptr %1101, align 8, !tbaa !127
  store ptr %1076, ptr %1102, align 8, !tbaa !127
  %1103 = add i32 %1062, 1
  %1104 = zext i32 %1103 to i64
  %1105 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1104
  %1106 = load ptr, ptr %1105, align 8, !tbaa !127
  %1107 = icmp eq ptr %1106, null
  br i1 %1107, label %1108, label %451, !prof !144, !llvm.loop !145

1108:                                             ; preds = %1082, %422
  store ptr %7, ptr %445, align 8, !tbaa !91
  %1109 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 5
  store i32 0, ptr %1109, align 8, !tbaa !100
  %1110 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  store i64 %446, ptr %1110, align 4, !tbaa.struct !146
  tail call fastcc void @pp_clear_state(ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @xstrerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i64 @pp_set_verbatim_wrapping_(ptr nocapture noundef %0) unnamed_addr #8 !prof !79 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 4, !tbaa.struct !146
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 0, ptr %4, align 4, !tbaa !106
  store i32 1, ptr %2, align 4, !tbaa !148
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !149 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !150

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  tail call fastcc void @pp_maybe_wrap_text(ptr noundef %0, ptr noundef %1, ptr noundef %8) #16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_append_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !149 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = load ptr, ptr %0, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !100
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29, !prof !151

10:                                               ; preds = %3
  tail call void @pp_base_emit_prefix(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !106
  %13 = icmp slt i32 %12, 1
  %14 = icmp eq ptr %1, %2
  %15 = or i1 %13, %14
  br i1 %15, label %29, label %16, !prof !152

16:                                               ; preds = %10
  %17 = sub i64 %5, %4
  %18 = getelementptr i8, ptr %1, i64 %17
  br label %19

19:                                               ; preds = %16, %23
  %20 = phi ptr [ %24, %23 ], [ %1, %16 ]
  %21 = load i8, ptr %20, align 1, !tbaa !95
  %22 = icmp eq i8 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %19, !llvm.loop !153

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %18, %23 ], [ %20, %19 ]
  %28 = ptrtoint ptr %27 to i64
  br label %29

29:                                               ; preds = %26, %10, %3
  %30 = phi i64 [ %28, %26 ], [ %4, %10 ], [ %4, %3 ]
  %31 = phi ptr [ %27, %26 ], [ %1, %10 ], [ %1, %3 ]
  %32 = sub i64 %5, %30
  %33 = trunc i64 %32 to i32
  tail call fastcc void @pp_append_r(ptr noundef nonnull %0, ptr noundef %31, i32 noundef %33) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @pp_clear_state(ptr nocapture noundef writeonly %0) unnamed_addr #9 !prof !154 !PGOFuncName !155 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %2, align 8, !tbaa !156
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_output_formatted_text(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !79 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.chunk_info, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %10, label %9, !prof !99

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !100
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !99

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load ptr, ptr %5, align 8, !tbaa !127
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !157

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %15 ]
  %20 = phi i32 [ %21, %18 ], [ 0, %15 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %19) #16
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %5, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !127
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !prof !158, !llvm.loop !159

26:                                               ; preds = %18, %15
  %27 = load ptr, ptr %4, align 8, !tbaa !117
  store ptr %27, ptr %3, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1
  %29 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !115
  %31 = ptrtoint ptr %4 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 5
  store i64 %33, ptr %34, align 8, !tbaa !110
  %35 = icmp sgt i64 %33, 0
  br i1 %35, label %36, label %46, !prof !99

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !111
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %32
  %41 = icmp slt i64 %33, %40
  br i1 %41, label %42, label %46, !prof !99

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %30, i64 %33
  %44 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !113
  %45 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 3
  store ptr %43, ptr %45, align 8, !tbaa !112
  br label %48

46:                                               ; preds = %36, %26
  %47 = getelementptr inbounds i8, ptr %30, i64 %33
  tail call void @obstack_free(ptr noundef nonnull %28, ptr noundef %47) #17
  br label %48

48:                                               ; preds = %46, %42
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_format_verbatim(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !101 {
  %3 = tail call fastcc i64 @pp_set_verbatim_wrapping_(ptr noundef %0) #16
  tail call void @pp_base_format(ptr noundef %0, ptr noundef %1) #16
  tail call void @pp_base_output_formatted_text(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  store i64 %3, ptr %4, align 4, !tbaa.struct !146
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_flush(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !79 {
  tail call void @pp_write_text_to_stream(ptr noundef %0) #16
  tail call fastcc void @pp_clear_state(ptr noundef %0) #16
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = tail call i32 @fputc(i32 noundef 10, ptr noundef %4) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = tail call i32 @fflush(ptr noundef %8) #16
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  store i8 0, ptr %10, align 1, !tbaa !160
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pp_base_set_line_maximum_length(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !101 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !106
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pp_set_real_maximum_length(ptr nocapture noundef %0) unnamed_addr #10 !prof !161 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !106
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22, !prof !163

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !148
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #16
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %9 ]
  %18 = sub nsw i32 %3, %17
  %19 = icmp slt i32 %18, 32
  %20 = add nuw nsw i32 %3, 32
  %21 = select i1 %19, i32 %20, i32 %3
  br label %22

22:                                               ; preds = %16, %1, %5
  %23 = phi i32 [ %3, %5 ], [ %3, %1 ], [ %21, %16 ]
  %24 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pp_base_set_prefix(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !161 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !164
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %4, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @pp_base_destroy_prefix(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !105 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !107

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !164
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_emit_prefix(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !166 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !167

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !148
  switch i32 %7, label %21 [
    i32 2, label %17
    i32 0, label %8
  ], !prof !168

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !156
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !99

12:                                               ; preds = %8
  tail call void @pp_base_indent(ptr noundef nonnull %0) #16
  br label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !102
  %16 = add nsw i32 %15, 3
  store i32 %16, ptr %14, align 8, !tbaa !102
  br label %17

17:                                               ; preds = %5, %13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #16
  %19 = trunc i64 %18 to i32
  tail call fastcc void @pp_append_r(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %19) #16
  %20 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 1, ptr %20, align 8, !tbaa !156
  br label %21

21:                                               ; preds = %12, %17, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_append_r(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !169 !PGOFuncName !170 {
  %4 = sext i32 %2 to i64
  %5 = load ptr, ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.output_buffer, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 5
  store i64 %4, ptr %8, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds i8, ptr %10, i64 %4
  %12 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %15, label %23, !prof !171

15:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull %7, i32 noundef %2) #17
  %16 = load ptr, ptr %0, align 8, !tbaa !80
  %17 = getelementptr inbounds %struct.output_buffer, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.obstack, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = getelementptr inbounds %struct.obstack, ptr %18, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !98
  br label %23

23:                                               ; preds = %3, %15
  %24 = phi i64 [ %4, %3 ], [ %22, %15 ]
  %25 = phi ptr [ %10, %3 ], [ %20, %15 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %1, i64 %24, i1 false)
  %26 = load ptr, ptr %0, align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.output_buffer, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.obstack, ptr %28, i64 0, i32 5
  %30 = load i64, ptr %29, align 8, !tbaa !98
  %31 = getelementptr inbounds %struct.obstack, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = getelementptr inbounds i8, ptr %32, i64 %30
  store ptr %33, ptr %31, align 8, !tbaa !92
  %34 = getelementptr inbounds %struct.output_buffer, ptr %26, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !100
  %36 = add nsw i32 %35, %2
  store i32 %36, ptr %34, align 8, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_construct(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !172 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 336) #17
  store ptr %4, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.output_buffer, ptr %4, i64 0, i32 1
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !80
  %8 = tail call i32 @_obstack_begin(ptr noundef %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !91
  %11 = load ptr, ptr @stderr, align 8, !tbaa !127
  %12 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !87
  %13 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 %2, ptr %14, align 4, !tbaa !106
  store i32 0, ptr %13, align 4, !tbaa !148
  tail call void @pp_base_set_prefix(ptr noundef nonnull %0, ptr noundef %1) #16
  %15 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  store i8 1, ptr %15, align 2, !tbaa !173
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pp_base_last_position_in_text(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = icmp eq ptr %6, %8
  %10 = getelementptr inbounds i8, ptr %8, i64 -1
  %11 = select i1 %9, ptr null, ptr %10
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pp_base_remaining_character_count_for_line(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !101 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !165
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.output_buffer, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !100
  %7 = sub nsw i32 %3, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_printf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !105 {
  %3 = alloca %struct.text_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !140
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !138
  store ptr %1, ptr %3, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !139
  call void @pp_base_format(ptr noundef %0, ptr noundef nonnull %3) #16
  call void @pp_base_output_formatted_text(ptr noundef %0) #16
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_verbatim(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !101 {
  %3 = alloca %struct.text_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !140
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !138
  store ptr %1, ptr %3, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !139
  call void @pp_base_format_verbatim(ptr noundef %0, ptr noundef nonnull %3) #16
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_newline(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull %4, i32 noundef 1) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.output_buffer, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  br label %17

17:                                               ; preds = %1, %11
  %18 = phi ptr [ %6, %1 ], [ %16, %11 ]
  %19 = phi ptr [ %4, %1 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %21, ptr %20, align 8, !tbaa !92
  store i8 10, ptr %18, align 1, !tbaa !95
  %22 = load ptr, ptr %0, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.output_buffer, ptr %22, i64 0, i32 5
  store i32 0, ptr %23, align 8, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_maybe_wrap_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !149 !PGOFuncName !174 {
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !106
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !150

7:                                                ; preds = %3
  tail call fastcc void @pp_wrap_text(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #16
  br label %9

8:                                                ; preds = %3
  tail call void @pp_base_append_text(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #16
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_wrap_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 !prof !101 !PGOFuncName !175 {
  %4 = ptrtoint ptr %2 to i64
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !106
  %7 = icmp sgt i32 %6, 0
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %58, label %9

9:                                                ; preds = %3, %55
  %10 = phi ptr [ %56, %55 ], [ %1, %3 ]
  %11 = getelementptr i8, ptr %10, i64 %4
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 0, %12
  %14 = getelementptr i8, ptr %11, i64 %13
  br label %15

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %10, %9 ], [ %26, %25 ]
  %17 = load i8, ptr %16, align 1, !tbaa !95
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !108
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  %23 = icmp ne i8 %17, 10
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds i8, ptr %16, i64 1
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %15, !llvm.loop !176

28:                                               ; preds = %15, %25
  %29 = phi ptr [ %16, %15 ], [ %14, %25 ]
  br i1 %7, label %30, label %37

30:                                               ; preds = %28
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %31, %12
  %33 = tail call i32 @pp_base_remaining_character_count_for_line(ptr noundef %0) #16
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @pp_base_newline(ptr noundef %0) #16
  br label %37

37:                                               ; preds = %36, %30, %28
  tail call void @pp_base_append_text(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %29) #16
  br i1 %24, label %47, label %38

38:                                               ; preds = %37
  %39 = load i8, ptr %29, align 1, !tbaa !95
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !108
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #16
  %46 = getelementptr inbounds i8, ptr %29, i64 1
  br label %47

47:                                               ; preds = %45, %38, %37
  %48 = phi ptr [ %46, %45 ], [ %29, %38 ], [ %29, %37 ]
  %49 = icmp eq ptr %48, %2
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i8, ptr %48, align 1, !tbaa !95
  %52 = icmp eq i8 %51, 10
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  tail call void @pp_base_newline(ptr noundef %0) #16
  %54 = getelementptr inbounds i8, ptr %48, i64 1
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi ptr [ %54, %53 ], [ %48, %50 ]
  %57 = icmp eq ptr %56, %2
  br i1 %57, label %58, label %9, !llvm.loop !177

58:                                               ; preds = %47, %55, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_maybe_space(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !101 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !178
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #16
  store i32 0, ptr %2, align 8, !tbaa !178
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_tree_identifier(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !101 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 2, !tbaa !173
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  br i1 %5, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @identifier_to_locale(ptr noundef %7) #16
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #16
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  tail call void @pp_base_append_text(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %11) #16
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !95
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %7, i64 %15
  tail call void @pp_base_append_text(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %16) #16
  br label %17

17:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @identifier_to_locale(ptr noundef readonly %0) local_unnamed_addr #0 !prof !179 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %80, label %6, !prof !180

6:                                                ; preds = %1, %28
  %7 = phi i1 [ true, %28 ], [ false, %1 ]
  %8 = phi i64 [ %25, %28 ], [ 0, %1 ]
  br label %9

9:                                                ; preds = %6, %27
  %10 = phi i64 [ %25, %27 ], [ %8, %6 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = sub i64 %4, %10
  %13 = call fastcc i32 @decode_utf8_char(ptr noundef %11, i64 noundef %12, ptr noundef nonnull %2) #16
  %14 = sext i32 %13 to i64
  %15 = icmp eq i32 %13, 0
  %16 = load i32, ptr %2, align 4
  %17 = icmp ult i32 %16, 32
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %29, label %19, !prof !181

19:                                               ; preds = %9
  %20 = icmp ugt i32 %16, 126
  br i1 %20, label %21, label %23, !prof !182

21:                                               ; preds = %19
  %22 = icmp ult i32 %16, 160
  br i1 %22, label %29, label %23

23:                                               ; preds = %21, %19
  %24 = icmp ugt i32 %13, 1
  %25 = add i64 %10, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %26 = icmp ult i64 %25, %4
  br i1 %24, label %28, label %27, !prof !182

27:                                               ; preds = %23
  br i1 %26, label %9, label %50, !prof !183

28:                                               ; preds = %23
  br i1 %26, label %6, label %51, !prof !183

29:                                               ; preds = %21, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %30 = shl i64 %4, 2
  %31 = or disjoint i64 %30, 1
  %32 = tail call ptr @ggc_alloc_stat(i64 noundef %31) #17
  br label %33

33:                                               ; preds = %29, %46
  %34 = phi ptr [ %32, %29 ], [ %47, %46 ]
  %35 = phi i64 [ 0, %29 ], [ %48, %46 ]
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !95
  %38 = add i8 %37, -32
  %39 = icmp ult i8 %38, 95
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 %37, ptr %34, align 1, !tbaa !95
  br label %46

42:                                               ; preds = %33
  %43 = zext i8 %37 to i32
  %44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %43) #16
  %45 = getelementptr inbounds i8, ptr %34, i64 4
  br label %46

46:                                               ; preds = %40, %42
  %47 = phi ptr [ %41, %40 ], [ %45, %42 ]
  %48 = add nuw i64 %35, 1
  %49 = icmp eq i64 %48, %4
  br i1 %49, label %77, label %33, !llvm.loop !184

50:                                               ; preds = %27
  br i1 %7, label %51, label %80, !prof !185

51:                                               ; preds = %28, %50
  %52 = load i8, ptr @locale_utf8, align 1, !tbaa !95
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = mul i64 %4, 10
  %56 = or disjoint i64 %55, 1
  %57 = tail call ptr @ggc_alloc_stat(i64 noundef %56) #17
  br i1 %5, label %77, label %58

58:                                               ; preds = %54, %73
  %59 = phi ptr [ %74, %73 ], [ %57, %54 ]
  %60 = phi i64 [ %75, %73 ], [ 0, %54 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  %62 = sub i64 %4, %60
  %63 = call fastcc i32 @decode_utf8_char(ptr noundef %61, i64 noundef %62, ptr noundef nonnull %3) #16
  %64 = sext i32 %63 to i64
  %65 = icmp eq i32 %63, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i8, ptr %61, align 1, !tbaa !95
  %68 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %67, ptr %59, align 1, !tbaa !95
  br label %73

69:                                               ; preds = %58
  %70 = load i32, ptr %3, align 4, !tbaa !140
  %71 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %70) #16
  %72 = getelementptr inbounds i8, ptr %59, i64 10
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi ptr [ %68, %66 ], [ %72, %69 ]
  %75 = add i64 %60, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %76 = icmp ult i64 %75, %4
  br i1 %76, label %58, label %77, !llvm.loop !186

77:                                               ; preds = %73, %46, %54
  %78 = phi ptr [ %57, %54 ], [ %47, %46 ], [ %74, %73 ]
  %79 = phi ptr [ %57, %54 ], [ %32, %46 ], [ %57, %73 ]
  store i8 0, ptr %78, align 1, !tbaa !95
  br label %80

80:                                               ; preds = %77, %1, %50, %51
  %81 = phi ptr [ %0, %51 ], [ %0, %50 ], [ %0, %1 ], [ %79, %77 ]
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @decode_utf8_char(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !187 !PGOFuncName !188 {
  %4 = load i8, ptr %0, align 1, !tbaa !95
  %5 = zext i8 %4 to i32
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %8, !prof !182

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 862, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp sgt i8 %4, -1
  br i1 %9, label %69, label %10, !prof !189

10:                                               ; preds = %8
  %11 = load i8, ptr %0, align 1, !tbaa !95
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i8 %11, -1
  br i1 %13, label %69, label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %17, %14 ], [ 0, %10 ]
  %16 = phi i32 [ %18, %14 ], [ %12, %10 ]
  %17 = add i64 %15, 1
  %18 = shl i32 %16, 1
  %19 = and i32 %16, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %14, !llvm.loop !190

21:                                               ; preds = %14
  %22 = icmp ugt i64 %17, %1
  %23 = add i64 %15, -6
  %24 = icmp ult i64 %23, -5
  %25 = or i1 %22, %24
  br i1 %25, label %69, label %26

26:                                               ; preds = %21
  %27 = trunc i64 %17 to i32
  %28 = sub nuw nsw i32 7, %27
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %30, %12
  br label %32

32:                                               ; preds = %26, %40
  %33 = phi i64 [ %44, %40 ], [ 1, %26 ]
  %34 = phi i32 [ %43, %40 ], [ %31, %26 ]
  %35 = getelementptr inbounds i8, ptr %0, i64 %33
  %36 = load i8, ptr %35, align 1, !tbaa !95
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 192
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %69

40:                                               ; preds = %32
  %41 = shl i32 %34, 6
  %42 = and i32 %37, 63
  %43 = or disjoint i32 %42, %41
  %44 = add nuw i64 %33, 1
  %45 = icmp eq i64 %33, %15
  br i1 %45, label %46, label %32, !llvm.loop !191

46:                                               ; preds = %40
  %47 = icmp ult i32 %43, 128
  br i1 %47, label %69, label %48

48:                                               ; preds = %46
  %49 = icmp ult i32 %43, 2048
  %50 = icmp ugt i64 %17, 2
  %51 = and i1 %49, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = icmp ult i32 %43, 65536
  %54 = icmp ugt i64 %17, 3
  %55 = and i1 %53, %54
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = icmp ult i32 %43, 2097152
  %58 = icmp ugt i64 %17, 4
  %59 = and i1 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = icmp ult i32 %43, 67108864
  %62 = icmp ugt i64 %17, 5
  %63 = and i1 %61, %62
  %64 = and i32 %34, 67108832
  %65 = icmp eq i32 %64, 864
  %66 = or i1 %63, %65
  %67 = select i1 %66, i32 -1, i32 %43
  %68 = select i1 %66, i32 0, i32 %27
  br label %69

69:                                               ; preds = %32, %60, %8, %46, %48, %52, %56, %21, %10
  %70 = phi i32 [ -1, %10 ], [ -1, %21 ], [ -1, %56 ], [ -1, %52 ], [ -1, %48 ], [ -1, %46 ], [ %5, %8 ], [ %67, %60 ], [ -1, %32 ]
  %71 = phi i32 [ 0, %10 ], [ 0, %21 ], [ 0, %56 ], [ 0, %52 ], [ 0, %48 ], [ 0, %46 ], [ 1, %8 ], [ %68, %60 ], [ 0, %32 ]
  store i32 %70, ptr %2, align 4, !tbaa !140
  ret i32 %71
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!78}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!36 = !{ptr @pp_write_text_to_stream, ptr @pp_base_formatted_text, i64 4}
!37 = !{ptr @pp_write_text_to_stream, ptr @fputs, i64 4}
!38 = !{ptr @pp_write_text_to_stream, ptr @pp_base_clear_output_area, i64 4}
!39 = !{ptr @pp_base_formatted_text, ptr @_obstack_newchunk, i64 1}
!40 = !{ptr @pp_base_clear_output_area, ptr @obstack_free, i64 1}
!41 = !{ptr @pp_base_character, ptr @pp_base_remaining_character_count_for_line, i64 1}
!42 = !{ptr @pp_base_format, ptr @_obstack_newchunk, i64 7}
!43 = !{ptr @pp_base_format, ptr @strlen, i64 1}
!44 = !{ptr @pp_base_format, ptr @memchr, i64 3}
!45 = !{ptr @pp_base_format, ptr @fancy_abort, i64 8}
!46 = !{ptr @pp_base_format, ptr @pp_set_verbatim_wrapping_, i64 4}
!47 = !{ptr @pp_base_format, ptr @pp_base_string, i64 5}
!48 = !{ptr @pp_base_format, ptr @pp_clear_state, i64 4}
!49 = !{ptr @pp_base_string, ptr @strlen, i64 11}
!50 = !{ptr @pp_base_string, ptr @pp_maybe_wrap_text, i64 12}
!51 = !{ptr @pp_base_append_text, ptr @pp_base_emit_prefix, i64 6}
!52 = !{ptr @pp_base_append_text, ptr @pp_append_r, i64 12}
!53 = !{ptr @pp_base_output_formatted_text, ptr @fancy_abort, i64 2}
!54 = !{ptr @pp_base_output_formatted_text, ptr @pp_base_string, i64 6}
!55 = !{ptr @pp_base_output_formatted_text, ptr @obstack_free, i64 1}
!56 = !{ptr @pp_base_flush, ptr @pp_write_text_to_stream, i64 4}
!57 = !{ptr @pp_base_flush, ptr @pp_clear_state, i64 4}
!58 = !{ptr @pp_base_flush, ptr @fputc, i64 4}
!59 = !{ptr @pp_base_flush, ptr @fflush, i64 4}
!60 = !{ptr @pp_base_set_prefix, ptr @pp_set_real_maximum_length, i64 5}
!61 = !{ptr @pp_base_destroy_prefix, ptr @free, i64 2}
!62 = !{ptr @pp_base_emit_prefix, ptr @strlen, i64 3}
!63 = !{ptr @pp_base_emit_prefix, ptr @pp_append_r, i64 3}
!64 = !{ptr @pp_append_r, ptr @_obstack_newchunk, i64 1}
!65 = !{ptr @pp_construct, ptr @xcalloc, i64 1}
!66 = !{ptr @pp_construct, ptr @_obstack_begin, i64 2}
!67 = !{ptr @pp_construct, ptr @pp_base_set_prefix, i64 1}
!68 = !{ptr @pp_printf, ptr @__errno_location, i64 2}
!69 = !{ptr @pp_printf, ptr @pp_base_format, i64 2}
!70 = !{ptr @pp_printf, ptr @pp_base_output_formatted_text, i64 2}
!71 = !{ptr @pp_maybe_wrap_text, ptr @pp_wrap_text, i64 1}
!72 = !{ptr @pp_maybe_wrap_text, ptr @pp_base_append_text, i64 11}
!73 = !{ptr @identifier_to_locale, ptr @strlen, i64 60191}
!74 = !{ptr @identifier_to_locale, ptr @decode_utf8_char, i64 437841}
!75 = !{ptr @identifier_to_locale, ptr @ggc_alloc_stat, i64 2}
!76 = !{ptr @identifier_to_locale, ptr @sprintf, i64 36}
!77 = !{ptr @decode_utf8_char, ptr @fancy_abort, i64 1}
!78 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!79 = !{!"function_entry_count", i64 4}
!80 = !{!81, !82, i64 0}
!81 = !{!"pretty_print_info", !82, i64 0, !82, i64 8, !85, i64 16, !85, i64 20, !85, i64 24, !86, i64 28, !82, i64 40, !83, i64 48, !83, i64 49, !83, i64 50}
!82 = !{!"any pointer", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = !{!"int", !83, i64 0}
!86 = !{!"", !85, i64 0, !85, i64 4}
!87 = !{!88, !82, i64 192}
!88 = !{!"", !89, i64 0, !89, i64 88, !82, i64 176, !82, i64 184, !82, i64 192, !85, i64 200, !83, i64 204}
!89 = !{!"obstack", !90, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !90, i64 40, !85, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !85, i64 80, !85, i64 80, !85, i64 80}
!90 = !{!"long", !83, i64 0}
!91 = !{!88, !82, i64 176}
!92 = !{!89, !82, i64 24}
!93 = !{!89, !82, i64 32}
!94 = !{!"branch_weights", i32 1, i32 5}
!95 = !{!83, !83, i64 0}
!96 = !{!89, !82, i64 16}
!97 = !{!89, !82, i64 8}
!98 = !{!89, !90, i64 40}
!99 = !{!"branch_weights", i32 5, i32 1}
!100 = !{!88, !85, i64 200}
!101 = !{!"function_entry_count", i64 0}
!102 = !{!81, !85, i64 24}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"function_entry_count", i64 2}
!106 = !{!81, !85, i64 32}
!107 = !{!"branch_weights", i32 1, i32 3}
!108 = !{!109, !109, i64 0}
!109 = !{!"short", !83, i64 0}
!110 = !{!88, !90, i64 128}
!111 = !{!88, !82, i64 120}
!112 = !{!88, !82, i64 112}
!113 = !{!88, !82, i64 104}
!114 = !{!88, !85, i64 136}
!115 = !{!88, !82, i64 96}
!116 = !{!88, !82, i64 184}
!117 = !{!118, !82, i64 0}
!118 = !{!"chunk_info", !82, i64 0, !83, i64 8}
!119 = !{!120, !82, i64 0}
!120 = !{!"", !82, i64 0, !82, i64 8, !85, i64 16, !82, i64 24, !82, i64 32}
!121 = !{!"branch_weights", i32 1, i32 127}
!122 = !{!"branch_weights", i32 9999, i32 312, i32 505}
!123 = !{!"branch_weights", i32 1, i32 99}
!124 = distinct !{!124, !104}
!125 = !{!"branch_weights", i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!126 = !{!"branch_weights", i32 127, i32 513}
!127 = !{!82, !82, i64 0}
!128 = !{!120, !85, i64 16}
!129 = !{!"branch_weights", i32 3, i32 1}
!130 = !{!"branch_weights", i32 3, i32 3}
!131 = distinct !{!131, !104}
!132 = distinct !{!132, !104}
!133 = !{!"branch_weights", i32 127, i32 16129}
!134 = !{!"branch_weights", i32 2, i32 3}
!135 = !{!"branch_weights", i32 1, i32 3, i32 1, i32 1, i32 1, i32 1}
!136 = !{!"branch_weights", i32 7, i32 1}
!137 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1}
!138 = !{!120, !82, i64 8}
!139 = !{!120, !82, i64 24}
!140 = !{!85, !85, i64 0}
!141 = !{!120, !82, i64 32}
!142 = distinct !{!142, !104}
!143 = !{!81, !82, i64 40}
!144 = !{!"branch_weights", i32 3, i32 0}
!145 = distinct !{!145, !104}
!146 = !{i64 0, i64 4, !140, i64 4, i64 4, !140}
!147 = !{!"pretty-print.c:pp_set_verbatim_wrapping_"}
!148 = !{!81, !85, i64 28}
!149 = !{!"function_entry_count", i64 12}
!150 = !{!"branch_weights", i32 1, i32 13}
!151 = !{!"branch_weights", i32 7, i32 7}
!152 = !{!"branch_weights", i32 15, i32 1}
!153 = distinct !{!153, !104}
!154 = !{!"function_entry_count", i64 8}
!155 = !{!"pretty-print.c:pp_clear_state"}
!156 = !{!81, !83, i64 48}
!157 = !{!"branch_weights", i32 1, i32 159}
!158 = !{!"branch_weights", i32 159, i32 65}
!159 = distinct !{!159, !104}
!160 = !{!81, !83, i64 49}
!161 = !{!"function_entry_count", i64 5}
!162 = !{!"pretty-print.c:pp_set_real_maximum_length"}
!163 = !{!"branch_weights", i32 1, i32 6}
!164 = !{!81, !82, i64 8}
!165 = !{!81, !85, i64 20}
!166 = !{!"function_entry_count", i64 6}
!167 = !{!"branch_weights", i32 1, i32 7}
!168 = !{!"branch_weights", i32 4, i32 1, i32 5}
!169 = !{!"function_entry_count", i64 16}
!170 = !{!"pretty-print.c:pp_append_r"}
!171 = !{!"branch_weights", i32 1, i32 17}
!172 = !{!"function_entry_count", i64 1}
!173 = !{!81, !83, i64 50}
!174 = !{!"pretty-print.c:pp_maybe_wrap_text"}
!175 = !{!"pretty-print.c:pp_wrap_text"}
!176 = distinct !{!176, !104}
!177 = distinct !{!177, !104}
!178 = !{!81, !85, i64 16}
!179 = !{!"function_entry_count", i64 60191}
!180 = !{!"branch_weights", i32 1, i32 60191}
!181 = !{!"branch_weights", i32 13682, i32 -1299402838}
!182 = !{!"branch_weights", i32 1, i32 437854}
!183 = !{!"branch_weights", i32 377663, i32 60191}
!184 = distinct !{!184, !104}
!185 = !{!"branch_weights", i32 30772, i32 2147452876}
!186 = distinct !{!186, !104}
!187 = !{!"function_entry_count", i64 437853}
!188 = !{!"pretty-print.c:decode_utf8_char"}
!189 = !{!"branch_weights", i32 437854, i32 1}
!190 = distinct !{!190, !104}
!191 = distinct !{!191, !104}
