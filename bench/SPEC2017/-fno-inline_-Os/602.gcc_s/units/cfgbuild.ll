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
define dso_local zeroext i8 @inside_basic_block_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !113 {
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
  ], !prof !114

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8, !prof !118

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %26, !prof !119

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65534
  %17 = icmp ne i32 %16, 20
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !115
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
define dso_local zeroext i8 @control_flow_insn_p(ptr noundef %0) local_unnamed_addr #0 !prof !120 {
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
  ], !prof !121

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65534
  %9 = icmp ne i32 %8, 20
  %10 = zext i1 %9 to i8
  br label %43

11:                                               ; preds = %1
  %12 = and i32 %2, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !122

14:                                               ; preds = %11
  %15 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !123

17:                                               ; preds = %14, %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 14
  br i1 %22, label %23, label %43, !prof !124

23:                                               ; preds = %17, %14
  %24 = tail call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %0) #8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %41, label %43, !prof !125

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 29
  br i1 %31, label %32, label %37, !prof !126

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !127
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %32, %26
  %38 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !129
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %41, !prof !131

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
define dso_local void @rtl_make_eh_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !132 {
  %4 = tail call ptr @get_eh_landing_pad_from_rtx(ptr noundef %2) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6, !prof !133

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #8
  %15 = load ptr, ptr %11, align 8, !tbaa !136
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
define internal fastcc void @make_label_edge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !137 !PGOFuncName !138 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %9, label %8, !prof !139

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #8
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !115
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !140

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = tail call ptr @cached_make_edge(ptr noundef %0, ptr noundef %1, ptr noundef %15, i32 noundef %3) #8
  br label %17

17:                                               ; preds = %9, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @cached_make_edge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_many_sub_basic_blocks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !141 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %54, label %14, !prof !150

13:                                               ; preds = %14
  br i1 %12, label %54, label %33, !prof !151

14:                                               ; preds = %1, %14
  %15 = phi ptr [ %31, %14 ], [ %11, %1 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !153
  %22 = and i32 %17, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %21
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %26, i64 1, i64 2
  %28 = inttoptr i64 %27 to ptr
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !154
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %13, label %14, !prof !155, !llvm.loop !156

33:                                               ; preds = %13, %43
  %34 = phi ptr [ %44, %43 ], [ %4, %13 ]
  %35 = phi ptr [ %46, %43 ], [ %11, %13 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !154
  %38 = ptrtoint ptr %37 to i64
  %39 = and i64 %38, 4294967295
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %43, !prof !158

41:                                               ; preds = %33
  tail call fastcc void @find_bb_boundaries(ptr noundef nonnull %35) #9
  %42 = load ptr, ptr @cfun, align 8, !tbaa !127
  br label %43

43:                                               ; preds = %33, %41
  %44 = phi ptr [ %34, %33 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !147
  %47 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !142
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !146
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %52, label %33, !prof !159, !llvm.loop !160

52:                                               ; preds = %43
  %53 = load ptr, ptr %48, align 8, !tbaa !144
  br label %54

54:                                               ; preds = %1, %52, %13
  %55 = phi ptr [ %7, %13 ], [ %53, %52 ], [ %7, %1 ]
  %56 = phi ptr [ %9, %13 ], [ %46, %52 ], [ %9, %1 ]
  br label %57

57:                                               ; preds = %62, %54
  %58 = phi ptr [ %55, %54 ], [ %60, %62 ]
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !147
  %61 = icmp eq ptr %60, %56
  br i1 %61, label %82, label %62, !prof !161

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !154
  %65 = ptrtoint ptr %64 to i64
  %66 = and i64 %65, 4294967295
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %57, label %68, !prof !162, !llvm.loop !163

68:                                               ; preds = %62
  %69 = icmp eq ptr %60, %56
  br i1 %69, label %82, label %70, !prof !164

70:                                               ; preds = %68, %70
  %71 = phi ptr [ %80, %70 ], [ %60, %68 ]
  %72 = phi ptr [ %78, %70 ], [ %60, %68 ]
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !154
  %75 = ptrtoint ptr %74 to i64
  %76 = and i64 %75, 4294967295
  %77 = icmp eq i64 %76, 1
  %78 = select i1 %77, ptr %72, ptr %71, !prof !165
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !147
  %81 = icmp eq ptr %80, %56
  br i1 %81, label %82, label %70, !prof !166, !llvm.loop !167

82:                                               ; preds = %57, %70, %68
  %83 = phi ptr [ %60, %68 ], [ %60, %70 ], [ %56, %57 ]
  %84 = phi ptr [ %56, %68 ], [ %78, %70 ], [ %56, %57 ]
  tail call fastcc void @make_edges(ptr noundef %83, ptr noundef %84) #9
  %85 = load ptr, ptr @cfun, align 8, !tbaa !127
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !142
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !168
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %141, label %91, !prof !169

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !147
  %94 = icmp eq ptr %83, %93
  br i1 %94, label %141, label %95, !prof !150

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, ptr %3, i64 8
  br label %97

97:                                               ; preds = %95, %132
  %98 = phi ptr [ %93, %95 ], [ %133, %132 ]
  %99 = phi ptr [ %83, %95 ], [ %135, %132 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !154
  %102 = ptrtoint ptr %101 to i64
  %103 = trunc i64 %102 to i32
  switch i32 %103, label %130 [
    i32 1, label %132
    i32 0, label %104
  ], !prof !170

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 8
  store i64 0, ptr %105, align 8, !tbaa !171
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 11
  store i32 0, ptr %106, align 8, !tbaa !172
  %107 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %99) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !173
  store ptr %107, ptr %96, align 8, !tbaa.struct !174
  %108 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %107, ptr noundef nonnull %2) #9, !range !175
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %130, label %110, !prof !176

110:                                              ; preds = %104, %110
  %111 = load ptr, ptr %2, align 8, !tbaa !127
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 9
  %113 = load i64, ptr %112, align 8, !tbaa !177
  %114 = load i64, ptr %105, align 8, !tbaa !171
  %115 = add nsw i64 %114, %113
  store i64 %115, ptr %105, align 8, !tbaa !171
  %116 = load ptr, ptr %111, align 8, !tbaa !179
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 11
  %118 = load i32, ptr %117, align 8, !tbaa !172
  %119 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 8
  %120 = load i32, ptr %119, align 4, !tbaa !180
  %121 = mul nsw i32 %120, %118
  %122 = add nsw i32 %121, 5000
  %123 = sdiv i32 %122, 10000
  %124 = load i32, ptr %106, align 8, !tbaa !172
  %125 = add nsw i32 %123, %124
  store i32 %125, ptr %106, align 8, !tbaa !172
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %126 = load i32, ptr %3, align 8
  %127 = load ptr, ptr %96, align 8
  %128 = call fastcc zeroext i8 @ei_cond(i32 %126, ptr %127, ptr noundef nonnull %2) #9, !range !175
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %110, !prof !181, !llvm.loop !182

130:                                              ; preds = %110, %104, %97
  tail call fastcc void @compute_outgoing_frequencies(ptr noundef nonnull %99) #9
  %131 = load ptr, ptr %92, align 8, !tbaa !147
  br label %132

132:                                              ; preds = %97, %130
  %133 = phi ptr [ %98, %97 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !147
  %136 = icmp eq ptr %135, %133
  br i1 %136, label %137, label %97, !prof !183, !llvm.loop !184

137:                                              ; preds = %132
  %138 = load ptr, ptr @cfun, align 8, !tbaa !127
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !142
  br label %141

141:                                              ; preds = %137, %91, %82
  %142 = phi ptr [ %140, %137 ], [ %87, %91 ], [ %87, %82 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !144
  %144 = getelementptr inbounds %struct.control_flow_graph, ptr %142, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !146
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 6
  %147 = load ptr, ptr %146, align 8, !tbaa !147
  %148 = icmp eq ptr %147, %145
  br i1 %148, label %155, label %149, !prof !150

149:                                              ; preds = %141, %149
  %150 = phi ptr [ %153, %149 ], [ %147, %141 ]
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 2
  store ptr null, ptr %151, align 8, !tbaa !154
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !147
  %154 = icmp eq ptr %153, %145
  br i1 %154, label %155, label %149, !prof !159, !llvm.loop !185

155:                                              ; preds = %149, %141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_bb_boundaries(ptr noundef %0) unnamed_addr #0 !prof !186 !PGOFuncName !187 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %125, label %9, !prof !191

9:                                                ; preds = %1
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %19, !prof !192

13:                                               ; preds = %9, %88
  %14 = phi ptr [ %20, %88 ], [ %5, %9 ]
  %15 = phi ptr [ %93, %88 ], [ null, %9 ]
  %16 = phi ptr [ %90, %88 ], [ %0, %9 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !115
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
  br i1 %27, label %28, label %83, !prof !193

28:                                               ; preds = %19
  %29 = tail call zeroext i8 @inside_basic_block_p(ptr noundef nonnull %20) #9, !range !175
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %83, label %31, !prof !194

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !115
  %34 = tail call ptr @split_block(ptr noundef %22, ptr noundef %33) #8
  br i1 %25, label %38, label %35, !prof !195

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  br label %67

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  store ptr %21, ptr %41, align 8, !tbaa !190
  %42 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !115
  %45 = load ptr, ptr %42, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !115
  %48 = load ptr, ptr %47, align 8, !tbaa !188
  %49 = icmp eq ptr %44, %48
  br i1 %49, label %67, label %50, !prof !197

50:                                               ; preds = %38, %59
  %51 = phi ptr [ %60, %59 ], [ %45, %38 ]
  %52 = phi ptr [ %62, %59 ], [ %44, %38 ]
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 11
  br i1 %55, label %59, label %56, !prof !198

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %57, align 8, !tbaa !115
  %58 = load ptr, ptr %42, align 8, !tbaa !196
  br label %59

59:                                               ; preds = %50, %56
  %60 = phi ptr [ %51, %50 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !115
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !115
  %65 = load ptr, ptr %64, align 8, !tbaa !188
  %66 = icmp eq ptr %62, %65
  br i1 %66, label %67, label %50, !prof !199, !llvm.loop !200

67:                                               ; preds = %59, %35, %38
  %68 = phi ptr [ %37, %35 ], [ %45, %38 ], [ %60, %59 ]
  tail call void @remove_edge(ptr noundef %34) #8
  br i1 %26, label %69, label %88, !prof !201

69:                                               ; preds = %67
  %70 = load i32, ptr %20, align 8
  %71 = lshr i32 %70, 23
  %72 = and i32 %71, 2
  %73 = lshr i32 %70, 25
  %74 = and i32 %73, 1
  %75 = or disjoint i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77, !prof !202

77:                                               ; preds = %69
  %78 = load ptr, ptr @cfun, align 8, !tbaa !127
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !142
  %81 = load ptr, ptr %80, align 8, !tbaa !144
  %82 = tail call ptr @make_edge(ptr noundef %81, ptr noundef %68, i32 noundef 0) #8
  br label %88

83:                                               ; preds = %19, %28
  %84 = icmp eq i32 %24, 11
  br i1 %84, label %85, label %88, !prof !203

85:                                               ; preds = %83
  br i1 %25, label %88, label %86, !prof !204

86:                                               ; preds = %85
  %87 = tail call ptr @prev_nonnote_insn_bb(ptr noundef nonnull %20) #8
  br label %88

88:                                               ; preds = %83, %86, %85, %67, %69, %77
  %89 = phi ptr [ null, %77 ], [ null, %69 ], [ null, %67 ], [ %21, %85 ], [ %87, %86 ], [ %21, %83 ]
  %90 = phi ptr [ %68, %77 ], [ %68, %69 ], [ %68, %67 ], [ %22, %85 ], [ %22, %86 ], [ %22, %83 ]
  %91 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %20) #9
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, ptr %89, ptr %20, !prof !205
  %94 = icmp eq ptr %20, %7
  br i1 %94, label %95, label %13, !prof !206

95:                                               ; preds = %88
  %96 = icmp eq ptr %93, null
  br i1 %96, label %113, label %97, !prof !207

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !115
  %100 = getelementptr inbounds %struct.rtl_bb_info, ptr %99, i64 0, i32 1
  store ptr %93, ptr %100, align 8, !tbaa !190
  %101 = icmp eq ptr %93, %7
  br i1 %101, label %113, label %102, !prof !208

102:                                              ; preds = %97, %111
  %103 = phi ptr [ %105, %111 ], [ %93, %97 ]
  %104 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1, i32 0, i32 0, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !115
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %111, label %109, !prof !209

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %110, align 8, !tbaa !115
  br label %111

111:                                              ; preds = %109, %102
  %112 = icmp eq ptr %105, %7
  br i1 %112, label %113, label %102, !prof !210, !llvm.loop !211

113:                                              ; preds = %111, %97, %95
  %114 = tail call zeroext i8 @purge_dead_edges(ptr noundef %90) #8
  %115 = icmp eq ptr %90, %0
  br i1 %115, label %125, label %116, !prof !212

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !115
  %119 = getelementptr inbounds %struct.rtl_bb_info, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !190
  %121 = call zeroext i8 @tablejump_p(ptr noundef %120, ptr noundef null, ptr noundef nonnull %2) #8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %125, label %123, !prof !213

123:                                              ; preds = %116
  %124 = load ptr, ptr %2, align 8, !tbaa !127
  call fastcc void @purge_dead_tablejump_edges(ptr noundef nonnull %90, ptr noundef %124) #9
  br label %125

125:                                              ; preds = %113, %116, %123, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_edges(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !141 !PGOFuncName !214 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !215
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @cfun, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !142
  br i1 %7, label %11, label %15, !prof !224

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !225
  %14 = icmp sgt i32 %13, 100
  br i1 %14, label %15, label %22, !prof !226

15:                                               ; preds = %2, %11
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !227
  %18 = tail call ptr @sbitmap_alloc(i32 noundef %17) #8
  %19 = load ptr, ptr @cfun, align 8, !tbaa !127
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !142
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %21, %15 ], [ %10, %11 ]
  %24 = phi ptr [ %18, %15 ], [ null, %11 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !144
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %31, !prof !228

29:                                               ; preds = %22
  %30 = tail call ptr @make_edge(ptr noundef nonnull %25, ptr noundef %0, i32 noundef 1) #8
  br label %31

31:                                               ; preds = %29, %22
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !147
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %314, label %35, !prof !150

35:                                               ; preds = %31
  %36 = icmp eq ptr %24, null
  %37 = getelementptr inbounds i8, ptr %4, i64 8
  br label %38

38:                                               ; preds = %35, %309
  %39 = phi ptr [ %0, %35 ], [ %311, %309 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !154
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 4294967295
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %309, label %45, !prof !229

45:                                               ; preds = %38
  br i1 %36, label %69, label %46, !prof !230

46:                                               ; preds = %45
  call void @sbitmap_zero(ptr noundef nonnull %24) #8
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 1
  %48 = call fastcc ptr @ei_start_1(ptr noundef nonnull %47) #9
  store i32 0, ptr %4, align 8, !tbaa.struct !173
  store ptr %48, ptr %37, align 8, !tbaa.struct !174
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %48, ptr noundef nonnull %3) #9, !range !175
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %69, label %51, !prof !231

51:                                               ; preds = %46, %64
  %52 = load ptr, ptr %3, align 8, !tbaa !127
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !196
  %55 = load ptr, ptr @cfun, align 8, !tbaa !127
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !142
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !146
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %64, label %61, !prof !232

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !152
  call fastcc void @SET_BIT(ptr noundef nonnull %24, i32 noundef %63) #9
  br label %64

64:                                               ; preds = %51, %61
  call fastcc void @ei_next(ptr noundef nonnull %4) #9
  %65 = load i32, ptr %4, align 8
  %66 = load ptr, ptr %37, align 8
  %67 = call fastcc zeroext i8 @ei_cond(i32 %65, ptr %66, ptr noundef nonnull %3) #9, !range !175
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %51, !prof !233, !llvm.loop !234

69:                                               ; preds = %64, %46, %45
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !115
  %72 = load ptr, ptr %71, align 8, !tbaa !188
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %90, !prof !235

76:                                               ; preds = %69
  %77 = lshr i32 %73, 23
  %78 = and i32 %77, 2
  %79 = lshr i32 %73, 25
  %80 = and i32 %79, 1
  %81 = or disjoint i32 %78, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83, !prof !236

83:                                               ; preds = %76
  %84 = load ptr, ptr @cfun, align 8, !tbaa !127
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !142
  %87 = load ptr, ptr %86, align 8, !tbaa !144
  %88 = call ptr @cached_make_edge(ptr noundef null, ptr noundef %87, ptr noundef nonnull %39, i32 noundef 0) #8
  %89 = load ptr, ptr %70, align 8, !tbaa !115
  br label %90

90:                                               ; preds = %83, %76, %69
  %91 = phi ptr [ %89, %83 ], [ %71, %76 ], [ %71, %69 ]
  %92 = getelementptr inbounds %struct.rtl_bb_info, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !190
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 9
  br i1 %96, label %97, label %220, !prof !237

97:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %98 = call ptr @find_reg_note(ptr noundef nonnull %93, i32 noundef 28, ptr noundef null) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %219, !prof !238

100:                                              ; preds = %97
  %101 = call zeroext i8 @tablejump_p(ptr noundef nonnull %93, ptr noundef null, ptr noundef nonnull %5) #8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %165, label %103, !prof !239

103:                                              ; preds = %100
  %104 = load ptr, ptr %5, align 8, !tbaa !127
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !115
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 20
  br i1 %109, label %110, label %112, !prof !240

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  br label %114

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi ptr [ %111, %110 ], [ %113, %112 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !115
  %117 = load i32, ptr %116, align 8, !tbaa !241
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %129, !prof !243

119:                                              ; preds = %114
  %120 = zext nneg i32 %117 to i64
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi i64 [ %120, %119 ], [ %123, %121 ]
  %123 = add nsw i64 %122, -1
  %124 = getelementptr inbounds %struct.rtvec_def, ptr %116, i64 0, i32 1, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !127
  %126 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !115
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %127, i32 noundef 0) #9
  %128 = icmp ugt i64 %122, 1
  br i1 %128, label %121, label %129, !prof !244, !llvm.loop !245

129:                                              ; preds = %121, %114
  %130 = load i32, ptr %93, align 8
  %131 = and i32 %130, 65535
  %132 = add nsw i32 %131, -7
  %133 = icmp ult i32 %132, 4
  br i1 %133, label %134, label %219, !prof !246

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !115
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 23
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store ptr %136, ptr %5, align 8, !tbaa !127
  br label %144

141:                                              ; preds = %134
  %142 = call ptr @single_set_2(ptr noundef nonnull %93, ptr noundef nonnull %136) #8
  store ptr %142, ptr %5, align 8, !tbaa !127
  %143 = icmp eq ptr %142, null
  br i1 %143, label %219, label %144, !prof !247

144:                                              ; preds = %140, %141
  %145 = phi ptr [ %136, %140 ], [ %142, %141 ]
  %146 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !115
  %148 = load ptr, ptr @global_rtl, align 16, !tbaa !127
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %150, label %219, !prof !240

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !115
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 47
  br i1 %155, label %156, label %219, !prof !248

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 2
  %158 = load ptr, ptr %157, align 8, !tbaa !115
  %159 = load i32, ptr %158, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 44
  br i1 %161, label %162, label %219

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !115
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %164, i32 noundef 0) #9
  br label %219

165:                                              ; preds = %100
  %166 = call i32 @computed_jump_p(ptr noundef nonnull %93) #8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %178, label %168, !prof !249

168:                                              ; preds = %165
  %169 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !115
  %170 = icmp eq ptr %169, null
  br i1 %170, label %219, label %171

171:                                              ; preds = %168, %171
  %172 = phi ptr [ %176, %171 ], [ %169, %168 ]
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !115
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %174, i32 noundef 2) #9
  %175 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !115
  %177 = icmp eq ptr %176, null
  br i1 %177, label %219, label %171, !llvm.loop !250

178:                                              ; preds = %165
  %179 = call i32 @returnjump_p(ptr noundef nonnull %93) #8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181, !prof !251

181:                                              ; preds = %178
  %182 = load ptr, ptr @cfun, align 8, !tbaa !127
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !142
  %185 = getelementptr inbounds %struct.control_flow_graph, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !146
  %187 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef %186, i32 noundef 0) #8
  br label %219

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !115
  %191 = call ptr @extract_asm_operands(ptr noundef %190) #8
  store ptr %191, ptr %5, align 8, !tbaa !127
  %192 = icmp eq ptr %191, null
  br i1 %192, label %211, label %193, !prof !252

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !115
  %196 = load i32, ptr %195, align 8, !tbaa !241
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %193
  %199 = zext nneg i32 %196 to i64
  br label %200

200:                                              ; preds = %198, %200
  %201 = phi i64 [ 0, %198 ], [ %209, %200 ]
  %202 = load ptr, ptr %5, align 8, !tbaa !127
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !115
  %205 = getelementptr inbounds %struct.rtvec_def, ptr %204, i64 0, i32 1, i64 %201
  %206 = load ptr, ptr %205, align 8, !tbaa !127
  %207 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !115
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %208, i32 noundef 0) #9
  %209 = add nuw nsw i64 %201, 1
  %210 = icmp eq i64 %209, %199
  br i1 %210, label %219, label %200, !llvm.loop !253

211:                                              ; preds = %188
  %212 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 1, i32 1, i32 0, i32 0, i64 2
  %213 = load ptr, ptr %212, align 8, !tbaa !115
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %217, !prof !254

215:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 321, ptr noundef nonnull @.str.1) #8
  %216 = load ptr, ptr %212, align 8, !tbaa !115
  br label %217

217:                                              ; preds = %211, %215
  %218 = phi ptr [ %213, %211 ], [ %216, %215 ]
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef %218, i32 noundef 0) #9
  br label %219

219:                                              ; preds = %171, %200, %129, %168, %193, %141, %144, %150, %156, %162, %181, %217, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %220

220:                                              ; preds = %219, %90
  %221 = icmp eq i32 %95, 10
  br i1 %221, label %222, label %233, !prof !255

222:                                              ; preds = %220
  %223 = load i32, ptr %93, align 8
  %224 = and i32 %223, 16777216
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %236, label %226, !prof !256

226:                                              ; preds = %222
  %227 = load ptr, ptr @cfun, align 8, !tbaa !127
  %228 = getelementptr inbounds %struct.function, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !142
  %230 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !146
  %232 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef %39, ptr noundef %231, i32 noundef 258) #8
  br label %253

233:                                              ; preds = %220
  %234 = load i32, ptr @flag_non_call_exceptions, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %253, label %236, !prof !257

236:                                              ; preds = %222, %233
  call void @rtl_make_eh_edge(ptr noundef %24, ptr noundef %39, ptr noundef nonnull %93) #9
  %237 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %238 = icmp ne ptr %237, null
  %239 = select i1 %221, i1 %238, i1 false
  br i1 %239, label %240, label %253, !prof !258

240:                                              ; preds = %236
  %241 = call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %93) #8
  %242 = icmp eq i8 %241, 0
  %243 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %244 = icmp eq ptr %243, null
  %245 = select i1 %242, i1 true, i1 %244
  br i1 %245, label %253, label %246

246:                                              ; preds = %240, %246
  %247 = phi ptr [ %251, %246 ], [ %243, %240 ]
  %248 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !115
  call fastcc void @make_label_edge(ptr noundef %24, ptr noundef %39, ptr noundef %249, i32 noundef 6) #9
  %250 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1, i32 0, i32 0, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !115
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %246, !llvm.loop !259

253:                                              ; preds = %246, %233, %240, %236, %226
  %254 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 2
  %255 = load ptr, ptr %254, align 8, !tbaa !115
  %256 = load ptr, ptr @cfun, align 8, !tbaa !127
  %257 = getelementptr inbounds %struct.function, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !142
  %259 = getelementptr inbounds %struct.control_flow_graph, ptr %258, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !146
  %261 = call ptr @find_edge(ptr noundef %39, ptr noundef %260) #8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %270, label %263, !prof !260

263:                                              ; preds = %253
  %264 = getelementptr inbounds %struct.edge_def, ptr %261, i64 0, i32 7
  %265 = load i32, ptr %264, align 8, !tbaa !261
  %266 = and i32 %265, 1
  %267 = icmp ne i32 %266, 0
  %268 = icmp eq ptr %255, null
  %269 = select i1 %267, i1 true, i1 %268
  br i1 %269, label %286, label %272, !prof !262

270:                                              ; preds = %253
  %271 = icmp eq ptr %255, null
  br i1 %271, label %286, label %272, !prof !151

272:                                              ; preds = %263, %270
  br label %273

273:                                              ; preds = %272, %282
  %274 = phi ptr [ %284, %282 ], [ %255, %272 ]
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 65535
  %277 = icmp eq i32 %276, 13
  br i1 %277, label %278, label %293, !prof !263

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 1
  %280 = load i32, ptr %279, align 8, !tbaa !115
  %281 = icmp eq i32 %280, 10
  br i1 %281, label %293, label %282, !prof !264

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 0, i64 2
  %284 = load ptr, ptr %283, align 8, !tbaa !115
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %273, !prof !265, !llvm.loop !266

286:                                              ; preds = %282, %263, %270
  %287 = load ptr, ptr @cfun, align 8, !tbaa !127
  %288 = getelementptr inbounds %struct.function, ptr %287, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !142
  %290 = getelementptr inbounds %struct.control_flow_graph, ptr %289, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !146
  %292 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef %39, ptr noundef %291, i32 noundef 1) #8
  br label %309

293:                                              ; preds = %278, %273
  %294 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %295 = load ptr, ptr %294, align 8, !tbaa !147
  %296 = load ptr, ptr @cfun, align 8, !tbaa !127
  %297 = getelementptr inbounds %struct.function, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !142
  %299 = getelementptr inbounds %struct.control_flow_graph, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !146
  %301 = icmp eq ptr %295, %300
  br i1 %301, label %309, label %302, !prof !267

302:                                              ; preds = %293
  %303 = getelementptr inbounds %struct.basic_block_def, ptr %295, i64 0, i32 7
  %304 = load ptr, ptr %303, align 8, !tbaa !115
  %305 = load ptr, ptr %304, align 8, !tbaa !188
  %306 = icmp eq ptr %274, %305
  br i1 %306, label %307, label %309, !prof !268

307:                                              ; preds = %302
  %308 = call ptr @cached_make_edge(ptr noundef %24, ptr noundef nonnull %39, ptr noundef nonnull %295, i32 noundef 1) #8
  br label %309

309:                                              ; preds = %286, %302, %307, %293, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %311 = load ptr, ptr %310, align 8, !tbaa !147
  %312 = load ptr, ptr %32, align 8, !tbaa !147
  %313 = icmp eq ptr %311, %312
  br i1 %313, label %314, label %38, !prof !183, !llvm.loop !269

314:                                              ; preds = %309, %31
  %315 = icmp eq ptr %24, null
  br i1 %315, label %317, label %316, !prof !270

316:                                              ; preds = %314
  call void @free(ptr noundef nonnull %24) #9
  br label %317

317:                                              ; preds = %316, %314
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !271 !PGOFuncName !272 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !273 !PGOFuncName !274 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #9, !range !175
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !275

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #9
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !127
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !276 !PGOFuncName !277 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !278

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #9
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #9
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !279

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #8
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !280
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !280
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_outgoing_frequencies(ptr noundef %0) unnamed_addr #0 !prof !282 !PGOFuncName !283 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !284
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %52, !prof !285

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !190
  %13 = tail call ptr @find_reg_note(ptr noundef %12, i32 noundef 13, ptr noundef null) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15, !prof !286

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !115
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %4, align 8, !tbaa !284
  %22 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 0) #9
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !261
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !287

27:                                               ; preds = %15
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 1) #9
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi ptr [ %28, %27 ], [ %22, %15 ]
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  store i32 %20, ptr %31, align 4, !tbaa !180
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !171
  %34 = shl i64 %19, 32
  %35 = ashr exact i64 %34, 32
  %36 = mul nsw i64 %33, %35
  %37 = add nsw i64 %36, 5000
  %38 = sdiv i64 %37, 10000
  %39 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 9
  store i64 %38, ptr %39, align 8, !tbaa !177
  %40 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 0) #9
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !261
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47, !prof !287

45:                                               ; preds = %29
  %46 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 1) #9
  br label %47

47:                                               ; preds = %29, %45
  %48 = phi ptr [ %46, %45 ], [ %40, %29 ]
  %49 = sub nsw i32 10000, %20
  %50 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 %49, ptr %50, align 4, !tbaa !180
  %51 = sub nsw i64 %33, %38
  br label %83

52:                                               ; preds = %8, %1
  %53 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #9, !range !175
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55, !prof !288

55:                                               ; preds = %52
  %56 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #9
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 8
  store i32 10000, ptr %57, align 4, !tbaa !180
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %59 = load i64, ptr %58, align 8, !tbaa !171
  br label %83

60:                                               ; preds = %52
  tail call void @guess_outgoing_edge_probabilities(ptr noundef nonnull %0) #8
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %62 = load i64, ptr %61, align 8, !tbaa !171
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %87, label %64, !prof !289

64:                                               ; preds = %60
  %65 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !173
  %66 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %65, ptr %66, align 8, !tbaa.struct !174
  %67 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %65, ptr noundef nonnull %2) #9, !range !175
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64, %69
  %70 = load i64, ptr %61, align 8, !tbaa !171
  %71 = load ptr, ptr %2, align 8, !tbaa !127
  %72 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 8
  %73 = load i32, ptr %72, align 4, !tbaa !180
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %70, %74
  %76 = add nsw i64 %75, 5000
  %77 = sdiv i64 %76, 10000
  %78 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 9
  store i64 %77, ptr %78, align 8, !tbaa !177
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %79 = load i32, ptr %3, align 8
  %80 = load ptr, ptr %66, align 8
  %81 = call fastcc zeroext i8 @ei_cond(i32 %79, ptr %80, ptr noundef nonnull %2) #9, !range !175
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %87, label %69, !llvm.loop !290

83:                                               ; preds = %55, %47
  %84 = phi ptr [ %48, %47 ], [ %56, %55 ]
  %85 = phi i64 [ %51, %47 ], [ %59, %55 ]
  %86 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 9
  store i64 %85, ptr %86, align 8, !tbaa !177
  br label %87

87:                                               ; preds = %69, %83, %64, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

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
define internal fastcc void @purge_dead_tablejump_edges(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !291 !PGOFuncName !292 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 20
  br i1 %12, label %13, label %15, !prof !293

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  br label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = load i32, ptr %19, align 8, !tbaa !241
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32, !prof !294

22:                                               ; preds = %17
  %23 = zext nneg i32 %20 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ %23, %22 ], [ %26, %24 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !127
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !115
  tail call fastcc void @mark_tablejump_edge(ptr noundef %30) #9
  %31 = icmp ugt i64 %25, 1
  br i1 %31, label %24, label %32, !prof !295, !llvm.loop !296

32:                                               ; preds = %24, %17
  %33 = load i32, ptr %7, align 8
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -7
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %67, !prof !297

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !115
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 23
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = tail call ptr @single_set_2(ptr noundef nonnull %7, ptr noundef nonnull %39) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %67, label %46, !prof !298

46:                                               ; preds = %37, %43
  %47 = phi ptr [ %44, %43 ], [ %39, %37 ]
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !115
  %50 = load ptr, ptr @global_rtl, align 16, !tbaa !127
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %67, !prof !293

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !115
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %67, !prof !299

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !115
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 44
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !115
  tail call fastcc void @mark_tablejump_edge(ptr noundef %66) #9
  br label %67

67:                                               ; preds = %32, %64, %58, %52, %46, %43
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %69 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %68) #9
  store i32 0, ptr %3, align 8, !tbaa.struct !173
  %70 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %69, ptr %70, align 8, !tbaa.struct !174
  %71 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %69) #9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %101, label %73, !prof !300

73:                                               ; preds = %67, %93
  %74 = phi ptr [ %94, %93 ], [ %69, %67 ]
  %75 = phi i32 [ %95, %93 ], [ 0, %67 ]
  %76 = phi ptr [ %96, %93 ], [ %71, %67 ]
  %77 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !196
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !154
  %81 = ptrtoint ptr %80 to i64
  %82 = and i64 %81, 32
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %87, label %84, !prof !301

84:                                               ; preds = %73
  %85 = and i64 %81, -33
  %86 = inttoptr i64 %85 to ptr
  store ptr %86, ptr %79, align 8, !tbaa !154
  br label %98

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !261
  %90 = and i32 %89, 10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %98, !prof !302

92:                                               ; preds = %87
  tail call void @remove_edge(ptr noundef nonnull %76) #8
  br label %93

93:                                               ; preds = %92, %98
  %94 = phi ptr [ %74, %92 ], [ %100, %98 ]
  %95 = phi i32 [ %75, %92 ], [ %99, %98 ]
  %96 = tail call fastcc ptr @ei_safe_edge(i32 %95, ptr %94) #9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %73, !prof !303, !llvm.loop !304

98:                                               ; preds = %87, %84
  call fastcc void @ei_next(ptr noundef nonnull %3) #9
  %99 = load i32, ptr %3, align 8
  %100 = load ptr, ptr %70, align 8
  br label %93

101:                                              ; preds = %93, %67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_tablejump_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !305 !PGOFuncName !306 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %6, label %5, !prof !307

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @.str.1) #8
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !115
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !308

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !154
  %15 = ptrtoint ptr %14 to i64
  %16 = or i64 %15, 32
  %17 = inttoptr i64 %16 to ptr
  store ptr %17, ptr %13, align 8, !tbaa !154
  br label %18

18:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !309 !PGOFuncName !310 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #9, !range !175
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !311

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !312 !PGOFuncName !313 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !314

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !315 !PGOFuncName !316 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !317

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #9
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #9
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !318 !PGOFuncName !319 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !320

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !321
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !323 !PGOFuncName !324 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !325

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #8
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !127
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !326 !PGOFuncName !327 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !328 !PGOFuncName !329 {
  %3 = load ptr, ptr %0, align 8, !tbaa !330
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !332

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
  %15 = load i64, ptr %14, align 8, !tbaa !153
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !115
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !115
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !153
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !153
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
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !333 !PGOFuncName !334 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !335 !PGOFuncName !336 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #9, !range !175
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !337

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 645, ptr noundef nonnull @.str.1) #8
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !284
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!112}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!36 = !{ptr @inside_basic_block_p, ptr @fancy_abort, i64 1}
!37 = !{ptr @control_flow_insn_p, ptr @find_reg_note, i64 198672}
!38 = !{ptr @control_flow_insn_p, ptr @can_nonlocal_goto, i64 195216}
!39 = !{ptr @control_flow_insn_p, ptr @fancy_abort, i64 1}
!40 = !{ptr @control_flow_insn_p, ptr @can_throw_internal, i64 195217}
!41 = !{ptr @rtl_make_eh_edge, ptr @get_eh_landing_pad_from_rtx, i64 11526}
!42 = !{ptr @rtl_make_eh_edge, ptr @make_label_edge, i64 1}
!43 = !{ptr @make_label_edge, ptr @fancy_abort, i64 1}
!44 = !{ptr @make_label_edge, ptr @cached_make_edge, i64 344714}
!45 = !{ptr @find_many_sub_basic_blocks, ptr @find_bb_boundaries, i64 349339}
!46 = !{ptr @find_many_sub_basic_blocks, ptr @make_edges, i64 20218}
!47 = !{ptr @find_many_sub_basic_blocks, ptr @ei_start_1, i64 20892}
!48 = !{ptr @find_many_sub_basic_blocks, ptr @ei_cond, i64 47844}
!49 = !{ptr @find_many_sub_basic_blocks, ptr @ei_next, i64 26952}
!50 = !{ptr @find_many_sub_basic_blocks, ptr @compute_outgoing_frequencies, i64 370213}
!51 = !{ptr @find_bb_boundaries, ptr @inside_basic_block_p, i64 25091}
!52 = !{ptr @find_bb_boundaries, ptr @split_block, i64 20894}
!53 = !{ptr @find_bb_boundaries, ptr @remove_edge, i64 20894}
!54 = !{ptr @find_bb_boundaries, ptr @make_edge, i64 1}
!55 = !{ptr @find_bb_boundaries, ptr @prev_nonnote_insn_bb, i64 1}
!56 = !{ptr @find_bb_boundaries, ptr @control_flow_insn_p, i64 2100214}
!57 = !{ptr @find_bb_boundaries, ptr @purge_dead_edges, i64 346267}
!58 = !{ptr @find_bb_boundaries, ptr @tablejump_p, i64 11886}
!59 = !{ptr @find_bb_boundaries, ptr @purge_dead_tablejump_edges, i64 854}
!60 = !{ptr @make_edges, ptr @sbitmap_alloc, i64 282}
!61 = !{ptr @make_edges, ptr @make_edge, i64 14585}
!62 = !{ptr @make_edges, ptr @sbitmap_zero, i64 51795}
!63 = !{ptr @make_edges, ptr @ei_start_1, i64 51795}
!64 = !{ptr @make_edges, ptr @ei_cond, i64 130516}
!65 = !{ptr @make_edges, ptr @SET_BIT, i64 78139}
!66 = !{ptr @make_edges, ptr @ei_next, i64 78721}
!67 = !{ptr @make_edges, ptr @cached_make_edge, i64 273582}
!68 = !{ptr @make_edges, ptr @find_reg_note, i64 280277}
!69 = !{ptr @make_edges, ptr @tablejump_p, i64 280276}
!70 = !{ptr @make_edges, ptr @make_label_edge, i64 344750}
!71 = !{ptr @make_edges, ptr @single_set_2, i64 577}
!72 = !{ptr @make_edges, ptr @computed_jump_p, i64 279122}
!73 = !{ptr @make_edges, ptr @returnjump_p, i64 279121}
!74 = !{ptr @make_edges, ptr @extract_asm_operands, i64 272857}
!75 = !{ptr @make_edges, ptr @fancy_abort, i64 1}
!76 = !{ptr @make_edges, ptr @rtl_make_eh_edge, i64 11527}
!77 = !{ptr @make_edges, ptr @can_nonlocal_goto, i64 1}
!78 = !{ptr @make_edges, ptr @find_edge, i64 370231}
!79 = !{ptr @make_edges, ptr @free, i64 281}
!80 = !{ptr @ei_cond, ptr @ei_end_p, i64 178368}
!81 = !{ptr @ei_cond, ptr @ei_edge, i64 105678}
!82 = !{ptr @ei_next, ptr @ei_container, i64 229177}
!83 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 114589}
!84 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!85 = !{ptr @compute_outgoing_frequencies, ptr @VEC_edge_base_length, i64 370249}
!86 = !{ptr @compute_outgoing_frequencies, ptr @find_reg_note, i64 180850}
!87 = !{ptr @compute_outgoing_frequencies, ptr @VEC_edge_base_index, i64 517848}
!88 = !{ptr @compute_outgoing_frequencies, ptr @single_succ_p, i64 197633}
!89 = !{ptr @compute_outgoing_frequencies, ptr @single_succ_edge, i64 184813}
!90 = !{ptr @compute_outgoing_frequencies, ptr @guess_outgoing_edge_probabilities, i64 12820}
!91 = !{ptr @compute_outgoing_frequencies, ptr @ei_start_1, i64 1}
!92 = !{ptr @compute_outgoing_frequencies, ptr @ei_cond, i64 21}
!93 = !{ptr @compute_outgoing_frequencies, ptr @ei_next, i64 20}
!94 = !{ptr @purge_dead_tablejump_edges, ptr @mark_tablejump_edge, i64 55274}
!95 = !{ptr @purge_dead_tablejump_edges, ptr @single_set_2, i64 426}
!96 = !{ptr @purge_dead_tablejump_edges, ptr @ei_start_1, i64 853}
!97 = !{ptr @purge_dead_tablejump_edges, ptr @ei_safe_edge, i64 9885}
!98 = !{ptr @purge_dead_tablejump_edges, ptr @remove_edge, i64 131}
!99 = !{ptr @purge_dead_tablejump_edges, ptr @ei_next, i64 8902}
!100 = !{ptr @mark_tablejump_edge, ptr @fancy_abort, i64 1}
!101 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 9895}
!102 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 9041}
!103 = !{ptr @ei_end_p, ptr @ei_container, i64 376525}
!104 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 188263}
!105 = !{ptr @ei_edge, ptr @ei_container, i64 229439}
!106 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 114720}
!107 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!108 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 382445}
!109 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 184813}
!110 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!111 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 184813}
!112 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!113 = !{!"function_entry_count", i64 25089}
!114 = !{!"branch_weights", i32 1, i32 7631, i32 3234, i32 1, i32 10031, i32 1, i32 4197, i32 1}
!115 = !{!116, !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !{!"branch_weights", i32 1, i32 7631}
!119 = !{!"branch_weights", i32 79, i32 7553}
!120 = !{!"function_entry_count", i64 4363751}
!121 = !{!"branch_weights", i32 1, i32 665346, i32 7631, i32 1, i32 393453, i32 201533, i32 3091597, i32 4197}
!122 = !{!"branch_weights", i32 198673, i32 2861}
!123 = !{!"branch_weights", i32 195217, i32 3457}
!124 = !{!"branch_weights", i32 1, i32 6317}
!125 = !{!"branch_weights", i32 195217, i32 1}
!126 = !{!"branch_weights", i32 1, i32 3091597}
!127 = !{!128, !128, i64 0}
!128 = !{!"any pointer", !116, i64 0}
!129 = !{!130, !130, i64 0}
!130 = !{!"int", !116, i64 0}
!131 = !{!"branch_weights", i32 3091597, i32 1}
!132 = !{!"function_entry_count", i64 11526}
!133 = !{!"branch_weights", i32 11527, i32 1}
!134 = !{!135, !128, i64 24}
!135 = !{!"eh_landing_pad_d", !128, i64 0, !128, i64 8, !128, i64 16, !128, i64 24, !130, i64 32}
!136 = !{!135, !128, i64 16}
!137 = !{!"function_entry_count", i64 344715}
!138 = !{!"cfgbuild.c:make_label_edge"}
!139 = !{!"branch_weights", i32 344716, i32 1}
!140 = !{!"branch_weights", i32 1, i32 344716}
!141 = !{!"function_entry_count", i64 20218}
!142 = !{!143, !128, i64 8}
!143 = !{!"function", !128, i64 0, !128, i64 8, !128, i64 16, !128, i64 24, !128, i64 32, !128, i64 40, !128, i64 48, !128, i64 56, !128, i64 64, !128, i64 72, !128, i64 80, !128, i64 88, !128, i64 96, !130, i64 104, !130, i64 108, !130, i64 112, !130, i64 116, !130, i64 120, !130, i64 124, !128, i64 128, !130, i64 136, !130, i64 137, !130, i64 138, !130, i64 138, !130, i64 138, !130, i64 138, !130, i64 138, !130, i64 138, !130, i64 138, !130, i64 139, !130, i64 139, !130, i64 139, !130, i64 139, !130, i64 139, !130, i64 139, !130, i64 139}
!144 = !{!145, !128, i64 0}
!145 = !{!"control_flow_graph", !128, i64 0, !128, i64 8, !128, i64 16, !130, i64 24, !130, i64 28, !130, i64 32, !128, i64 40, !130, i64 48, !116, i64 52, !116, i64 60, !130, i64 68, !130, i64 72}
!146 = !{!145, !128, i64 8}
!147 = !{!148, !128, i64 56}
!148 = !{!"basic_block_def", !128, i64 0, !128, i64 8, !128, i64 16, !128, i64 24, !116, i64 32, !128, i64 48, !128, i64 56, !116, i64 64, !149, i64 72, !130, i64 80, !130, i64 84, !130, i64 88, !130, i64 92, !130, i64 96}
!149 = !{!"long", !116, i64 0}
!150 = !{!"branch_weights", i32 1, i32 20218}
!151 = !{!"branch_weights", i32 0, i32 -2147483648}
!152 = !{!148, !130, i64 80}
!153 = !{!149, !149, i64 0}
!154 = !{!148, !128, i64 16}
!155 = !{!"branch_weights", i32 20218, i32 1205345}
!156 = distinct !{!156, !157}
!157 = !{!"llvm.loop.mustprogress"}
!158 = !{!"branch_weights", i32 349357, i32 897100}
!159 = !{!"branch_weights", i32 20218, i32 1226238}
!160 = distinct !{!160, !157}
!161 = !{!"branch_weights", i32 1, i32 127809}
!162 = !{!"branch_weights", i32 107591, i32 20219}
!163 = distinct !{!163, !157}
!164 = !{!"branch_weights", i32 5, i32 2147483643}
!165 = !{!"branch_weights", i32 768617, i32 370250}
!166 = !{!"branch_weights", i32 20218, i32 1118648}
!167 = distinct !{!167, !157}
!168 = !{!145, !130, i64 48}
!169 = !{!"branch_weights", i32 1, i32 20219}
!170 = !{!"branch_weights", i32 2021084832, i32 -709676449, i32 120875054}
!171 = !{!148, !149, i64 72}
!172 = !{!148, !130, i64 88}
!173 = !{i64 0, i64 4, !129, i64 8, i64 8, !127}
!174 = !{i64 0, i64 8, !127}
!175 = !{i8 0, i8 2}
!176 = !{!"branch_weights", i32 1, i32 20893}
!177 = !{!178, !149, i64 56}
!178 = !{!"edge_def", !128, i64 0, !128, i64 8, !116, i64 16, !128, i64 24, !128, i64 32, !130, i64 40, !130, i64 44, !130, i64 48, !130, i64 52, !149, i64 56}
!179 = !{!178, !128, i64 0}
!180 = !{!178, !130, i64 52}
!181 = !{!"branch_weights", i32 20893, i32 6062}
!182 = distinct !{!182, !157}
!183 = !{!"branch_weights", i32 20218, i32 969769}
!184 = distinct !{!184, !157}
!185 = distinct !{!185, !157}
!186 = !{!"function_entry_count", i64 349356}
!187 = !{!"cfgbuild.c:find_bb_boundaries"}
!188 = !{!189, !128, i64 0}
!189 = !{!"rtl_bb_info", !128, i64 0, !128, i64 8, !128, i64 16, !128, i64 24, !130, i64 32}
!190 = !{!189, !128, i64 8}
!191 = !{!"branch_weights", i32 3089, i32 346269}
!192 = !{!"branch_weights", i32 180196, i32 166074}
!193 = !{!"branch_weights", i32 50960086, i32 -80345815}
!194 = !{!"branch_weights", i32 4197, i32 20894}
!195 = !{!"branch_weights", i32 16276, i32 4619}
!196 = !{!178, !128, i64 8}
!197 = !{!"branch_weights", i32 14956, i32 1320}
!198 = !{!"branch_weights", i32 1320, i32 1}
!199 = !{!"branch_weights", i32 1320, i32 0}
!200 = distinct !{!200, !157}
!201 = !{!"branch_weights", i32 7631, i32 13264}
!202 = !{!"branch_weights", i32 7631, i32 1}
!203 = !{!"branch_weights", i32 4197, i32 2075136}
!204 = !{!"branch_weights", i32 4197, i32 1}
!205 = !{!"branch_weights", i32 1814022, i32 286204}
!206 = !{!"branch_weights", i32 346269, i32 1753957}
!207 = !{!"branch_weights", i32 76341, i32 269929}
!208 = !{!"branch_weights", i32 267051, i32 2878}
!209 = !{!"branch_weights", i32 2878, i32 1}
!210 = !{!"branch_weights", i32 2878, i32 0}
!211 = distinct !{!211, !157}
!212 = !{!"branch_weights", i32 334384, i32 11886}
!213 = !{!"branch_weights", i32 11033, i32 854}
!214 = !{!"cfgbuild.c:make_edges"}
!215 = !{!216, !128, i64 32}
!216 = !{!"rtl_data", !217, i64 0, !218, i64 40, !219, i64 96, !220, i64 112, !222, i64 208, !223, i64 248, !130, i64 312, !128, i64 320, !128, i64 328, !128, i64 336, !128, i64 344, !128, i64 352, !128, i64 360, !128, i64 368, !128, i64 376, !128, i64 384, !128, i64 392, !149, i64 400, !128, i64 408, !128, i64 416, !128, i64 424, !130, i64 432, !130, i64 436, !130, i64 440, !130, i64 444, !130, i64 448, !130, i64 452, !128, i64 456, !116, i64 464, !116, i64 465, !116, i64 466, !116, i64 467, !116, i64 468, !116, i64 469, !116, i64 470, !116, i64 471, !116, i64 472, !116, i64 473, !116, i64 474, !116, i64 475, !116, i64 476, !116, i64 477, !116, i64 478, !116, i64 479, !116, i64 480, !116, i64 481, !116, i64 482, !116, i64 483, !116, i64 484, !116, i64 485}
!217 = !{!"expr_status", !130, i64 0, !130, i64 4, !130, i64 8, !128, i64 16, !128, i64 24, !128, i64 32}
!218 = !{!"emit_status", !130, i64 0, !130, i64 4, !128, i64 8, !128, i64 16, !128, i64 24, !130, i64 32, !130, i64 36, !130, i64 40, !130, i64 44, !128, i64 48}
!219 = !{!"varasm_status", !128, i64 0, !130, i64 8}
!220 = !{!"incoming_args", !130, i64 0, !130, i64 4, !130, i64 8, !128, i64 16, !221, i64 24, !128, i64 88}
!221 = !{!"ix86_args", !130, i64 0, !130, i64 4, !130, i64 8, !130, i64 12, !130, i64 16, !130, i64 20, !130, i64 24, !130, i64 28, !130, i64 32, !130, i64 36, !130, i64 40, !130, i64 44, !130, i64 48, !130, i64 52, !130, i64 56, !130, i64 60}
!222 = !{!"function_subsections", !128, i64 0, !128, i64 8, !128, i64 16, !128, i64 24, !128, i64 32}
!223 = !{!"rtl_eh", !128, i64 0, !128, i64 8, !128, i64 16, !128, i64 24, !128, i64 32, !128, i64 40, !116, i64 48}
!224 = !{!"branch_weights", i32 20219, i32 1}
!225 = !{!145, !130, i64 68}
!226 = !{!"branch_weights", i32 281, i32 19939}
!227 = !{!145, !130, i64 32}
!228 = !{!"branch_weights", i32 14586, i32 5634}
!229 = !{!"branch_weights", i32 619738, i32 370250}
!230 = !{!"branch_weights", i32 318453, i32 51798}
!231 = !{!"branch_weights", i32 1, i32 51797}
!232 = !{!"branch_weights", i32 582, i32 78144}
!233 = !{!"branch_weights", i32 51797, i32 26928}
!234 = distinct !{!234, !157}
!235 = !{!"branch_weights", i32 187826, i32 182425}
!236 = !{!"branch_weights", i32 187826, i32 1}
!237 = !{!"branch_weights", i32 280292, i32 89959}
!238 = !{!"branch_weights", i32 280292, i32 1}
!239 = !{!"branch_weights", i32 279139, i32 1154}
!240 = !{!"branch_weights", i32 1154, i32 1}
!241 = !{!242, !130, i64 0}
!242 = !{!"rtvec_def", !130, i64 0, !116, i64 8}
!243 = !{!"branch_weights", i32 1153, i32 1}
!244 = !{!"branch_weights", i32 70689, i32 1153}
!245 = distinct !{!245, !157}
!246 = !{!"branch_weights", i32 -1214701262, i32 1331716}
!247 = !{!"branch_weights", i32 1863314, i32 2145620334}
!248 = !{!"branch_weights", i32 1, i32 1154}
!249 = !{!"branch_weights", i32 279139, i32 1}
!250 = distinct !{!250, !157}
!251 = !{!"branch_weights", i32 272875, i32 6265}
!252 = !{!"branch_weights", i32 272875, i32 1}
!253 = distinct !{!253, !157}
!254 = !{!"branch_weights", i32 1, i32 272875}
!255 = !{!"branch_weights", i32 13983, i32 356268}
!256 = !{!"branch_weights", i32 11527, i32 2457}
!257 = !{!"branch_weights", i32 2147472808, i32 10840}
!258 = !{!"branch_weights", i32 11527, i32 132883257}
!259 = distinct !{!259, !157}
!260 = !{!"branch_weights", i32 354488, i32 15763}
!261 = !{!178, !130, i64 48}
!262 = !{!"branch_weights", i32 1846280192, i32 -2008809472}
!263 = !{!"branch_weights", i32 163980, i32 199229}
!264 = !{!"branch_weights", i32 370250, i32 1}
!265 = !{!"branch_weights", i32 7042, i32 356166}
!266 = distinct !{!266, !157}
!267 = !{!"branch_weights", i32 6020, i32 357189}
!268 = !{!"branch_weights", i32 257832, i32 99358}
!269 = distinct !{!269, !157}
!270 = !{!"branch_weights", i32 19939, i32 281}
!271 = !{!"function_entry_count", i64 73543}
!272 = !{!"cfgbuild.c:ei_start_1"}
!273 = !{!"function_entry_count", i64 178368}
!274 = !{!"cfgbuild.c:ei_cond"}
!275 = !{!"branch_weights", i32 105679, i32 72691}
!276 = !{!"function_entry_count", i64 114589}
!277 = !{!"cfgbuild.c:ei_next"}
!278 = !{!"branch_weights", i32 1, i32 114590}
!279 = !{!"branch_weights", i32 114590, i32 1}
!280 = !{!281, !130, i64 0}
!281 = !{!"", !130, i64 0, !128, i64 8}
!282 = !{!"function_entry_count", i64 370249}
!283 = !{!"cfgbuild.c:compute_outgoing_frequencies"}
!284 = !{!148, !128, i64 8}
!285 = !{!"branch_weights", i32 180851, i32 189400}
!286 = !{!"branch_weights", i32 8234, i32 172618}
!287 = !{!"branch_weights", i32 71382, i32 101237}
!288 = !{!"branch_weights", i32 12820, i32 184814}
!289 = !{!"branch_weights", i32 12820, i32 1}
!290 = distinct !{!290, !157}
!291 = !{!"function_entry_count", i64 853}
!292 = !{!"cfgbuild.c:purge_dead_tablejump_edges"}
!293 = !{!"branch_weights", i32 854, i32 1}
!294 = !{!"branch_weights", i32 853, i32 1}
!295 = !{!"branch_weights", i32 54486, i32 853}
!296 = distinct !{!296, !157}
!297 = !{!"branch_weights", i32 1249323434, i32 729316}
!298 = !{!"branch_weights", i32 2519020, i32 2144964628}
!299 = !{!"branch_weights", i32 1, i32 854}
!300 = !{!"branch_weights", i32 1, i32 853}
!301 = !{!"branch_weights", i32 132, i32 8912}
!302 = !{!"branch_weights", i32 132, i32 1}
!303 = !{!"branch_weights", i32 853, i32 8190}
!304 = distinct !{!304, !157}
!305 = !{!"function_entry_count", i64 55338}
!306 = !{!"cfgbuild.c:mark_tablejump_edge"}
!307 = !{!"branch_weights", i32 55339, i32 1}
!308 = !{!"branch_weights", i32 1, i32 55339}
!309 = !{!"function_entry_count", i64 9895}
!310 = !{!"cfgbuild.c:ei_safe_edge"}
!311 = !{!"branch_weights", i32 9043, i32 854}
!312 = !{!"function_entry_count", i64 188263}
!313 = !{!"cfgbuild.c:ei_end_p"}
!314 = !{!"branch_weights", i32 1, i32 188264}
!315 = !{!"function_entry_count", i64 114720}
!316 = !{!"cfgbuild.c:ei_edge"}
!317 = !{!"branch_weights", i32 1, i32 114721}
!318 = !{!"function_entry_count", i64 1055546}
!319 = !{!"cfgbuild.c:VEC_edge_base_length"}
!320 = !{!"branch_weights", i32 1, i32 1055547}
!321 = !{!322, !130, i64 0}
!322 = !{!"VEC_edge_base", !130, i64 0, !130, i64 4, !116, i64 8}
!323 = !{!"function_entry_count", i64 835144}
!324 = !{!"cfgbuild.c:ei_container"}
!325 = !{!"branch_weights", i32 1, i32 835145}
!326 = !{!"function_entry_count", i64 990001}
!327 = !{!"cfgbuild.c:VEC_edge_base_index"}
!328 = !{!"function_entry_count", i64 78143}
!329 = !{!"cfgbuild.c:SET_BIT"}
!330 = !{!331, !128, i64 0}
!331 = !{!"simple_bitmap_def", !128, i64 0, !130, i64 8, !130, i64 12, !116, i64 16}
!332 = !{!"branch_weights", i32 78144, i32 1}
!333 = !{!"function_entry_count", i64 382445}
!334 = !{!"cfgbuild.c:single_succ_p"}
!335 = !{!"function_entry_count", i64 184813}
!336 = !{!"cfgbuild.c:single_succ_edge"}
!337 = !{!"branch_weights", i32 1, i32 184814}
