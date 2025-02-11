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
define dso_local void @pp_write_text_to_stream(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @pp_base_formatted_text(ptr noundef %0) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = tail call i32 @fputs(ptr noundef %2, ptr noundef %5) #16
  tail call void @pp_base_clear_output_area(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pp_base_formatted_text(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull %4, i32 noundef 1) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.output_buffer, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %1, %11
  %18 = phi ptr [ %6, %1 ], [ %16, %11 ]
  %19 = phi ptr [ %4, %1 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %21, ptr %20, align 8, !tbaa !17
  store i8 0, ptr %18, align 1, !tbaa !19
  %22 = load ptr, ptr %0, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.output_buffer, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.obstack, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !20
  ret ptr %26
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_clear_output_area(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !22
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = icmp slt i64 %11, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %8, i64 %11
  store ptr %21, ptr %5, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !17
  br label %26

23:                                               ; preds = %14, %1
  %24 = getelementptr inbounds i8, ptr %8, i64 %11
  tail call void @obstack_free(ptr noundef nonnull %4, ptr noundef %24) #17
  %25 = load ptr, ptr %0, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi ptr [ %25, %23 ], [ %2, %20 ]
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 5
  store i32 0, ptr %28, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_indent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !24
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #16
  %7 = add nuw nsw i32 %6, 1
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %9, label %5, !llvm.loop !25

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_character(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !27
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
  %13 = load i16, ptr %12, align 2, !tbaa !28
  %14 = and i16 %13, 64
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %9, %6, %2
  %17 = load ptr, ptr %0, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.output_buffer, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = icmp ugt ptr %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  tail call void @_obstack_newchunk(ptr noundef nonnull %19, i32 noundef 1) #17
  %27 = load ptr, ptr %0, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.obstack, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !17
  br label %32

32:                                               ; preds = %16, %26
  %33 = phi ptr [ %21, %16 ], [ %31, %26 ]
  %34 = phi ptr [ %19, %16 ], [ %29, %26 ]
  %35 = trunc i32 %1 to i8
  %36 = getelementptr inbounds %struct.obstack, ptr %34, i64 0, i32 3
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %37, ptr %36, align 8, !tbaa !17
  store i8 %35, ptr %33, align 1, !tbaa !19
  %38 = load ptr, ptr %0, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !23
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !23
  br label %42

42:                                               ; preds = %9, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_format(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #18
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 5
  store i64 488, ptr %9, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, 488
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 488) #17
  %19 = load i64, ptr %9, align 8, !tbaa !30
  %20 = load ptr, ptr %12, align 8, !tbaa !32
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi ptr [ %13, %2 ], [ %20, %18 ]
  %23 = phi i64 [ 488, %2 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %30 = load i8, ptr %29, align 8
  %31 = or i8 %30, 2
  store i8 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %21, %28
  %33 = ptrtoint ptr %26 to i64
  store i64 %33, ptr %9, align 8, !tbaa !30
  %34 = ptrtoint ptr %24 to i64
  %35 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !34
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %34
  %39 = xor i32 %36, -1
  %40 = sext i32 %39 to i64
  %41 = and i64 %38, %40
  %42 = inttoptr i64 %41 to ptr
  store ptr %42, ptr %12, align 8, !tbaa !32
  %43 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %41, %45
  %47 = load ptr, ptr %10, align 8, !tbaa !31
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %48, %45
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  store ptr %47, ptr %12, align 8, !tbaa !32
  br label %52

52:                                               ; preds = %32, %51
  %53 = phi ptr [ %42, %32 ], [ %47, %51 ]
  store ptr %53, ptr %25, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !36
  store ptr %55, ptr %26, align 8, !tbaa !37
  store ptr %26, ptr %54, align 8, !tbaa !36
  %56 = getelementptr inbounds %struct.chunk_info, ptr %26, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %3, i8 0, i64 240, i1 false)
  %57 = load ptr, ptr %1, align 8, !tbaa !39
  %58 = load i8, ptr %57, align 1, !tbaa !19
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %401, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 2
  %62 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  br label %63

63:                                               ; preds = %60, %380
  %64 = phi i8 [ %58, %60 ], [ %399, %380 ]
  %65 = phi ptr [ %57, %60 ], [ %358, %380 ]
  %66 = phi i32 [ 0, %60 ], [ %357, %380 ]
  %67 = phi i32 [ 0, %60 ], [ %398, %380 ]
  %68 = phi i8 [ 0, %60 ], [ %231, %380 ]
  %69 = phi i8 [ 0, %60 ], [ %230, %380 ]
  br label %70

70:                                               ; preds = %87, %63
  %71 = phi i8 [ %64, %63 ], [ %88, %87 ]
  %72 = phi ptr [ %65, %63 ], [ %89, %87 ]
  switch i8 %71, label %73 [
    i8 0, label %401
    i8 37, label %90
  ]

73:                                               ; preds = %70
  %74 = load ptr, ptr %12, align 8, !tbaa !32
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  %76 = load ptr, ptr %10, align 8, !tbaa !31
  %77 = icmp ugt ptr %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %79 = load i8, ptr %72, align 1, !tbaa !19
  %80 = load ptr, ptr %12, align 8, !tbaa !32
  br label %81

81:                                               ; preds = %73, %78
  %82 = phi ptr [ %74, %73 ], [ %80, %78 ]
  %83 = phi i8 [ %71, %73 ], [ %79, %78 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %84, ptr %12, align 8, !tbaa !32
  store i8 %83, ptr %82, align 1, !tbaa !19
  %85 = getelementptr inbounds i8, ptr %72, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !19
  br label %87

87:                                               ; preds = %81, %104
  %88 = phi i8 [ %86, %81 ], [ %106, %104 ]
  %89 = phi ptr [ %85, %81 ], [ %105, %104 ]
  br label %70, !llvm.loop !41

90:                                               ; preds = %70
  %91 = getelementptr inbounds i8, ptr %72, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !19
  switch i8 %92, label %164 [
    i8 0, label %93
    i8 37, label %94
    i8 60, label %108
    i8 62, label %127
    i8 39, label %127
    i8 109, label %146
  ]

93:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @.str.1) #17
  br label %94

94:                                               ; preds = %90, %93
  %95 = load ptr, ptr %12, align 8, !tbaa !32
  %96 = getelementptr inbounds i8, ptr %95, i64 1
  %97 = load ptr, ptr %10, align 8, !tbaa !31
  %98 = icmp ugt ptr %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %100 = load ptr, ptr %12, align 8, !tbaa !32
  br label %101

101:                                              ; preds = %94, %99
  %102 = phi ptr [ %95, %94 ], [ %100, %99 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 1
  store ptr %103, ptr %12, align 8, !tbaa !32
  store i8 37, ptr %102, align 1, !tbaa !19
  br label %104

104:                                              ; preds = %101, %120, %139, %158
  %105 = getelementptr inbounds i8, ptr %72, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !19
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %401, label %87

108:                                              ; preds = %90
  %109 = load ptr, ptr @open_quote, align 8, !tbaa !42
  %110 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %109) #16
  store i64 %110, ptr %9, align 8, !tbaa !30
  %111 = load ptr, ptr %12, align 8, !tbaa !32
  %112 = getelementptr inbounds i8, ptr %111, i64 %110
  %113 = load ptr, ptr %10, align 8, !tbaa !31
  %114 = icmp ugt ptr %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = trunc i64 %110 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %116) #17
  %117 = load ptr, ptr %12, align 8, !tbaa !32
  %118 = load ptr, ptr @open_quote, align 8, !tbaa !42
  %119 = load i64, ptr %9, align 8, !tbaa !30
  br label %120

120:                                              ; preds = %108, %115
  %121 = phi i64 [ %110, %108 ], [ %119, %115 ]
  %122 = phi ptr [ %109, %108 ], [ %118, %115 ]
  %123 = phi ptr [ %111, %108 ], [ %117, %115 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %122, i64 %121, i1 false)
  %124 = load i64, ptr %9, align 8, !tbaa !30
  %125 = load ptr, ptr %12, align 8, !tbaa !32
  %126 = getelementptr inbounds i8, ptr %125, i64 %124
  store ptr %126, ptr %12, align 8, !tbaa !32
  br label %104

127:                                              ; preds = %90, %90
  %128 = load ptr, ptr @close_quote, align 8, !tbaa !42
  %129 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %128) #16
  store i64 %129, ptr %9, align 8, !tbaa !30
  %130 = load ptr, ptr %12, align 8, !tbaa !32
  %131 = getelementptr inbounds i8, ptr %130, i64 %129
  %132 = load ptr, ptr %10, align 8, !tbaa !31
  %133 = icmp ugt ptr %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = trunc i64 %129 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %135) #17
  %136 = load ptr, ptr %12, align 8, !tbaa !32
  %137 = load ptr, ptr @close_quote, align 8, !tbaa !42
  %138 = load i64, ptr %9, align 8, !tbaa !30
  br label %139

139:                                              ; preds = %127, %134
  %140 = phi i64 [ %129, %127 ], [ %138, %134 ]
  %141 = phi ptr [ %128, %127 ], [ %137, %134 ]
  %142 = phi ptr [ %130, %127 ], [ %136, %134 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %142, ptr align 1 %141, i64 %140, i1 false)
  %143 = load i64, ptr %9, align 8, !tbaa !30
  %144 = load ptr, ptr %12, align 8, !tbaa !32
  %145 = getelementptr inbounds i8, ptr %144, i64 %143
  store ptr %145, ptr %12, align 8, !tbaa !32
  br label %104

146:                                              ; preds = %90
  %147 = load i32, ptr %61, align 8, !tbaa !43
  %148 = tail call ptr @xstrerror(i32 noundef %147) #17
  %149 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %148) #16
  store i64 %149, ptr %9, align 8, !tbaa !30
  %150 = load ptr, ptr %12, align 8, !tbaa !32
  %151 = getelementptr inbounds i8, ptr %150, i64 %149
  %152 = load ptr, ptr %10, align 8, !tbaa !31
  %153 = icmp ugt ptr %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = trunc i64 %149 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %155) #17
  %156 = load ptr, ptr %12, align 8, !tbaa !32
  %157 = load i64, ptr %9, align 8, !tbaa !30
  br label %158

158:                                              ; preds = %146, %154
  %159 = phi i64 [ %149, %146 ], [ %157, %154 ]
  %160 = phi ptr [ %150, %146 ], [ %156, %154 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %160, ptr align 1 %148, i64 %159, i1 false)
  %161 = load i64, ptr %9, align 8, !tbaa !30
  %162 = load ptr, ptr %12, align 8, !tbaa !32
  %163 = getelementptr inbounds i8, ptr %162, i64 %161
  store ptr %163, ptr %12, align 8, !tbaa !32
  br label %104

164:                                              ; preds = %90
  %165 = getelementptr inbounds i8, ptr %72, i64 1
  %166 = load ptr, ptr %12, align 8, !tbaa !32
  %167 = getelementptr inbounds i8, ptr %166, i64 1
  %168 = load ptr, ptr %10, align 8, !tbaa !31
  %169 = icmp ugt ptr %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %171 = load ptr, ptr %12, align 8, !tbaa !32
  br label %172

172:                                              ; preds = %164, %170
  %173 = phi ptr [ %166, %164 ], [ %171, %170 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  store ptr %174, ptr %12, align 8, !tbaa !32
  store i8 0, ptr %173, align 1, !tbaa !19
  %175 = icmp ult i32 %67, 60
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 282, ptr noundef nonnull @.str.1) #17
  br label %177

177:                                              ; preds = %172, %176
  %178 = load ptr, ptr %12, align 8, !tbaa !32
  %179 = load ptr, ptr %25, align 8, !tbaa !33
  %180 = icmp eq ptr %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i8, ptr %62, align 8
  %183 = or i8 %182, 2
  store i8 %183, ptr %62, align 8
  br label %184

184:                                              ; preds = %177, %181
  %185 = ptrtoint ptr %179 to i64
  store i64 %185, ptr %9, align 8, !tbaa !30
  %186 = ptrtoint ptr %178 to i64
  %187 = load i32, ptr %35, align 8, !tbaa !34
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = xor i32 %187, -1
  %191 = sext i32 %190 to i64
  %192 = and i64 %189, %191
  %193 = inttoptr i64 %192 to ptr
  %194 = load ptr, ptr %43, align 8, !tbaa !35
  %195 = ptrtoint ptr %194 to i64
  %196 = sub i64 %192, %195
  %197 = load ptr, ptr %10, align 8, !tbaa !31
  %198 = ptrtoint ptr %197 to i64
  %199 = sub i64 %198, %195
  %200 = icmp sgt i64 %196, %199
  %201 = select i1 %200, ptr %197, ptr %193
  store ptr %201, ptr %12, align 8
  store ptr %201, ptr %25, align 8, !tbaa !33
  %202 = or disjoint i32 %67, 1
  %203 = zext i32 %67 to i64
  %204 = getelementptr inbounds ptr, ptr %56, i64 %203
  store ptr %179, ptr %204, align 8, !tbaa !42
  %205 = load i8, ptr %165, align 1, !tbaa !19
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !28
  %209 = and i16 %208, 4
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %212 = call i64 @strtoul(ptr noundef nonnull %165, ptr noundef nonnull %4, i32 noundef 10) #16
  %213 = trunc i64 %212 to i32
  %214 = add i32 %213, -1
  %215 = load ptr, ptr %4, align 8, !tbaa !42
  %216 = load i8, ptr %215, align 1, !tbaa !19
  %217 = icmp eq i8 %216, 36
  br i1 %217, label %219, label %218

218:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.1) #17
  br label %219

219:                                              ; preds = %211, %218
  %220 = getelementptr inbounds i8, ptr %215, i64 1
  %221 = icmp eq i8 %68, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %219
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 296, ptr noundef nonnull @.str.1) #17
  br label %223

223:                                              ; preds = %219, %222
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %228

224:                                              ; preds = %184
  %225 = add i32 %66, 1
  %226 = icmp eq i8 %69, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %224
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @.str.1) #17
  br label %228

228:                                              ; preds = %227, %224, %223
  %229 = phi i1 [ false, %223 ], [ false, %227 ], [ true, %224 ]
  %230 = phi i8 [ 1, %223 ], [ 1, %227 ], [ 0, %224 ]
  %231 = phi i8 [ %68, %223 ], [ 1, %227 ], [ 1, %224 ]
  %232 = phi i32 [ %214, %223 ], [ %66, %227 ], [ %66, %224 ]
  %233 = phi i32 [ %66, %223 ], [ %225, %227 ], [ %225, %224 ]
  %234 = phi ptr [ %220, %223 ], [ %165, %227 ], [ %165, %224 ]
  %235 = icmp ult i32 %232, 30
  br i1 %235, label %237, label %236

236:                                              ; preds = %228
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @.str.1) #17
  br label %237

237:                                              ; preds = %228, %236
  %238 = zext i32 %232 to i64
  %239 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !42
  %241 = icmp eq ptr %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.1) #17
  br label %243

243:                                              ; preds = %237, %242
  %244 = zext i32 %202 to i64
  %245 = getelementptr inbounds ptr, ptr %56, i64 %244
  store ptr %245, ptr %239, align 8, !tbaa !42
  br label %246

246:                                              ; preds = %254, %243
  %247 = phi ptr [ %234, %243 ], [ %258, %254 ]
  %248 = load ptr, ptr %12, align 8, !tbaa !32
  %249 = getelementptr inbounds i8, ptr %248, i64 1
  %250 = load ptr, ptr %10, align 8, !tbaa !31
  %251 = icmp ugt ptr %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %253 = load ptr, ptr %12, align 8, !tbaa !32
  br label %254

254:                                              ; preds = %246, %252
  %255 = phi ptr [ %248, %246 ], [ %253, %252 ]
  %256 = load i8, ptr %247, align 1, !tbaa !19
  %257 = getelementptr inbounds i8, ptr %255, i64 1
  store ptr %257, ptr %12, align 8, !tbaa !32
  store i8 %256, ptr %255, align 1, !tbaa !19
  %258 = getelementptr inbounds i8, ptr %247, i64 1
  %259 = load i8, ptr %247, align 1, !tbaa !19
  %260 = sext i8 %259 to i32
  %261 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.2, i32 %260, i64 6)
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %246, !llvm.loop !44

263:                                              ; preds = %254
  %264 = icmp eq i8 %259, 46
  br i1 %264, label %265, label %356

265:                                              ; preds = %263
  %266 = load i8, ptr %258, align 1, !tbaa !19
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %267
  %269 = load i16, ptr %268, align 2, !tbaa !28
  %270 = and i16 %269, 4
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %294, label %272

272:                                              ; preds = %265, %280
  %273 = phi ptr [ %284, %280 ], [ %258, %265 ]
  %274 = load ptr, ptr %12, align 8, !tbaa !32
  %275 = getelementptr inbounds i8, ptr %274, i64 1
  %276 = load ptr, ptr %10, align 8, !tbaa !31
  %277 = icmp ugt ptr %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %279 = load ptr, ptr %12, align 8, !tbaa !32
  br label %280

280:                                              ; preds = %272, %278
  %281 = phi ptr [ %274, %272 ], [ %279, %278 ]
  %282 = load i8, ptr %273, align 1, !tbaa !19
  %283 = getelementptr inbounds i8, ptr %281, i64 1
  store ptr %283, ptr %12, align 8, !tbaa !32
  store i8 %282, ptr %281, align 1, !tbaa !19
  %284 = getelementptr inbounds i8, ptr %273, i64 1
  %285 = load i8, ptr %273, align 1, !tbaa !19
  %286 = zext i8 %285 to i64
  %287 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %286
  %288 = load i16, ptr %287, align 2, !tbaa !28
  %289 = and i16 %288, 4
  %290 = icmp eq i16 %289, 0
  br i1 %290, label %291, label %272, !llvm.loop !45

291:                                              ; preds = %280
  %292 = icmp eq i8 %285, 115
  br i1 %292, label %356, label %293

293:                                              ; preds = %291
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.1) #17
  br label %356

294:                                              ; preds = %265
  %295 = icmp eq i8 %266, 42
  br i1 %295, label %297, label %296

296:                                              ; preds = %294
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @.str.1) #17
  br label %297

297:                                              ; preds = %294, %296
  %298 = load ptr, ptr %12, align 8, !tbaa !32
  %299 = getelementptr inbounds i8, ptr %298, i64 1
  %300 = load ptr, ptr %10, align 8, !tbaa !31
  %301 = icmp ugt ptr %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %303 = load ptr, ptr %12, align 8, !tbaa !32
  br label %304

304:                                              ; preds = %297, %302
  %305 = phi ptr [ %298, %297 ], [ %303, %302 ]
  %306 = getelementptr inbounds i8, ptr %305, i64 1
  store ptr %306, ptr %12, align 8, !tbaa !32
  store i8 42, ptr %305, align 1, !tbaa !19
  %307 = getelementptr inbounds i8, ptr %247, i64 2
  %308 = load i8, ptr %307, align 1, !tbaa !19
  %309 = zext i8 %308 to i64
  %310 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %309
  %311 = load i16, ptr %310, align 2, !tbaa !28
  %312 = and i16 %311, 4
  %313 = icmp eq i16 %312, 0
  br i1 %313, label %332, label %314

314:                                              ; preds = %304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %315 = call i64 @strtoul(ptr noundef nonnull %307, ptr noundef nonnull %5, i32 noundef 10) #16
  %316 = trunc i64 %315 to i32
  %317 = add i64 %315, 4294967295
  %318 = load ptr, ptr %5, align 8, !tbaa !42
  %319 = icmp eq i32 %232, %316
  br i1 %319, label %321, label %320

320:                                              ; preds = %314
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #17
  br label %321

321:                                              ; preds = %314, %320
  %322 = icmp eq i8 %231, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %321
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.1) #17
  br label %324

324:                                              ; preds = %321, %323
  %325 = load i8, ptr %318, align 1, !tbaa !19
  %326 = icmp eq i8 %325, 36
  br i1 %326, label %328, label %327

327:                                              ; preds = %324
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.1) #17
  br label %328

328:                                              ; preds = %324, %327
  %329 = getelementptr inbounds i8, ptr %318, i64 1
  %330 = and i64 %317, 4294967295
  %331 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %330
  store ptr %245, ptr %331, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %339

332:                                              ; preds = %304
  br i1 %229, label %334, label %333

333:                                              ; preds = %332
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 348, ptr noundef nonnull @.str.1) #17
  br label %334

334:                                              ; preds = %332, %333
  %335 = add i32 %232, 1
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %336
  store ptr %245, ptr %337, align 8, !tbaa !42
  %338 = add i32 %233, 1
  br label %339

339:                                              ; preds = %334, %328
  %340 = phi i32 [ %233, %328 ], [ %338, %334 ]
  %341 = phi ptr [ %329, %328 ], [ %307, %334 ]
  %342 = load i8, ptr %341, align 1, !tbaa !19
  %343 = icmp eq i8 %342, 115
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 352, ptr noundef nonnull @.str.1) #17
  br label %345

345:                                              ; preds = %339, %344
  %346 = load ptr, ptr %12, align 8, !tbaa !32
  %347 = getelementptr inbounds i8, ptr %346, i64 1
  %348 = load ptr, ptr %10, align 8, !tbaa !31
  %349 = icmp ugt ptr %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %351 = load ptr, ptr %12, align 8, !tbaa !32
  br label %352

352:                                              ; preds = %345, %350
  %353 = phi ptr [ %346, %345 ], [ %351, %350 ]
  %354 = getelementptr inbounds i8, ptr %353, i64 1
  store ptr %354, ptr %12, align 8, !tbaa !32
  store i8 115, ptr %353, align 1, !tbaa !19
  %355 = getelementptr inbounds i8, ptr %341, i64 1
  br label %356

356:                                              ; preds = %293, %291, %352, %263
  %357 = phi i32 [ %233, %291 ], [ %233, %293 ], [ %340, %352 ], [ %233, %263 ]
  %358 = phi ptr [ %284, %291 ], [ %284, %293 ], [ %355, %352 ], [ %258, %263 ]
  %359 = load i8, ptr %358, align 1, !tbaa !19
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %401, label %361

361:                                              ; preds = %356
  %362 = load ptr, ptr %12, align 8, !tbaa !32
  %363 = getelementptr inbounds i8, ptr %362, i64 1
  %364 = load ptr, ptr %10, align 8, !tbaa !31
  %365 = icmp ugt ptr %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %361
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %367 = load ptr, ptr %12, align 8, !tbaa !32
  br label %368

368:                                              ; preds = %361, %366
  %369 = phi ptr [ %362, %361 ], [ %367, %366 ]
  %370 = getelementptr inbounds i8, ptr %369, i64 1
  store ptr %370, ptr %12, align 8, !tbaa !32
  store i8 0, ptr %369, align 1, !tbaa !19
  %371 = icmp ult i32 %202, 60
  br i1 %371, label %373, label %372

372:                                              ; preds = %368
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #17
  br label %373

373:                                              ; preds = %368, %372
  %374 = load ptr, ptr %12, align 8, !tbaa !32
  %375 = load ptr, ptr %25, align 8, !tbaa !33
  %376 = icmp eq ptr %374, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %373
  %378 = load i8, ptr %62, align 8
  %379 = or i8 %378, 2
  store i8 %379, ptr %62, align 8
  br label %380

380:                                              ; preds = %373, %377
  %381 = ptrtoint ptr %375 to i64
  store i64 %381, ptr %9, align 8, !tbaa !30
  %382 = ptrtoint ptr %374 to i64
  %383 = load i32, ptr %35, align 8, !tbaa !34
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %382
  %386 = xor i32 %383, -1
  %387 = sext i32 %386 to i64
  %388 = and i64 %385, %387
  %389 = inttoptr i64 %388 to ptr
  %390 = load ptr, ptr %43, align 8, !tbaa !35
  %391 = ptrtoint ptr %390 to i64
  %392 = sub i64 %388, %391
  %393 = load ptr, ptr %10, align 8, !tbaa !31
  %394 = ptrtoint ptr %393 to i64
  %395 = sub i64 %394, %391
  %396 = icmp sgt i64 %392, %395
  %397 = select i1 %396, ptr %393, ptr %389
  store ptr %397, ptr %12, align 8
  store ptr %397, ptr %25, align 8, !tbaa !33
  %398 = add i32 %67, 2
  store ptr %375, ptr %245, align 8, !tbaa !42
  %399 = load i8, ptr %358, align 1, !tbaa !19
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %401, label %63, !llvm.loop !41

401:                                              ; preds = %380, %356, %104, %70, %52
  %402 = phi i32 [ 0, %52 ], [ %67, %70 ], [ %67, %104 ], [ %398, %380 ], [ %202, %356 ]
  %403 = load ptr, ptr %12, align 8, !tbaa !32
  %404 = getelementptr inbounds i8, ptr %403, i64 1
  %405 = load ptr, ptr %10, align 8, !tbaa !31
  %406 = icmp ugt ptr %404, %405
  br i1 %406, label %407, label %409

407:                                              ; preds = %401
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %408 = load ptr, ptr %12, align 8, !tbaa !32
  br label %409

409:                                              ; preds = %401, %407
  %410 = phi ptr [ %403, %401 ], [ %408, %407 ]
  %411 = getelementptr inbounds i8, ptr %410, i64 1
  store ptr %411, ptr %12, align 8, !tbaa !32
  store i8 0, ptr %410, align 1, !tbaa !19
  %412 = icmp ult i32 %402, 60
  br i1 %412, label %414, label %413

413:                                              ; preds = %409
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 366, ptr noundef nonnull @.str.1) #17
  br label %414

414:                                              ; preds = %409, %413
  %415 = load ptr, ptr %12, align 8, !tbaa !32
  %416 = load ptr, ptr %25, align 8, !tbaa !33
  %417 = icmp eq ptr %415, %416
  br i1 %417, label %418, label %422

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %420 = load i8, ptr %419, align 8
  %421 = or i8 %420, 2
  store i8 %421, ptr %419, align 8
  br label %422

422:                                              ; preds = %414, %418
  %423 = ptrtoint ptr %416 to i64
  store i64 %423, ptr %9, align 8, !tbaa !30
  %424 = ptrtoint ptr %415 to i64
  %425 = load i32, ptr %35, align 8, !tbaa !34
  %426 = sext i32 %425 to i64
  %427 = add nsw i64 %426, %424
  %428 = xor i32 %425, -1
  %429 = sext i32 %428 to i64
  %430 = and i64 %427, %429
  %431 = inttoptr i64 %430 to ptr
  %432 = load ptr, ptr %43, align 8, !tbaa !35
  %433 = ptrtoint ptr %432 to i64
  %434 = sub i64 %430, %433
  %435 = load ptr, ptr %10, align 8, !tbaa !31
  %436 = ptrtoint ptr %435 to i64
  %437 = sub i64 %436, %433
  %438 = icmp sgt i64 %434, %437
  %439 = select i1 %438, ptr %435, ptr %431
  store ptr %439, ptr %12, align 8
  store ptr %439, ptr %25, align 8, !tbaa !33
  %440 = add i32 %402, 1
  %441 = zext i32 %402 to i64
  %442 = getelementptr inbounds ptr, ptr %56, i64 %441
  store ptr %416, ptr %442, align 8, !tbaa !42
  %443 = zext i32 %440 to i64
  %444 = getelementptr inbounds ptr, ptr %56, i64 %443
  store ptr null, ptr %444, align 8, !tbaa !42
  %445 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 2
  store ptr %8, ptr %445, align 8, !tbaa !16
  %446 = tail call fastcc i64 @pp_set_verbatim_wrapping_(ptr noundef %0) #16
  %447 = load ptr, ptr %3, align 16, !tbaa !42
  %448 = icmp eq ptr %447, null
  br i1 %448, label %1108, label %449

449:                                              ; preds = %422
  %450 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %451 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  %452 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 4
  %453 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 6
  %454 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  br label %455

455:                                              ; preds = %449, %1082
  %456 = phi ptr [ %447, %449 ], [ %1106, %1082 ]
  %457 = phi i32 [ 0, %449 ], [ %1103, %1082 ]
  %458 = load ptr, ptr %456, align 8, !tbaa !42
  br label %459

459:                                              ; preds = %484, %455
  %460 = phi i32 [ 0, %455 ], [ %485, %484 ]
  %461 = phi i8 [ 0, %455 ], [ %486, %484 ]
  %462 = phi i8 [ 0, %455 ], [ %487, %484 ]
  %463 = phi i8 [ 0, %455 ], [ %488, %484 ]
  %464 = phi i8 [ 0, %455 ], [ %489, %484 ]
  %465 = phi ptr [ %458, %455 ], [ %490, %484 ]
  %466 = load i8, ptr %465, align 1, !tbaa !19
  switch i8 %466, label %491 [
    i8 113, label %467
    i8 43, label %470
    i8 35, label %473
    i8 119, label %476
    i8 108, label %479
  ]

467:                                              ; preds = %459
  %468 = icmp eq i8 %464, 0
  br i1 %468, label %484, label %469

469:                                              ; preds = %467
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #17
  br label %484

470:                                              ; preds = %459
  %471 = icmp eq i8 %462, 0
  br i1 %471, label %484, label %472

472:                                              ; preds = %470
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.1) #17
  br label %484

473:                                              ; preds = %459
  %474 = icmp eq i8 %463, 0
  br i1 %474, label %484, label %475

475:                                              ; preds = %473
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.1) #17
  br label %484

476:                                              ; preds = %459
  %477 = icmp eq i8 %461, 0
  br i1 %477, label %484, label %478

478:                                              ; preds = %476
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 409, ptr noundef nonnull @.str.1) #17
  br label %484

479:                                              ; preds = %459
  %480 = icmp slt i32 %460, 2
  br i1 %480, label %482, label %481

481:                                              ; preds = %479
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 415, ptr noundef nonnull @.str.1) #17
  br label %482

482:                                              ; preds = %479, %481
  %483 = add nsw i32 %460, 1
  br label %484

484:                                              ; preds = %478, %476, %475, %473, %472, %470, %469, %467, %482
  %485 = phi i32 [ %483, %482 ], [ %460, %467 ], [ %460, %469 ], [ %460, %470 ], [ %460, %472 ], [ %460, %473 ], [ %460, %475 ], [ %460, %476 ], [ %460, %478 ]
  %486 = phi i8 [ %461, %482 ], [ %461, %467 ], [ %461, %469 ], [ %461, %470 ], [ %461, %472 ], [ %461, %473 ], [ %461, %475 ], [ 1, %476 ], [ 1, %478 ]
  %487 = phi i8 [ %462, %482 ], [ %462, %467 ], [ %462, %469 ], [ 1, %470 ], [ 1, %472 ], [ %462, %473 ], [ %462, %475 ], [ %462, %476 ], [ %462, %478 ]
  %488 = phi i8 [ %463, %482 ], [ %463, %467 ], [ %463, %469 ], [ %463, %470 ], [ %463, %472 ], [ 1, %473 ], [ 1, %475 ], [ %463, %476 ], [ %463, %478 ]
  %489 = phi i8 [ %464, %482 ], [ 1, %467 ], [ 1, %469 ], [ %464, %470 ], [ %464, %472 ], [ %464, %473 ], [ %464, %475 ], [ %464, %476 ], [ %464, %478 ]
  %490 = getelementptr inbounds i8, ptr %465, i64 1
  br label %459

491:                                              ; preds = %459
  %492 = icmp eq i8 %461, 0
  %493 = icmp eq i32 %460, 0
  %494 = select i1 %492, i1 true, i1 %493
  br i1 %494, label %496, label %495

495:                                              ; preds = %491
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 422, ptr noundef nonnull @.str.1) #17
  br label %496

496:                                              ; preds = %491, %495
  %497 = icmp eq i8 %464, 0
  br i1 %497, label %500, label %498

498:                                              ; preds = %496
  %499 = load ptr, ptr @open_quote, align 8, !tbaa !42
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %499) #16
  br label %500

500:                                              ; preds = %498, %496
  %501 = load i8, ptr %465, align 1, !tbaa !19
  switch i8 %501, label %1052 [
    i8 99, label %502
    i8 100, label %519
    i8 105, label %519
    i8 111, label %609
    i8 115, label %699
    i8 112, label %716
    i8 117, label %738
    i8 120, label %828
    i8 75, label %918
    i8 46, label %984
  ]

502:                                              ; preds = %500
  %503 = load ptr, ptr %450, align 8, !tbaa !46
  %504 = load i32, ptr %503, align 8
  %505 = icmp ult i32 %504, 41
  br i1 %505, label %506, label %512

506:                                              ; preds = %502
  %507 = getelementptr inbounds %struct.__va_list_tag, ptr %503, i64 0, i32 3
  %508 = load ptr, ptr %507, align 8
  %509 = zext nneg i32 %504 to i64
  %510 = getelementptr i8, ptr %508, i64 %509
  %511 = add nuw nsw i32 %504, 8
  store i32 %511, ptr %503, align 8
  br label %516

512:                                              ; preds = %502
  %513 = getelementptr inbounds %struct.__va_list_tag, ptr %503, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8
  %515 = getelementptr i8, ptr %514, i64 8
  store ptr %515, ptr %513, align 8
  br label %516

516:                                              ; preds = %512, %506
  %517 = phi ptr [ %510, %506 ], [ %514, %512 ]
  %518 = load i32, ptr %517, align 4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %518) #16
  br label %1062

519:                                              ; preds = %500, %500
  br i1 %492, label %542, label %520

520:                                              ; preds = %519
  %521 = load ptr, ptr %0, align 8, !tbaa !5
  %522 = getelementptr inbounds %struct.output_buffer, ptr %521, i64 0, i32 6
  %523 = load ptr, ptr %450, align 8, !tbaa !46
  %524 = load i32, ptr %523, align 8
  %525 = icmp ult i32 %524, 41
  br i1 %525, label %526, label %532

526:                                              ; preds = %520
  %527 = getelementptr inbounds %struct.__va_list_tag, ptr %523, i64 0, i32 3
  %528 = load ptr, ptr %527, align 8
  %529 = zext nneg i32 %524 to i64
  %530 = getelementptr i8, ptr %528, i64 %529
  %531 = add nuw nsw i32 %524, 8
  store i32 %531, ptr %523, align 8
  br label %536

532:                                              ; preds = %520
  %533 = getelementptr inbounds %struct.__va_list_tag, ptr %523, i64 0, i32 2
  %534 = load ptr, ptr %533, align 8
  %535 = getelementptr i8, ptr %534, i64 8
  store ptr %535, ptr %533, align 8
  br label %536

536:                                              ; preds = %532, %526
  %537 = phi ptr [ %530, %526 ], [ %534, %532 ]
  %538 = load i64, ptr %537, align 8
  %539 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %522, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %538) #16
  %540 = load ptr, ptr %0, align 8, !tbaa !5
  %541 = getelementptr inbounds %struct.output_buffer, ptr %540, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %541) #16
  br label %1062

542:                                              ; preds = %519
  switch i32 %460, label %1062 [
    i32 0, label %543
    i32 1, label %565
    i32 2, label %587
  ]

543:                                              ; preds = %542
  %544 = load ptr, ptr %0, align 8, !tbaa !5
  %545 = getelementptr inbounds %struct.output_buffer, ptr %544, i64 0, i32 6
  %546 = load ptr, ptr %450, align 8, !tbaa !46
  %547 = load i32, ptr %546, align 8
  %548 = icmp ult i32 %547, 41
  br i1 %548, label %549, label %555

549:                                              ; preds = %543
  %550 = getelementptr inbounds %struct.__va_list_tag, ptr %546, i64 0, i32 3
  %551 = load ptr, ptr %550, align 8
  %552 = zext nneg i32 %547 to i64
  %553 = getelementptr i8, ptr %551, i64 %552
  %554 = add nuw nsw i32 %547, 8
  store i32 %554, ptr %546, align 8
  br label %559

555:                                              ; preds = %543
  %556 = getelementptr inbounds %struct.__va_list_tag, ptr %546, i64 0, i32 2
  %557 = load ptr, ptr %556, align 8
  %558 = getelementptr i8, ptr %557, i64 8
  store ptr %558, ptr %556, align 8
  br label %559

559:                                              ; preds = %555, %549
  %560 = phi ptr [ %553, %549 ], [ %557, %555 ]
  %561 = load i32, ptr %560, align 4
  %562 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %545, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %561) #16
  %563 = load ptr, ptr %0, align 8, !tbaa !5
  %564 = getelementptr inbounds %struct.output_buffer, ptr %563, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %564) #16
  br label %1062

565:                                              ; preds = %542
  %566 = load ptr, ptr %0, align 8, !tbaa !5
  %567 = getelementptr inbounds %struct.output_buffer, ptr %566, i64 0, i32 6
  %568 = load ptr, ptr %450, align 8, !tbaa !46
  %569 = load i32, ptr %568, align 8
  %570 = icmp ult i32 %569, 41
  br i1 %570, label %571, label %577

571:                                              ; preds = %565
  %572 = getelementptr inbounds %struct.__va_list_tag, ptr %568, i64 0, i32 3
  %573 = load ptr, ptr %572, align 8
  %574 = zext nneg i32 %569 to i64
  %575 = getelementptr i8, ptr %573, i64 %574
  %576 = add nuw nsw i32 %569, 8
  store i32 %576, ptr %568, align 8
  br label %581

577:                                              ; preds = %565
  %578 = getelementptr inbounds %struct.__va_list_tag, ptr %568, i64 0, i32 2
  %579 = load ptr, ptr %578, align 8
  %580 = getelementptr i8, ptr %579, i64 8
  store ptr %580, ptr %578, align 8
  br label %581

581:                                              ; preds = %577, %571
  %582 = phi ptr [ %575, %571 ], [ %579, %577 ]
  %583 = load i64, ptr %582, align 8
  %584 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %567, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %583) #16
  %585 = load ptr, ptr %0, align 8, !tbaa !5
  %586 = getelementptr inbounds %struct.output_buffer, ptr %585, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %586) #16
  br label %1062

587:                                              ; preds = %542
  %588 = load ptr, ptr %0, align 8, !tbaa !5
  %589 = getelementptr inbounds %struct.output_buffer, ptr %588, i64 0, i32 6
  %590 = load ptr, ptr %450, align 8, !tbaa !46
  %591 = load i32, ptr %590, align 8
  %592 = icmp ult i32 %591, 41
  br i1 %592, label %593, label %599

593:                                              ; preds = %587
  %594 = getelementptr inbounds %struct.__va_list_tag, ptr %590, i64 0, i32 3
  %595 = load ptr, ptr %594, align 8
  %596 = zext nneg i32 %591 to i64
  %597 = getelementptr i8, ptr %595, i64 %596
  %598 = add nuw nsw i32 %591, 8
  store i32 %598, ptr %590, align 8
  br label %603

599:                                              ; preds = %587
  %600 = getelementptr inbounds %struct.__va_list_tag, ptr %590, i64 0, i32 2
  %601 = load ptr, ptr %600, align 8
  %602 = getelementptr i8, ptr %601, i64 8
  store ptr %602, ptr %600, align 8
  br label %603

603:                                              ; preds = %599, %593
  %604 = phi ptr [ %597, %593 ], [ %601, %599 ]
  %605 = load i64, ptr %604, align 8
  %606 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %589, ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %605) #16
  %607 = load ptr, ptr %0, align 8, !tbaa !5
  %608 = getelementptr inbounds %struct.output_buffer, ptr %607, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %608) #16
  br label %1062

609:                                              ; preds = %500
  br i1 %492, label %632, label %610

610:                                              ; preds = %609
  %611 = load ptr, ptr %0, align 8, !tbaa !5
  %612 = getelementptr inbounds %struct.output_buffer, ptr %611, i64 0, i32 6
  %613 = load ptr, ptr %450, align 8, !tbaa !46
  %614 = load i32, ptr %613, align 8
  %615 = icmp ult i32 %614, 41
  br i1 %615, label %616, label %622

616:                                              ; preds = %610
  %617 = getelementptr inbounds %struct.__va_list_tag, ptr %613, i64 0, i32 3
  %618 = load ptr, ptr %617, align 8
  %619 = zext nneg i32 %614 to i64
  %620 = getelementptr i8, ptr %618, i64 %619
  %621 = add nuw nsw i32 %614, 8
  store i32 %621, ptr %613, align 8
  br label %626

622:                                              ; preds = %610
  %623 = getelementptr inbounds %struct.__va_list_tag, ptr %613, i64 0, i32 2
  %624 = load ptr, ptr %623, align 8
  %625 = getelementptr i8, ptr %624, i64 8
  store ptr %625, ptr %623, align 8
  br label %626

626:                                              ; preds = %622, %616
  %627 = phi ptr [ %620, %616 ], [ %624, %622 ]
  %628 = load i64, ptr %627, align 8
  %629 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %612, ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %628) #16
  %630 = load ptr, ptr %0, align 8, !tbaa !5
  %631 = getelementptr inbounds %struct.output_buffer, ptr %630, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %631) #16
  br label %1062

632:                                              ; preds = %609
  switch i32 %460, label %1062 [
    i32 0, label %633
    i32 1, label %655
    i32 2, label %677
  ]

633:                                              ; preds = %632
  %634 = load ptr, ptr %0, align 8, !tbaa !5
  %635 = getelementptr inbounds %struct.output_buffer, ptr %634, i64 0, i32 6
  %636 = load ptr, ptr %450, align 8, !tbaa !46
  %637 = load i32, ptr %636, align 8
  %638 = icmp ult i32 %637, 41
  br i1 %638, label %639, label %645

639:                                              ; preds = %633
  %640 = getelementptr inbounds %struct.__va_list_tag, ptr %636, i64 0, i32 3
  %641 = load ptr, ptr %640, align 8
  %642 = zext nneg i32 %637 to i64
  %643 = getelementptr i8, ptr %641, i64 %642
  %644 = add nuw nsw i32 %637, 8
  store i32 %644, ptr %636, align 8
  br label %649

645:                                              ; preds = %633
  %646 = getelementptr inbounds %struct.__va_list_tag, ptr %636, i64 0, i32 2
  %647 = load ptr, ptr %646, align 8
  %648 = getelementptr i8, ptr %647, i64 8
  store ptr %648, ptr %646, align 8
  br label %649

649:                                              ; preds = %645, %639
  %650 = phi ptr [ %643, %639 ], [ %647, %645 ]
  %651 = load i32, ptr %650, align 4
  %652 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %635, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %651) #16
  %653 = load ptr, ptr %0, align 8, !tbaa !5
  %654 = getelementptr inbounds %struct.output_buffer, ptr %653, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %654) #16
  br label %1062

655:                                              ; preds = %632
  %656 = load ptr, ptr %0, align 8, !tbaa !5
  %657 = getelementptr inbounds %struct.output_buffer, ptr %656, i64 0, i32 6
  %658 = load ptr, ptr %450, align 8, !tbaa !46
  %659 = load i32, ptr %658, align 8
  %660 = icmp ult i32 %659, 41
  br i1 %660, label %661, label %667

661:                                              ; preds = %655
  %662 = getelementptr inbounds %struct.__va_list_tag, ptr %658, i64 0, i32 3
  %663 = load ptr, ptr %662, align 8
  %664 = zext nneg i32 %659 to i64
  %665 = getelementptr i8, ptr %663, i64 %664
  %666 = add nuw nsw i32 %659, 8
  store i32 %666, ptr %658, align 8
  br label %671

667:                                              ; preds = %655
  %668 = getelementptr inbounds %struct.__va_list_tag, ptr %658, i64 0, i32 2
  %669 = load ptr, ptr %668, align 8
  %670 = getelementptr i8, ptr %669, i64 8
  store ptr %670, ptr %668, align 8
  br label %671

671:                                              ; preds = %667, %661
  %672 = phi ptr [ %665, %661 ], [ %669, %667 ]
  %673 = load i64, ptr %672, align 8
  %674 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %657, ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %673) #16
  %675 = load ptr, ptr %0, align 8, !tbaa !5
  %676 = getelementptr inbounds %struct.output_buffer, ptr %675, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %676) #16
  br label %1062

677:                                              ; preds = %632
  %678 = load ptr, ptr %0, align 8, !tbaa !5
  %679 = getelementptr inbounds %struct.output_buffer, ptr %678, i64 0, i32 6
  %680 = load ptr, ptr %450, align 8, !tbaa !46
  %681 = load i32, ptr %680, align 8
  %682 = icmp ult i32 %681, 41
  br i1 %682, label %683, label %689

683:                                              ; preds = %677
  %684 = getelementptr inbounds %struct.__va_list_tag, ptr %680, i64 0, i32 3
  %685 = load ptr, ptr %684, align 8
  %686 = zext nneg i32 %681 to i64
  %687 = getelementptr i8, ptr %685, i64 %686
  %688 = add nuw nsw i32 %681, 8
  store i32 %688, ptr %680, align 8
  br label %693

689:                                              ; preds = %677
  %690 = getelementptr inbounds %struct.__va_list_tag, ptr %680, i64 0, i32 2
  %691 = load ptr, ptr %690, align 8
  %692 = getelementptr i8, ptr %691, i64 8
  store ptr %692, ptr %690, align 8
  br label %693

693:                                              ; preds = %689, %683
  %694 = phi ptr [ %687, %683 ], [ %691, %689 ]
  %695 = load i64, ptr %694, align 8
  %696 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %679, ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %695) #16
  %697 = load ptr, ptr %0, align 8, !tbaa !5
  %698 = getelementptr inbounds %struct.output_buffer, ptr %697, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %698) #16
  br label %1062

699:                                              ; preds = %500
  %700 = load ptr, ptr %450, align 8, !tbaa !46
  %701 = load i32, ptr %700, align 8
  %702 = icmp ult i32 %701, 41
  br i1 %702, label %703, label %709

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.__va_list_tag, ptr %700, i64 0, i32 3
  %705 = load ptr, ptr %704, align 8
  %706 = zext nneg i32 %701 to i64
  %707 = getelementptr i8, ptr %705, i64 %706
  %708 = add nuw nsw i32 %701, 8
  store i32 %708, ptr %700, align 8
  br label %713

709:                                              ; preds = %699
  %710 = getelementptr inbounds %struct.__va_list_tag, ptr %700, i64 0, i32 2
  %711 = load ptr, ptr %710, align 8
  %712 = getelementptr i8, ptr %711, i64 8
  store ptr %712, ptr %710, align 8
  br label %713

713:                                              ; preds = %709, %703
  %714 = phi ptr [ %707, %703 ], [ %711, %709 ]
  %715 = load ptr, ptr %714, align 8
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %715) #16
  br label %1062

716:                                              ; preds = %500
  %717 = load ptr, ptr %0, align 8, !tbaa !5
  %718 = getelementptr inbounds %struct.output_buffer, ptr %717, i64 0, i32 6
  %719 = load ptr, ptr %450, align 8, !tbaa !46
  %720 = load i32, ptr %719, align 8
  %721 = icmp ult i32 %720, 41
  br i1 %721, label %722, label %728

722:                                              ; preds = %716
  %723 = getelementptr inbounds %struct.__va_list_tag, ptr %719, i64 0, i32 3
  %724 = load ptr, ptr %723, align 8
  %725 = zext nneg i32 %720 to i64
  %726 = getelementptr i8, ptr %724, i64 %725
  %727 = add nuw nsw i32 %720, 8
  store i32 %727, ptr %719, align 8
  br label %732

728:                                              ; preds = %716
  %729 = getelementptr inbounds %struct.__va_list_tag, ptr %719, i64 0, i32 2
  %730 = load ptr, ptr %729, align 8
  %731 = getelementptr i8, ptr %730, i64 8
  store ptr %731, ptr %729, align 8
  br label %732

732:                                              ; preds = %728, %722
  %733 = phi ptr [ %726, %722 ], [ %730, %728 ]
  %734 = load ptr, ptr %733, align 8
  %735 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %718, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %734) #16
  %736 = load ptr, ptr %0, align 8, !tbaa !5
  %737 = getelementptr inbounds %struct.output_buffer, ptr %736, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %737) #16
  br label %1062

738:                                              ; preds = %500
  br i1 %492, label %761, label %739

739:                                              ; preds = %738
  %740 = load ptr, ptr %0, align 8, !tbaa !5
  %741 = getelementptr inbounds %struct.output_buffer, ptr %740, i64 0, i32 6
  %742 = load ptr, ptr %450, align 8, !tbaa !46
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
  %759 = load ptr, ptr %0, align 8, !tbaa !5
  %760 = getelementptr inbounds %struct.output_buffer, ptr %759, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %760) #16
  br label %1062

761:                                              ; preds = %738
  switch i32 %460, label %1062 [
    i32 0, label %762
    i32 1, label %784
    i32 2, label %806
  ]

762:                                              ; preds = %761
  %763 = load ptr, ptr %0, align 8, !tbaa !5
  %764 = getelementptr inbounds %struct.output_buffer, ptr %763, i64 0, i32 6
  %765 = load ptr, ptr %450, align 8, !tbaa !46
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
  %782 = load ptr, ptr %0, align 8, !tbaa !5
  %783 = getelementptr inbounds %struct.output_buffer, ptr %782, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %783) #16
  br label %1062

784:                                              ; preds = %761
  %785 = load ptr, ptr %0, align 8, !tbaa !5
  %786 = getelementptr inbounds %struct.output_buffer, ptr %785, i64 0, i32 6
  %787 = load ptr, ptr %450, align 8, !tbaa !46
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
  %804 = load ptr, ptr %0, align 8, !tbaa !5
  %805 = getelementptr inbounds %struct.output_buffer, ptr %804, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %805) #16
  br label %1062

806:                                              ; preds = %761
  %807 = load ptr, ptr %0, align 8, !tbaa !5
  %808 = getelementptr inbounds %struct.output_buffer, ptr %807, i64 0, i32 6
  %809 = load ptr, ptr %450, align 8, !tbaa !46
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
  %826 = load ptr, ptr %0, align 8, !tbaa !5
  %827 = getelementptr inbounds %struct.output_buffer, ptr %826, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %827) #16
  br label %1062

828:                                              ; preds = %500
  br i1 %492, label %851, label %829

829:                                              ; preds = %828
  %830 = load ptr, ptr %0, align 8, !tbaa !5
  %831 = getelementptr inbounds %struct.output_buffer, ptr %830, i64 0, i32 6
  %832 = load ptr, ptr %450, align 8, !tbaa !46
  %833 = load i32, ptr %832, align 8
  %834 = icmp ult i32 %833, 41
  br i1 %834, label %835, label %841

835:                                              ; preds = %829
  %836 = getelementptr inbounds %struct.__va_list_tag, ptr %832, i64 0, i32 3
  %837 = load ptr, ptr %836, align 8
  %838 = zext nneg i32 %833 to i64
  %839 = getelementptr i8, ptr %837, i64 %838
  %840 = add nuw nsw i32 %833, 8
  store i32 %840, ptr %832, align 8
  br label %845

841:                                              ; preds = %829
  %842 = getelementptr inbounds %struct.__va_list_tag, ptr %832, i64 0, i32 2
  %843 = load ptr, ptr %842, align 8
  %844 = getelementptr i8, ptr %843, i64 8
  store ptr %844, ptr %842, align 8
  br label %845

845:                                              ; preds = %841, %835
  %846 = phi ptr [ %839, %835 ], [ %843, %841 ]
  %847 = load i64, ptr %846, align 8
  %848 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %831, ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %847) #16
  %849 = load ptr, ptr %0, align 8, !tbaa !5
  %850 = getelementptr inbounds %struct.output_buffer, ptr %849, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %850) #16
  br label %1062

851:                                              ; preds = %828
  switch i32 %460, label %1062 [
    i32 0, label %852
    i32 1, label %874
    i32 2, label %896
  ]

852:                                              ; preds = %851
  %853 = load ptr, ptr %0, align 8, !tbaa !5
  %854 = getelementptr inbounds %struct.output_buffer, ptr %853, i64 0, i32 6
  %855 = load ptr, ptr %450, align 8, !tbaa !46
  %856 = load i32, ptr %855, align 8
  %857 = icmp ult i32 %856, 41
  br i1 %857, label %858, label %864

858:                                              ; preds = %852
  %859 = getelementptr inbounds %struct.__va_list_tag, ptr %855, i64 0, i32 3
  %860 = load ptr, ptr %859, align 8
  %861 = zext nneg i32 %856 to i64
  %862 = getelementptr i8, ptr %860, i64 %861
  %863 = add nuw nsw i32 %856, 8
  store i32 %863, ptr %855, align 8
  br label %868

864:                                              ; preds = %852
  %865 = getelementptr inbounds %struct.__va_list_tag, ptr %855, i64 0, i32 2
  %866 = load ptr, ptr %865, align 8
  %867 = getelementptr i8, ptr %866, i64 8
  store ptr %867, ptr %865, align 8
  br label %868

868:                                              ; preds = %864, %858
  %869 = phi ptr [ %862, %858 ], [ %866, %864 ]
  %870 = load i32, ptr %869, align 4
  %871 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %854, ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %870) #16
  %872 = load ptr, ptr %0, align 8, !tbaa !5
  %873 = getelementptr inbounds %struct.output_buffer, ptr %872, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %873) #16
  br label %1062

874:                                              ; preds = %851
  %875 = load ptr, ptr %0, align 8, !tbaa !5
  %876 = getelementptr inbounds %struct.output_buffer, ptr %875, i64 0, i32 6
  %877 = load ptr, ptr %450, align 8, !tbaa !46
  %878 = load i32, ptr %877, align 8
  %879 = icmp ult i32 %878, 41
  br i1 %879, label %880, label %886

880:                                              ; preds = %874
  %881 = getelementptr inbounds %struct.__va_list_tag, ptr %877, i64 0, i32 3
  %882 = load ptr, ptr %881, align 8
  %883 = zext nneg i32 %878 to i64
  %884 = getelementptr i8, ptr %882, i64 %883
  %885 = add nuw nsw i32 %878, 8
  store i32 %885, ptr %877, align 8
  br label %890

886:                                              ; preds = %874
  %887 = getelementptr inbounds %struct.__va_list_tag, ptr %877, i64 0, i32 2
  %888 = load ptr, ptr %887, align 8
  %889 = getelementptr i8, ptr %888, i64 8
  store ptr %889, ptr %887, align 8
  br label %890

890:                                              ; preds = %886, %880
  %891 = phi ptr [ %884, %880 ], [ %888, %886 ]
  %892 = load i64, ptr %891, align 8
  %893 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %876, ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %892) #16
  %894 = load ptr, ptr %0, align 8, !tbaa !5
  %895 = getelementptr inbounds %struct.output_buffer, ptr %894, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %895) #16
  br label %1062

896:                                              ; preds = %851
  %897 = load ptr, ptr %0, align 8, !tbaa !5
  %898 = getelementptr inbounds %struct.output_buffer, ptr %897, i64 0, i32 6
  %899 = load ptr, ptr %450, align 8, !tbaa !46
  %900 = load i32, ptr %899, align 8
  %901 = icmp ult i32 %900, 41
  br i1 %901, label %902, label %908

902:                                              ; preds = %896
  %903 = getelementptr inbounds %struct.__va_list_tag, ptr %899, i64 0, i32 3
  %904 = load ptr, ptr %903, align 8
  %905 = zext nneg i32 %900 to i64
  %906 = getelementptr i8, ptr %904, i64 %905
  %907 = add nuw nsw i32 %900, 8
  store i32 %907, ptr %899, align 8
  br label %912

908:                                              ; preds = %896
  %909 = getelementptr inbounds %struct.__va_list_tag, ptr %899, i64 0, i32 2
  %910 = load ptr, ptr %909, align 8
  %911 = getelementptr i8, ptr %910, i64 8
  store ptr %911, ptr %909, align 8
  br label %912

912:                                              ; preds = %908, %902
  %913 = phi ptr [ %906, %902 ], [ %910, %908 ]
  %914 = load i64, ptr %913, align 8
  %915 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %898, ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %914) #16
  %916 = load ptr, ptr %0, align 8, !tbaa !5
  %917 = getelementptr inbounds %struct.output_buffer, ptr %916, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %917) #16
  br label %1062

918:                                              ; preds = %500
  %919 = load ptr, ptr %450, align 8, !tbaa !46
  %920 = load i32, ptr %919, align 8
  %921 = icmp ult i32 %920, 41
  br i1 %921, label %922, label %928

922:                                              ; preds = %918
  %923 = getelementptr inbounds %struct.__va_list_tag, ptr %919, i64 0, i32 3
  %924 = load ptr, ptr %923, align 8
  %925 = zext nneg i32 %920 to i64
  %926 = getelementptr i8, ptr %924, i64 %925
  %927 = add nuw nsw i32 %920, 8
  store i32 %927, ptr %919, align 8
  br label %932

928:                                              ; preds = %918
  %929 = getelementptr inbounds %struct.__va_list_tag, ptr %919, i64 0, i32 2
  %930 = load ptr, ptr %929, align 8
  %931 = getelementptr i8, ptr %930, i64 8
  store ptr %931, ptr %929, align 8
  br label %932

932:                                              ; preds = %928, %922
  %933 = phi ptr [ %926, %922 ], [ %930, %928 ]
  %934 = load ptr, ptr %933, align 8
  %935 = load ptr, ptr %451, align 8, !tbaa !47
  %936 = icmp eq ptr %935, null
  br i1 %936, label %937, label %938

937:                                              ; preds = %932
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 480, ptr noundef nonnull @.str.1) #17
  br label %938

938:                                              ; preds = %932, %937
  %939 = load i64, ptr %934, align 8
  %940 = and i64 %939, 65535
  %941 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %940
  %942 = load i32, ptr %941, align 4, !tbaa !48
  %943 = add i32 %942, -4
  %944 = icmp ult i32 %943, 7
  br i1 %944, label %945, label %948

945:                                              ; preds = %938
  %946 = getelementptr inbounds %struct.tree_exp, ptr %934, i64 0, i32 1
  %947 = load i32, ptr %946, align 8, !tbaa !19
  br label %948

948:                                              ; preds = %938, %945
  %949 = phi i32 [ %947, %945 ], [ 0, %938 ]
  %950 = load ptr, ptr %451, align 8, !tbaa !47
  store i32 %949, ptr %950, align 4, !tbaa !48
  %951 = load ptr, ptr %452, align 8, !tbaa !49
  %952 = icmp eq ptr %951, null
  br i1 %952, label %953, label %954

953:                                              ; preds = %948
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 482, ptr noundef nonnull @.str.1) #17
  br label %954

954:                                              ; preds = %948, %953
  %955 = tail call ptr @tree_block(ptr noundef nonnull %934) #17
  %956 = load ptr, ptr %955, align 8, !tbaa !42
  %957 = load ptr, ptr %452, align 8, !tbaa !49
  store ptr null, ptr %957, align 8, !tbaa !42
  %958 = icmp eq ptr %956, null
  br i1 %958, label %1062, label %959

959:                                              ; preds = %954, %980
  %960 = phi ptr [ %982, %980 ], [ %956, %954 ]
  %961 = load i64, ptr %960, align 8
  %962 = and i64 %961, 65535
  %963 = icmp eq i64 %962, 4
  br i1 %963, label %964, label %1062

964:                                              ; preds = %959
  %965 = getelementptr inbounds %struct.tree_block, ptr %960, i64 0, i32 7
  %966 = load ptr, ptr %965, align 8, !tbaa !19
  %967 = icmp eq ptr %966, null
  br i1 %967, label %1062, label %968

968:                                              ; preds = %964, %972
  %969 = phi ptr [ %974, %972 ], [ %966, %964 ]
  %970 = load i64, ptr %969, align 8
  %971 = trunc i64 %970 to i16
  switch i16 %971, label %980 [
    i16 4, label %972
    i16 29, label %978
  ]

972:                                              ; preds = %968
  %973 = getelementptr inbounds %struct.tree_block, ptr %969, i64 0, i32 7
  %974 = load ptr, ptr %973, align 8, !tbaa !19
  %975 = icmp eq ptr %974, null
  %976 = icmp eq ptr %974, %969
  %977 = or i1 %975, %976
  br i1 %977, label %980, label %968, !llvm.loop !50

978:                                              ; preds = %968
  %979 = load ptr, ptr %452, align 8, !tbaa !49
  store ptr %960, ptr %979, align 8, !tbaa !42
  br label %1062

980:                                              ; preds = %968, %972
  %981 = getelementptr inbounds %struct.tree_block, ptr %960, i64 0, i32 6
  %982 = load ptr, ptr %981, align 8, !tbaa !19
  %983 = icmp eq ptr %982, null
  br i1 %983, label %1062, label %959

984:                                              ; preds = %500
  %985 = getelementptr inbounds i8, ptr %465, i64 1
  %986 = load i8, ptr %985, align 1, !tbaa !19
  %987 = zext i8 %986 to i64
  %988 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %987
  %989 = load i16, ptr %988, align 2, !tbaa !28
  %990 = and i16 %989, 4
  %991 = icmp eq i16 %990, 0
  br i1 %991, label %1000, label %992

992:                                              ; preds = %984
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %993 = call i64 @strtoul(ptr noundef nonnull %985, ptr noundef nonnull %6, i32 noundef 10) #16
  %994 = trunc i64 %993 to i32
  %995 = load ptr, ptr %6, align 8, !tbaa !42
  %996 = load i8, ptr %995, align 1, !tbaa !19
  %997 = icmp eq i8 %996, 115
  br i1 %997, label %999, label %998

998:                                              ; preds = %992
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.1) #17
  br label %999

999:                                              ; preds = %992, %998
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %1031

1000:                                             ; preds = %984
  %1001 = icmp eq i8 %986, 42
  br i1 %1001, label %1003, label %1002

1002:                                             ; preds = %1000
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 524, ptr noundef nonnull @.str.1) #17
  br label %1003

1003:                                             ; preds = %1000, %1002
  %1004 = getelementptr inbounds i8, ptr %465, i64 2
  %1005 = load i8, ptr %1004, align 1, !tbaa !19
  %1006 = icmp eq i8 %1005, 115
  br i1 %1006, label %1008, label %1007

1007:                                             ; preds = %1003
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 526, ptr noundef nonnull @.str.1) #17
  br label %1008

1008:                                             ; preds = %1003, %1007
  %1009 = load ptr, ptr %450, align 8, !tbaa !46
  %1010 = load i32, ptr %1009, align 8
  %1011 = icmp ult i32 %1010, 41
  br i1 %1011, label %1012, label %1018

1012:                                             ; preds = %1008
  %1013 = getelementptr inbounds %struct.__va_list_tag, ptr %1009, i64 0, i32 3
  %1014 = load ptr, ptr %1013, align 8
  %1015 = zext nneg i32 %1010 to i64
  %1016 = getelementptr i8, ptr %1014, i64 %1015
  %1017 = add nuw nsw i32 %1010, 8
  store i32 %1017, ptr %1009, align 8
  br label %1022

1018:                                             ; preds = %1008
  %1019 = getelementptr inbounds %struct.__va_list_tag, ptr %1009, i64 0, i32 2
  %1020 = load ptr, ptr %1019, align 8
  %1021 = getelementptr i8, ptr %1020, i64 8
  store ptr %1021, ptr %1019, align 8
  br label %1022

1022:                                             ; preds = %1018, %1012
  %1023 = phi ptr [ %1016, %1012 ], [ %1020, %1018 ]
  %1024 = load i32, ptr %1023, align 4
  %1025 = add i32 %457, 1
  %1026 = zext i32 %1025 to i64
  %1027 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1026
  %1028 = load ptr, ptr %1027, align 8, !tbaa !42
  %1029 = icmp eq ptr %456, %1028
  br i1 %1029, label %1031, label %1030

1030:                                             ; preds = %1022
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 530, ptr noundef nonnull @.str.1) #17
  br label %1031

1031:                                             ; preds = %1030, %1022, %999
  %1032 = phi i32 [ %457, %999 ], [ %1025, %1022 ], [ %1025, %1030 ]
  %1033 = phi i32 [ %994, %999 ], [ %1024, %1022 ], [ %1024, %1030 ]
  %1034 = load ptr, ptr %450, align 8, !tbaa !46
  %1035 = load i32, ptr %1034, align 8
  %1036 = icmp ult i32 %1035, 41
  br i1 %1036, label %1037, label %1043

1037:                                             ; preds = %1031
  %1038 = getelementptr inbounds %struct.__va_list_tag, ptr %1034, i64 0, i32 3
  %1039 = load ptr, ptr %1038, align 8
  %1040 = zext nneg i32 %1035 to i64
  %1041 = getelementptr i8, ptr %1039, i64 %1040
  %1042 = add nuw nsw i32 %1035, 8
  store i32 %1042, ptr %1034, align 8
  br label %1047

1043:                                             ; preds = %1031
  %1044 = getelementptr inbounds %struct.__va_list_tag, ptr %1034, i64 0, i32 2
  %1045 = load ptr, ptr %1044, align 8
  %1046 = getelementptr i8, ptr %1045, i64 8
  store ptr %1046, ptr %1044, align 8
  br label %1047

1047:                                             ; preds = %1043, %1037
  %1048 = phi ptr [ %1041, %1037 ], [ %1045, %1043 ]
  %1049 = load ptr, ptr %1048, align 8
  %1050 = sext i32 %1033 to i64
  %1051 = getelementptr inbounds i8, ptr %1049, i64 %1050
  tail call void @pp_base_append_text(ptr noundef %0, ptr noundef %1049, ptr noundef %1051) #16
  br label %1062

1052:                                             ; preds = %500
  %1053 = load ptr, ptr %453, align 8, !tbaa !51
  %1054 = icmp eq ptr %1053, null
  br i1 %1054, label %1055, label %1057

1055:                                             ; preds = %1052
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 543, ptr noundef nonnull @.str.1) #17
  %1056 = load ptr, ptr %453, align 8, !tbaa !51
  br label %1057

1057:                                             ; preds = %1052, %1055
  %1058 = phi ptr [ %1053, %1052 ], [ %1056, %1055 ]
  %1059 = tail call zeroext i8 %1058(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %465, i32 noundef %460, i8 noundef zeroext %461, i8 noundef zeroext %462, i8 noundef zeroext %463) #17
  %1060 = icmp eq i8 %1059, 0
  br i1 %1060, label %1061, label %1062

1061:                                             ; preds = %1057
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 546, ptr noundef nonnull @.str.1) #17
  br label %1062

1062:                                             ; preds = %959, %980, %964, %954, %978, %1061, %1057, %845, %851, %912, %890, %868, %755, %761, %822, %800, %778, %626, %632, %693, %671, %649, %536, %542, %603, %581, %559, %1047, %732, %713, %516
  %1063 = phi i32 [ %1032, %1047 ], [ %457, %845 ], [ %457, %851 ], [ %457, %912 ], [ %457, %890 ], [ %457, %868 ], [ %457, %755 ], [ %457, %761 ], [ %457, %822 ], [ %457, %800 ], [ %457, %778 ], [ %457, %732 ], [ %457, %713 ], [ %457, %626 ], [ %457, %632 ], [ %457, %693 ], [ %457, %671 ], [ %457, %649 ], [ %457, %536 ], [ %457, %542 ], [ %457, %603 ], [ %457, %581 ], [ %457, %559 ], [ %457, %516 ], [ %457, %1057 ], [ %457, %1061 ], [ %457, %978 ], [ %457, %954 ], [ %457, %964 ], [ %457, %980 ], [ %457, %959 ]
  br i1 %497, label %1066, label %1064

1064:                                             ; preds = %1062
  %1065 = load ptr, ptr @close_quote, align 8, !tbaa !42
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1065) #16
  br label %1066

1066:                                             ; preds = %1064, %1062
  %1067 = load ptr, ptr %12, align 8, !tbaa !32
  %1068 = getelementptr inbounds i8, ptr %1067, i64 1
  %1069 = load ptr, ptr %10, align 8, !tbaa !31
  %1070 = icmp ugt ptr %1068, %1069
  br i1 %1070, label %1071, label %1073

1071:                                             ; preds = %1066
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #17
  %1072 = load ptr, ptr %12, align 8, !tbaa !32
  br label %1073

1073:                                             ; preds = %1066, %1071
  %1074 = phi ptr [ %1067, %1066 ], [ %1072, %1071 ]
  %1075 = getelementptr inbounds i8, ptr %1074, i64 1
  store ptr %1075, ptr %12, align 8, !tbaa !32
  store i8 0, ptr %1074, align 1, !tbaa !19
  %1076 = load ptr, ptr %12, align 8, !tbaa !32
  %1077 = load ptr, ptr %25, align 8, !tbaa !33
  %1078 = icmp eq ptr %1076, %1077
  br i1 %1078, label %1079, label %1082

1079:                                             ; preds = %1073
  %1080 = load i8, ptr %454, align 8
  %1081 = or i8 %1080, 2
  store i8 %1081, ptr %454, align 8
  br label %1082

1082:                                             ; preds = %1073, %1079
  %1083 = ptrtoint ptr %1077 to i64
  store i64 %1083, ptr %9, align 8, !tbaa !30
  %1084 = ptrtoint ptr %1076 to i64
  %1085 = load i32, ptr %35, align 8, !tbaa !34
  %1086 = sext i32 %1085 to i64
  %1087 = add nsw i64 %1086, %1084
  %1088 = xor i32 %1085, -1
  %1089 = sext i32 %1088 to i64
  %1090 = and i64 %1087, %1089
  %1091 = inttoptr i64 %1090 to ptr
  %1092 = load ptr, ptr %43, align 8, !tbaa !35
  %1093 = ptrtoint ptr %1092 to i64
  %1094 = sub i64 %1090, %1093
  %1095 = load ptr, ptr %10, align 8, !tbaa !31
  %1096 = ptrtoint ptr %1095 to i64
  %1097 = sub i64 %1096, %1093
  %1098 = icmp sgt i64 %1094, %1097
  %1099 = select i1 %1098, ptr %1095, ptr %1091
  store ptr %1099, ptr %12, align 8
  store ptr %1099, ptr %25, align 8, !tbaa !33
  %1100 = zext i32 %1063 to i64
  %1101 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1100
  %1102 = load ptr, ptr %1101, align 8, !tbaa !42
  store ptr %1077, ptr %1102, align 8, !tbaa !42
  %1103 = add i32 %1063, 1
  %1104 = zext i32 %1103 to i64
  %1105 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1104
  %1106 = load ptr, ptr %1105, align 8, !tbaa !42
  %1107 = icmp eq ptr %1106, null
  br i1 %1107, label %1108, label %455, !llvm.loop !52

1108:                                             ; preds = %1082, %422
  store ptr %7, ptr %445, align 8, !tbaa !16
  %1109 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 5
  store i32 0, ptr %1109, align 8, !tbaa !23
  %1110 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  store i64 %446, ptr %1110, align 4, !tbaa.struct !53
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
define internal fastcc i64 @pp_set_verbatim_wrapping_(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 4, !tbaa.struct !53
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 0, ptr %4, align 4, !tbaa !27
  store i32 1, ptr %2, align 4, !tbaa !54
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

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
define dso_local void @pp_base_append_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  tail call void @pp_base_emit_prefix(ptr noundef nonnull %0) #16
  %11 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !27
  %13 = icmp slt i32 %12, 1
  %14 = icmp eq ptr %1, %2
  %15 = or i1 %13, %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = sub i64 %5, %4
  %18 = getelementptr i8, ptr %1, i64 %17
  br label %19

19:                                               ; preds = %16, %23
  %20 = phi ptr [ %24, %23 ], [ %1, %16 ]
  %21 = load i8, ptr %20, align 1, !tbaa !19
  %22 = icmp eq i8 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %19, !llvm.loop !55

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
define internal fastcc void @pp_clear_state(ptr nocapture noundef writeonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_output_formatted_text(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.chunk_info, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load ptr, ptr %5, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %15 ]
  %20 = phi i32 [ %21, %18 ], [ 0, %15 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %19) #16
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %5, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !llvm.loop !57

26:                                               ; preds = %18, %15
  %27 = load ptr, ptr %4, align 8, !tbaa !37
  store ptr %27, ptr %3, align 8, !tbaa !36
  %28 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1
  %29 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = ptrtoint ptr %4 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 5
  store i64 %33, ptr %34, align 8, !tbaa !30
  %35 = icmp sgt i64 %33, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !31
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %32
  %41 = icmp slt i64 %33, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %30, i64 %33
  %44 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 3
  store ptr %43, ptr %45, align 8, !tbaa !32
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
define dso_local void @pp_base_format_verbatim(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @pp_set_verbatim_wrapping_(ptr noundef %0) #16
  tail call void @pp_base_format(ptr noundef %0, ptr noundef %1) #16
  tail call void @pp_base_output_formatted_text(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  store i64 %3, ptr %4, align 4, !tbaa.struct !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_flush(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @pp_write_text_to_stream(ptr noundef %0) #16
  tail call fastcc void @pp_clear_state(ptr noundef %0) #16
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = tail call i32 @fputc(i32 noundef 10, ptr noundef %4) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = tail call i32 @fflush(ptr noundef %8) #16
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  store i8 0, ptr %10, align 1, !tbaa !58
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pp_base_set_line_maximum_length(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !27
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pp_set_real_maximum_length(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !27
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !59
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
  store i32 %23, ptr %24, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pp_base_set_prefix(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !59
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @pp_base_destroy_prefix(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !59
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_emit_prefix(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !54
  switch i32 %7, label %21 [
    i32 2, label %17
    i32 0, label %8
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @pp_base_indent(ptr noundef nonnull %0) #16
  br label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !24
  %16 = add nsw i32 %15, 3
  store i32 %16, ptr %14, align 8, !tbaa !24
  br label %17

17:                                               ; preds = %5, %13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #16
  %19 = trunc i64 %18 to i32
  tail call fastcc void @pp_append_r(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %19) #16
  %20 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 1, ptr %20, align 8, !tbaa !56
  br label %21

21:                                               ; preds = %12, %17, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_append_r(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.output_buffer, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 5
  store i64 %4, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds i8, ptr %10, i64 %4
  %12 = getelementptr inbounds %struct.obstack, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull %7, i32 noundef %2) #17
  %16 = load ptr, ptr %0, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.output_buffer, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.obstack, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.obstack, ptr %18, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !22
  br label %23

23:                                               ; preds = %3, %15
  %24 = phi i64 [ %4, %3 ], [ %22, %15 ]
  %25 = phi ptr [ %10, %3 ], [ %20, %15 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %1, i64 %24, i1 false)
  %26 = load ptr, ptr %0, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.output_buffer, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = getelementptr inbounds %struct.obstack, ptr %28, i64 0, i32 5
  %30 = load i64, ptr %29, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.obstack, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = getelementptr inbounds i8, ptr %32, i64 %30
  store ptr %33, ptr %31, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.output_buffer, ptr %26, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !23
  %36 = add nsw i32 %35, %2
  store i32 %36, ptr %34, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_construct(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 336) #17
  store ptr %4, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.output_buffer, ptr %4, i64 0, i32 1
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = tail call i32 @_obstack_begin(ptr noundef %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !16
  %11 = load ptr, ptr @stderr, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 %2, ptr %14, align 4, !tbaa !27
  store i32 0, ptr %13, align 4, !tbaa !54
  tail call void @pp_base_set_prefix(ptr noundef nonnull %0, ptr noundef %1) #16
  %15 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  store i8 1, ptr %15, align 2, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pp_base_last_position_in_text(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = icmp eq ptr %6, %8
  %10 = getelementptr inbounds i8, ptr %8, i64 -1
  %11 = select i1 %9, ptr null, ptr %10
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pp_base_remaining_character_count_for_line(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.output_buffer, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = sub nsw i32 %3, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_printf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.text_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !46
  store ptr %1, ptr %3, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !47
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
define dso_local void @pp_verbatim(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.text_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #17
  %6 = load i32, ptr %5, align 4, !tbaa !48
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !46
  store ptr %1, ptr %3, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !47
  call void @pp_base_format_verbatim(ptr noundef %0, ptr noundef nonnull %3) #16
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_newline(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull %4, i32 noundef 1) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.output_buffer, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %1, %11
  %18 = phi ptr [ %6, %1 ], [ %16, %11 ]
  %19 = phi ptr [ %4, %1 ], [ %14, %11 ]
  %20 = getelementptr inbounds %struct.obstack, ptr %19, i64 0, i32 3
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %21, ptr %20, align 8, !tbaa !17
  store i8 10, ptr %18, align 1, !tbaa !19
  %22 = load ptr, ptr %0, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.output_buffer, ptr %22, i64 0, i32 5
  store i32 0, ptr %23, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_maybe_wrap_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !27
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

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
define dso_local void @pp_base_maybe_space(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #16
  store i32 0, ptr %2, align 8, !tbaa !62
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_base_tree_identifier(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 2, !tbaa !61
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %5, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @identifier_to_locale(ptr noundef %7) #16
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #16
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  tail call void @pp_base_append_text(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %11) #16
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !19
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %7, i64 %15
  tail call void @pp_base_append_text(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %16) #16
  br label %17

17:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @identifier_to_locale(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %77, label %6

6:                                                ; preds = %1, %19
  %7 = phi i8 [ %22, %19 ], [ 1, %1 ]
  %8 = phi i64 [ %23, %19 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = sub i64 %4, %8
  %11 = call fastcc i32 @decode_utf8_char(ptr noundef %9, i64 noundef %10, ptr noundef nonnull %2) #16
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %2, align 4
  %14 = icmp ult i32 %13, 32
  %15 = select i1 %12, i1 true, i1 %14
  %16 = add i32 %13, -127
  %17 = icmp ult i32 %16, 33
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = sext i32 %11 to i64
  %21 = icmp ugt i32 %11, 1
  %22 = select i1 %21, i8 0, i8 %7
  %23 = add i64 %8, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %24 = icmp ult i64 %23, %4
  br i1 %24, label %6, label %46

25:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %26 = shl i64 %4, 2
  %27 = or disjoint i64 %26, 1
  %28 = tail call ptr @ggc_alloc_stat(i64 noundef %27) #17
  br label %29

29:                                               ; preds = %25, %42
  %30 = phi ptr [ %28, %25 ], [ %43, %42 ]
  %31 = phi i64 [ 0, %25 ], [ %44, %42 ]
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !19
  %34 = add i8 %33, -32
  %35 = icmp ult i8 %34, 95
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %33, ptr %30, align 1, !tbaa !19
  br label %42

38:                                               ; preds = %29
  %39 = zext i8 %33 to i32
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %39) #16
  %41 = getelementptr inbounds i8, ptr %30, i64 4
  br label %42

42:                                               ; preds = %36, %38
  %43 = phi ptr [ %37, %36 ], [ %41, %38 ]
  %44 = add nuw i64 %31, 1
  %45 = icmp eq i64 %44, %4
  br i1 %45, label %74, label %29, !llvm.loop !63

46:                                               ; preds = %19
  %47 = icmp ne i8 %22, 0
  %48 = load i8, ptr @locale_utf8, align 1
  %49 = icmp ne i8 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %77, label %51

51:                                               ; preds = %46
  %52 = mul i64 %4, 10
  %53 = or disjoint i64 %52, 1
  %54 = tail call ptr @ggc_alloc_stat(i64 noundef %53) #17
  br label %55

55:                                               ; preds = %51, %70
  %56 = phi ptr [ %71, %70 ], [ %54, %51 ]
  %57 = phi i64 [ %72, %70 ], [ 0, %51 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  %59 = sub i64 %4, %57
  %60 = call fastcc i32 @decode_utf8_char(ptr noundef %58, i64 noundef %59, ptr noundef nonnull %3) #16
  %61 = sext i32 %60 to i64
  %62 = icmp eq i32 %60, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i8, ptr %58, align 1, !tbaa !19
  %65 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %64, ptr %56, align 1, !tbaa !19
  br label %70

66:                                               ; preds = %55
  %67 = load i32, ptr %3, align 4, !tbaa !48
  %68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %67) #16
  %69 = getelementptr inbounds i8, ptr %56, i64 10
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi ptr [ %65, %63 ], [ %69, %66 ]
  %72 = add i64 %57, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %73 = icmp ult i64 %72, %4
  br i1 %73, label %55, label %74, !llvm.loop !64

74:                                               ; preds = %70, %42
  %75 = phi ptr [ %43, %42 ], [ %71, %70 ]
  %76 = phi ptr [ %28, %42 ], [ %54, %70 ]
  store i8 0, ptr %75, align 1, !tbaa !19
  br label %77

77:                                               ; preds = %74, %1, %46
  %78 = phi ptr [ %0, %46 ], [ %0, %1 ], [ %76, %74 ]
  ret ptr %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @decode_utf8_char(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load i8, ptr %0, align 1, !tbaa !19
  %5 = zext i8 %4 to i32
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 862, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp sgt i8 %4, -1
  br i1 %9, label %69, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %0, align 1, !tbaa !19
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
  br i1 %20, label %21, label %14, !llvm.loop !65

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
  %36 = load i8, ptr %35, align 1, !tbaa !19
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
  br i1 %45, label %46, label %32, !llvm.loop !66

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
  store i32 %70, ptr %2, align 4, !tbaa !48
  ret i32 %71
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_wrap_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = ptrtoint ptr %2 to i64
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !27
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
  %17 = load i8, ptr %16, align 1, !tbaa !19
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !28
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  %23 = icmp ne i8 %17, 10
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds i8, ptr %16, i64 1
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %15, !llvm.loop !67

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
  %39 = load i8, ptr %29, align 1, !tbaa !19
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !28
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
  %51 = load i8, ptr %48, align 1, !tbaa !19
  %52 = icmp eq i8 %51, 10
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  tail call void @pp_base_newline(ptr noundef %0) #16
  %54 = getelementptr inbounds i8, ptr %48, i64 1
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi ptr [ %54, %53 ], [ %48, %50 ]
  %57 = icmp eq ptr %56, %2
  br i1 %57, label %58, label %9, !llvm.loop !68

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"pretty_print_info", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 28, !7, i64 40, !8, i64 48, !8, i64 49, !8, i64 50}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !10, i64 0, !10, i64 4}
!12 = !{!13, !7, i64 192}
!13 = !{!"", !14, i64 0, !14, i64 88, !7, i64 176, !7, i64 184, !7, i64 192, !10, i64 200, !8, i64 204}
!14 = !{!"obstack", !15, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !15, i64 40, !10, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !10, i64 80, !10, i64 80, !10, i64 80}
!15 = !{!"long", !8, i64 0}
!16 = !{!13, !7, i64 176}
!17 = !{!14, !7, i64 24}
!18 = !{!14, !7, i64 32}
!19 = !{!8, !8, i64 0}
!20 = !{!14, !7, i64 16}
!21 = !{!14, !7, i64 8}
!22 = !{!14, !15, i64 40}
!23 = !{!13, !10, i64 200}
!24 = !{!6, !10, i64 24}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!6, !10, i64 32}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !8, i64 0}
!30 = !{!13, !15, i64 128}
!31 = !{!13, !7, i64 120}
!32 = !{!13, !7, i64 112}
!33 = !{!13, !7, i64 104}
!34 = !{!13, !10, i64 136}
!35 = !{!13, !7, i64 96}
!36 = !{!13, !7, i64 184}
!37 = !{!38, !7, i64 0}
!38 = !{!"chunk_info", !7, i64 0, !8, i64 8}
!39 = !{!40, !7, i64 0}
!40 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32}
!41 = distinct !{!41, !26}
!42 = !{!7, !7, i64 0}
!43 = !{!40, !10, i64 16}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = !{!40, !7, i64 8}
!47 = !{!40, !7, i64 24}
!48 = !{!10, !10, i64 0}
!49 = !{!40, !7, i64 32}
!50 = distinct !{!50, !26}
!51 = !{!6, !7, i64 40}
!52 = distinct !{!52, !26}
!53 = !{i64 0, i64 4, !48, i64 4, i64 4, !48}
!54 = !{!6, !10, i64 28}
!55 = distinct !{!55, !26}
!56 = !{!6, !8, i64 48}
!57 = distinct !{!57, !26}
!58 = !{!6, !8, i64 49}
!59 = !{!6, !7, i64 8}
!60 = !{!6, !10, i64 20}
!61 = !{!6, !8, i64 50}
!62 = !{!6, !10, i64 16}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
