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
define dso_local void @pp_write_text_to_stream(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !69 {
  %2 = tail call ptr @pp_base_formatted_text(ptr noundef %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = tail call i32 @fputs(ptr noundef %2, ptr noundef %5) #16
  tail call void @pp_base_clear_output_area(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pp_base_formatted_text(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %17, !prof !84

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull %4, i32 noundef 1) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.output_buffer, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  %15 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  br label %17

17:                                               ; preds = %1, %11
  %18 = phi ptr [ %6, %1 ], [ %16, %11 ]
  %19 = phi ptr [ %4, %1 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %21, ptr %20, align 8, !tbaa !82
  store i8 0, ptr %18, align 1, !tbaa !85
  %22 = load ptr, ptr %0, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.output_buffer, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = getelementptr inbounds %struct.obstack, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  ret ptr %26
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_clear_output_area(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !88
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %23, !prof !89

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = icmp slt i64 %11, %18
  br i1 %19, label %20, label %23, !prof !89

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %8, i64 %11
  store ptr %21, ptr %5, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !82
  br label %26

23:                                               ; preds = %14, %1
  %24 = getelementptr inbounds i8, ptr %8, i64 %11
  tail call void @obstack_free(ptr noundef nonnull %4, ptr noundef %24) #17
  %25 = load ptr, ptr %0, align 8, !tbaa !70
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi ptr [ %25, %23 ], [ %2, %20 ]
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 5
  store i32 0, ptr %28, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_indent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !91 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !92
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #16
  %7 = add nuw nsw i32 %6, 1
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %9, label %5, !llvm.loop !93

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_character(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !91 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !95
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = tail call i32 @pp_base_remaining_character_count_for_line(ptr noundef nonnull %0) #16
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  tail call void @pp_base_newline(ptr noundef nonnull %0) #16
  %10 = and i32 %1, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !96
  %14 = and i16 %13, 64
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %9, %6, %2
  %17 = load ptr, ptr %0, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.output_buffer, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = icmp ugt ptr %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  tail call void @_obstack_newchunk(ptr noundef nonnull %19, i32 noundef 1) #17
  %27 = load ptr, ptr %0, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = getelementptr inbounds %struct.obstack, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  br label %32

32:                                               ; preds = %16, %26
  %33 = phi ptr [ %21, %16 ], [ %31, %26 ]
  %34 = phi ptr [ %19, %16 ], [ %29, %26 ]
  %35 = trunc i32 %1 to i8
  %36 = getelementptr inbounds %struct.obstack, ptr %34, i64 0, i32 3
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %37, ptr %36, align 8, !tbaa !82
  store i8 %35, ptr %33, align 1, !tbaa !85
  %38 = load ptr, ptr %0, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !90
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !90
  br label %42

42:                                               ; preds = %9, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_format(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !69 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #18
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 5
  store i64 488, ptr %9, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, 488
  br i1 %17, label %18, label %21, !prof !84

18:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 488) #17
  %19 = load i64, ptr %9, align 8, !tbaa !98
  %20 = load ptr, ptr %12, align 8, !tbaa !100
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi ptr [ %13, %2 ], [ %20, %18 ]
  %23 = phi i64 [ 488, %2 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %28, label %32, !prof !84

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %30 = load i8, ptr %29, align 8
  %31 = or i8 %30, 2
  store i8 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %21, %28
  %33 = ptrtoint ptr %26 to i64
  store i64 %33, ptr %9, align 8, !tbaa !98
  %34 = ptrtoint ptr %24 to i64
  %35 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !102
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %34
  %39 = xor i32 %36, -1
  %40 = sext i32 %39 to i64
  %41 = and i64 %38, %40
  %42 = inttoptr i64 %41 to ptr
  store ptr %42, ptr %12, align 8, !tbaa !100
  %43 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !103
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %41, %45
  %47 = load ptr, ptr %10, align 8, !tbaa !99
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %48, %45
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52, !prof !84

51:                                               ; preds = %32
  store ptr %47, ptr %12, align 8, !tbaa !100
  br label %52

52:                                               ; preds = %32, %51
  %53 = phi ptr [ %42, %32 ], [ %47, %51 ]
  store ptr %53, ptr %25, align 8, !tbaa !101
  %54 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !104
  store ptr %55, ptr %26, align 8, !tbaa !105
  store ptr %26, ptr %54, align 8, !tbaa !104
  %56 = getelementptr inbounds %struct.chunk_info, ptr %26, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %3, i8 0, i64 240, i1 false)
  %57 = load ptr, ptr %1, align 8, !tbaa !107
  %58 = load i8, ptr %57, align 1, !tbaa !85
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %401, label %60, !prof !109

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
  ], !prof !110

70:                                               ; preds = %67
  %71 = load ptr, ptr %12, align 8, !tbaa !100
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = load ptr, ptr %10, align 8, !tbaa !99
  %74 = icmp ugt ptr %72, %73
  br i1 %74, label %75, label %78, !prof !111

75:                                               ; preds = %70
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %76 = load i8, ptr %69, align 1, !tbaa !85
  %77 = load ptr, ptr %12, align 8, !tbaa !100
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi ptr [ %71, %70 ], [ %77, %75 ]
  %80 = phi i8 [ %68, %70 ], [ %76, %75 ]
  %81 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %81, ptr %12, align 8, !tbaa !100
  store i8 %80, ptr %79, align 1, !tbaa !85
  %82 = getelementptr inbounds i8, ptr %69, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !85
  br label %84

84:                                               ; preds = %78, %101
  %85 = phi i8 [ %83, %78 ], [ %103, %101 ]
  %86 = phi ptr [ %82, %78 ], [ %102, %101 ]
  br label %67, !llvm.loop !112

87:                                               ; preds = %67
  %88 = getelementptr inbounds i8, ptr %69, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !85
  switch i8 %89, label %162 [
    i8 0, label %90
    i8 37, label %91
    i8 60, label %105
    i8 62, label %124
    i8 39, label %124
    i8 109, label %143
  ], !prof !113

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @.str.1) #17
  br label %91

91:                                               ; preds = %87, %90
  %92 = load ptr, ptr %12, align 8, !tbaa !100
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  %94 = load ptr, ptr %10, align 8, !tbaa !99
  %95 = icmp ugt ptr %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %97 = load ptr, ptr %12, align 8, !tbaa !100
  br label %98

98:                                               ; preds = %91, %96
  %99 = phi ptr [ %92, %91 ], [ %97, %96 ]
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %100, ptr %12, align 8, !tbaa !100
  store i8 37, ptr %99, align 1, !tbaa !85
  br label %101

101:                                              ; preds = %98, %117, %136, %156
  %102 = getelementptr inbounds i8, ptr %69, i64 2
  %103 = load i8, ptr %102, align 1, !tbaa !85
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %401, label %84, !prof !114

105:                                              ; preds = %87
  %106 = load ptr, ptr @open_quote, align 8, !tbaa !115
  %107 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %106) #16
  store i64 %107, ptr %9, align 8, !tbaa !98
  %108 = load ptr, ptr %12, align 8, !tbaa !100
  %109 = getelementptr inbounds i8, ptr %108, i64 %107
  %110 = load ptr, ptr %10, align 8, !tbaa !99
  %111 = icmp ugt ptr %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = trunc i64 %107 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %113) #17
  %114 = load ptr, ptr %12, align 8, !tbaa !100
  %115 = load ptr, ptr @open_quote, align 8, !tbaa !115
  %116 = load i64, ptr %9, align 8, !tbaa !98
  br label %117

117:                                              ; preds = %105, %112
  %118 = phi i64 [ %107, %105 ], [ %116, %112 ]
  %119 = phi ptr [ %106, %105 ], [ %115, %112 ]
  %120 = phi ptr [ %108, %105 ], [ %114, %112 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %119, i64 %118, i1 false)
  %121 = load i64, ptr %9, align 8, !tbaa !98
  %122 = load ptr, ptr %12, align 8, !tbaa !100
  %123 = getelementptr inbounds i8, ptr %122, i64 %121
  store ptr %123, ptr %12, align 8, !tbaa !100
  br label %101

124:                                              ; preds = %87, %87
  %125 = load ptr, ptr @close_quote, align 8, !tbaa !115
  %126 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %125) #16
  store i64 %126, ptr %9, align 8, !tbaa !98
  %127 = load ptr, ptr %12, align 8, !tbaa !100
  %128 = getelementptr inbounds i8, ptr %127, i64 %126
  %129 = load ptr, ptr %10, align 8, !tbaa !99
  %130 = icmp ugt ptr %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = trunc i64 %126 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %132) #17
  %133 = load ptr, ptr %12, align 8, !tbaa !100
  %134 = load ptr, ptr @close_quote, align 8, !tbaa !115
  %135 = load i64, ptr %9, align 8, !tbaa !98
  br label %136

136:                                              ; preds = %124, %131
  %137 = phi i64 [ %126, %124 ], [ %135, %131 ]
  %138 = phi ptr [ %125, %124 ], [ %134, %131 ]
  %139 = phi ptr [ %127, %124 ], [ %133, %131 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %139, ptr align 1 %138, i64 %137, i1 false)
  %140 = load i64, ptr %9, align 8, !tbaa !98
  %141 = load ptr, ptr %12, align 8, !tbaa !100
  %142 = getelementptr inbounds i8, ptr %141, i64 %140
  store ptr %142, ptr %12, align 8, !tbaa !100
  br label %101

143:                                              ; preds = %87
  %144 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !116
  %146 = tail call ptr @xstrerror(i32 noundef %145) #17
  %147 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %146) #16
  store i64 %147, ptr %9, align 8, !tbaa !98
  %148 = load ptr, ptr %12, align 8, !tbaa !100
  %149 = getelementptr inbounds i8, ptr %148, i64 %147
  %150 = load ptr, ptr %10, align 8, !tbaa !99
  %151 = icmp ugt ptr %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = trunc i64 %147 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %153) #17
  %154 = load ptr, ptr %12, align 8, !tbaa !100
  %155 = load i64, ptr %9, align 8, !tbaa !98
  br label %156

156:                                              ; preds = %143, %152
  %157 = phi i64 [ %147, %143 ], [ %155, %152 ]
  %158 = phi ptr [ %148, %143 ], [ %154, %152 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %158, ptr align 1 %146, i64 %157, i1 false)
  %159 = load i64, ptr %9, align 8, !tbaa !98
  %160 = load ptr, ptr %12, align 8, !tbaa !100
  %161 = getelementptr inbounds i8, ptr %160, i64 %159
  store ptr %161, ptr %12, align 8, !tbaa !100
  br label %101

162:                                              ; preds = %87
  %163 = getelementptr inbounds i8, ptr %69, i64 1
  %164 = load ptr, ptr %12, align 8, !tbaa !100
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  %166 = load ptr, ptr %10, align 8, !tbaa !99
  %167 = icmp ugt ptr %165, %166
  br i1 %167, label %168, label %170, !prof !84

168:                                              ; preds = %162
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %169 = load ptr, ptr %12, align 8, !tbaa !100
  br label %170

170:                                              ; preds = %162, %168
  %171 = phi ptr [ %164, %162 ], [ %169, %168 ]
  %172 = getelementptr inbounds i8, ptr %171, i64 1
  store ptr %172, ptr %12, align 8, !tbaa !100
  store i8 0, ptr %171, align 1, !tbaa !85
  %173 = icmp ult i32 %64, 60
  br i1 %173, label %175, label %174, !prof !89

174:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 282, ptr noundef nonnull @.str.1) #17
  br label %175

175:                                              ; preds = %170, %174
  %176 = load ptr, ptr %12, align 8, !tbaa !100
  %177 = load ptr, ptr %25, align 8, !tbaa !101
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %179, label %183, !prof !84

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %181 = load i8, ptr %180, align 8
  %182 = or i8 %181, 2
  store i8 %182, ptr %180, align 8
  br label %183

183:                                              ; preds = %175, %179
  %184 = ptrtoint ptr %177 to i64
  store i64 %184, ptr %9, align 8, !tbaa !98
  %185 = ptrtoint ptr %176 to i64
  %186 = load i32, ptr %35, align 8, !tbaa !102
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %185
  %189 = xor i32 %186, -1
  %190 = sext i32 %189 to i64
  %191 = and i64 %188, %190
  %192 = inttoptr i64 %191 to ptr
  %193 = load ptr, ptr %43, align 8, !tbaa !103
  %194 = ptrtoint ptr %193 to i64
  %195 = sub i64 %191, %194
  %196 = load ptr, ptr %10, align 8, !tbaa !99
  %197 = ptrtoint ptr %196 to i64
  %198 = sub i64 %197, %194
  %199 = icmp sgt i64 %195, %198
  %200 = select i1 %199, ptr %196, ptr %192, !prof !84
  store ptr %200, ptr %12, align 8
  store ptr %200, ptr %25, align 8, !tbaa !101
  %201 = or disjoint i32 %64, 1
  %202 = zext i32 %64 to i64
  %203 = getelementptr inbounds ptr, ptr %56, i64 %202
  store ptr %177, ptr %203, align 8, !tbaa !115
  %204 = load i8, ptr %163, align 1, !tbaa !85
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !96
  %208 = and i16 %207, 4
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %223, label %210, !prof !89

210:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %211 = call i64 @strtoul(ptr noundef nonnull %163, ptr noundef nonnull %4, i32 noundef 10) #16
  %212 = trunc i64 %211 to i32
  %213 = add i32 %212, -1
  %214 = load ptr, ptr %4, align 8, !tbaa !115
  %215 = load i8, ptr %214, align 1, !tbaa !85
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
  br i1 %225, label %227, label %226, !prof !89

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
  br i1 %234, label %236, label %235, !prof !89

235:                                              ; preds = %227
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @.str.1) #17
  br label %236

236:                                              ; preds = %227, %235
  %237 = zext i32 %231 to i64
  %238 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !115
  %240 = icmp eq ptr %239, null
  br i1 %240, label %242, label %241, !prof !89

241:                                              ; preds = %236
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.1) #17
  br label %242

242:                                              ; preds = %236, %241
  %243 = zext i32 %201 to i64
  %244 = getelementptr inbounds ptr, ptr %56, i64 %243
  store ptr %244, ptr %238, align 8, !tbaa !115
  br label %245

245:                                              ; preds = %253, %242
  %246 = phi ptr [ %233, %242 ], [ %257, %253 ]
  %247 = load ptr, ptr %12, align 8, !tbaa !100
  %248 = getelementptr inbounds i8, ptr %247, i64 1
  %249 = load ptr, ptr %10, align 8, !tbaa !99
  %250 = icmp ugt ptr %248, %249
  br i1 %250, label %251, label %253, !prof !117

251:                                              ; preds = %245
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %252 = load ptr, ptr %12, align 8, !tbaa !100
  br label %253

253:                                              ; preds = %245, %251
  %254 = phi ptr [ %247, %245 ], [ %252, %251 ]
  %255 = load i8, ptr %246, align 1, !tbaa !85
  %256 = getelementptr inbounds i8, ptr %254, i64 1
  store ptr %256, ptr %12, align 8, !tbaa !100
  store i8 %255, ptr %254, align 1, !tbaa !85
  %257 = getelementptr inbounds i8, ptr %246, i64 1
  %258 = load i8, ptr %246, align 1, !tbaa !85
  %259 = sext i8 %258 to i32
  %260 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.2, i32 %259, i64 6)
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %245, !prof !118, !llvm.loop !119

262:                                              ; preds = %253
  %263 = icmp eq i8 %258, 46
  br i1 %263, label %264, label %355, !prof !84

264:                                              ; preds = %262
  %265 = load i8, ptr %257, align 1, !tbaa !85
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %266
  %268 = load i16, ptr %267, align 2, !tbaa !96
  %269 = and i16 %268, 4
  %270 = icmp eq i16 %269, 0
  br i1 %270, label %293, label %271

271:                                              ; preds = %264, %279
  %272 = phi ptr [ %283, %279 ], [ %257, %264 ]
  %273 = load ptr, ptr %12, align 8, !tbaa !100
  %274 = getelementptr inbounds i8, ptr %273, i64 1
  %275 = load ptr, ptr %10, align 8, !tbaa !99
  %276 = icmp ugt ptr %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %271
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %278 = load ptr, ptr %12, align 8, !tbaa !100
  br label %279

279:                                              ; preds = %271, %277
  %280 = phi ptr [ %273, %271 ], [ %278, %277 ]
  %281 = load i8, ptr %272, align 1, !tbaa !85
  %282 = getelementptr inbounds i8, ptr %280, i64 1
  store ptr %282, ptr %12, align 8, !tbaa !100
  store i8 %281, ptr %280, align 1, !tbaa !85
  %283 = getelementptr inbounds i8, ptr %272, i64 1
  %284 = load i8, ptr %272, align 1, !tbaa !85
  %285 = zext i8 %284 to i64
  %286 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !96
  %288 = and i16 %287, 4
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %290, label %271, !llvm.loop !120

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
  %297 = load ptr, ptr %12, align 8, !tbaa !100
  %298 = getelementptr inbounds i8, ptr %297, i64 1
  %299 = load ptr, ptr %10, align 8, !tbaa !99
  %300 = icmp ugt ptr %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %302 = load ptr, ptr %12, align 8, !tbaa !100
  br label %303

303:                                              ; preds = %296, %301
  %304 = phi ptr [ %297, %296 ], [ %302, %301 ]
  %305 = getelementptr inbounds i8, ptr %304, i64 1
  store ptr %305, ptr %12, align 8, !tbaa !100
  store i8 42, ptr %304, align 1, !tbaa !85
  %306 = getelementptr inbounds i8, ptr %246, i64 2
  %307 = load i8, ptr %306, align 1, !tbaa !85
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %308
  %310 = load i16, ptr %309, align 2, !tbaa !96
  %311 = and i16 %310, 4
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %331, label %313

313:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %314 = call i64 @strtoul(ptr noundef nonnull %306, ptr noundef nonnull %5, i32 noundef 10) #16
  %315 = trunc i64 %314 to i32
  %316 = add i64 %314, 4294967295
  %317 = load ptr, ptr %5, align 8, !tbaa !115
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
  %324 = load i8, ptr %317, align 1, !tbaa !85
  %325 = icmp eq i8 %324, 36
  br i1 %325, label %327, label %326

326:                                              ; preds = %323
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.1) #17
  br label %327

327:                                              ; preds = %323, %326
  %328 = getelementptr inbounds i8, ptr %317, i64 1
  %329 = and i64 %316, 4294967295
  %330 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %329
  store ptr %244, ptr %330, align 8, !tbaa !115
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
  store ptr %244, ptr %336, align 8, !tbaa !115
  %337 = add i32 %232, 1
  br label %338

338:                                              ; preds = %333, %327
  %339 = phi i32 [ %232, %327 ], [ %337, %333 ]
  %340 = phi ptr [ %328, %327 ], [ %306, %333 ]
  %341 = load i8, ptr %340, align 1, !tbaa !85
  %342 = icmp eq i8 %341, 115
  br i1 %342, label %344, label %343

343:                                              ; preds = %338
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 352, ptr noundef nonnull @.str.1) #17
  br label %344

344:                                              ; preds = %338, %343
  %345 = load ptr, ptr %12, align 8, !tbaa !100
  %346 = getelementptr inbounds i8, ptr %345, i64 1
  %347 = load ptr, ptr %10, align 8, !tbaa !99
  %348 = icmp ugt ptr %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %344
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %350 = load ptr, ptr %12, align 8, !tbaa !100
  br label %351

351:                                              ; preds = %344, %349
  %352 = phi ptr [ %345, %344 ], [ %350, %349 ]
  %353 = getelementptr inbounds i8, ptr %352, i64 1
  store ptr %353, ptr %12, align 8, !tbaa !100
  store i8 115, ptr %352, align 1, !tbaa !85
  %354 = getelementptr inbounds i8, ptr %340, i64 1
  br label %355

355:                                              ; preds = %292, %290, %351, %262
  %356 = phi i32 [ %232, %290 ], [ %232, %292 ], [ %339, %351 ], [ %232, %262 ]
  %357 = phi ptr [ %283, %290 ], [ %283, %292 ], [ %354, %351 ], [ %257, %262 ]
  %358 = load i8, ptr %357, align 1, !tbaa !85
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %401, label %360, !prof !89

360:                                              ; preds = %355
  %361 = load ptr, ptr %12, align 8, !tbaa !100
  %362 = getelementptr inbounds i8, ptr %361, i64 1
  %363 = load ptr, ptr %10, align 8, !tbaa !99
  %364 = icmp ugt ptr %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %360
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %366 = load ptr, ptr %12, align 8, !tbaa !100
  br label %367

367:                                              ; preds = %360, %365
  %368 = phi ptr [ %361, %360 ], [ %366, %365 ]
  %369 = getelementptr inbounds i8, ptr %368, i64 1
  store ptr %369, ptr %12, align 8, !tbaa !100
  store i8 0, ptr %368, align 1, !tbaa !85
  %370 = icmp ult i32 %201, 60
  br i1 %370, label %372, label %371

371:                                              ; preds = %367
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #17
  br label %372

372:                                              ; preds = %367, %371
  %373 = load ptr, ptr %12, align 8, !tbaa !100
  %374 = load ptr, ptr %25, align 8, !tbaa !101
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
  store i64 %381, ptr %9, align 8, !tbaa !98
  %382 = ptrtoint ptr %373 to i64
  %383 = load i32, ptr %35, align 8, !tbaa !102
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %382
  %386 = xor i32 %383, -1
  %387 = sext i32 %386 to i64
  %388 = and i64 %385, %387
  %389 = inttoptr i64 %388 to ptr
  %390 = load ptr, ptr %43, align 8, !tbaa !103
  %391 = ptrtoint ptr %390 to i64
  %392 = sub i64 %388, %391
  %393 = load ptr, ptr %10, align 8, !tbaa !99
  %394 = ptrtoint ptr %393 to i64
  %395 = sub i64 %394, %391
  %396 = icmp sgt i64 %392, %395
  %397 = select i1 %396, ptr %393, ptr %389
  store ptr %397, ptr %12, align 8
  store ptr %397, ptr %25, align 8, !tbaa !101
  %398 = add i32 %64, 2
  store ptr %374, ptr %244, align 8, !tbaa !115
  %399 = load i8, ptr %357, align 1, !tbaa !85
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %401, label %60, !prof !121, !llvm.loop !112

401:                                              ; preds = %380, %355, %101, %67, %52
  %402 = phi i32 [ 0, %52 ], [ %64, %67 ], [ %64, %101 ], [ %398, %380 ], [ %201, %355 ]
  %403 = load ptr, ptr %12, align 8, !tbaa !100
  %404 = getelementptr inbounds i8, ptr %403, i64 1
  %405 = load ptr, ptr %10, align 8, !tbaa !99
  %406 = icmp ugt ptr %404, %405
  br i1 %406, label %407, label %409, !prof !84

407:                                              ; preds = %401
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %408 = load ptr, ptr %12, align 8, !tbaa !100
  br label %409

409:                                              ; preds = %401, %407
  %410 = phi ptr [ %403, %401 ], [ %408, %407 ]
  %411 = getelementptr inbounds i8, ptr %410, i64 1
  store ptr %411, ptr %12, align 8, !tbaa !100
  store i8 0, ptr %410, align 1, !tbaa !85
  %412 = icmp ult i32 %402, 60
  br i1 %412, label %414, label %413, !prof !89

413:                                              ; preds = %409
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 366, ptr noundef nonnull @.str.1) #17
  br label %414

414:                                              ; preds = %409, %413
  %415 = load ptr, ptr %12, align 8, !tbaa !100
  %416 = load ptr, ptr %25, align 8, !tbaa !101
  %417 = icmp eq ptr %415, %416
  br i1 %417, label %418, label %422, !prof !84

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %420 = load i8, ptr %419, align 8
  %421 = or i8 %420, 2
  store i8 %421, ptr %419, align 8
  br label %422

422:                                              ; preds = %414, %418
  %423 = ptrtoint ptr %416 to i64
  store i64 %423, ptr %9, align 8, !tbaa !98
  %424 = ptrtoint ptr %415 to i64
  %425 = load i32, ptr %35, align 8, !tbaa !102
  %426 = sext i32 %425 to i64
  %427 = add nsw i64 %426, %424
  %428 = xor i32 %425, -1
  %429 = sext i32 %428 to i64
  %430 = and i64 %427, %429
  %431 = inttoptr i64 %430 to ptr
  %432 = load ptr, ptr %43, align 8, !tbaa !103
  %433 = ptrtoint ptr %432 to i64
  %434 = sub i64 %430, %433
  %435 = load ptr, ptr %10, align 8, !tbaa !99
  %436 = ptrtoint ptr %435 to i64
  %437 = sub i64 %436, %433
  %438 = icmp sgt i64 %434, %437
  %439 = select i1 %438, ptr %435, ptr %431, !prof !84
  store ptr %439, ptr %12, align 8
  store ptr %439, ptr %25, align 8, !tbaa !101
  %440 = add i32 %402, 1
  %441 = zext i32 %402 to i64
  %442 = getelementptr inbounds ptr, ptr %56, i64 %441
  store ptr %416, ptr %442, align 8, !tbaa !115
  %443 = zext i32 %440 to i64
  %444 = getelementptr inbounds ptr, ptr %56, i64 %443
  store ptr null, ptr %444, align 8, !tbaa !115
  %445 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 2
  store ptr %8, ptr %445, align 8, !tbaa !81
  %446 = tail call fastcc i64 @pp_set_verbatim_wrapping_(ptr noundef %0) #16
  %447 = load ptr, ptr %3, align 16, !tbaa !115
  %448 = icmp eq ptr %447, null
  br i1 %448, label %1115, label %449, !prof !109

449:                                              ; preds = %422, %1089
  %450 = phi ptr [ %1113, %1089 ], [ %447, %422 ]
  %451 = phi i32 [ %1110, %1089 ], [ 0, %422 ]
  %452 = load ptr, ptr %450, align 8, !tbaa !115
  br label %453

453:                                              ; preds = %478, %449
  %454 = phi i32 [ 0, %449 ], [ %479, %478 ]
  %455 = phi i8 [ 0, %449 ], [ %480, %478 ]
  %456 = phi i8 [ 0, %449 ], [ %481, %478 ]
  %457 = phi i8 [ 0, %449 ], [ %482, %478 ]
  %458 = phi i8 [ 0, %449 ], [ %483, %478 ]
  %459 = phi ptr [ %452, %449 ], [ %484, %478 ]
  %460 = load i8, ptr %459, align 1, !tbaa !85
  switch i8 %460, label %485 [
    i8 113, label %461
    i8 43, label %464
    i8 35, label %467
    i8 119, label %470
    i8 108, label %473
  ], !prof !122

461:                                              ; preds = %453
  %462 = icmp eq i8 %458, 0
  br i1 %462, label %478, label %463, !prof !89

463:                                              ; preds = %461
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #17
  br label %478

464:                                              ; preds = %453
  %465 = icmp eq i8 %456, 0
  br i1 %465, label %478, label %466, !prof !89

466:                                              ; preds = %464
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.1) #17
  br label %478

467:                                              ; preds = %453
  %468 = icmp eq i8 %457, 0
  br i1 %468, label %478, label %469

469:                                              ; preds = %467
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.1) #17
  br label %478

470:                                              ; preds = %453
  %471 = icmp eq i8 %455, 0
  br i1 %471, label %478, label %472

472:                                              ; preds = %470
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 409, ptr noundef nonnull @.str.1) #17
  br label %478

473:                                              ; preds = %453
  %474 = icmp slt i32 %454, 2
  br i1 %474, label %476, label %475

475:                                              ; preds = %473
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 415, ptr noundef nonnull @.str.1) #17
  br label %476

476:                                              ; preds = %473, %475
  %477 = add nsw i32 %454, 1
  br label %478

478:                                              ; preds = %472, %470, %469, %467, %466, %464, %463, %461, %476
  %479 = phi i32 [ %477, %476 ], [ %454, %461 ], [ %454, %463 ], [ %454, %464 ], [ %454, %466 ], [ %454, %467 ], [ %454, %469 ], [ %454, %470 ], [ %454, %472 ]
  %480 = phi i8 [ %455, %476 ], [ %455, %461 ], [ %455, %463 ], [ %455, %464 ], [ %455, %466 ], [ %455, %467 ], [ %455, %469 ], [ 1, %470 ], [ 1, %472 ]
  %481 = phi i8 [ %456, %476 ], [ %456, %461 ], [ %456, %463 ], [ 1, %464 ], [ 1, %466 ], [ %456, %467 ], [ %456, %469 ], [ %456, %470 ], [ %456, %472 ]
  %482 = phi i8 [ %457, %476 ], [ %457, %461 ], [ %457, %463 ], [ %457, %464 ], [ %457, %466 ], [ 1, %467 ], [ 1, %469 ], [ %457, %470 ], [ %457, %472 ]
  %483 = phi i8 [ %458, %476 ], [ 1, %461 ], [ 1, %463 ], [ %458, %464 ], [ %458, %466 ], [ %458, %467 ], [ %458, %469 ], [ %458, %470 ], [ %458, %472 ]
  %484 = getelementptr inbounds i8, ptr %459, i64 1
  br label %453

485:                                              ; preds = %453
  %486 = icmp eq i8 %455, 0
  %487 = icmp eq i32 %454, 0
  %488 = select i1 %486, i1 true, i1 %487
  br i1 %488, label %490, label %489, !prof !123

489:                                              ; preds = %485
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 422, ptr noundef nonnull @.str.1) #17
  br label %490

490:                                              ; preds = %485, %489
  %491 = icmp eq i8 %458, 0
  br i1 %491, label %494, label %492, !prof !84

492:                                              ; preds = %490
  %493 = load ptr, ptr @open_quote, align 8, !tbaa !115
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %493) #16
  br label %494

494:                                              ; preds = %492, %490
  %495 = load i8, ptr %459, align 1, !tbaa !85
  switch i8 %495, label %1057 [
    i8 99, label %496
    i8 100, label %514
    i8 105, label %514
    i8 111, label %605
    i8 115, label %696
    i8 112, label %714
    i8 117, label %737
    i8 120, label %828
    i8 75, label %919
    i8 46, label %988
  ], !prof !124

496:                                              ; preds = %494
  %497 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %498 = load ptr, ptr %497, align 8, !tbaa !125
  %499 = load i32, ptr %498, align 8
  %500 = icmp ult i32 %499, 41
  br i1 %500, label %501, label %507

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.__va_list_tag, ptr %498, i64 0, i32 3
  %503 = load ptr, ptr %502, align 8
  %504 = zext nneg i32 %499 to i64
  %505 = getelementptr i8, ptr %503, i64 %504
  %506 = add nuw nsw i32 %499, 8
  store i32 %506, ptr %498, align 8
  br label %511

507:                                              ; preds = %496
  %508 = getelementptr inbounds %struct.__va_list_tag, ptr %498, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8
  %510 = getelementptr i8, ptr %509, i64 8
  store ptr %510, ptr %508, align 8
  br label %511

511:                                              ; preds = %507, %501
  %512 = phi ptr [ %505, %501 ], [ %509, %507 ]
  %513 = load i32, ptr %512, align 4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %513) #16
  br label %1068

514:                                              ; preds = %494, %494
  %515 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  br i1 %486, label %538, label %516

516:                                              ; preds = %514
  %517 = load ptr, ptr %0, align 8, !tbaa !70
  %518 = getelementptr inbounds %struct.output_buffer, ptr %517, i64 0, i32 6
  %519 = load ptr, ptr %515, align 8, !tbaa !125
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
  %536 = load ptr, ptr %0, align 8, !tbaa !70
  %537 = getelementptr inbounds %struct.output_buffer, ptr %536, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %537) #16
  br label %1068

538:                                              ; preds = %514
  switch i32 %454, label %1068 [
    i32 0, label %539
    i32 1, label %561
    i32 2, label %583
  ]

539:                                              ; preds = %538
  %540 = load ptr, ptr %0, align 8, !tbaa !70
  %541 = getelementptr inbounds %struct.output_buffer, ptr %540, i64 0, i32 6
  %542 = load ptr, ptr %515, align 8, !tbaa !125
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
  %559 = load ptr, ptr %0, align 8, !tbaa !70
  %560 = getelementptr inbounds %struct.output_buffer, ptr %559, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %560) #16
  br label %1068

561:                                              ; preds = %538
  %562 = load ptr, ptr %0, align 8, !tbaa !70
  %563 = getelementptr inbounds %struct.output_buffer, ptr %562, i64 0, i32 6
  %564 = load ptr, ptr %515, align 8, !tbaa !125
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
  %581 = load ptr, ptr %0, align 8, !tbaa !70
  %582 = getelementptr inbounds %struct.output_buffer, ptr %581, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %582) #16
  br label %1068

583:                                              ; preds = %538
  %584 = load ptr, ptr %0, align 8, !tbaa !70
  %585 = getelementptr inbounds %struct.output_buffer, ptr %584, i64 0, i32 6
  %586 = load ptr, ptr %515, align 8, !tbaa !125
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
  %603 = load ptr, ptr %0, align 8, !tbaa !70
  %604 = getelementptr inbounds %struct.output_buffer, ptr %603, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %604) #16
  br label %1068

605:                                              ; preds = %494
  %606 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  br i1 %486, label %629, label %607

607:                                              ; preds = %605
  %608 = load ptr, ptr %0, align 8, !tbaa !70
  %609 = getelementptr inbounds %struct.output_buffer, ptr %608, i64 0, i32 6
  %610 = load ptr, ptr %606, align 8, !tbaa !125
  %611 = load i32, ptr %610, align 8
  %612 = icmp ult i32 %611, 41
  br i1 %612, label %613, label %619

613:                                              ; preds = %607
  %614 = getelementptr inbounds %struct.__va_list_tag, ptr %610, i64 0, i32 3
  %615 = load ptr, ptr %614, align 8
  %616 = zext nneg i32 %611 to i64
  %617 = getelementptr i8, ptr %615, i64 %616
  %618 = add nuw nsw i32 %611, 8
  store i32 %618, ptr %610, align 8
  br label %623

619:                                              ; preds = %607
  %620 = getelementptr inbounds %struct.__va_list_tag, ptr %610, i64 0, i32 2
  %621 = load ptr, ptr %620, align 8
  %622 = getelementptr i8, ptr %621, i64 8
  store ptr %622, ptr %620, align 8
  br label %623

623:                                              ; preds = %619, %613
  %624 = phi ptr [ %617, %613 ], [ %621, %619 ]
  %625 = load i64, ptr %624, align 8
  %626 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %609, ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %625) #16
  %627 = load ptr, ptr %0, align 8, !tbaa !70
  %628 = getelementptr inbounds %struct.output_buffer, ptr %627, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %628) #16
  br label %1068

629:                                              ; preds = %605
  switch i32 %454, label %1068 [
    i32 0, label %630
    i32 1, label %652
    i32 2, label %674
  ]

630:                                              ; preds = %629
  %631 = load ptr, ptr %0, align 8, !tbaa !70
  %632 = getelementptr inbounds %struct.output_buffer, ptr %631, i64 0, i32 6
  %633 = load ptr, ptr %606, align 8, !tbaa !125
  %634 = load i32, ptr %633, align 8
  %635 = icmp ult i32 %634, 41
  br i1 %635, label %636, label %642

636:                                              ; preds = %630
  %637 = getelementptr inbounds %struct.__va_list_tag, ptr %633, i64 0, i32 3
  %638 = load ptr, ptr %637, align 8
  %639 = zext nneg i32 %634 to i64
  %640 = getelementptr i8, ptr %638, i64 %639
  %641 = add nuw nsw i32 %634, 8
  store i32 %641, ptr %633, align 8
  br label %646

642:                                              ; preds = %630
  %643 = getelementptr inbounds %struct.__va_list_tag, ptr %633, i64 0, i32 2
  %644 = load ptr, ptr %643, align 8
  %645 = getelementptr i8, ptr %644, i64 8
  store ptr %645, ptr %643, align 8
  br label %646

646:                                              ; preds = %642, %636
  %647 = phi ptr [ %640, %636 ], [ %644, %642 ]
  %648 = load i32, ptr %647, align 4
  %649 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %632, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %648) #16
  %650 = load ptr, ptr %0, align 8, !tbaa !70
  %651 = getelementptr inbounds %struct.output_buffer, ptr %650, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %651) #16
  br label %1068

652:                                              ; preds = %629
  %653 = load ptr, ptr %0, align 8, !tbaa !70
  %654 = getelementptr inbounds %struct.output_buffer, ptr %653, i64 0, i32 6
  %655 = load ptr, ptr %606, align 8, !tbaa !125
  %656 = load i32, ptr %655, align 8
  %657 = icmp ult i32 %656, 41
  br i1 %657, label %658, label %664

658:                                              ; preds = %652
  %659 = getelementptr inbounds %struct.__va_list_tag, ptr %655, i64 0, i32 3
  %660 = load ptr, ptr %659, align 8
  %661 = zext nneg i32 %656 to i64
  %662 = getelementptr i8, ptr %660, i64 %661
  %663 = add nuw nsw i32 %656, 8
  store i32 %663, ptr %655, align 8
  br label %668

664:                                              ; preds = %652
  %665 = getelementptr inbounds %struct.__va_list_tag, ptr %655, i64 0, i32 2
  %666 = load ptr, ptr %665, align 8
  %667 = getelementptr i8, ptr %666, i64 8
  store ptr %667, ptr %665, align 8
  br label %668

668:                                              ; preds = %664, %658
  %669 = phi ptr [ %662, %658 ], [ %666, %664 ]
  %670 = load i64, ptr %669, align 8
  %671 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %654, ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %670) #16
  %672 = load ptr, ptr %0, align 8, !tbaa !70
  %673 = getelementptr inbounds %struct.output_buffer, ptr %672, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %673) #16
  br label %1068

674:                                              ; preds = %629
  %675 = load ptr, ptr %0, align 8, !tbaa !70
  %676 = getelementptr inbounds %struct.output_buffer, ptr %675, i64 0, i32 6
  %677 = load ptr, ptr %606, align 8, !tbaa !125
  %678 = load i32, ptr %677, align 8
  %679 = icmp ult i32 %678, 41
  br i1 %679, label %680, label %686

680:                                              ; preds = %674
  %681 = getelementptr inbounds %struct.__va_list_tag, ptr %677, i64 0, i32 3
  %682 = load ptr, ptr %681, align 8
  %683 = zext nneg i32 %678 to i64
  %684 = getelementptr i8, ptr %682, i64 %683
  %685 = add nuw nsw i32 %678, 8
  store i32 %685, ptr %677, align 8
  br label %690

686:                                              ; preds = %674
  %687 = getelementptr inbounds %struct.__va_list_tag, ptr %677, i64 0, i32 2
  %688 = load ptr, ptr %687, align 8
  %689 = getelementptr i8, ptr %688, i64 8
  store ptr %689, ptr %687, align 8
  br label %690

690:                                              ; preds = %686, %680
  %691 = phi ptr [ %684, %680 ], [ %688, %686 ]
  %692 = load i64, ptr %691, align 8
  %693 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %676, ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %692) #16
  %694 = load ptr, ptr %0, align 8, !tbaa !70
  %695 = getelementptr inbounds %struct.output_buffer, ptr %694, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %695) #16
  br label %1068

696:                                              ; preds = %494
  %697 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !125
  %699 = load i32, ptr %698, align 8
  %700 = icmp ult i32 %699, 41
  br i1 %700, label %701, label %707

701:                                              ; preds = %696
  %702 = getelementptr inbounds %struct.__va_list_tag, ptr %698, i64 0, i32 3
  %703 = load ptr, ptr %702, align 8
  %704 = zext nneg i32 %699 to i64
  %705 = getelementptr i8, ptr %703, i64 %704
  %706 = add nuw nsw i32 %699, 8
  store i32 %706, ptr %698, align 8
  br label %711

707:                                              ; preds = %696
  %708 = getelementptr inbounds %struct.__va_list_tag, ptr %698, i64 0, i32 2
  %709 = load ptr, ptr %708, align 8
  %710 = getelementptr i8, ptr %709, i64 8
  store ptr %710, ptr %708, align 8
  br label %711

711:                                              ; preds = %707, %701
  %712 = phi ptr [ %705, %701 ], [ %709, %707 ]
  %713 = load ptr, ptr %712, align 8
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %713) #16
  br label %1068

714:                                              ; preds = %494
  %715 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %716 = load ptr, ptr %0, align 8, !tbaa !70
  %717 = getelementptr inbounds %struct.output_buffer, ptr %716, i64 0, i32 6
  %718 = load ptr, ptr %715, align 8, !tbaa !125
  %719 = load i32, ptr %718, align 8
  %720 = icmp ult i32 %719, 41
  br i1 %720, label %721, label %727

721:                                              ; preds = %714
  %722 = getelementptr inbounds %struct.__va_list_tag, ptr %718, i64 0, i32 3
  %723 = load ptr, ptr %722, align 8
  %724 = zext nneg i32 %719 to i64
  %725 = getelementptr i8, ptr %723, i64 %724
  %726 = add nuw nsw i32 %719, 8
  store i32 %726, ptr %718, align 8
  br label %731

727:                                              ; preds = %714
  %728 = getelementptr inbounds %struct.__va_list_tag, ptr %718, i64 0, i32 2
  %729 = load ptr, ptr %728, align 8
  %730 = getelementptr i8, ptr %729, i64 8
  store ptr %730, ptr %728, align 8
  br label %731

731:                                              ; preds = %727, %721
  %732 = phi ptr [ %725, %721 ], [ %729, %727 ]
  %733 = load ptr, ptr %732, align 8
  %734 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %717, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %733) #16
  %735 = load ptr, ptr %0, align 8, !tbaa !70
  %736 = getelementptr inbounds %struct.output_buffer, ptr %735, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %736) #16
  br label %1068

737:                                              ; preds = %494
  %738 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  br i1 %486, label %761, label %739

739:                                              ; preds = %737
  %740 = load ptr, ptr %0, align 8, !tbaa !70
  %741 = getelementptr inbounds %struct.output_buffer, ptr %740, i64 0, i32 6
  %742 = load ptr, ptr %738, align 8, !tbaa !125
  %743 = load i32, ptr %742, align 8
  %744 = icmp ult i32 %743, 41
  br i1 %744, label %745, label %751

745:                                              ; preds = %739
  %746 = getelementptr inbounds %struct.__va_list_tag, ptr %742, i64 0, i32 3
  %747 = load ptr, ptr %746, align 8
  %748 = zext nneg i32 %743 to i64
  %749 = getelementptr i8, ptr %747, i64 %748
  %750 = add nuw nsw i32 %743, 8
  store i32 %750, ptr %742, align 8
  br label %755

751:                                              ; preds = %739
  %752 = getelementptr inbounds %struct.__va_list_tag, ptr %742, i64 0, i32 2
  %753 = load ptr, ptr %752, align 8
  %754 = getelementptr i8, ptr %753, i64 8
  store ptr %754, ptr %752, align 8
  br label %755

755:                                              ; preds = %751, %745
  %756 = phi ptr [ %749, %745 ], [ %753, %751 ]
  %757 = load i64, ptr %756, align 8
  %758 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %741, ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %757) #16
  %759 = load ptr, ptr %0, align 8, !tbaa !70
  %760 = getelementptr inbounds %struct.output_buffer, ptr %759, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %760) #16
  br label %1068

761:                                              ; preds = %737
  switch i32 %454, label %1068 [
    i32 0, label %762
    i32 1, label %784
    i32 2, label %806
  ]

762:                                              ; preds = %761
  %763 = load ptr, ptr %0, align 8, !tbaa !70
  %764 = getelementptr inbounds %struct.output_buffer, ptr %763, i64 0, i32 6
  %765 = load ptr, ptr %738, align 8, !tbaa !125
  %766 = load i32, ptr %765, align 8
  %767 = icmp ult i32 %766, 41
  br i1 %767, label %768, label %774

768:                                              ; preds = %762
  %769 = getelementptr inbounds %struct.__va_list_tag, ptr %765, i64 0, i32 3
  %770 = load ptr, ptr %769, align 8
  %771 = zext nneg i32 %766 to i64
  %772 = getelementptr i8, ptr %770, i64 %771
  %773 = add nuw nsw i32 %766, 8
  store i32 %773, ptr %765, align 8
  br label %778

774:                                              ; preds = %762
  %775 = getelementptr inbounds %struct.__va_list_tag, ptr %765, i64 0, i32 2
  %776 = load ptr, ptr %775, align 8
  %777 = getelementptr i8, ptr %776, i64 8
  store ptr %777, ptr %775, align 8
  br label %778

778:                                              ; preds = %774, %768
  %779 = phi ptr [ %772, %768 ], [ %776, %774 ]
  %780 = load i32, ptr %779, align 4
  %781 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %764, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %780) #16
  %782 = load ptr, ptr %0, align 8, !tbaa !70
  %783 = getelementptr inbounds %struct.output_buffer, ptr %782, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %783) #16
  br label %1068

784:                                              ; preds = %761
  %785 = load ptr, ptr %0, align 8, !tbaa !70
  %786 = getelementptr inbounds %struct.output_buffer, ptr %785, i64 0, i32 6
  %787 = load ptr, ptr %738, align 8, !tbaa !125
  %788 = load i32, ptr %787, align 8
  %789 = icmp ult i32 %788, 41
  br i1 %789, label %790, label %796

790:                                              ; preds = %784
  %791 = getelementptr inbounds %struct.__va_list_tag, ptr %787, i64 0, i32 3
  %792 = load ptr, ptr %791, align 8
  %793 = zext nneg i32 %788 to i64
  %794 = getelementptr i8, ptr %792, i64 %793
  %795 = add nuw nsw i32 %788, 8
  store i32 %795, ptr %787, align 8
  br label %800

796:                                              ; preds = %784
  %797 = getelementptr inbounds %struct.__va_list_tag, ptr %787, i64 0, i32 2
  %798 = load ptr, ptr %797, align 8
  %799 = getelementptr i8, ptr %798, i64 8
  store ptr %799, ptr %797, align 8
  br label %800

800:                                              ; preds = %796, %790
  %801 = phi ptr [ %794, %790 ], [ %798, %796 ]
  %802 = load i64, ptr %801, align 8
  %803 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %786, ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %802) #16
  %804 = load ptr, ptr %0, align 8, !tbaa !70
  %805 = getelementptr inbounds %struct.output_buffer, ptr %804, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %805) #16
  br label %1068

806:                                              ; preds = %761
  %807 = load ptr, ptr %0, align 8, !tbaa !70
  %808 = getelementptr inbounds %struct.output_buffer, ptr %807, i64 0, i32 6
  %809 = load ptr, ptr %738, align 8, !tbaa !125
  %810 = load i32, ptr %809, align 8
  %811 = icmp ult i32 %810, 41
  br i1 %811, label %812, label %818

812:                                              ; preds = %806
  %813 = getelementptr inbounds %struct.__va_list_tag, ptr %809, i64 0, i32 3
  %814 = load ptr, ptr %813, align 8
  %815 = zext nneg i32 %810 to i64
  %816 = getelementptr i8, ptr %814, i64 %815
  %817 = add nuw nsw i32 %810, 8
  store i32 %817, ptr %809, align 8
  br label %822

818:                                              ; preds = %806
  %819 = getelementptr inbounds %struct.__va_list_tag, ptr %809, i64 0, i32 2
  %820 = load ptr, ptr %819, align 8
  %821 = getelementptr i8, ptr %820, i64 8
  store ptr %821, ptr %819, align 8
  br label %822

822:                                              ; preds = %818, %812
  %823 = phi ptr [ %816, %812 ], [ %820, %818 ]
  %824 = load i64, ptr %823, align 8
  %825 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %808, ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %824) #16
  %826 = load ptr, ptr %0, align 8, !tbaa !70
  %827 = getelementptr inbounds %struct.output_buffer, ptr %826, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %827) #16
  br label %1068

828:                                              ; preds = %494
  %829 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  br i1 %486, label %852, label %830

830:                                              ; preds = %828
  %831 = load ptr, ptr %0, align 8, !tbaa !70
  %832 = getelementptr inbounds %struct.output_buffer, ptr %831, i64 0, i32 6
  %833 = load ptr, ptr %829, align 8, !tbaa !125
  %834 = load i32, ptr %833, align 8
  %835 = icmp ult i32 %834, 41
  br i1 %835, label %836, label %842

836:                                              ; preds = %830
  %837 = getelementptr inbounds %struct.__va_list_tag, ptr %833, i64 0, i32 3
  %838 = load ptr, ptr %837, align 8
  %839 = zext nneg i32 %834 to i64
  %840 = getelementptr i8, ptr %838, i64 %839
  %841 = add nuw nsw i32 %834, 8
  store i32 %841, ptr %833, align 8
  br label %846

842:                                              ; preds = %830
  %843 = getelementptr inbounds %struct.__va_list_tag, ptr %833, i64 0, i32 2
  %844 = load ptr, ptr %843, align 8
  %845 = getelementptr i8, ptr %844, i64 8
  store ptr %845, ptr %843, align 8
  br label %846

846:                                              ; preds = %842, %836
  %847 = phi ptr [ %840, %836 ], [ %844, %842 ]
  %848 = load i64, ptr %847, align 8
  %849 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %832, ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %848) #16
  %850 = load ptr, ptr %0, align 8, !tbaa !70
  %851 = getelementptr inbounds %struct.output_buffer, ptr %850, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %851) #16
  br label %1068

852:                                              ; preds = %828
  switch i32 %454, label %1068 [
    i32 0, label %853
    i32 1, label %875
    i32 2, label %897
  ]

853:                                              ; preds = %852
  %854 = load ptr, ptr %0, align 8, !tbaa !70
  %855 = getelementptr inbounds %struct.output_buffer, ptr %854, i64 0, i32 6
  %856 = load ptr, ptr %829, align 8, !tbaa !125
  %857 = load i32, ptr %856, align 8
  %858 = icmp ult i32 %857, 41
  br i1 %858, label %859, label %865

859:                                              ; preds = %853
  %860 = getelementptr inbounds %struct.__va_list_tag, ptr %856, i64 0, i32 3
  %861 = load ptr, ptr %860, align 8
  %862 = zext nneg i32 %857 to i64
  %863 = getelementptr i8, ptr %861, i64 %862
  %864 = add nuw nsw i32 %857, 8
  store i32 %864, ptr %856, align 8
  br label %869

865:                                              ; preds = %853
  %866 = getelementptr inbounds %struct.__va_list_tag, ptr %856, i64 0, i32 2
  %867 = load ptr, ptr %866, align 8
  %868 = getelementptr i8, ptr %867, i64 8
  store ptr %868, ptr %866, align 8
  br label %869

869:                                              ; preds = %865, %859
  %870 = phi ptr [ %863, %859 ], [ %867, %865 ]
  %871 = load i32, ptr %870, align 4
  %872 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %855, ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %871) #16
  %873 = load ptr, ptr %0, align 8, !tbaa !70
  %874 = getelementptr inbounds %struct.output_buffer, ptr %873, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %874) #16
  br label %1068

875:                                              ; preds = %852
  %876 = load ptr, ptr %0, align 8, !tbaa !70
  %877 = getelementptr inbounds %struct.output_buffer, ptr %876, i64 0, i32 6
  %878 = load ptr, ptr %829, align 8, !tbaa !125
  %879 = load i32, ptr %878, align 8
  %880 = icmp ult i32 %879, 41
  br i1 %880, label %881, label %887

881:                                              ; preds = %875
  %882 = getelementptr inbounds %struct.__va_list_tag, ptr %878, i64 0, i32 3
  %883 = load ptr, ptr %882, align 8
  %884 = zext nneg i32 %879 to i64
  %885 = getelementptr i8, ptr %883, i64 %884
  %886 = add nuw nsw i32 %879, 8
  store i32 %886, ptr %878, align 8
  br label %891

887:                                              ; preds = %875
  %888 = getelementptr inbounds %struct.__va_list_tag, ptr %878, i64 0, i32 2
  %889 = load ptr, ptr %888, align 8
  %890 = getelementptr i8, ptr %889, i64 8
  store ptr %890, ptr %888, align 8
  br label %891

891:                                              ; preds = %887, %881
  %892 = phi ptr [ %885, %881 ], [ %889, %887 ]
  %893 = load i64, ptr %892, align 8
  %894 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %877, ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %893) #16
  %895 = load ptr, ptr %0, align 8, !tbaa !70
  %896 = getelementptr inbounds %struct.output_buffer, ptr %895, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %896) #16
  br label %1068

897:                                              ; preds = %852
  %898 = load ptr, ptr %0, align 8, !tbaa !70
  %899 = getelementptr inbounds %struct.output_buffer, ptr %898, i64 0, i32 6
  %900 = load ptr, ptr %829, align 8, !tbaa !125
  %901 = load i32, ptr %900, align 8
  %902 = icmp ult i32 %901, 41
  br i1 %902, label %903, label %909

903:                                              ; preds = %897
  %904 = getelementptr inbounds %struct.__va_list_tag, ptr %900, i64 0, i32 3
  %905 = load ptr, ptr %904, align 8
  %906 = zext nneg i32 %901 to i64
  %907 = getelementptr i8, ptr %905, i64 %906
  %908 = add nuw nsw i32 %901, 8
  store i32 %908, ptr %900, align 8
  br label %913

909:                                              ; preds = %897
  %910 = getelementptr inbounds %struct.__va_list_tag, ptr %900, i64 0, i32 2
  %911 = load ptr, ptr %910, align 8
  %912 = getelementptr i8, ptr %911, i64 8
  store ptr %912, ptr %910, align 8
  br label %913

913:                                              ; preds = %909, %903
  %914 = phi ptr [ %907, %903 ], [ %911, %909 ]
  %915 = load i64, ptr %914, align 8
  %916 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %899, ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %915) #16
  %917 = load ptr, ptr %0, align 8, !tbaa !70
  %918 = getelementptr inbounds %struct.output_buffer, ptr %917, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %918) #16
  br label %1068

919:                                              ; preds = %494
  %920 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %921 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  %922 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 4
  %923 = load ptr, ptr %920, align 8, !tbaa !125
  %924 = load i32, ptr %923, align 8
  %925 = icmp ult i32 %924, 41
  br i1 %925, label %926, label %932

926:                                              ; preds = %919
  %927 = getelementptr inbounds %struct.__va_list_tag, ptr %923, i64 0, i32 3
  %928 = load ptr, ptr %927, align 8
  %929 = zext nneg i32 %924 to i64
  %930 = getelementptr i8, ptr %928, i64 %929
  %931 = add nuw nsw i32 %924, 8
  store i32 %931, ptr %923, align 8
  br label %936

932:                                              ; preds = %919
  %933 = getelementptr inbounds %struct.__va_list_tag, ptr %923, i64 0, i32 2
  %934 = load ptr, ptr %933, align 8
  %935 = getelementptr i8, ptr %934, i64 8
  store ptr %935, ptr %933, align 8
  br label %936

936:                                              ; preds = %932, %926
  %937 = phi ptr [ %930, %926 ], [ %934, %932 ]
  %938 = load ptr, ptr %937, align 8
  %939 = load ptr, ptr %921, align 8, !tbaa !126
  %940 = icmp eq ptr %939, null
  br i1 %940, label %941, label %942

941:                                              ; preds = %936
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 480, ptr noundef nonnull @.str.1) #17
  br label %942

942:                                              ; preds = %936, %941
  %943 = load i64, ptr %938, align 8
  %944 = and i64 %943, 65535
  %945 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !127
  %947 = add i32 %946, -4
  %948 = icmp ult i32 %947, 7
  br i1 %948, label %949, label %952

949:                                              ; preds = %942
  %950 = getelementptr inbounds %struct.tree_exp, ptr %938, i64 0, i32 1
  %951 = load i32, ptr %950, align 8, !tbaa !85
  br label %952

952:                                              ; preds = %942, %949
  %953 = phi i32 [ %951, %949 ], [ 0, %942 ]
  %954 = load ptr, ptr %921, align 8, !tbaa !126
  store i32 %953, ptr %954, align 4, !tbaa !127
  %955 = load ptr, ptr %922, align 8, !tbaa !128
  %956 = icmp eq ptr %955, null
  br i1 %956, label %957, label %958

957:                                              ; preds = %952
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 482, ptr noundef nonnull @.str.1) #17
  br label %958

958:                                              ; preds = %952, %957
  %959 = tail call ptr @tree_block(ptr noundef nonnull %938) #17
  %960 = load ptr, ptr %959, align 8, !tbaa !115
  %961 = load ptr, ptr %922, align 8, !tbaa !128
  store ptr null, ptr %961, align 8, !tbaa !115
  %962 = icmp eq ptr %960, null
  br i1 %962, label %1068, label %963

963:                                              ; preds = %958, %984
  %964 = phi ptr [ %986, %984 ], [ %960, %958 ]
  %965 = load i64, ptr %964, align 8
  %966 = and i64 %965, 65535
  %967 = icmp eq i64 %966, 4
  br i1 %967, label %968, label %1068

968:                                              ; preds = %963
  %969 = getelementptr inbounds %struct.tree_block, ptr %964, i64 0, i32 7
  %970 = load ptr, ptr %969, align 8, !tbaa !85
  %971 = icmp eq ptr %970, null
  br i1 %971, label %1068, label %972

972:                                              ; preds = %968, %976
  %973 = phi ptr [ %978, %976 ], [ %970, %968 ]
  %974 = load i64, ptr %973, align 8
  %975 = trunc i64 %974 to i16
  switch i16 %975, label %984 [
    i16 4, label %976
    i16 29, label %982
  ]

976:                                              ; preds = %972
  %977 = getelementptr inbounds %struct.tree_block, ptr %973, i64 0, i32 7
  %978 = load ptr, ptr %977, align 8, !tbaa !85
  %979 = icmp eq ptr %978, null
  %980 = icmp eq ptr %978, %973
  %981 = or i1 %979, %980
  br i1 %981, label %984, label %972, !llvm.loop !129

982:                                              ; preds = %972
  %983 = load ptr, ptr %922, align 8, !tbaa !128
  store ptr %964, ptr %983, align 8, !tbaa !115
  br label %1068

984:                                              ; preds = %972, %976
  %985 = getelementptr inbounds %struct.tree_block, ptr %964, i64 0, i32 6
  %986 = load ptr, ptr %985, align 8, !tbaa !85
  %987 = icmp eq ptr %986, null
  br i1 %987, label %1068, label %963

988:                                              ; preds = %494
  %989 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %990 = getelementptr inbounds i8, ptr %459, i64 1
  %991 = load i8, ptr %990, align 1, !tbaa !85
  %992 = zext i8 %991 to i64
  %993 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %992
  %994 = load i16, ptr %993, align 2, !tbaa !96
  %995 = and i16 %994, 4
  %996 = icmp eq i16 %995, 0
  br i1 %996, label %1005, label %997

997:                                              ; preds = %988
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %998 = call i64 @strtoul(ptr noundef nonnull %990, ptr noundef nonnull %6, i32 noundef 10) #16
  %999 = trunc i64 %998 to i32
  %1000 = load ptr, ptr %6, align 8, !tbaa !115
  %1001 = load i8, ptr %1000, align 1, !tbaa !85
  %1002 = icmp eq i8 %1001, 115
  br i1 %1002, label %1004, label %1003

1003:                                             ; preds = %997
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.1) #17
  br label %1004

1004:                                             ; preds = %997, %1003
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %1036

1005:                                             ; preds = %988
  %1006 = icmp eq i8 %991, 42
  br i1 %1006, label %1008, label %1007

1007:                                             ; preds = %1005
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 524, ptr noundef nonnull @.str.1) #17
  br label %1008

1008:                                             ; preds = %1005, %1007
  %1009 = getelementptr inbounds i8, ptr %459, i64 2
  %1010 = load i8, ptr %1009, align 1, !tbaa !85
  %1011 = icmp eq i8 %1010, 115
  br i1 %1011, label %1013, label %1012

1012:                                             ; preds = %1008
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 526, ptr noundef nonnull @.str.1) #17
  br label %1013

1013:                                             ; preds = %1008, %1012
  %1014 = load ptr, ptr %989, align 8, !tbaa !125
  %1015 = load i32, ptr %1014, align 8
  %1016 = icmp ult i32 %1015, 41
  br i1 %1016, label %1017, label %1023

1017:                                             ; preds = %1013
  %1018 = getelementptr inbounds %struct.__va_list_tag, ptr %1014, i64 0, i32 3
  %1019 = load ptr, ptr %1018, align 8
  %1020 = zext nneg i32 %1015 to i64
  %1021 = getelementptr i8, ptr %1019, i64 %1020
  %1022 = add nuw nsw i32 %1015, 8
  store i32 %1022, ptr %1014, align 8
  br label %1027

1023:                                             ; preds = %1013
  %1024 = getelementptr inbounds %struct.__va_list_tag, ptr %1014, i64 0, i32 2
  %1025 = load ptr, ptr %1024, align 8
  %1026 = getelementptr i8, ptr %1025, i64 8
  store ptr %1026, ptr %1024, align 8
  br label %1027

1027:                                             ; preds = %1023, %1017
  %1028 = phi ptr [ %1021, %1017 ], [ %1025, %1023 ]
  %1029 = load i32, ptr %1028, align 4
  %1030 = add i32 %451, 1
  %1031 = zext i32 %1030 to i64
  %1032 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1031
  %1033 = load ptr, ptr %1032, align 8, !tbaa !115
  %1034 = icmp eq ptr %450, %1033
  br i1 %1034, label %1036, label %1035

1035:                                             ; preds = %1027
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 530, ptr noundef nonnull @.str.1) #17
  br label %1036

1036:                                             ; preds = %1035, %1027, %1004
  %1037 = phi i32 [ %451, %1004 ], [ %1030, %1027 ], [ %1030, %1035 ]
  %1038 = phi i32 [ %999, %1004 ], [ %1029, %1027 ], [ %1029, %1035 ]
  %1039 = load ptr, ptr %989, align 8, !tbaa !125
  %1040 = load i32, ptr %1039, align 8
  %1041 = icmp ult i32 %1040, 41
  br i1 %1041, label %1042, label %1048

1042:                                             ; preds = %1036
  %1043 = getelementptr inbounds %struct.__va_list_tag, ptr %1039, i64 0, i32 3
  %1044 = load ptr, ptr %1043, align 8
  %1045 = zext nneg i32 %1040 to i64
  %1046 = getelementptr i8, ptr %1044, i64 %1045
  %1047 = add nuw nsw i32 %1040, 8
  store i32 %1047, ptr %1039, align 8
  br label %1052

1048:                                             ; preds = %1036
  %1049 = getelementptr inbounds %struct.__va_list_tag, ptr %1039, i64 0, i32 2
  %1050 = load ptr, ptr %1049, align 8
  %1051 = getelementptr i8, ptr %1050, i64 8
  store ptr %1051, ptr %1049, align 8
  br label %1052

1052:                                             ; preds = %1048, %1042
  %1053 = phi ptr [ %1046, %1042 ], [ %1050, %1048 ]
  %1054 = load ptr, ptr %1053, align 8
  %1055 = sext i32 %1038 to i64
  %1056 = getelementptr inbounds i8, ptr %1054, i64 %1055
  tail call void @pp_base_append_text(ptr noundef %0, ptr noundef %1054, ptr noundef %1056) #16
  br label %1068

1057:                                             ; preds = %494
  %1058 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 6
  %1059 = load ptr, ptr %1058, align 8, !tbaa !130
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1061, label %1063, !prof !84

1061:                                             ; preds = %1057
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 543, ptr noundef nonnull @.str.1) #17
  %1062 = load ptr, ptr %1058, align 8, !tbaa !130
  br label %1063

1063:                                             ; preds = %1057, %1061
  %1064 = phi ptr [ %1059, %1057 ], [ %1062, %1061 ]
  %1065 = tail call zeroext i8 %1064(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %459, i32 noundef %454, i8 noundef zeroext %455, i8 noundef zeroext %456, i8 noundef zeroext %457) #17
  %1066 = icmp eq i8 %1065, 0
  br i1 %1066, label %1067, label %1068, !prof !84

1067:                                             ; preds = %1063
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 546, ptr noundef nonnull @.str.1) #17
  br label %1068

1068:                                             ; preds = %963, %984, %968, %958, %982, %1067, %1063, %846, %852, %913, %891, %869, %755, %761, %822, %800, %778, %623, %629, %690, %668, %646, %532, %538, %599, %577, %555, %1052, %731, %711, %511
  %1069 = phi i32 [ %1037, %1052 ], [ %451, %846 ], [ %451, %852 ], [ %451, %913 ], [ %451, %891 ], [ %451, %869 ], [ %451, %755 ], [ %451, %761 ], [ %451, %822 ], [ %451, %800 ], [ %451, %778 ], [ %451, %731 ], [ %451, %711 ], [ %451, %623 ], [ %451, %629 ], [ %451, %690 ], [ %451, %668 ], [ %451, %646 ], [ %451, %532 ], [ %451, %538 ], [ %451, %599 ], [ %451, %577 ], [ %451, %555 ], [ %451, %511 ], [ %451, %1063 ], [ %451, %1067 ], [ %451, %982 ], [ %451, %958 ], [ %451, %968 ], [ %451, %984 ], [ %451, %963 ]
  br i1 %491, label %1072, label %1070, !prof !84

1070:                                             ; preds = %1068
  %1071 = load ptr, ptr @close_quote, align 8, !tbaa !115
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1071) #16
  br label %1072

1072:                                             ; preds = %1070, %1068
  %1073 = load ptr, ptr %12, align 8, !tbaa !100
  %1074 = getelementptr inbounds i8, ptr %1073, i64 1
  %1075 = load ptr, ptr %10, align 8, !tbaa !99
  %1076 = icmp ugt ptr %1074, %1075
  br i1 %1076, label %1077, label %1079, !prof !84

1077:                                             ; preds = %1072
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %1078 = load ptr, ptr %12, align 8, !tbaa !100
  br label %1079

1079:                                             ; preds = %1072, %1077
  %1080 = phi ptr [ %1073, %1072 ], [ %1078, %1077 ]
  %1081 = getelementptr inbounds i8, ptr %1080, i64 1
  store ptr %1081, ptr %12, align 8, !tbaa !100
  store i8 0, ptr %1080, align 1, !tbaa !85
  %1082 = load ptr, ptr %12, align 8, !tbaa !100
  %1083 = load ptr, ptr %25, align 8, !tbaa !101
  %1084 = icmp eq ptr %1082, %1083
  br i1 %1084, label %1085, label %1089, !prof !84

1085:                                             ; preds = %1079
  %1086 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %1087 = load i8, ptr %1086, align 8
  %1088 = or i8 %1087, 2
  store i8 %1088, ptr %1086, align 8
  br label %1089

1089:                                             ; preds = %1079, %1085
  %1090 = ptrtoint ptr %1083 to i64
  store i64 %1090, ptr %9, align 8, !tbaa !98
  %1091 = ptrtoint ptr %1082 to i64
  %1092 = load i32, ptr %35, align 8, !tbaa !102
  %1093 = sext i32 %1092 to i64
  %1094 = add nsw i64 %1093, %1091
  %1095 = xor i32 %1092, -1
  %1096 = sext i32 %1095 to i64
  %1097 = and i64 %1094, %1096
  %1098 = inttoptr i64 %1097 to ptr
  %1099 = load ptr, ptr %43, align 8, !tbaa !103
  %1100 = ptrtoint ptr %1099 to i64
  %1101 = sub i64 %1097, %1100
  %1102 = load ptr, ptr %10, align 8, !tbaa !99
  %1103 = ptrtoint ptr %1102 to i64
  %1104 = sub i64 %1103, %1100
  %1105 = icmp sgt i64 %1101, %1104
  %1106 = select i1 %1105, ptr %1102, ptr %1098, !prof !84
  store ptr %1106, ptr %12, align 8
  store ptr %1106, ptr %25, align 8, !tbaa !101
  %1107 = zext i32 %1069 to i64
  %1108 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1107
  %1109 = load ptr, ptr %1108, align 8, !tbaa !115
  store ptr %1083, ptr %1109, align 8, !tbaa !115
  %1110 = add i32 %1069, 1
  %1111 = zext i32 %1110 to i64
  %1112 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1111
  %1113 = load ptr, ptr %1112, align 8, !tbaa !115
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1115, label %449, !prof !131, !llvm.loop !132

1115:                                             ; preds = %1089, %422
  store ptr %7, ptr %445, align 8, !tbaa !81
  %1116 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 5
  store i32 0, ptr %1116, align 8, !tbaa !90
  %1117 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  store i64 %446, ptr %1117, align 4, !tbaa.struct !133
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
define internal fastcc i64 @pp_set_verbatim_wrapping_(ptr nocapture noundef %0) unnamed_addr #8 !prof !69 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 4, !tbaa.struct !133
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 0, ptr %4, align 4, !tbaa !95
  store i32 1, ptr %2, align 4, !tbaa !135
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !136 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !137

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
define dso_local void @pp_base_append_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !136 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = load ptr, ptr %0, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !90
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29, !prof !138

10:                                               ; preds = %3
  tail call void @pp_base_emit_prefix(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !95
  %13 = icmp slt i32 %12, 1
  %14 = icmp eq ptr %1, %2
  %15 = or i1 %13, %14
  br i1 %15, label %29, label %16, !prof !139

16:                                               ; preds = %10
  %17 = sub i64 %5, %4
  %18 = getelementptr i8, ptr %1, i64 %17
  br label %19

19:                                               ; preds = %16, %23
  %20 = phi ptr [ %24, %23 ], [ %1, %16 ]
  %21 = load i8, ptr %20, align 1, !tbaa !85
  %22 = icmp eq i8 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %19, !llvm.loop !140

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
define internal fastcc void @pp_clear_state(ptr nocapture noundef writeonly %0) unnamed_addr #9 !prof !141 !PGOFuncName !142 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %2, align 8, !tbaa !143
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_output_formatted_text(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.chunk_info, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %10, label %9, !prof !89

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !90
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !89

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load ptr, ptr %5, align 8, !tbaa !115
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !109

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %15 ]
  %20 = phi i32 [ %21, %18 ], [ 0, %15 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %19) #16
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %5, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !115
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !prof !144, !llvm.loop !145

26:                                               ; preds = %18, %15
  %27 = load ptr, ptr %4, align 8, !tbaa !105
  store ptr %27, ptr %3, align 8, !tbaa !104
  %28 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1
  %29 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !103
  %31 = ptrtoint ptr %4 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 5
  store i64 %33, ptr %34, align 8, !tbaa !98
  %35 = icmp sgt i64 %33, 0
  br i1 %35, label %36, label %46, !prof !89

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !99
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %32
  %41 = icmp slt i64 %33, %40
  br i1 %41, label %42, label %46, !prof !89

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %30, i64 %33
  %44 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !101
  %45 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 3
  store ptr %43, ptr %45, align 8, !tbaa !100
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
define dso_local void @pp_base_format_verbatim(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !91 {
  %3 = tail call fastcc i64 @pp_set_verbatim_wrapping_(ptr noundef %0) #16
  tail call void @pp_base_format(ptr noundef %0, ptr noundef %1) #16
  tail call void @pp_base_output_formatted_text(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  store i64 %3, ptr %4, align 4, !tbaa.struct !133
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_flush(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !69 {
  tail call void @pp_write_text_to_stream(ptr noundef %0) #16
  tail call fastcc void @pp_clear_state(ptr noundef %0) #16
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = tail call i32 @fputc(i32 noundef 10, ptr noundef %4) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = tail call i32 @fflush(ptr noundef %8) #16
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  store i8 0, ptr %10, align 1, !tbaa !146
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pp_base_set_line_maximum_length(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !91 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !95
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pp_set_real_maximum_length(ptr nocapture noundef %0) unnamed_addr #10 !prof !141 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !95
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22, !prof !148

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !135
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !149
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
  store i32 %23, ptr %24, align 4, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pp_base_set_prefix(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !141 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !149
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %4, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @pp_base_destroy_prefix(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !69 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !84

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !149
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_emit_prefix(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !141 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !151

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !135
  switch i32 %7, label %21 [
    i32 2, label %17
    i32 0, label %8
  ], !prof !152

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !143
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !89

12:                                               ; preds = %8
  tail call void @pp_base_indent(ptr noundef nonnull %0) #16
  br label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !92
  %16 = add nsw i32 %15, 3
  store i32 %16, ptr %14, align 8, !tbaa !92
  br label %17

17:                                               ; preds = %5, %13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #16
  %19 = trunc i64 %18 to i32
  tail call fastcc void @pp_append_r(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %19) #16
  %20 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 1, ptr %20, align 8, !tbaa !143
  br label %21

21:                                               ; preds = %12, %17, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_append_r(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !153 !PGOFuncName !154 {
  %4 = sext i32 %2 to i64
  %5 = load ptr, ptr %0, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.output_buffer, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 5
  store i64 %4, ptr %8, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = getelementptr inbounds i8, ptr %10, i64 %4
  %12 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %15, label %23, !prof !155

15:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull %7, i32 noundef %2) #17
  %16 = load ptr, ptr %0, align 8, !tbaa !70
  %17 = getelementptr inbounds %struct.output_buffer, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = getelementptr inbounds %struct.obstack, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.obstack, ptr %18, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !88
  br label %23

23:                                               ; preds = %3, %15
  %24 = phi i64 [ %4, %3 ], [ %22, %15 ]
  %25 = phi ptr [ %10, %3 ], [ %20, %15 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %1, i64 %24, i1 false)
  %26 = load ptr, ptr %0, align 8, !tbaa !70
  %27 = getelementptr inbounds %struct.output_buffer, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds %struct.obstack, ptr %28, i64 0, i32 5
  %30 = load i64, ptr %29, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.obstack, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = getelementptr inbounds i8, ptr %32, i64 %30
  store ptr %33, ptr %31, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.output_buffer, ptr %26, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !90
  %36 = add nsw i32 %35, %2
  store i32 %36, ptr %34, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_construct(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !69 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 336) #17
  store ptr %4, ptr %0, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.output_buffer, ptr %4, i64 0, i32 1
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !70
  %8 = tail call i32 @_obstack_begin(ptr noundef %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !81
  %11 = load ptr, ptr @stderr, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 %2, ptr %14, align 4, !tbaa !95
  store i32 0, ptr %13, align 4, !tbaa !135
  tail call void @pp_base_set_prefix(ptr noundef nonnull %0, ptr noundef %1) #16
  %15 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  store i8 1, ptr %15, align 2, !tbaa !156
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pp_base_last_position_in_text(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !91 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %6, %8
  %10 = getelementptr inbounds i8, ptr %8, i64 -1
  %11 = select i1 %9, ptr null, ptr %10
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pp_base_remaining_character_count_for_line(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !91 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !150
  %4 = load ptr, ptr %0, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.output_buffer, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !90
  %7 = sub nsw i32 %3, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_printf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !91 {
  %3 = alloca %struct.text_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !127
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !125
  store ptr %1, ptr %3, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !126
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
define dso_local void @pp_verbatim(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !91 {
  %3 = alloca %struct.text_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !127
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !125
  store ptr %1, ptr %3, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !126
  call void @pp_base_format_verbatim(ptr noundef %0, ptr noundef nonnull %3) #16
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_newline(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !91 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull %4, i32 noundef 1) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.output_buffer, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  %15 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  br label %17

17:                                               ; preds = %1, %11
  %18 = phi ptr [ %6, %1 ], [ %16, %11 ]
  %19 = phi ptr [ %4, %1 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %21, ptr %20, align 8, !tbaa !82
  store i8 10, ptr %18, align 1, !tbaa !85
  %22 = load ptr, ptr %0, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.output_buffer, ptr %22, i64 0, i32 5
  store i32 0, ptr %23, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_maybe_wrap_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !136 !PGOFuncName !157 {
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !95
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !137

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
define dso_local void @pp_base_maybe_space(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !91 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !158
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #16
  store i32 0, ptr %2, align 8, !tbaa !158
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_tree_identifier(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !91 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 2, !tbaa !156
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  br i1 %5, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @identifier_to_locale(ptr noundef %7) #16
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #16
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  tail call void @pp_base_append_text(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %11) #16
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !85
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %7, i64 %15
  tail call void @pp_base_append_text(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %16) #16
  br label %17

17:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @identifier_to_locale(ptr noundef readonly %0) local_unnamed_addr #0 !prof !159 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %80, label %6, !prof !160

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
  br i1 %18, label %29, label %19, !prof !161

19:                                               ; preds = %9
  %20 = icmp ugt i32 %16, 126
  br i1 %20, label %21, label %23, !prof !162

21:                                               ; preds = %19
  %22 = icmp ult i32 %16, 160
  br i1 %22, label %29, label %23

23:                                               ; preds = %21, %19
  %24 = icmp ugt i32 %13, 1
  %25 = add i64 %10, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %26 = icmp ult i64 %25, %4
  br i1 %24, label %28, label %27, !prof !162

27:                                               ; preds = %23
  br i1 %26, label %9, label %50, !prof !163

28:                                               ; preds = %23
  br i1 %26, label %6, label %51, !prof !163

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
  %37 = load i8, ptr %36, align 1, !tbaa !85
  %38 = add i8 %37, -32
  %39 = icmp ult i8 %38, 95
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 %37, ptr %34, align 1, !tbaa !85
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
  br i1 %49, label %77, label %33, !llvm.loop !164

50:                                               ; preds = %27
  br i1 %7, label %51, label %80, !prof !165

51:                                               ; preds = %28, %50
  %52 = load i8, ptr @locale_utf8, align 1, !tbaa !85
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
  %67 = load i8, ptr %61, align 1, !tbaa !85
  %68 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %67, ptr %59, align 1, !tbaa !85
  br label %73

69:                                               ; preds = %58
  %70 = load i32, ptr %3, align 4, !tbaa !127
  %71 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %70) #16
  %72 = getelementptr inbounds i8, ptr %59, i64 10
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi ptr [ %68, %66 ], [ %72, %69 ]
  %75 = add i64 %60, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %76 = icmp ult i64 %75, %4
  br i1 %76, label %58, label %77, !llvm.loop !166

77:                                               ; preds = %73, %46, %54
  %78 = phi ptr [ %57, %54 ], [ %47, %46 ], [ %74, %73 ]
  %79 = phi ptr [ %57, %54 ], [ %32, %46 ], [ %57, %73 ]
  store i8 0, ptr %78, align 1, !tbaa !85
  br label %80

80:                                               ; preds = %77, %1, %50, %51
  %81 = phi ptr [ %0, %51 ], [ %0, %50 ], [ %0, %1 ], [ %79, %77 ]
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @decode_utf8_char(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !167 !PGOFuncName !168 {
  %4 = load i8, ptr %0, align 1, !tbaa !85
  %5 = zext i8 %4 to i32
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %8, !prof !162

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 862, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp sgt i8 %4, -1
  br i1 %9, label %69, label %10, !prof !169

10:                                               ; preds = %8
  %11 = load i8, ptr %0, align 1, !tbaa !85
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
  br i1 %20, label %21, label %14, !llvm.loop !170

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
  %36 = load i8, ptr %35, align 1, !tbaa !85
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
  br i1 %45, label %46, label %32, !llvm.loop !171

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
  store i32 %70, ptr %2, align 4, !tbaa !127
  ret i32 %71
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_wrap_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 !prof !91 !PGOFuncName !172 {
  %4 = ptrtoint ptr %2 to i64
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !95
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
  %17 = load i8, ptr %16, align 1, !tbaa !85
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !96
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  %23 = icmp ne i8 %17, 10
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds i8, ptr %16, i64 1
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %15, !llvm.loop !173

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
  %39 = load i8, ptr %29, align 1, !tbaa !85
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !96
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
  %51 = load i8, ptr %48, align 1, !tbaa !85
  %52 = icmp eq i8 %51, 10
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  tail call void @pp_base_newline(ptr noundef %0) #16
  %54 = getelementptr inbounds i8, ptr %48, i64 1
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi ptr [ %54, %53 ], [ %48, %50 ]
  %57 = icmp eq ptr %56, %2
  br i1 %57, label %58, label %9, !llvm.loop !174

58:                                               ; preds = %47, %55, %3
  ret void
}

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!68}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!35 = !{ptr @pp_write_text_to_stream, ptr @pp_base_formatted_text, i64 1}
!36 = !{ptr @pp_write_text_to_stream, ptr @fputs, i64 1}
!37 = !{ptr @pp_write_text_to_stream, ptr @pp_base_clear_output_area, i64 1}
!38 = !{ptr @pp_base_clear_output_area, ptr @obstack_free, i64 1}
!39 = !{ptr @pp_base_format, ptr @memchr, i64 1}
!40 = !{ptr @pp_base_format, ptr @_obstack_newchunk, i64 1}
!41 = !{ptr @pp_base_format, ptr @pp_set_verbatim_wrapping_, i64 1}
!42 = !{ptr @pp_base_format, ptr @fancy_abort, i64 4}
!43 = !{ptr @pp_base_format, ptr @pp_base_string, i64 2}
!44 = !{ptr @pp_base_format, ptr @pp_clear_state, i64 1}
!45 = !{ptr @pp_base_string, ptr @strlen, i64 4}
!46 = !{ptr @pp_base_string, ptr @pp_maybe_wrap_text, i64 5}
!47 = !{ptr @pp_base_append_text, ptr @pp_base_emit_prefix, i64 2}
!48 = !{ptr @pp_base_append_text, ptr @pp_append_r, i64 5}
!49 = !{ptr @pp_base_output_formatted_text, ptr @pp_base_string, i64 1}
!50 = !{ptr @pp_base_output_formatted_text, ptr @obstack_free, i64 1}
!51 = !{ptr @pp_base_flush, ptr @pp_write_text_to_stream, i64 1}
!52 = !{ptr @pp_base_flush, ptr @pp_clear_state, i64 1}
!53 = !{ptr @pp_base_flush, ptr @fputc, i64 1}
!54 = !{ptr @pp_base_flush, ptr @fflush, i64 1}
!55 = !{ptr @pp_base_set_prefix, ptr @pp_set_real_maximum_length, i64 2}
!56 = !{ptr @pp_base_destroy_prefix, ptr @free, i64 1}
!57 = !{ptr @pp_append_r, ptr @_obstack_newchunk, i64 1}
!58 = !{ptr @pp_construct, ptr @xcalloc, i64 1}
!59 = !{ptr @pp_construct, ptr @_obstack_begin, i64 2}
!60 = !{ptr @pp_construct, ptr @pp_base_set_prefix, i64 1}
!61 = !{ptr @pp_maybe_wrap_text, ptr @pp_wrap_text, i64 1}
!62 = !{ptr @pp_maybe_wrap_text, ptr @pp_base_append_text, i64 4}
!63 = !{ptr @identifier_to_locale, ptr @strlen, i64 307}
!64 = !{ptr @identifier_to_locale, ptr @decode_utf8_char, i64 3000}
!65 = !{ptr @identifier_to_locale, ptr @ggc_alloc_stat, i64 2}
!66 = !{ptr @identifier_to_locale, ptr @sprintf, i64 36}
!67 = !{ptr @decode_utf8_char, ptr @fancy_abort, i64 1}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = !{!"function_entry_count", i64 1}
!70 = !{!71, !72, i64 0}
!71 = !{!"pretty_print_info", !72, i64 0, !72, i64 8, !75, i64 16, !75, i64 20, !75, i64 24, !76, i64 28, !72, i64 40, !73, i64 48, !73, i64 49, !73, i64 50}
!72 = !{!"any pointer", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !{!"int", !73, i64 0}
!76 = !{!"", !75, i64 0, !75, i64 4}
!77 = !{!78, !72, i64 192}
!78 = !{!"", !79, i64 0, !79, i64 88, !72, i64 176, !72, i64 184, !72, i64 192, !75, i64 200, !73, i64 204}
!79 = !{!"obstack", !80, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !80, i64 40, !75, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !75, i64 80, !75, i64 80, !75, i64 80}
!80 = !{!"long", !73, i64 0}
!81 = !{!78, !72, i64 176}
!82 = !{!79, !72, i64 24}
!83 = !{!79, !72, i64 32}
!84 = !{!"branch_weights", i32 1, i32 2}
!85 = !{!73, !73, i64 0}
!86 = !{!79, !72, i64 16}
!87 = !{!79, !72, i64 8}
!88 = !{!79, !80, i64 40}
!89 = !{!"branch_weights", i32 2, i32 1}
!90 = !{!78, !75, i64 200}
!91 = !{!"function_entry_count", i64 0}
!92 = !{!71, !75, i64 24}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!71, !75, i64 32}
!96 = !{!97, !97, i64 0}
!97 = !{!"short", !73, i64 0}
!98 = !{!78, !80, i64 128}
!99 = !{!78, !72, i64 120}
!100 = !{!78, !72, i64 112}
!101 = !{!78, !72, i64 104}
!102 = !{!78, !75, i64 136}
!103 = !{!78, !72, i64 96}
!104 = !{!78, !72, i64 184}
!105 = !{!106, !72, i64 0}
!106 = !{!"chunk_info", !72, i64 0, !73, i64 8}
!107 = !{!108, !72, i64 0}
!108 = !{!"", !72, i64 0, !72, i64 8, !75, i64 16, !72, i64 24, !72, i64 32}
!109 = !{!"branch_weights", i32 1, i32 127}
!110 = !{!"branch_weights", i32 1722, i32 43, i32 84}
!111 = !{!"branch_weights", i32 1, i32 41}
!112 = distinct !{!112, !94}
!113 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!114 = !{!"branch_weights", i32 127, i32 129}
!115 = !{!72, !72, i64 0}
!116 = !{!108, !75, i64 16}
!117 = !{!"branch_weights", i32 1, i32 4}
!118 = !{!"branch_weights", i32 2, i32 3}
!119 = distinct !{!119, !94}
!120 = distinct !{!120, !94}
!121 = !{!"branch_weights", i32 127, i32 16129}
!122 = !{!"branch_weights", i32 1, i32 2, i32 2, i32 1, i32 1, i32 1}
!123 = !{!"branch_weights", i32 5, i32 1}
!124 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!125 = !{!108, !72, i64 8}
!126 = !{!108, !72, i64 24}
!127 = !{!75, !75, i64 0}
!128 = !{!108, !72, i64 32}
!129 = distinct !{!129, !94}
!130 = !{!71, !72, i64 40}
!131 = !{!"branch_weights", i32 127, i32 1}
!132 = distinct !{!132, !94}
!133 = !{i64 0, i64 4, !127, i64 4, i64 4, !127}
!134 = !{!"pretty-print.c:pp_set_verbatim_wrapping_"}
!135 = !{!71, !75, i64 28}
!136 = !{!"function_entry_count", i64 5}
!137 = !{!"branch_weights", i32 1, i32 6}
!138 = !{!"branch_weights", i32 3, i32 4}
!139 = !{!"branch_weights", i32 7, i32 1}
!140 = distinct !{!140, !94}
!141 = !{!"function_entry_count", i64 2}
!142 = !{!"pretty-print.c:pp_clear_state"}
!143 = !{!71, !73, i64 48}
!144 = !{!"branch_weights", i32 127, i32 65}
!145 = distinct !{!145, !94}
!146 = !{!71, !73, i64 49}
!147 = !{!"pretty-print.c:pp_set_real_maximum_length"}
!148 = !{!"branch_weights", i32 1, i32 3}
!149 = !{!71, !72, i64 8}
!150 = !{!71, !75, i64 20}
!151 = !{!"branch_weights", i32 2, i32 2}
!152 = !{!"branch_weights", i32 2, i32 1, i32 2}
!153 = !{!"function_entry_count", i64 6}
!154 = !{!"pretty-print.c:pp_append_r"}
!155 = !{!"branch_weights", i32 1, i32 7}
!156 = !{!71, !73, i64 50}
!157 = !{!"pretty-print.c:pp_maybe_wrap_text"}
!158 = !{!71, !75, i64 16}
!159 = !{!"function_entry_count", i64 307}
!160 = !{!"branch_weights", i32 1, i32 307}
!161 = !{!"branch_weights", i32 6043, i32 9126441}
!162 = !{!"branch_weights", i32 1, i32 3021}
!163 = !{!"branch_weights", i32 2714, i32 307}
!164 = distinct !{!164, !94}
!165 = !{!"branch_weights", i32 6264027, i32 2141219621}
!166 = distinct !{!166, !94}
!167 = !{!"function_entry_count", i64 3020}
!168 = !{!"pretty-print.c:decode_utf8_char"}
!169 = !{!"branch_weights", i32 3021, i32 1}
!170 = distinct !{!170, !94}
!171 = distinct !{!171, !94}
!172 = !{!"pretty-print.c:pp_wrap_text"}
!173 = distinct !{!173, !94}
!174 = distinct !{!174, !94}
