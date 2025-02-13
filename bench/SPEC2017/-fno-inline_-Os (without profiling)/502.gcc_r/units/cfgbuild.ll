; ModuleID = 'cfgbuild.c'
source_filename = "cfgbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [11 x i8] c"cfgbuild.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @inside_basic_block_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %25 [
    i16 12, label %4
    i16 9, label %18
    i16 10, label %26
    i16 8, label %26
    i16 7, label %26
    i16 11, label %24
    i16 13, label %24
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65534
  %17 = icmp ne i32 %16, 20
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65534
  %23 = icmp ne i32 %22, 20
  br label %26

24:                                               ; preds = %1, %1
  br label %26

25:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @.str.1) #8
  br label %26

26:                                               ; preds = %12, %1, %1, %1, %4, %8, %25, %24, %18
  %27 = phi i1 [ false, %25 ], [ false, %24 ], [ %23, %18 ], [ true, %8 ], [ true, %4 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ %17, %12 ]
  %28 = zext i1 %27 to i8
  ret i8 %28
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @control_flow_insn_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %40 [
    i16 13, label %43
    i16 12, label %43
    i16 7, label %43
    i16 9, label %4
    i16 10, label %11
    i16 8, label %26
    i16 11, label %43
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65534
  %9 = icmp ne i32 %8, 20
  %10 = zext i1 %9 to i8
  br label %43

11:                                               ; preds = %1
  %12 = and i32 %2, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14, %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 14
  br i1 %22, label %23, label %43

23:                                               ; preds = %17, %14
  %24 = tail call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %0) #8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %43

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 29
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !8
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %32, %26
  %38 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %41

40:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.1) #8
  br label %41

41:                                               ; preds = %37, %23, %40
  %42 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %0) #8
  br label %43

43:                                               ; preds = %1, %37, %32, %23, %17, %1, %1, %1, %41, %4
  %44 = phi i8 [ %42, %41 ], [ %10, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1, %17 ], [ 1, %23 ], [ 1, %32 ], [ 0, %37 ], [ 0, %1 ]
  ret i8 %44
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_nonlocal_goto(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rtl_make_eh_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @get_eh_landing_pad_from_rtx(ptr noundef %2) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #8
  %15 = load ptr, ptr %11, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %12, %10 ], [ %15, %14 ]
  %18 = tail call ptr @label_rtx(ptr noundef %17) #8
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi ptr [ %18, %16 ], [ %8, %6 ]
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  %24 = select i1 %23, i32 14, i32 10
  tail call fastcc void @make_label_edge(ptr noundef %0, ptr noundef %1, ptr noundef %20, i32 noundef %24) #9
  br label %25

25:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @get_eh_landing_pad_from_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @label_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_label_edge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #8
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = tail call ptr @cached_make_edge(ptr noundef %0, ptr noundef %1, ptr noundef %15, i32 noundef %3) #8
  br label %17

17:                                               ; preds = %9, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_many_sub_basic_blocks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %54, label %14

13:                                               ; preds = %14
  br i1 %12, label %54, label %33

14:                                               ; preds = %1, %14
  %15 = phi ptr [ %31, %14 ], [ %11, %1 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !23
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !24
  %22 = and i32 %17, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %21
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %26, i64 1, i64 2
  %28 = inttoptr i64 %27 to ptr
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !20
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %13, label %14, !llvm.loop !26

33:                                               ; preds = %13, %43
  %34 = phi ptr [ %44, %43 ], [ %4, %13 ]
  %35 = phi ptr [ %46, %43 ], [ %11, %13 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !25
  %38 = ptrtoint ptr %37 to i64
  %39 = and i64 %38, 4294967295
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  tail call fastcc void @find_bb_boundaries(ptr noundef nonnull %35) #9
  %42 = load ptr, ptr @cfun, align 8, !tbaa !8
  br label %43

43:                                               ; preds = %33, %41
  %44 = phi ptr [ %34, %33 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !20
  %47 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !15
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !19
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %52, label %33, !llvm.loop !28

52:                                               ; preds = %43
  %53 = load ptr, ptr %48, align 8, !tbaa !17
  br label %54

54:                                               ; preds = %1, %52, %13
  %55 = phi ptr [ %7, %13 ], [ %53, %52 ], [ %7, %1 ]
  %56 = phi ptr [ %9, %13 ], [ %46, %52 ], [ %9, %1 ]
  br label %57

57:                                               ; preds = %62, %54
  %58 = phi ptr [ %55, %54 ], [ %60, %62 ]
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !20
  %61 = icmp eq ptr %60, %56
  br i1 %61, label %82, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !25
  %65 = ptrtoint ptr %64 to i64
  %66 = and i64 %65, 4294967295
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %57, label %68, !llvm.loop !29

68:                                               ; preds = %62
  %69 = icmp eq ptr %60, %56
  br i1 %69, label %82, label %70

70:                                               ; preds = %68, %70
  %71 = phi ptr [ %80, %70 ], [ %60, %68 ]
  %72 = phi ptr [ %78, %70 ], [ %60, %68 ]
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !25
  %75 = ptrtoint ptr %74 to i64
  %76 = and i64 %75, 4294967295
  %77 = icmp eq i64 %76, 1
  %78 = select i1 %77, ptr %72, ptr %71
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !20
  %81 = icmp eq ptr %80, %56
  br i1 %81, label %82, label %70, !llvm.loop !30

82:                                               ; preds = %57, %70, %68
  %83 = phi ptr [ %60, %68 ], [ %60, %70 ], [ %56, %57 ]
  %84 = phi ptr [ %56, %68 ], [ %78, %70 ], [ %56, %57 ]
  tail call fastcc void @make_edges(ptr noundef %83, ptr noundef %84) #9
  %85 = load ptr, ptr @cfun, align 8, !tbaa !8
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !15
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !31
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %141, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !20
  %94 = icmp eq ptr %83, %93
  br i1 %94, label %141, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, ptr %3, i64 8
  br label %97

97:                                               ; preds = %95, %132
  %98 = phi ptr [ %93, %95 ], [ %133, %132 ]
  %99 = phi ptr [ %83, %95 ], [ %135, %132 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !25
  %102 = ptrtoint ptr %101 to i64
  %103 = trunc i64 %102 to i32
  switch i32 %103, label %130 [
    i32 1, label %132
    i32 0, label %104
  ]

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 8
  store i64 0, ptr %105, align 8, !tbaa !32
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 11
  store i32 0, ptr %106, align 8, !tbaa !33
  %107 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %99) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !34
  store ptr %107, ptr %96, align 8, !tbaa.struct !35
  %108 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %107, ptr noundef nonnull %2) #9, !range !36
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %104, %110
  %111 = load ptr, ptr %2, align 8, !tbaa !8
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 9
  %113 = load i64, ptr %112, align 8, !tbaa !37
  %114 = load i64, ptr %105, align 8, !tbaa !32
  %115 = add nsw i64 %114, %113
  store i64 %115, ptr %105, align 8, !tbaa !32
  %116 = load ptr, ptr %111, align 8, !tbaa !39
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 11
  %118 = load i32, ptr %117, align 8, !tbaa !33
  %119 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 8
  %120 = load i32, ptr %119, align 4, !tbaa !40
  %121 = mul nsw i32 %120, %118
  %122 = add nsw i32 %121, 5000
  %123 = sdiv i32 %122, 10000
  %124 = load i32, ptr %106, align 8, !tbaa !33
  %125 = add nsw i32 %123, %124
  store i32 %125, ptr %106, align 8, !tbaa !33
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %126 = load i32, ptr %3, align 8
  %127 = load ptr, ptr %96, align 8
  %128 = call fastcc zeroext i8 @ei_cond(i32 %126, ptr %127, ptr noundef nonnull %2) #9, !range !36
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %110, !llvm.loop !41

130:                                              ; preds = %110, %104, %97
  tail call fastcc void @compute_outgoing_frequencies(ptr noundef nonnull %99) #9
  %131 = load ptr, ptr %92, align 8, !tbaa !20
  br label %132

132:                                              ; preds = %97, %130
  %133 = phi ptr [ %98, %97 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !20
  %136 = icmp eq ptr %135, %133
  br i1 %136, label %137, label %97, !llvm.loop !42

137:                                              ; preds = %132
  %138 = load ptr, ptr @cfun, align 8, !tbaa !8
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !15
  br label %141

141:                                              ; preds = %137, %91, %82
  %142 = phi ptr [ %140, %137 ], [ %87, %91 ], [ %87, %82 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !17
  %144 = getelementptr inbounds %struct.control_flow_graph, ptr %142, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !19
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 6
  %147 = load ptr, ptr %146, align 8, !tbaa !20
  %148 = icmp eq ptr %147, %145
  br i1 %148, label %155, label %149

149:                                              ; preds = %141, %149
  %150 = phi ptr [ %153, %149 ], [ %147, %141 ]
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 2
  store ptr null, ptr %151, align 8, !tbaa !25
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !20
  %154 = icmp eq ptr %153, %145
  br i1 %154, label %155, label %149, !llvm.loop !43

155:                                              ; preds = %149, %141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_bb_boundaries(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %125, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %19

13:                                               ; preds = %9, %88
  %14 = phi ptr [ %20, %88 ], [ %5, %9 ]
  %15 = phi ptr [ %93, %88 ], [ null, %9 ]
  %16 = phi ptr [ %90, %88 ], [ %0, %9 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %13, %9
  %20 = phi ptr [ %5, %9 ], [ %18, %13 ]
  %21 = phi ptr [ null, %9 ], [ %15, %13 ]
  %22 = phi ptr [ %0, %9 ], [ %16, %13 ]
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 65535
  %25 = icmp ne ptr %21, null
  %26 = icmp eq i32 %24, 12
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %19
  %29 = tail call zeroext i8 @inside_basic_block_p(ptr noundef nonnull %20) #9, !range !36
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %83, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = tail call ptr @split_block(ptr noundef %22, ptr noundef %33) #8
  br i1 %25, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  br label %67

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  store ptr %21, ptr %41, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = load ptr, ptr %42, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = icmp eq ptr %44, %48
  br i1 %49, label %67, label %50

50:                                               ; preds = %38, %59
  %51 = phi ptr [ %60, %59 ], [ %45, %38 ]
  %52 = phi ptr [ %62, %59 ], [ %44, %38 ]
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 11
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %57, align 8, !tbaa !5
  %58 = load ptr, ptr %42, align 8, !tbaa !47
  br label %59

59:                                               ; preds = %50, %56
  %60 = phi ptr [ %51, %50 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = load ptr, ptr %64, align 8, !tbaa !44
  %66 = icmp eq ptr %62, %65
  br i1 %66, label %67, label %50, !llvm.loop !48

67:                                               ; preds = %59, %35, %38
  %68 = phi ptr [ %37, %35 ], [ %45, %38 ], [ %60, %59 ]
  tail call void @remove_edge(ptr noundef %34) #8
  br i1 %26, label %69, label %88

69:                                               ; preds = %67
  %70 = load i32, ptr %20, align 8
  %71 = lshr i32 %70, 23
  %72 = and i32 %71, 2
  %73 = lshr i32 %70, 25
  %74 = and i32 %73, 1
  %75 = or disjoint i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %69
  %78 = load ptr, ptr @cfun, align 8, !tbaa !8
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !15
  %81 = load ptr, ptr %80, align 8, !tbaa !17
  %82 = tail call ptr @make_edge(ptr noundef %81, ptr noundef %68, i32 noundef 0) #8
  br label %88

83:                                               ; preds = %19, %28
  %84 = icmp ne i32 %24, 11
  %85 = or i1 %25, %84
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = tail call ptr @prev_nonnote_insn_bb(ptr noundef nonnull %20) #8
  br label %88

88:                                               ; preds = %83, %86, %67, %69, %77
  %89 = phi ptr [ null, %77 ], [ null, %69 ], [ null, %67 ], [ %21, %83 ], [ %87, %86 ]
  %90 = phi ptr [ %68, %77 ], [ %68, %69 ], [ %68, %67 ], [ %22, %83 ], [ %22, %86 ]
  %91 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %20) #9
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, ptr %89, ptr %20
  %94 = icmp eq ptr %20, %7
  br i1 %94, label %95, label %13

95:                                               ; preds = %88
  %96 = icmp eq ptr %93, null
  br i1 %96, label %113, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.rtl_bb_info, ptr %99, i64 0, i32 1
  store ptr %93, ptr %100, align 8, !tbaa !46
  %101 = icmp eq ptr %93, %7
  br i1 %101, label %113, label %102

102:                                              ; preds = %97, %111
  %103 = phi ptr [ %105, %111 ], [ %93, %97 ]
  %104 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1, i32 0, i32 0, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %111, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %110, align 8, !tbaa !5
  br label %111

111:                                              ; preds = %109, %102
  %112 = icmp eq ptr %105, %7
  br i1 %112, label %113, label %102, !llvm.loop !49

113:                                              ; preds = %111, %97, %95
  %114 = tail call zeroext i8 @purge_dead_edges(ptr noundef %90) #8
  %115 = icmp eq ptr %90, %0
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.rtl_bb_info, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = call zeroext i8 @tablejump_p(ptr noundef %120, ptr noundef null, ptr noundef nonnull %2) #8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = load ptr, ptr %2, align 8, !tbaa !8
  call fastcc void @purge_dead_tablejump_edges(ptr noundef nonnull %90, ptr noundef %124) #9
  br label %125

125:                                              ; preds = %113, %116, %123, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_edges(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @cfun, align 8, !tbaa !8
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  br i1 %7, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = icmp sgt i32 %13, 100
  br i1 %14, label %15, label %22

15:                                               ; preds = %2, %11
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !60
  %18 = tail call ptr @sbitmap_alloc(i32 noundef %17) #8
  %19 = load ptr, ptr @cfun, align 8, !tbaa !8
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %21, %15 ], [ %10, %11 ]
  %24 = phi ptr [ %18, %15 ], [ null, %11 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = tail call ptr @make_edge(ptr noundef nonnull %25, ptr noundef %0, i32 noundef 1) #8
  br label %31

31:                                               ; preds = %29, %22
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !20
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %311, label %35

35:                                               ; preds = %31
  %36 = icmp eq ptr %24, null
  %37 = getelementptr inbounds i8, ptr %4, i64 8
  br label %38

38:                                               ; preds = %35, %306
  %39 = phi ptr [ %0, %35 ], [ %308, %306 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 4294967295
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %306, label %45

45:                                               ; preds = %38
  br i1 %36, label %69, label %46

46:                                               ; preds = %45
  call void @sbitmap_zero(ptr noundef nonnull %24) #8
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 1
  %48 = call fastcc ptr @ei_start_1(ptr noundef nonnull %47) #9
  store i32 0, ptr %4, align 8, !tbaa.struct !34
  store ptr %48, ptr %37, align 8, !tbaa.struct !35
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %48, ptr noundef nonnull %3) #9, !range !36
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %46, %64
  %52 = load ptr, ptr %3, align 8, !tbaa !8
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = load ptr, ptr @cfun, align 8, !tbaa !8
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !15
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !19
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !23
  call fastcc void @SET_BIT(ptr noundef nonnull %24, i32 noundef %63) #9
  br label %64

64:                                               ; preds = %51, %61
  call fastcc void @ei_next(ptr noundef nonnull %4) #9
  %65 = load i32, ptr %4, align 8
  %66 = load ptr, ptr %37, align 8
  %67 = call fastcc zeroext i8 @ei_cond(i32 %65, ptr %66, ptr noundef nonnull %3) #9, !range !36
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %51, !llvm.loop !61

69:                                               ; preds = %64, %46, %45
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = load ptr, ptr %71, align 8, !tbaa !44
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = lshr i32 %73, 23
  %78 = and i32 %77, 2
  %79 = lshr i32 %73, 25
  %80 = and i32 %79, 1
  %81 = or disjoint i32 %78, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr @cfun, align 8, !tbaa !8
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !15
  %87 = load ptr, ptr %86, align 8, !tbaa !17
  %88 = call ptr @cached_make_edge(ptr noundef null, ptr noundef %87, ptr noundef nonnull %39, i32 noundef 0) #8
  %89 = load ptr, ptr %70, align 8, !tbaa !5
  br label %90

90:                                               ; preds = %83, %76, %69
  %91 = phi ptr [ %89, %83 ], [ %71, %76 ], [ %71, %69 ]
  %92 = getelementptr inbounds %struct.rtl_bb_info, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 9
  br i1 %96, label %97, label %217

97:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %98 = call ptr @find_reg_note(ptr noundef nonnull %93, i32 noundef 28, ptr noundef null) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %216

100:                                              ; preds = %97
  %101 = call zeroext i8 @tablejump_p(ptr noundef nonnull %93, ptr noundef null, ptr noundef nonnull %5) #8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %162, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %5, align 8, !tbaa !8
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 20
  %110 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %111 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = select i1 %109, ptr %110, ptr %111
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = load i32, ptr %113, align 8, !tbaa !62
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %103
  %117 = zext nneg i32 %114 to i64
  br label %118

118:                                              ; preds = %116, %118
  %119 = phi i64 [ %117, %116 ], [ %120, %118 ]
  %120 = add nsw i64 %119, -1
  %121 = getelementptr inbounds %struct.rtvec_def, ptr %113, i64 0, i32 1, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !8
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %124, i32 noundef 0) #9
  %125 = icmp ugt i64 %119, 1
  br i1 %125, label %118, label %126, !llvm.loop !64

126:                                              ; preds = %118, %103
  %127 = load i32, ptr %93, align 8
  %128 = and i32 %127, 65535
  %129 = add nsw i32 %128, -7
  %130 = icmp ult i32 %129, 4
  br i1 %130, label %131, label %216

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !5
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 23
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store ptr %133, ptr %5, align 8, !tbaa !8
  br label %141

138:                                              ; preds = %131
  %139 = call ptr @single_set_2(ptr noundef nonnull %93, ptr noundef nonnull %133) #8
  store ptr %139, ptr %5, align 8, !tbaa !8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %216, label %141

141:                                              ; preds = %137, %138
  %142 = phi ptr [ %133, %137 ], [ %139, %138 ]
  %143 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = load ptr, ptr @global_rtl, align 16, !tbaa !8
  %146 = icmp eq ptr %144, %145
  br i1 %146, label %147, label %216

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 47
  br i1 %152, label %153, label %216

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !5
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 44
  br i1 %158, label %159, label %216

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %161, i32 noundef 0) #9
  br label %216

162:                                              ; preds = %100
  %163 = call i32 @computed_jump_p(ptr noundef nonnull %93) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !5
  %167 = icmp eq ptr %166, null
  br i1 %167, label %216, label %168

168:                                              ; preds = %165, %168
  %169 = phi ptr [ %173, %168 ], [ %166, %165 ]
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !5
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %171, i32 noundef 2) #9
  %172 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  %174 = icmp eq ptr %173, null
  br i1 %174, label %216, label %168, !llvm.loop !65

175:                                              ; preds = %162
  %176 = call i32 @returnjump_p(ptr noundef nonnull %93) #8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr @cfun, align 8, !tbaa !8
  %180 = getelementptr inbounds %struct.function, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !15
  %182 = getelementptr inbounds %struct.control_flow_graph, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !19
  %184 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef %183, i32 noundef 0) #8
  br label %216

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  %188 = call ptr @extract_asm_operands(ptr noundef %187) #8
  store ptr %188, ptr %5, align 8, !tbaa !8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %208, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !5
  %193 = load i32, ptr %192, align 8, !tbaa !62
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %190
  %196 = zext nneg i32 %193 to i64
  br label %197

197:                                              ; preds = %195, %197
  %198 = phi i64 [ 0, %195 ], [ %206, %197 ]
  %199 = load ptr, ptr %5, align 8, !tbaa !8
  %200 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !5
  %202 = getelementptr inbounds %struct.rtvec_def, ptr %201, i64 0, i32 1, i64 %198
  %203 = load ptr, ptr %202, align 8, !tbaa !8
  %204 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !5
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %205, i32 noundef 0) #9
  %206 = add nuw nsw i64 %198, 1
  %207 = icmp eq i64 %206, %196
  br i1 %207, label %216, label %197, !llvm.loop !66

208:                                              ; preds = %185
  %209 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1, i32 1, i32 0, i32 0, i64 2
  %210 = load ptr, ptr %209, align 8, !tbaa !5
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @.str.1) #8
  %213 = load ptr, ptr %209, align 8, !tbaa !5
  br label %214

214:                                              ; preds = %208, %212
  %215 = phi ptr [ %210, %208 ], [ %213, %212 ]
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef %215, i32 noundef 0) #9
  br label %216

216:                                              ; preds = %168, %197, %126, %165, %190, %138, %141, %147, %153, %159, %178, %214, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %217

217:                                              ; preds = %216, %90
  %218 = icmp eq i32 %95, 10
  br i1 %218, label %219, label %230

219:                                              ; preds = %217
  %220 = load i32, ptr %93, align 8
  %221 = and i32 %220, 16777216
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %233, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr @cfun, align 8, !tbaa !8
  %225 = getelementptr inbounds %struct.function, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !15
  %227 = getelementptr inbounds %struct.control_flow_graph, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !19
  %229 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef %39, ptr noundef %228, i32 noundef 258) #8
  br label %250

230:                                              ; preds = %217
  %231 = load i32, ptr @flag_non_call_exceptions, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %250, label %233

233:                                              ; preds = %219, %230
  call void @rtl_make_eh_edge(ptr noundef %24, ptr noundef %39, ptr noundef nonnull %93) #9
  %234 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %235 = icmp ne ptr %234, null
  %236 = select i1 %218, i1 %235, i1 false
  br i1 %236, label %237, label %250

237:                                              ; preds = %233
  %238 = call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %93) #8
  %239 = icmp eq i8 %238, 0
  %240 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %241 = icmp eq ptr %240, null
  %242 = select i1 %239, i1 true, i1 %241
  br i1 %242, label %250, label %243

243:                                              ; preds = %237, %243
  %244 = phi ptr [ %248, %243 ], [ %240, %237 ]
  %245 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !5
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %246, i32 noundef 6) #9
  %247 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1, i32 0, i32 0, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !5
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %243, !llvm.loop !67

250:                                              ; preds = %243, %230, %237, %233, %223
  %251 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 2
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = load ptr, ptr @cfun, align 8, !tbaa !8
  %254 = getelementptr inbounds %struct.function, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !15
  %256 = getelementptr inbounds %struct.control_flow_graph, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !19
  %258 = call ptr @find_edge(ptr noundef %39, ptr noundef %257) #8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %267, label %260

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.edge_def, ptr %258, i64 0, i32 7
  %262 = load i32, ptr %261, align 8, !tbaa !68
  %263 = and i32 %262, 1
  %264 = icmp ne i32 %263, 0
  %265 = icmp eq ptr %252, null
  %266 = select i1 %264, i1 true, i1 %265
  br i1 %266, label %283, label %269

267:                                              ; preds = %250
  %268 = icmp eq ptr %252, null
  br i1 %268, label %283, label %269

269:                                              ; preds = %260, %267
  br label %270

270:                                              ; preds = %269, %279
  %271 = phi ptr [ %281, %279 ], [ %252, %269 ]
  %272 = load i32, ptr %271, align 8
  %273 = and i32 %272, 65535
  %274 = icmp eq i32 %273, 13
  br i1 %274, label %275, label %290

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 1
  %277 = load i32, ptr %276, align 8, !tbaa !5
  %278 = icmp eq i32 %277, 10
  br i1 %278, label %290, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1, i32 0, i32 0, i64 2
  %281 = load ptr, ptr %280, align 8, !tbaa !5
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %270, !llvm.loop !69

283:                                              ; preds = %279, %260, %267
  %284 = load ptr, ptr @cfun, align 8, !tbaa !8
  %285 = getelementptr inbounds %struct.function, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !15
  %287 = getelementptr inbounds %struct.control_flow_graph, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !19
  %289 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef %39, ptr noundef %288, i32 noundef 1) #8
  br label %306

290:                                              ; preds = %275, %270
  %291 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %292 = load ptr, ptr %291, align 8, !tbaa !20
  %293 = load ptr, ptr @cfun, align 8, !tbaa !8
  %294 = getelementptr inbounds %struct.function, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !15
  %296 = getelementptr inbounds %struct.control_flow_graph, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !19
  %298 = icmp eq ptr %292, %297
  br i1 %298, label %306, label %299

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 7
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  %302 = load ptr, ptr %301, align 8, !tbaa !44
  %303 = icmp eq ptr %271, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef nonnull %292, i32 noundef 1) #8
  br label %306

306:                                              ; preds = %283, %299, %304, %290, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %307 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !20
  %309 = load ptr, ptr %32, align 8, !tbaa !20
  %310 = icmp eq ptr %308, %309
  br i1 %310, label %311, label %38, !llvm.loop !70

311:                                              ; preds = %306, %31
  %312 = icmp eq ptr %24, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %311
  call void @free(ptr noundef nonnull %24) #9
  br label %314

314:                                              ; preds = %313, %311
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #9, !range !36
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #9
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #9
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #9
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #8
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !71
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_outgoing_frequencies(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call ptr @find_reg_note(ptr noundef %12, i32 noundef 13, ptr noundef null) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !5
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %4, align 8, !tbaa !73
  %22 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 0) #9
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !68
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %15
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 1) #9
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi ptr [ %28, %27 ], [ %22, %15 ]
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  store i32 %20, ptr %31, align 4, !tbaa !40
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !32
  %34 = shl i64 %19, 32
  %35 = ashr exact i64 %34, 32
  %36 = mul nsw i64 %33, %35
  %37 = add nsw i64 %36, 5000
  %38 = sdiv i64 %37, 10000
  %39 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 9
  store i64 %38, ptr %39, align 8, !tbaa !37
  %40 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 0) #9
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !68
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 1) #9
  br label %47

47:                                               ; preds = %29, %45
  %48 = phi ptr [ %46, %45 ], [ %40, %29 ]
  %49 = sub nsw i32 10000, %20
  %50 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 %49, ptr %50, align 4, !tbaa !40
  %51 = sub nsw i64 %33, %38
  br label %83

52:                                               ; preds = %8, %1
  %53 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #9, !range !36
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #9
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 8
  store i32 10000, ptr %57, align 4, !tbaa !40
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %59 = load i64, ptr %58, align 8, !tbaa !32
  br label %83

60:                                               ; preds = %52
  tail call void @guess_outgoing_edge_probabilities(ptr noundef nonnull %0) #8
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %62 = load i64, ptr %61, align 8, !tbaa !32
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %60
  %65 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !34
  %66 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %65, ptr %66, align 8, !tbaa.struct !35
  %67 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %65, ptr noundef nonnull %2) #9, !range !36
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64, %69
  %70 = load i64, ptr %61, align 8, !tbaa !32
  %71 = load ptr, ptr %2, align 8, !tbaa !8
  %72 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 8
  %73 = load i32, ptr %72, align 4, !tbaa !40
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %70, %74
  %76 = add nsw i64 %75, 5000
  %77 = sdiv i64 %76, 10000
  %78 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 9
  store i64 %77, ptr %78, align 8, !tbaa !37
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %79 = load i32, ptr %3, align 8
  %80 = load ptr, ptr %66, align 8
  %81 = call fastcc zeroext i8 @ei_cond(i32 %79, ptr %80, ptr noundef nonnull %2) #9, !range !36
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %87, label %69, !llvm.loop !74

83:                                               ; preds = %55, %47
  %84 = phi ptr [ %48, %47 ], [ %56, %55 ]
  %85 = phi i64 [ %51, %47 ], [ %59, %55 ]
  %86 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 9
  store i64 %85, ptr %86, align 8, !tbaa !37
  br label %87

87:                                               ; preds = %69, %83, %64, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: optsize
declare ptr @cached_make_edge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @prev_nonnote_insn_bb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @purge_dead_tablejump_edges(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 20
  %13 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = load i32, ptr %16, align 8, !tbaa !62
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = zext nneg i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %20, %19 ], [ %23, %21 ]
  %23 = add nsw i64 %22, -1
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  tail call fastcc void @mark_tablejump_edge(ptr noundef %27) #9
  %28 = icmp ugt i64 %22, 1
  br i1 %28, label %21, label %29, !llvm.loop !75

29:                                               ; preds = %21, %2
  %30 = load i32, ptr %7, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 23
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = tail call ptr @single_set_2(ptr noundef nonnull %7, ptr noundef nonnull %36) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %34, %40
  %44 = phi ptr [ %41, %40 ], [ %36, %34 ]
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = load ptr, ptr @global_rtl, align 16, !tbaa !8
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 44
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  tail call fastcc void @mark_tablejump_edge(ptr noundef %63) #9
  br label %64

64:                                               ; preds = %29, %61, %55, %49, %43, %40
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %66 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %65) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !34
  %67 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %66, ptr %67, align 8, !tbaa.struct !35
  %68 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %66) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %98, label %70

70:                                               ; preds = %64, %90
  %71 = phi ptr [ %91, %90 ], [ %66, %64 ]
  %72 = phi i32 [ %92, %90 ], [ 0, %64 ]
  %73 = phi ptr [ %93, %90 ], [ %68, %64 ]
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !25
  %78 = ptrtoint ptr %77 to i64
  %79 = and i64 %78, 32
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = and i64 %78, -33
  %83 = inttoptr i64 %82 to ptr
  store ptr %83, ptr %76, align 8, !tbaa !25
  br label %95

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !68
  %87 = and i32 %86, 10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  tail call void @remove_edge(ptr noundef nonnull %73) #8
  br label %90

90:                                               ; preds = %89, %95
  %91 = phi ptr [ %71, %89 ], [ %97, %95 ]
  %92 = phi i32 [ %72, %89 ], [ %96, %95 ]
  %93 = tail call fastcc ptr @ei_safe_edge(i32 %92, ptr %91) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %70, !llvm.loop !76

95:                                               ; preds = %84, %81
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %96 = load i32, ptr %3, align 8
  %97 = load ptr, ptr %67, align 8
  br label %90

98:                                               ; preds = %90, %64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_tablejump_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @.str.1) #8
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = ptrtoint ptr %14 to i64
  %16 = or i64 %15, 32
  %17 = inttoptr i64 %16 to ptr
  store ptr %17, ptr %13, align 8, !tbaa !25
  br label %18

18:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #9, !range !36
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #9
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #9
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !77
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #8
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !24
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !5
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !24
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #9, !range !36
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 645, ptr noundef nonnull @.str.1) #8
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #9
  ret ptr %8
}

; Function Attrs: optsize
declare void @guess_outgoing_edge_probabilities(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !9, i64 24}
!13 = !{!"eh_landing_pad_d", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !11, i64 32}
!14 = !{!13, !9, i64 16}
!15 = !{!16, !9, i64 8}
!16 = !{!"function", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !9, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!17 = !{!18, !9, i64 0}
!18 = !{!"control_flow_graph", !9, i64 0, !9, i64 8, !9, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !9, i64 40, !11, i64 48, !6, i64 52, !6, i64 60, !11, i64 68, !11, i64 72}
!19 = !{!18, !9, i64 8}
!20 = !{!21, !9, i64 56}
!21 = !{!"basic_block_def", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 48, !9, i64 56, !6, i64 64, !22, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!22 = !{!"long", !6, i64 0}
!23 = !{!21, !11, i64 80}
!24 = !{!22, !22, i64 0}
!25 = !{!21, !9, i64 16}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = !{!18, !11, i64 48}
!32 = !{!21, !22, i64 72}
!33 = !{!21, !11, i64 88}
!34 = !{i64 0, i64 4, !10, i64 8, i64 8, !8}
!35 = !{i64 0, i64 8, !8}
!36 = !{i8 0, i8 2}
!37 = !{!38, !22, i64 56}
!38 = !{!"edge_def", !9, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !22, i64 56}
!39 = !{!38, !9, i64 0}
!40 = !{!38, !11, i64 52}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = !{!45, !9, i64 0}
!45 = !{!"rtl_bb_info", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !11, i64 32}
!46 = !{!45, !9, i64 8}
!47 = !{!38, !9, i64 8}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = !{!51, !9, i64 32}
!51 = !{!"rtl_data", !52, i64 0, !53, i64 40, !54, i64 96, !55, i64 112, !57, i64 208, !58, i64 248, !11, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !22, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !11, i64 432, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !9, i64 456, !6, i64 464, !6, i64 465, !6, i64 466, !6, i64 467, !6, i64 468, !6, i64 469, !6, i64 470, !6, i64 471, !6, i64 472, !6, i64 473, !6, i64 474, !6, i64 475, !6, i64 476, !6, i64 477, !6, i64 478, !6, i64 479, !6, i64 480, !6, i64 481, !6, i64 482, !6, i64 483, !6, i64 484, !6, i64 485}
!52 = !{!"expr_status", !11, i64 0, !11, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!53 = !{!"emit_status", !11, i64 0, !11, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !9, i64 48}
!54 = !{!"varasm_status", !9, i64 0, !11, i64 8}
!55 = !{!"incoming_args", !11, i64 0, !11, i64 4, !11, i64 8, !9, i64 16, !56, i64 24, !9, i64 88}
!56 = !{!"ix86_args", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60}
!57 = !{!"function_subsections", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!58 = !{!"rtl_eh", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48}
!59 = !{!18, !11, i64 68}
!60 = !{!18, !11, i64 32}
!61 = distinct !{!61, !27}
!62 = !{!63, !11, i64 0}
!63 = !{!"rtvec_def", !11, i64 0, !6, i64 8}
!64 = distinct !{!64, !27}
!65 = distinct !{!65, !27}
!66 = distinct !{!66, !27}
!67 = distinct !{!67, !27}
!68 = !{!38, !11, i64 48}
!69 = distinct !{!69, !27}
!70 = distinct !{!70, !27}
!71 = !{!72, !11, i64 0}
!72 = !{!"", !11, i64 0, !9, i64 8}
!73 = !{!21, !9, i64 8}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !27}
!76 = distinct !{!76, !27}
!77 = !{!78, !11, i64 0}
!78 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !6, i64 8}
!79 = !{!80, !9, i64 0}
!80 = !{!"simple_bitmap_def", !9, i64 0, !11, i64 8, !11, i64 12, !6, i64 16}
